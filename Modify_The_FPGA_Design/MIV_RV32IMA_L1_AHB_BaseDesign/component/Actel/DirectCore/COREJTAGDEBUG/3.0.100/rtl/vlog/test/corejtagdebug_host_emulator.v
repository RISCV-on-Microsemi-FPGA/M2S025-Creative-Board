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
// SVN $Revision: 29839 $
// SVN $Date: 2017-05-16 16:23:16 +0100 (Tue, 16 May 2017) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`timescale 1ns/1ps
module COREJTAGDEBUG_HOST_EMULATOR (
    // Inputs
    TCK,
    TRSTB,
    TDI,
    
    // Outputs
    TMS,
    TDO
);

////////////////////////////////////////////////////////////////////////////////
// Parameters
////////////////////////////////////////////////////////////////////////////////
parameter IR_CODE_TGT = 8'h55;
parameter IR_SCAN_LEN = 5;
parameter DR_SCAN_LEN = 32;

////////////////////////////////////////////////////////////////////////////////
// Port directions
////////////////////////////////////////////////////////////////////////////////
// Inputs
input       TCK;
input       TRSTB;
input       TDI;

// Outputs
output reg  TMS = 1'b1;
output reg  TDO = 1'b0;

////////////////////////////////////////////////////////////////////////////////
//
////////////////////////////////////////////////////////////////////////////////
task exit_tst_logic_reset;
    begin
        @(negedge TCK);
        TMS <= 1'b0; // Goto "run test idle"
        @(negedge TCK);
    end
endtask

////////////////////////////////////////////////////////////////////////////////
//
////////////////////////////////////////////////////////////////////////////////
task ir_capture;
    begin
        @(negedge TCK);
        TMS <= 1'b1; // Goto "Select DR scan"
        @(negedge TCK);
        TMS <= 1'b1; // Goto "Select IR scan"
        @(negedge TCK);
        TMS <= 1'b0; // Goto "Capture IR"
        @(negedge TCK);
        TMS <= 1'b1; // Goto "exit 1 IR"
        @(negedge TCK);
        TMS <= 1'b1; // Goto "update IR"
        @(negedge TCK);
        TMS <= 1'b0; // Goto "run test idle"
    end
endtask

////////////////////////////////////////////////////////////////////////////////
//
////////////////////////////////////////////////////////////////////////////////
task ir_shift;
    input [31:0]            num_of_bits;
    input [31:0]            data;
    integer                 bitCnt;
    begin
        @(negedge TCK);
        TMS <= 1'b1; // Goto "Select DR scan"
        @(negedge TCK);
        TMS <= 1'b1; // Goto "Select IR scan"
        @(negedge TCK);
        TMS <= 1'b0; // Goto "Capture IR"
        @(negedge TCK);
        TMS <= 1'b0; // Goto "Shift IR"
        @(negedge TCK);
        for (bitCnt = 0; bitCnt < num_of_bits; bitCnt = bitCnt + 1)
            begin
                if (bitCnt == num_of_bits-1)
                    begin
                        TMS <= 1'b1; // Goto "exit 1 IR"
                    end
                else
                    begin
                        TMS <= 1'b0; // Goto "Shift IR"
                    end
                TDO <= data[bitCnt];
                @(negedge TCK);
            end
        TMS <= 1'b1; // Goto "update IR"
        @(negedge TCK);
        TMS <= 1'b0; // Goto "run test idle"
        @(negedge TCK);
    end
endtask

////////////////////////////////////////////////////////////////////////////////
//
////////////////////////////////////////////////////////////////////////////////
task dr_capture;
    begin
        @(negedge TCK);
        TMS <= 1'b1; // Goto "Select DR scan"
        @(negedge TCK);
        TMS <= 1'b0; // Goto "Capture DR"
        @(negedge TCK);
        TMS <= 1'b1; // Goto "exit 1 DR"
        @(negedge TCK);
        TMS <= 1'b1; // Goto "update DR"
        @(negedge TCK);
        TMS <= 1'b0; // Goto "run test idle"
    end
endtask

////////////////////////////////////////////////////////////////////////////////
//
////////////////////////////////////////////////////////////////////////////////
task dr_shift;
    input [31:0]            num_of_bits;
    input [88:0]            data;
    integer                 bitCnt;
    begin
        @(negedge TCK);
        TMS <= 1'b1; // Goto "Select DR scan"
        @(negedge TCK);
        TMS <= 1'b0; // Goto "Capture DR"
        @(negedge TCK);
        TMS <= 1'b0; // Goto "Shift DR"
        @(negedge TCK);
        for (bitCnt = 0; bitCnt < num_of_bits; bitCnt = bitCnt + 1)
            begin
                if (bitCnt == num_of_bits-1)
                    begin
                        TMS <= 1'b1; // Goto "exit 1 DR"
                    end
                else
                    begin
                        TMS <= 1'b0; // Goto "Shift DR"
                    end
                TDO <= data[bitCnt];
                @(negedge TCK);
            end
        TMS <= 1'b1; // Goto "update DR"
        @(negedge TCK);
        TMS <= 1'b0; // Goto "run test idle"
        @(negedge TCK);
    end
endtask

////////////////////////////////////////////////////////////////////////////////
//
////////////////////////////////////////////////////////////////////////////////
task tunnelled_ir_scan;
    input [IR_SCAN_LEN-1:0]    data;
    reg   [2:0]     in_trav_len;
    reg   [6:0]     in_trav_data;
    reg   [2:0]     out_trav_len;
    reg   [6:0]     out_trav_data;
    reg   [5:0]     payload_data_len;
    begin
        in_trav_len   = 3'b100;
        in_trav_data  = 4'b0011; // Brings us from "run_test_idle" to "shift IR"
        out_trav_len  = 3'b010;
        out_trav_data = 2'b01;  // Brings us from "exit 1 IR" to "run_test_idle"
        payload_data_len = IR_SCAN_LEN;
        
        dr_shift
        (   (12+(in_trav_len+payload_data_len+out_trav_len)),
            {
                out_trav_data[1:0],
                out_trav_len[2:0],
                data[IR_SCAN_LEN-1:0],
                payload_data_len[5:0],
                in_trav_data[3:0],
                in_trav_len[2:0]
            }
        );
    end
endtask

////////////////////////////////////////////////////////////////////////////////
// Performs a tunnelled DR scan with 32-bits of payload data
////////////////////////////////////////////////////////////////////////////////
task tunnelled_dr_scan;
    input [DR_SCAN_LEN-1:0] data;
    reg   [2:0]             in_trav_len;
    reg   [6:0]             in_trav_data;
    reg   [2:0]             out_trav_len;
    reg   [6:0]             out_trav_data;
    reg   [5:0]             payload_data_len;
    begin
        in_trav_len      = 3'b011;
        in_trav_data     = 3'b001; // Brings us from "run_test_idle" to "shift DR"
        out_trav_len     = 3'b010;
        out_trav_data    = 2'b01;  // Brings us from "exit 1 DR" to "run_test_idle"
        payload_data_len = DR_SCAN_LEN;
        
        dr_shift
        (   (12+(in_trav_len+payload_data_len+out_trav_len)),
            {
                out_trav_data[1:0],
                out_trav_len[2:0],
                data[DR_SCAN_LEN-1:0],
                payload_data_len[5:0],
                in_trav_data[2:0],
                in_trav_len[2:0]
            }
        );
    end
endtask

////////////////////////////////////////////////////////////////////////////////
// Tunnelled exit from "test_logic_reset" to "run_test_idle"
////////////////////////////////////////////////////////////////////////////////
task tunnelled_exit_tst_logic_reset;
    reg [2:0]              in_trav_length;
    reg [2:0]              in_tms_trav;
    reg [2:0]              out_trav_length;
    begin
        in_trav_length  = 3'b001;
        in_tms_trav     = 1'b0; // Brings us from "test_logic_reset" to "run_test_idle"
        out_trav_length = 3'b000;
        dr_shift(13, {out_trav_length, 6'd0, in_tms_trav, in_trav_length});
    end
endtask

////////////////////////////////////////////////////////////////////////////////
// CoreJTAGDebug User Testbench
////////////////////////////////////////////////////////////////////////////////
always 
    begin
        $display ("##########################################################");
        $display ("## CoreJTAGDebug User Testbench");
        $display ("##########################################################");
        // Wait for the reset de-assertion
        @(posedge TRSTB);
        // Wait for the reset to propogate through
        @(negedge TCK);
        @(negedge TCK);
        // Bring JTAG TAP FSM to "run test idle" state
        exit_tst_logic_reset;
        #300;
        // IR Scan to UJTAG so that uireg[7:0] has the IR_CODE to match the
        // IR_CODE of the uj_jtag tunnel controller inside CoreJTAGDebug
        ir_shift('d8, IR_CODE_TGT[7:0]);
        $display ($time, "IR Shift complete to address the uj_ujtag tunnel controller");
        #300;
        tunnelled_exit_tst_logic_reset;
        $display ($time, "Tunnelled reset complete");
        #300;
        tunnelled_ir_scan(5'b00001);
        $display ($time, "Tunnelled IR scan to get the ID code from the target TAP");
        #300;
        $display ($time, "Push through zeros in the tunnelled DR scan to read the ID code of the target TAP");
        tunnelled_dr_scan(32'b0);
        #500;
        $stop;
    end

endmodule // COREJTAGDEBUG_HOST_EMULATOR