// ****************************************************************************/
// Microsemi Corporation Proprietary and Confidential
// Copyright 2017 Microsemi Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description: 
//
// SVN Revision Information:
// SVN $Revision: 32334 $
// SVN $Date: 2018-08-14 12:17:33 +0100 (Tue, 14 Aug 2018) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`timescale 1ns/1ps
module COREJTAGDEBUG_TESTBENCH ();

////////////////////////////////////////////////////////////////////////////////
// Parameters
////////////////////////////////////////////////////////////////////////////////
localparam CLK_HP       = 20;
localparam IR_REG_WIDTH = 5;
localparam DR_REG_WIDTH = 32;
parameter       FAMILY                      = 19;
parameter       NUM_DEBUG_TGTS              = 16;
parameter       TGT_ACTIVE_HIGH_RESET_0     = 1'b0;
parameter [7:0] IR_CODE_TGT_0               = 8'h55;
parameter       TGT_ACTIVE_HIGH_RESET_1     = 1'b0;
parameter [7:0] IR_CODE_TGT_1               = 8'h56;
parameter       TGT_ACTIVE_HIGH_RESET_2     = 1'b0;
parameter [7:0] IR_CODE_TGT_2               = 8'h57;
parameter       TGT_ACTIVE_HIGH_RESET_3     = 1'b0;
parameter [7:0] IR_CODE_TGT_3               = 8'h58;
parameter       TGT_ACTIVE_HIGH_RESET_4     = 1'b0;
parameter [7:0] IR_CODE_TGT_4               = 8'h59;
parameter       TGT_ACTIVE_HIGH_RESET_5     = 1'b0;
parameter [7:0] IR_CODE_TGT_5               = 8'h5A;
parameter       TGT_ACTIVE_HIGH_RESET_6     = 1'b0;
parameter [7:0] IR_CODE_TGT_6               = 8'h5B;
parameter       TGT_ACTIVE_HIGH_RESET_7     = 1'b0;
parameter [7:0] IR_CODE_TGT_7               = 8'h5C;
parameter       TGT_ACTIVE_HIGH_RESET_8     = 1'b0;
parameter [7:0] IR_CODE_TGT_8               = 8'h5D;
parameter       TGT_ACTIVE_HIGH_RESET_9     = 1'b0;
parameter [7:0] IR_CODE_TGT_9               = 8'h5E;
parameter       TGT_ACTIVE_HIGH_RESET_10    = 1'b0;
parameter [7:0] IR_CODE_TGT_10              = 8'h5F;
parameter       TGT_ACTIVE_HIGH_RESET_11    = 1'b0;
parameter [7:0] IR_CODE_TGT_11              = 8'h60;
parameter       TGT_ACTIVE_HIGH_RESET_12    = 1'b0;
parameter [7:0] IR_CODE_TGT_12              = 8'h61;
parameter       TGT_ACTIVE_HIGH_RESET_13    = 1'b0;
parameter [7:0] IR_CODE_TGT_13              = 8'h62;
parameter       TGT_ACTIVE_HIGH_RESET_14    = 1'b0;
parameter [7:0] IR_CODE_TGT_14              = 8'h63;
parameter       TGT_ACTIVE_HIGH_RESET_15    = 1'b0;
parameter [7:0] IR_CODE_TGT_15              = 8'h64;

////////////////////////////////////////////////////////////////////////////////
// Internal signals
////////////////////////////////////////////////////////////////////////////////
reg             TCK   = 1'b0;
reg             TRSTB = 1'b0;
wire            TMS;
wire            TDO;
wire            TDI;
wire    [15:0]  TGT_TCK;
wire    [15:0]  TGT_TMS;
wire    [15:0]  TGT_TDI;
wire    [15:0]  TGT_TRSTB;
wire    [15:0]  TGT_TDO;
genvar          tgt_idx;

////////////////////////////////////////////////////////////////////////////////
// Constants
////////////////////////////////////////////////////////////////////////////////
localparam [15:0] TGT_ACTIVE_HIGH_RESET = {
    TGT_ACTIVE_HIGH_RESET_15[0], TGT_ACTIVE_HIGH_RESET_14[0], TGT_ACTIVE_HIGH_RESET_13[0], TGT_ACTIVE_HIGH_RESET_12[0],
    TGT_ACTIVE_HIGH_RESET_11[0], TGT_ACTIVE_HIGH_RESET_10[0], TGT_ACTIVE_HIGH_RESET_9[0], TGT_ACTIVE_HIGH_RESET_8[0],
    TGT_ACTIVE_HIGH_RESET_7[0], TGT_ACTIVE_HIGH_RESET_6[0], TGT_ACTIVE_HIGH_RESET_5[0], TGT_ACTIVE_HIGH_RESET_4[0],
    TGT_ACTIVE_HIGH_RESET_3[0], TGT_ACTIVE_HIGH_RESET_2[0], TGT_ACTIVE_HIGH_RESET_1[0], TGT_ACTIVE_HIGH_RESET_0[0]
};

////////////////////////////////////////////////////////////////////////////////
// Clock & reset generation
////////////////////////////////////////////////////////////////////////////////
always
    begin
        #CLK_HP TCK <= ~TCK;
    end

initial
    begin
        @(posedge TCK);
        @(posedge TCK);
        TRSTB <= 1'b1;
    end

////////////////////////////////////////////////////////////////////////////////
// Instantiate JTAG master
////////////////////////////////////////////////////////////////////////////////
COREJTAGDEBUG_HOST_EMULATOR #(
    .IR_SCAN_LEN                (IR_REG_WIDTH),
    .DR_SCAN_LEN                (DR_REG_WIDTH),
    .IR_CODE_TGT                (IR_CODE_TGT_0)
) JTAG_M (
    // Inputs
    .TCK                        (TCK),
    .TRSTB                      (TRSTB),
    .TDI                        (TDI),
    
    // Outputs
    .TMS                        (TMS),
    .TDO                        (TDO)
);

////////////////////////////////////////////////////////////////////////////////
// Instantiate CoreJTAGDebug
////////////////////////////////////////////////////////////////////////////////
COREJTAGDEBUG #(
    .FAMILY                     (FAMILY),
    .NUM_DEBUG_TGTS             (NUM_DEBUG_TGTS),
    .TGT_ACTIVE_HIGH_RESET_0    (TGT_ACTIVE_HIGH_RESET_0),
    .IR_CODE_TGT_0              (IR_CODE_TGT_0),
    .TGT_ACTIVE_HIGH_RESET_1    (TGT_ACTIVE_HIGH_RESET_1),
    .IR_CODE_TGT_1              (IR_CODE_TGT_1),
    .TGT_ACTIVE_HIGH_RESET_2    (TGT_ACTIVE_HIGH_RESET_2),
    .IR_CODE_TGT_2              (IR_CODE_TGT_2),
    .TGT_ACTIVE_HIGH_RESET_3    (TGT_ACTIVE_HIGH_RESET_3),
    .IR_CODE_TGT_3              (IR_CODE_TGT_3),
    .TGT_ACTIVE_HIGH_RESET_4    (TGT_ACTIVE_HIGH_RESET_4),
    .IR_CODE_TGT_4              (IR_CODE_TGT_4),
    .TGT_ACTIVE_HIGH_RESET_5    (TGT_ACTIVE_HIGH_RESET_5),
    .IR_CODE_TGT_5              (IR_CODE_TGT_5),
    .TGT_ACTIVE_HIGH_RESET_6    (TGT_ACTIVE_HIGH_RESET_6),
    .IR_CODE_TGT_6              (IR_CODE_TGT_6),
    .TGT_ACTIVE_HIGH_RESET_7    (TGT_ACTIVE_HIGH_RESET_7),
    .IR_CODE_TGT_7              (IR_CODE_TGT_7),
    .TGT_ACTIVE_HIGH_RESET_8    (TGT_ACTIVE_HIGH_RESET_8),
    .IR_CODE_TGT_8              (IR_CODE_TGT_8),
    .TGT_ACTIVE_HIGH_RESET_9    (TGT_ACTIVE_HIGH_RESET_9),
    .IR_CODE_TGT_9              (IR_CODE_TGT_9),
    .TGT_ACTIVE_HIGH_RESET_10   (TGT_ACTIVE_HIGH_RESET_1),
    .IR_CODE_TGT_10             (IR_CODE_TGT_10),
    .TGT_ACTIVE_HIGH_RESET_11   (TGT_ACTIVE_HIGH_RESET_1),
    .IR_CODE_TGT_11             (IR_CODE_TGT_11),
    .TGT_ACTIVE_HIGH_RESET_12   (TGT_ACTIVE_HIGH_RESET_1),
    .IR_CODE_TGT_12             (IR_CODE_TGT_12),
    .TGT_ACTIVE_HIGH_RESET_13   (TGT_ACTIVE_HIGH_RESET_1),
    .IR_CODE_TGT_13             (IR_CODE_TGT_13),
    .TGT_ACTIVE_HIGH_RESET_14   (TGT_ACTIVE_HIGH_RESET_1),
    .IR_CODE_TGT_14             (IR_CODE_TGT_14),
    .TGT_ACTIVE_HIGH_RESET_15   (TGT_ACTIVE_HIGH_RESET_1),
    .IR_CODE_TGT_15             (IR_CODE_TGT_15)
) UUT (
    .TCK                        (TCK),
    .TMS                        (TMS),
    .TDI                        (TDO),
    .TRSTB                      (TRSTB),
    .TDO                        (TDI),
    .TGT_TCK_0                  (TGT_TCK[0]),
    .TGT_TMS_0                  (TGT_TMS[0]),
    .TGT_TDI_0                  (TGT_TDI[0]),
    .TGT_TRSTB_0                (TGT_TRSTB[0]),
    .TGT_TDO_0                  (TGT_TDO[0]),
    .TGT_TCK_1                  (TGT_TCK[1]),
    .TGT_TMS_1                  (TGT_TMS[1]),
    .TGT_TDI_1                  (TGT_TDI[1]),
    .TGT_TRSTB_1                (TGT_TRSTB[1]),
    .TGT_TDO_1                  (TGT_TDO[1]),
    .TGT_TCK_2                  (TGT_TCK[2]),
    .TGT_TMS_2                  (TGT_TMS[2]),
    .TGT_TDI_2                  (TGT_TDI[2]),
    .TGT_TRSTB_2                (TGT_TRSTB[2]),
    .TGT_TDO_2                  (TGT_TDO[2]),
    .TGT_TCK_3                  (TGT_TCK[3]),
    .TGT_TMS_3                  (TGT_TMS[3]),
    .TGT_TDI_3                  (TGT_TDI[3]),
    .TGT_TRSTB_3                (TGT_TRSTB[3]),
    .TGT_TDO_3                  (TGT_TDO[3]),
    .TGT_TCK_4                  (TGT_TCK[4]),
    .TGT_TMS_4                  (TGT_TMS[4]),
    .TGT_TDI_4                  (TGT_TDI[4]),
    .TGT_TRSTB_4                (TGT_TRSTB[4]),
    .TGT_TDO_4                  (TGT_TDO[4]),
    .TGT_TCK_5                  (TGT_TCK[5]),
    .TGT_TMS_5                  (TGT_TMS[5]),
    .TGT_TDI_5                  (TGT_TDI[5]),
    .TGT_TRSTB_5                (TGT_TRSTB[5]),
    .TGT_TDO_5                  (TGT_TDO[5]),
    .TGT_TCK_6                  (TGT_TCK[6]),
    .TGT_TMS_6                  (TGT_TMS[6]),
    .TGT_TDI_6                  (TGT_TDI[6]),
    .TGT_TRSTB_6                (TGT_TRSTB[6]),
    .TGT_TDO_6                  (TGT_TDO[6]),
    .TGT_TCK_7                  (TGT_TCK[7]),
    .TGT_TMS_7                  (TGT_TMS[7]),
    .TGT_TDI_7                  (TGT_TDI[7]),
    .TGT_TRSTB_7                (TGT_TRSTB[7]),
    .TGT_TDO_7                  (TGT_TDO[7]),
    .TGT_TCK_8                  (TGT_TCK[8]),
    .TGT_TMS_8                  (TGT_TMS[8]),
    .TGT_TDI_8                  (TGT_TDI[8]),
    .TGT_TRSTB_8                (TGT_TRSTB[8]),
    .TGT_TDO_8                  (TGT_TDO[8]),
    .TGT_TCK_9                  (TGT_TCK[9]),
    .TGT_TMS_9                  (TGT_TMS[9]),
    .TGT_TDI_9                  (TGT_TDI[9]),
    .TGT_TRSTB_9                (TGT_TRSTB[9]),
    .TGT_TDO_9                  (TGT_TDO[9]),
    .TGT_TCK_10                 (TGT_TCK[10]),
    .TGT_TMS_10                 (TGT_TMS[10]),
    .TGT_TDI_10                 (TGT_TDI[10]),
    .TGT_TRSTB_10               (TGT_TRSTB[10]),
    .TGT_TDO_10                 (TGT_TDO[10]),
    .TGT_TCK_11                 (TGT_TCK[11]),
    .TGT_TMS_11                 (TGT_TMS[11]),
    .TGT_TDI_11                 (TGT_TDI[11]),
    .TGT_TRSTB_11               (TGT_TRSTB[11]),
    .TGT_TDO_11                 (TGT_TDO[11]),
    .TGT_TCK_12                 (TGT_TCK[12]),
    .TGT_TMS_12                 (TGT_TMS[12]),
    .TGT_TDI_12                 (TGT_TDI[12]),
    .TGT_TRSTB_12               (TGT_TRSTB[12]),
    .TGT_TDO_12                 (TGT_TDO[12]),
    .TGT_TCK_13                 (TGT_TCK[13]),
    .TGT_TMS_13                 (TGT_TMS[13]),
    .TGT_TDI_13                 (TGT_TDI[13]),
    .TGT_TRSTB_13               (TGT_TRSTB[13]),
    .TGT_TDO_13                 (TGT_TDO[13]),
    .TGT_TCK_14                 (TGT_TCK[14]),
    .TGT_TMS_14                 (TGT_TMS[14]),
    .TGT_TDI_14                 (TGT_TDI[14]),
    .TGT_TRSTB_14               (TGT_TRSTB[14]),
    .TGT_TDO_14                 (TGT_TDO[14]),
    .TGT_TCK_15                 (TGT_TCK[15]),
    .TGT_TMS_15                 (TGT_TMS[15]),
    .TGT_TDI_15                 (TGT_TDI[15]),
    .TGT_TRSTB_15               (TGT_TRSTB[15]),
    .TGT_TDO_15                 (TGT_TDO[15])
);

////////////////////////////////////////////////////////////////////////////////
// JTAG Slave TAP instantiations
////////////////////////////////////////////////////////////////////////////////
generate
    for (tgt_idx =0; tgt_idx < NUM_DEBUG_TGTS; tgt_idx = tgt_idx + 1'b1)
        begin
            COREJTAGDEBUG_JTAG_TAP # (
                .IR_REG_WIDTH               (IR_REG_WIDTH),
                .DR_REG_WIDTH               (DR_REG_WIDTH),
                .ACTIVE_HIGH_RESET          (TGT_ACTIVE_HIGH_RESET[tgt_idx])
            ) TGT_TAP (
                // Inputs
                .TCK                        (TGT_TCK[tgt_idx]),
                .TRSTB                      (TGT_TRSTB[tgt_idx]),
                .TMS                        (TGT_TMS[tgt_idx]),
                .TDI                        (TGT_TDI[tgt_idx]),
                
                // Outputs
                .TDO                        (TGT_TDO[tgt_idx])
            );
        end
endgenerate

endmodule // COREJTAGDEBUG_TESTBENCH