//----------------------------------------------------------------------------
//
// Copyright (C) 1999-2005 First Silicon Solutions, Inc.  All rights reserved.
//
// This source file is unpublished, proprietary information of First Silicon
// Solutions, Inc.
//
// It may be used per limitations as defined under applicable non-dislosure
// agreements and provided that this copyright statement is not removed
// from the file.  The code contained herein is not to be distributed,
// in whole or in part, without prior written permission from First Silicon
// Solutions, Inc.  First Silicon Solutions distributes this source file
// "as is" and does not guarantee applicability to any given application.
// Please send all questions and comments (including any and all discovered
// errors) on this source file to support@fs2.com.
//
// Module:
//   uj_jtag:   Conversion from UJTAG to JTAG within Actel APA / PA3 devices.
//
// $Log: uj_jtag.v,v $
// Revision 1.2  2005/12/21 22:19:01  ernie
// - Added gpin and gpout general-purpose I/O.  These are addressable through
// UJTAG to control on-chip resources such as reset or test modes.
// - Adjustments to support going into pause states in the middle of shifts.
//
// Revision 1.1  2005/08/31 16:33:32  ernie
// Initial revision
//
// $Id: uj_jtag.v 1 2007-09-24 16:19:02Z ciaran.murphy $
//
//----------------------------------------------------------------------------

                         //-------------------//
                         //                   //
                         //   INLCUDE FILES   //
                         //                   //
                         //-------------------//

                         //-------------------//
                         //                   //
                         // MODULE DEFINITION //
                         //                   //
                         //-------------------//

`timescale 1ns/10ps

module COREJTAGDEBUG_UJ_JTAG (
   // UJTAG port (to I/O)
   UIREG,
   URSTB,
   UDRUPD,
   UDRCK,
   UDRCAP,
   UDRSH,
   UTDI,
   UTDO,
   UTDODRV,

   // JTAG port (to DUT)
   DUT_TCK,
   DUT_TMS,
   DUT_TDI,
   DUT_TDO
);

parameter [7:0] IR_CODE_TGT        = 8'h55;
localparam [7:0] NUM_LEAD_PAD_BITS  = 8'b0;
localparam [7:0] NUM_TRAIL_PAD_BITS = 8'b0;

input   [7:0] UIREG;    // Current contents of chip's IR register
input   URSTB;          // JTAG reset (active low)
input   UDRUPD;         // JTAG TAP is in Update-DR state
input   UDRCK;          // shift clock
input   UDRCAP;         // JTAG TAP is in Capture-DR state
input   UDRSH;          // JTAG TAP is in Shift-DR state
input   UTDI;           // serial data from host
output  UTDO;           // serial data to host
output  UTDODRV;        // enable for tdo (asserted when this module is addressed)

output  DUT_TCK;         // JTAG clock
output  DUT_TMS;         // JTAG mode select
output  DUT_TDI;         // JTAG serial data to DUT
input   DUT_TDO;        // General-purpose addressable static inputs

                         //-------------------//
                         //                   //
                         //THEORY OF OPERATION//
                         //                   //
                         //-------------------//
//
// UJTAG is the fabric side of the chip's built-in hard-logic JTAG TAP.  A
// range of IR codes are reserved for user logic.  The IR code of this module
// should be different from other modules that might be attached to UJTAG.
// When this module is addressed by loading its IR code, then this module
// will assert its UTDODRV signal.  In a multi-core system, UTDODRV and UTDO
// from each module are combined such that the addressed module drives UTDO
// into the actual UJTAG block.  Example three-core system:
//
//   assign UTDO = (UTDODRV0 & UTDO0) | (UTDODRV1 & UTDO1) | (UTDODRV2 & UTDO2);
//
// A typical JTAG instrument has both an IR and DR, yet UTAG only gives access
// to a DR scan.  A prefix added to the beginning of each DR scan provides TAP
// state traversal information which is driven onto TMS prior to the shift.
// A UJTAG DR scan consists of 3 to 6 phases:
//
//    1. 3-bit length field
//    2. tms traversal of 0 to 6 clocks.  Typically ends in Shift.
//    3. 6-bit length field
//    4. tdi shift of 0 to 63 clocks, ending in the Exit1 state.
//    5. 3-bit length field
//    6. tms traversal of 0 to 7 clocks.  Typically ends in Idle.
//
// The prefix serves to traverse the TAP state machine to the Shift-IR or
// Shift-DR state prior to the shift.  Following the shift, the suffix
// traversal can be used to move the TAP from Exit1 to Pause, Idle, Update,
// or any other state.
//
// Example:  Starting in Idle, traverse to Shift-IR, scan 8 bits, then to Idle.
//    IR <- IR_CODE_TGT to address this module
//    DR <- {2'b01,   The exit sequence (1, 0) Exit1-IR -> Update-IR -> Idle
//           3'd2,    indicate 2 bits of exit sequence
//           8'b55,   The value you want to scan into IR
//           6'd8,    indicate 8 bits of shift
//           4'b0011, The enter sequence (1, 1, 0, 0) Idle->Shift-IR
//           3'd4}    (first) indicate 4 bits of enter sequence
//
// DUT_TCK is a gated version of UDRCK and must be routed using low-skew resources.
// UDRCK is used in this module only but skew must still be addressed.
//

                         //-------------------//
                         //                   //
                         //  LOCAL VARIABLES  //
                         //                   //
                         //-------------------//

reg [4:0] state;         // track progress through DR scan phases
reg [5:0] count;         // bit counter for enter, shift, and exit
wire [5:0] countnext;    // combinational computation of next count state
wire countnextzero;      // combinational computation of next count state
reg tckgo;               // TCK gating signal
wire DUT_TDI;             // TDI output to DUT
wire DUT_TMS;             // TMS output to DUT
reg UTDO;                // Registered output to send to UJTAG
reg UTDODRV;             // Registered decoder output for UTDO
reg endofshift;          // Internal detection of end of shift, latched on falling edge
reg pauselow;            // Gate to force DUT_TCK low when exiting shift to pause
reg tmsenb;          // Synchronize on input

`define STATE_WAITING      5'b00000

`define STATE_ENTERC0      5'b00100
`define STATE_ENTERC1      5'b00101
`define STATE_ENTERC2      5'b00110
`define STATE_ENTER        5'b00111

`define STATE_SHIFTC0      5'b01001
`define STATE_SHIFTC1      5'b01010
`define STATE_SHIFTC2      5'b01011
`define STATE_SHIFTC3      5'b01100
`define STATE_SHIFTC4      5'b01101
`define STATE_SHIFTC5      5'b01110
`define STATE_SHIFT        5'b01111

`define STATE_EXITC0       5'b10100
`define STATE_EXITC1       5'b10101
`define STATE_EXITC2       5'b10110
`define STATE_EXIT         5'b10111

`define STATE_GPIO0        5'b10000
`define STATE_GPIO1        5'b10001
`define STATE_GPIO2        5'b10010
`define STATE_GPIO3        5'b10011

`define STATE_ENTRY_PAD    5'b11000
`define STATE_EXIT_PAD     5'b11001

                         //-------------------//
                         //                   //
                         //  EXECUTABLE CODE  //
                         //                   //
                         //-------------------//

assign countnext =
     (&state[2:0]) ? (count - 6'b000001)     // run mode (state == xx111)
   : (state[4:3] == 2'b01) ? {UTDI, count[5:1]}      // shift load mode
   : {3'b000, UTDI, count[2:1]};  // enter/exit load mode

assign countnextzero = (countnext == 6'b000000);

assign DUT_TMS = (tmsenb & UTDI)    // enter/exit
              | (endofshift);         // shift -> exit1
assign DUT_TDI =  UTDI;

always @(posedge UDRCK or negedge URSTB) begin
   if (~URSTB) begin
      tckgo <= 1'b0;
      state <= `STATE_WAITING;
      count <= 6'b000000;
   end else begin
      case (state)
          `STATE_WAITING:
             begin
                tckgo <= 1'b0;
                count <= 6'b000000;
                if ((UIREG == IR_CODE_TGT) && UDRCAP) begin
                  if (NUM_LEAD_PAD_BITS == 0) state <= `STATE_ENTERC0;
                  else begin
                    count <= NUM_LEAD_PAD_BITS;
                    state <= `STATE_ENTRY_PAD;
                  end
                end else state <= `STATE_WAITING;
             end
          `STATE_ENTERC0,
          `STATE_ENTERC1,
          `STATE_SHIFTC0,
          `STATE_SHIFTC1,
          `STATE_SHIFTC2,
          `STATE_SHIFTC3,
          `STATE_SHIFTC4,
          `STATE_EXITC0,
          `STATE_EXITC1:
             begin
                tckgo <= 1'b0;
                if (UDRSH) begin
                   count <= countnext;
                   state <= state + 5'b00001;
                end else if ((UIREG == IR_CODE_TGT) && UDRCAP) begin
                   state <= `STATE_ENTERC0;         // new scan began somehow
                end else if (UDRUPD) begin
                   state <= `STATE_WAITING;         // premature exit
                end
             end
          `STATE_ENTERC2:
             begin
                if (UDRSH) begin
                   if (countnextzero) begin
                      tckgo <= 1'b0;
                      count <= countnext;
                      state <= `STATE_SHIFTC0;  // enter count is zero
                   end else if (countnext[2:0] == 3'b111) begin     // GPIO exchange
                      tckgo <= 1'b0;
                      count <= 6'b0;
                      state <= `STATE_GPIO0;
                   end else begin
                      tckgo <= 1'b1;
                      count <= countnext;
                      state <= state + 5'b00001;              // do the enter sequence
                   end
                end else if ((UIREG == IR_CODE_TGT) && UDRCAP) begin
                   state <= `STATE_ENTERC0;         // new scan began somehow
                end else if (UDRUPD) begin
                   state <= `STATE_WAITING;         // premature exit
                end
             end
          `STATE_SHIFTC5:
             begin
                if (UDRSH) begin
                   tckgo <= &state[2:1] & ~countnextzero;
                   count <= countnext;
                   if (countnextzero) state <= `STATE_EXITC0;  // shift count is zero
                   else state <= state + 5'b00001;             // do the shift sequence
                end else if ((UIREG == IR_CODE_TGT) && UDRCAP) begin
                   tckgo <= 1'b0;
                   state <= `STATE_ENTERC0;         // new scan began somehow
                end else if (UDRUPD) begin
                   tckgo <= 1'b0;
                   state <= `STATE_WAITING;         // premature exit
                end
             end
          `STATE_EXITC2:
             begin
                if (UDRSH) begin
                   tckgo <= &state[2:1] & ~countnextzero;
                   count <= countnext;
                   if (countnextzero) state <= `STATE_WAITING;  // exit count is zero
                   else state <= state + 5'b00001;
                end else if ((UIREG == IR_CODE_TGT) && UDRCAP) begin
                   tckgo <= 1'b0;
                   state <= `STATE_ENTERC0;         // new scan began somehow
                end else if (UDRUPD) begin
                   tckgo <= 1'b0;
                   state <= `STATE_WAITING;         // premature exit
                end
             end
          `STATE_ENTER:
             begin
                if (UDRSH) begin
                   tckgo <= ~countnextzero;
                   count <= countnext;
                   if (countnextzero) state <= `STATE_SHIFTC0;    // done with traversal
                   else state <= `STATE_ENTER;                    // still traversing
                end else if ((UIREG == IR_CODE_TGT) && UDRCAP) begin
                   tckgo <= 1'b0;
                   state <= `STATE_ENTERC0;         // new scan began somehow
                end else if (UDRUPD) begin
                   tckgo <= 1'b0;
                   state <= `STATE_WAITING;  // premature exit
                end
             end
          `STATE_SHIFT:
             begin
                if (UDRSH) begin
                   tckgo <= ~countnextzero;
                   count <= countnext;
                   if (countnextzero) state <= `STATE_EXITC0;    // done with shift
                   else state <= `STATE_SHIFT;                  // still shifting
                end else if ((UIREG == IR_CODE_TGT) && UDRCAP) begin
                   tckgo <= 1'b0;
                   state <= `STATE_ENTERC0;         // new scan began somehow
                end else if (UDRUPD) begin
                   tckgo <= 1'b0;
                   state <= `STATE_WAITING;         // premature exit
                end
             end
          `STATE_EXIT:
             begin
                if (UDRSH) begin
                   tckgo <= ~countnextzero;
                   count <= countnext;
                   if (countnextzero) begin
                        if (NUM_TRAIL_PAD_BITS == 0) state <= `STATE_WAITING;    // done with shift
                        else state <= `STATE_EXIT_PAD;
                   end else state <= `STATE_EXIT;                   // still shifting
                end else if ((UIREG == IR_CODE_TGT) && UDRCAP) begin
                   tckgo <= 1'b0;
                   state <= `STATE_ENTERC0;         // new scan began somehow
                end else if (UDRUPD) begin
                   tckgo <= 1'b0;
                   state <= `STATE_WAITING;         // premature exit
                end
             end
          `STATE_ENTRY_PAD:
             begin
                tckgo <= 1'b0;
                if (UDRSH) begin
                    count <= count - 1'b1;
                    if (count - 1'b1 == 6'b000000) state <= `STATE_ENTERC0;
                end else if ((UIREG == IR_CODE_TGT) && UDRCAP) begin
                    state <= `STATE_ENTERC0;         // new scan began somehow
                end else if (UDRUPD) begin
                    state <= `STATE_WAITING;         // done
                end
             end
          `STATE_EXIT_PAD:
             begin
                tckgo <= 1'b0;
                if (UDRSH) begin
                    count <= count - 1'b1;
                    if (count - 1'b1 == 6'b000000) state <= `STATE_WAITING;
                end else if ((UIREG == IR_CODE_TGT) && UDRCAP) begin
                    state <= `STATE_ENTERC0;         // new scan began somehow
                end else if (UDRUPD) begin
                    state <= `STATE_WAITING;         // done
                end
             end
          `STATE_GPIO0, `STATE_GPIO1, `STATE_GPIO2, `STATE_GPIO3:
             begin
                tckgo <= 1'b0;
                if (UDRSH) begin
                   count[5:0] <= {2'b00, UTDI, count[3:1]};
                   if (~&state[1:0]) state <= state + 5'b00001;  // hold in GPIO3
                end else if ((UIREG == IR_CODE_TGT) && UDRCAP) begin
                   state <= `STATE_ENTERC0;         // new scan began somehow
                end else if (UDRUPD) begin
                   state <= `STATE_WAITING;         // done
                end
             end
          default:
             begin
                tckgo <= 1'b0;
                count <= 6'b000000;
                if ((UIREG == IR_CODE_TGT) && UDRCAP) begin
                   state <= `STATE_ENTERC0;         // new scan began somehow
                end else begin
                   state <= `STATE_WAITING;
                end
             end
      endcase
   end
end


//
// Falling edge needed to drive TMS to DUT correctly
//
always @(negedge UDRCK or negedge URSTB) begin
   if (~URSTB) begin
      endofshift <= 1'b0;
      tmsenb <= 1'b0;
   end else begin
      tmsenb <= ~(state[4:3] == 2'b01);
      endofshift <= (state == `STATE_SHIFT) && countnextzero;
   end
end


//
// Tck gating logic
//
// Allow tck to go low with UDRCK when tckgo.
// Negative logic here avoids glitches on rising edges of UDRCK as tckgo changes.
//
always @(posedge UDRCK or negedge URSTB) begin
   if (~URSTB) begin
      pauselow <= 1'b0;
   end else begin
      if (~UDRSH) pauselow <= 1'b1;
      else if (tckgo) pauselow <= 1'b0;
   end
end

assign DUT_TCK = ~(pauselow | ~UDRSH | (tckgo & ~UDRCK));


//
// TDO logic
//
// TDO comes from DUT on falling edge.  Latch here on rising edge and
// supply to UJTAG.  UJTAG then delays until the next falling edge.
// Host app must take this one-clock delay into account and supply
// at least one exit clock after the shift in order to finish the scan.
//
always @(posedge UDRCK or negedge URSTB) begin
   if (~URSTB) begin
      UTDO <= 1'b0;
      UTDODRV <= 1'b0;
   end else begin
      if (UDRSH)
         UTDO <= (state[4:2] == 3'b100) ? count[0]   // Read of gpin
                                       : DUT_TDO;    // DUT JTAG exchange
      UTDODRV <= (UIREG == IR_CODE_TGT) ? 1'b1 : 1'b0;
   end
end

endmodule
