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
module COREJTAGDEBUG_JTAG_TAP (
    // Inputs
    TCK,
    TRSTB,
    TMS,
    TDI,
    
    // Outputs
    TDO
);

////////////////////////////////////////////////////////////////////////////////
// Parameters
////////////////////////////////////////////////////////////////////////////////
parameter DR_REG_WIDTH      = 5;
parameter IR_REG_WIDTH      = 5;
parameter ACTIVE_HIGH_RESET = 0;

////////////////////////////////////////////////////////////////////////////////
// Port directions
////////////////////////////////////////////////////////////////////////////////
input   TCK;
input   TRSTB;
input   TMS;
input   TDI;

output  TDO;

////////////////////////////////////////////////////////////////////////////////
// Constants
////////////////////////////////////////////////////////////////////////////////
// State Machine encoding
localparam TEST_LOGIC_RESET  = 4'h0;
localparam RUN_TEST_IDLE     = 4'h1;
localparam SELECT_DR         = 4'h2;
localparam CAPTURE_DR        = 4'h3;
localparam SHIFT_DR          = 4'h4;
localparam EXIT1_DR          = 4'h5;
localparam PAUSE_DR          = 4'h6;
localparam EXIT2_DR          = 4'h7;
localparam UPDATE_DR         = 4'h8;
localparam SELECT_IR         = 4'h9;
localparam CAPTURE_IR        = 4'hA;
localparam SHIFT_IR          = 4'hB;
localparam EXIT1_IR          = 4'hC;
localparam PAUSE_IR          = 4'hD;
localparam EXIT2_IR          = 4'hE;
localparam UPDATE_IR         = 4'hF;

// Supported instructions
localparam [IR_REG_WIDTH-1:0] BYPASS_INSTR  = {(IR_REG_WIDTH){1'b1}};
localparam [IR_REG_WIDTH-1:0] ID_CODE_INSTR = {{(IR_REG_WIDTH-1){1'b0}}, 1'b1};

// TAP ID code
localparam [DR_REG_WIDTH-1:0] ID_CODE = 'hDEADC001;

////////////////////////////////////////////////////////////////////////////////
// Internal signal declarations
////////////////////////////////////////////////////////////////////////////////
reg     [3:0]              currTapState;
reg     [3:0]              nextTapState;
wire                       irShift;
wire                       drShift;
wire                       irCapture;
wire                       drCapture;
wire                       irUpdate;
wire                       drUpdate;
reg     [DR_REG_WIDTH-1:0] shiftReg;
reg     [IR_REG_WIDTH-1:0] irReg;

////////////////////////////////////////////////////////////////////////////////
// TAP Control FSM
////////////////////////////////////////////////////////////////////////////////
// Current state register
generate
    if (ACTIVE_HIGH_RESET == 1)
        begin
            always @ (posedge TCK or posedge TRSTB)
                begin
                    if (TRSTB)
                        begin
                            currTapState <= TEST_LOGIC_RESET;
                        end
                    else
                        begin
                            currTapState <= nextTapState;
                        end
                end
        end
    else
        begin
            always @ (posedge TCK or negedge TRSTB)
                begin
                    if (!TRSTB)
                        begin
                            currTapState <= TEST_LOGIC_RESET;
                        end
                    else
                        begin
                            currTapState <= nextTapState;
                        end
                end
        end
endgenerate

// Combinatorial outputs
assign drCapture = (currTapState == CAPTURE_DR) ? 1'b1 : 1'b0;
assign drShift   = (currTapState == SHIFT_DR)   ? 1'b1 : 1'b0;
assign drUpdate  = (currTapState == UPDATE_DR)  ? 1'b1 : 1'b0;
assign irCapture = (currTapState == CAPTURE_IR) ? 1'b1 : 1'b0;
assign irShift   = (currTapState == SHIFT_IR)   ? 1'b1 : 1'b0;
assign irUpdate  = (currTapState == UPDATE_IR)  ? 1'b1 : 1'b0;

// Next state combinatorial logic
always @ (*)
    begin
        case (currTapState)
            TEST_LOGIC_RESET: nextTapState = (!TMS) ? RUN_TEST_IDLE    : currTapState;
            RUN_TEST_IDLE:    nextTapState = (TMS)  ? SELECT_DR        : currTapState;
            SELECT_DR:        nextTapState = (!TMS) ? CAPTURE_DR       : SELECT_IR;
            CAPTURE_DR:       nextTapState = (TMS)  ? EXIT1_DR         : SHIFT_DR;
            SHIFT_DR:         nextTapState = (TMS)  ? EXIT1_DR         : currTapState;
            EXIT1_DR:         nextTapState = (TMS)  ? UPDATE_DR        : PAUSE_DR;
            PAUSE_DR:         nextTapState = (TMS)  ? EXIT2_DR         : currTapState;
            EXIT2_DR:         nextTapState = (TMS)  ? UPDATE_DR        : SHIFT_DR;
            UPDATE_DR:        nextTapState = (TMS)  ? SELECT_DR        : RUN_TEST_IDLE;
            SELECT_IR:        nextTapState = (TMS)  ? TEST_LOGIC_RESET : CAPTURE_IR;
            CAPTURE_IR:       nextTapState = (TMS)  ? EXIT1_IR         : SHIFT_IR;
            SHIFT_IR:         nextTapState = (TMS)  ? EXIT1_IR         : currTapState;
            EXIT1_IR:         nextTapState = (!TMS) ? PAUSE_IR         : UPDATE_IR;
            PAUSE_IR:         nextTapState = (TMS)  ? EXIT2_IR         : currTapState;
            EXIT2_IR:         nextTapState = (TMS)  ? UPDATE_IR        : SHIFT_IR;
            UPDATE_IR:        nextTapState = (TMS)  ? SELECT_DR        : RUN_TEST_IDLE;
        endcase
    end

////////////////////////////////////////////////////////////////////////////////
// Shift register
////////////////////////////////////////////////////////////////////////////////
generate
    if (ACTIVE_HIGH_RESET == 1)
        begin
            always @ (posedge TCK or posedge TRSTB)
                begin
                    if (TRSTB)
                        begin
                            shiftReg <= {DR_REG_WIDTH{1'b0}};
                        end
                    else
                        begin
                            if (irCapture)
                                begin
                                    shiftReg <= {{(DR_REG_WIDTH-1){1'b0}}, 1'b1};
                                end
                            else if (drCapture)
                                begin
                                    if (irReg == ID_CODE_INSTR)
                                        begin
                                            shiftReg <= ID_CODE;
                                        end
                                end
                            else if (irShift | drShift)
                                begin
                                    shiftReg <= {TDI, shiftReg[(DR_REG_WIDTH-1):1]};
                                end
                            else
                                begin
                                    shiftReg <= shiftReg;
                                end
                        end
                end
        end
    else
        begin
            always @ (posedge TCK or negedge TRSTB)
                begin
                    if (!TRSTB)
                        begin
                            shiftReg <= {DR_REG_WIDTH{1'b0}};
                        end
                    else
                        begin
                            if (irCapture)
                                begin
                                    shiftReg <= {{(DR_REG_WIDTH-1){1'b0}}, 1'b1};
                                end
                            else if (drCapture)
                                begin
                                    if (irReg == ID_CODE_INSTR)
                                        begin
                                            shiftReg <= ID_CODE;
                                        end
                                end
                            else if (irShift | drShift)
                                begin
                                    shiftReg <= {TDI, shiftReg[(DR_REG_WIDTH-1):1]};
                                end
                            else
                                begin
                                    shiftReg <= shiftReg;
                                end
                        end
                end
        end
endgenerate

assign TDO = (irReg == BYPASS_INSTR) ? shiftReg[(DR_REG_WIDTH-1)] : shiftReg[0];

////////////////////////////////////////////////////////////////////////////////
// IR register
////////////////////////////////////////////////////////////////////////////////
generate
    if (ACTIVE_HIGH_RESET == 1)
        begin
            always @ (posedge TCK or posedge TRSTB)
                begin
                    if (TRSTB)
                        begin
                            irReg <= {IR_REG_WIDTH{1'b0}};
                        end
                    else
                        begin
                            if (irCapture)
                                begin
                                    irReg <= {{(IR_REG_WIDTH-1){1'b0}}, 1'b1};
                                end
                            else if (irUpdate)
                                begin
                                    irReg <= shiftReg[DR_REG_WIDTH-1:DR_REG_WIDTH-IR_REG_WIDTH];
                                end
                            else
                                begin
                                    irReg <= irReg;
                                end
                        end
                end
        end
    else
        begin
            always @ (posedge TCK or negedge TRSTB)
                begin
                    if (!TRSTB)
                        begin
                            irReg <= {IR_REG_WIDTH{1'b0}};
                        end
                    else
                        begin
                            if (irCapture)
                                begin
                                    irReg <= {{(IR_REG_WIDTH-1){1'b0}}, 1'b1};
                                end
                            else if (irUpdate)
                                begin
                                    irReg <= shiftReg[DR_REG_WIDTH-1:DR_REG_WIDTH-IR_REG_WIDTH];
                                end
                            else
                                begin
                                    irReg <= irReg;
                                end
                        end
                end
        end
endgenerate

endmodule // COREJTAGDEBUG_JTAG_TAP