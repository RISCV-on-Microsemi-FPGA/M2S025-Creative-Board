// ****************************************************************************/
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
// SVN $Revision: 32411 $
// SVN $Date: 2018-08-31 12:53:49 +0100 (Fri, 31 Aug 2018) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
module COREJTAGDEBUG (
input   TCK,
input   TMS,
input   TDI,
input   TRSTB,

output  TDO,

output  TGT_TCK_0,
output  TGT_TMS_0,
output  TGT_TDI_0,
output  TGT_TRSTB_0,

input   TGT_TDO_0,

output  TGT_TCK_1,
output  TGT_TMS_1,
output  TGT_TDI_1,
output  TGT_TRSTB_1,

input   TGT_TDO_1,

output  TGT_TCK_2,
output  TGT_TMS_2,
output  TGT_TDI_2,
output  TGT_TRSTB_2,

input   TGT_TDO_2,

output  TGT_TCK_3,
output  TGT_TMS_3,
output  TGT_TDI_3,
output  TGT_TRSTB_3,

input   TGT_TDO_3,

output  TGT_TCK_4,
output  TGT_TMS_4,
output  TGT_TDI_4,
output  TGT_TRSTB_4,

input   TGT_TDO_4,

output  TGT_TCK_5,
output  TGT_TMS_5,
output  TGT_TDI_5,
output  TGT_TRSTB_5,

input   TGT_TDO_5,

output  TGT_TCK_6,
output  TGT_TMS_6,
output  TGT_TDI_6,
output  TGT_TRSTB_6,

input   TGT_TDO_6,

output  TGT_TCK_7,
output  TGT_TMS_7,
output  TGT_TDI_7,
output  TGT_TRSTB_7,

input   TGT_TDO_7,

output  TGT_TCK_8,
output  TGT_TMS_8,
output  TGT_TDI_8,
output  TGT_TRSTB_8,

input   TGT_TDO_8,

output  TGT_TCK_9,
output  TGT_TMS_9,
output  TGT_TDI_9,
output  TGT_TRSTB_9,

input   TGT_TDO_9,

output  TGT_TCK_10,
output  TGT_TMS_10,
output  TGT_TDI_10,
output  TGT_TRSTB_10,

input   TGT_TDO_10,

output  TGT_TCK_11,
output  TGT_TMS_11,
output  TGT_TDI_11,
output  TGT_TRSTB_11,

input   TGT_TDO_11,

output  TGT_TCK_12,
output  TGT_TMS_12,
output  TGT_TDI_12,
output  TGT_TRSTB_12,

input   TGT_TDO_12,

output  TGT_TCK_13,
output  TGT_TMS_13,
output  TGT_TDI_13,
output  TGT_TRSTB_13,

input   TGT_TDO_13,

output  TGT_TCK_14,
output  TGT_TMS_14,
output  TGT_TDI_14,
output  TGT_TRSTB_14,

input   TGT_TDO_14,

output  TGT_TCK_15,
output  TGT_TMS_15,
output  TGT_TDI_15,
output  TGT_TRSTB_15,

input   TGT_TDO_15,

input   UJTAG_BYPASS_TCK_0/* synthesis syn_keep = 1 */,
input   UJTAG_BYPASS_TMS_0/* synthesis syn_keep = 1 */,
input   UJTAG_BYPASS_TDI_0/* synthesis syn_keep = 1 */,
input   UJTAG_BYPASS_TRSTB_0/* synthesis syn_keep = 1 */,

output  UJTAG_BYPASS_TDO_0/* synthesis syn_keep = 1 */,

input   UJTAG_BYPASS_TCK_1/* synthesis syn_keep = 1 */,
input   UJTAG_BYPASS_TMS_1/* synthesis syn_keep = 1 */,
input   UJTAG_BYPASS_TDI_1/* synthesis syn_keep = 1 */,
input   UJTAG_BYPASS_TRSTB_1/* synthesis syn_keep = 1 */,

output  UJTAG_BYPASS_TDO_1/* synthesis syn_keep = 1 */,

input   UJTAG_BYPASS_TCK_2/* synthesis syn_keep = 1 */,
input   UJTAG_BYPASS_TMS_2/* synthesis syn_keep = 1 */,
input   UJTAG_BYPASS_TDI_2/* synthesis syn_keep = 1 */,
input   UJTAG_BYPASS_TRSTB_2/* synthesis syn_keep = 1 */,

output  UJTAG_BYPASS_TDO_2/* synthesis syn_keep = 1 */,

input   UJTAG_BYPASS_TCK_3/* synthesis syn_keep = 1 */,
input   UJTAG_BYPASS_TMS_3/* synthesis syn_keep = 1 */,
input   UJTAG_BYPASS_TDI_3/* synthesis syn_keep = 1 */,
input   UJTAG_BYPASS_TRSTB_3/* synthesis syn_keep = 1 */,

output  UJTAG_BYPASS_TDO_3/* synthesis syn_keep = 1 */
);

////////////////////////////////////////////////////////////////////////////////
// Parameters
////////////////////////////////////////////////////////////////////////////////
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
parameter UJTAG_BYPASS = 1'b0;

////////////////////////////////////////////////////////////////////////////////
// Internal signals
////////////////////////////////////////////////////////////////////////////////
wire                        UTDO;
wire [NUM_DEBUG_TGTS-1:0]   UTDODriven;
wire                        iUDRCK;
//wire                        UDRCKInt;
wire                        iURSTB;
wire                        iURSTB_inv;
wire                        URSTBInt;
wire                        URSTBInvInt;
wire                        UDRCAPInt;
wire                        UDRSHInt;
wire                        UDRUPDInt;
wire [7:0]                  UIREGInt;
wire                        UTDIInt;
wire [NUM_DEBUG_TGTS-1:0]   TGT_TDOInt;
wire [NUM_DEBUG_TGTS-1:0]   UTDOInt;
wire [NUM_DEBUG_TGTS-1:0]   UTDODRVInt;
wire [NUM_DEBUG_TGTS-1:0]   TGT_TCKInt;
wire [NUM_DEBUG_TGTS-1:0]   TGT_TCKInt_Glb;
wire [NUM_DEBUG_TGTS-1:0]   TGT_TRSTBInt_Glb;
wire [NUM_DEBUG_TGTS-1:0]   TGT_TMSInt;
wire [NUM_DEBUG_TGTS-1:0]   TGT_TDIInt;
genvar                      idx;

////////////////////////////////////////////////////////////////////////////////
// Constants
////////////////////////////////////////////////////////////////////////////////
localparam [127:0] IR_CODE_TGT = { 
    IR_CODE_TGT_15, IR_CODE_TGT_14, IR_CODE_TGT_13, IR_CODE_TGT_12,
    IR_CODE_TGT_11, IR_CODE_TGT_10, IR_CODE_TGT_9, IR_CODE_TGT_8,
    IR_CODE_TGT_7, IR_CODE_TGT_6, IR_CODE_TGT_5, IR_CODE_TGT_4,
    IR_CODE_TGT_3, IR_CODE_TGT_2, IR_CODE_TGT_1, IR_CODE_TGT_0
};

localparam [15:0] TGT_ACTIVE_HIGH_RESET = {
    TGT_ACTIVE_HIGH_RESET_15[0], TGT_ACTIVE_HIGH_RESET_14[0], TGT_ACTIVE_HIGH_RESET_13[0], TGT_ACTIVE_HIGH_RESET_12[0],
    TGT_ACTIVE_HIGH_RESET_11[0], TGT_ACTIVE_HIGH_RESET_10[0], TGT_ACTIVE_HIGH_RESET_9[0], TGT_ACTIVE_HIGH_RESET_8[0],
    TGT_ACTIVE_HIGH_RESET_7[0], TGT_ACTIVE_HIGH_RESET_6[0], TGT_ACTIVE_HIGH_RESET_5[0], TGT_ACTIVE_HIGH_RESET_4[0],
    TGT_ACTIVE_HIGH_RESET_3[0], TGT_ACTIVE_HIGH_RESET_2[0], TGT_ACTIVE_HIGH_RESET_1[0], TGT_ACTIVE_HIGH_RESET_0[0]
};

// Some families have a subtly different UJTAG macro - one that has a
// UIREG[7:0] port instead of eight separate ports ranging from UIREG0
// to UIREG7.
localparam USE_NEW_UJTAG = (FAMILY == 19) ? 1 :     // SmartFusion2
                           (FAMILY == 24) ? 1 :     // IGLOO2
                           (FAMILY == 25) ? 1 :     // RTG4
                           (FAMILY == 26) ? 1 : 0 ; // PolarFire

// When using multiple UJTAG instances in a design a specific wrapper is needed
// for G4 and G5( and later )  devices. This parameter is used to make sure that 
// the correct UJTAG instance is used for each family.

localparam USE_UJTAG_WRAPPER =  (FAMILY == 19) ? 1 :     // SmartFusion2
                                (FAMILY == 24) ? 1 :     // IGLOO2
                                (FAMILY == 25) ? 1 :0;   // RTG4
////////////////////////////////////////////////////////////////////////////////
// Instantiate one UJTAG macro instance
////////////////////////////////////////////////////////////////////////////////
generate
if (!UJTAG_BYPASS)
    begin
    if (USE_NEW_UJTAG)
        begin
            if (USE_UJTAG_WRAPPER)
                begin
                    COREJTAGDEBUG_UJTAG_WRAPPER UJTAG_inst(
                        // Inputs
                        .UTDO       (UTDO),
                        .TDI        (TDI),
                        .TMS        (TMS),
                        .TCK        (TCK),
                        .TRSTB      (TRSTB),
                        // Outputs
                        .UDRCAP     (UDRCAPInt),
                        .UDRSH      (UDRSHInt),
                        .UDRUPD     (UDRUPDInt),
                        .UIREG      (UIREGInt[7:0]),
                        .URSTB      (iURSTB),
                        .UDRCK      (iUDRCK),
                        .UTDI       (UTDIInt),
                        .TDO        (TDO)
                    );
                end
            else
                begin
                    UJTAG UJTAG_inst(
                        // Inputs
                        .UTDO       (UTDO),
                        .TDI        (TDI),
                        .TMS        (TMS),
                        .TCK        (TCK),
                        .TRSTB      (TRSTB),
                        // Outputs
                        .UDRCAP     (UDRCAPInt),
                        .UDRSH      (UDRSHInt),
                        .UDRUPD     (UDRUPDInt),
                        .UIREG      (UIREGInt[7:0]),
                        .URSTB      (iURSTB),
                        .UDRCK      (iUDRCK),
                        .UTDI       (UTDIInt),
                        .TDO        (TDO)
                    );
                end
        end
    else
        begin
            UJTAG UJTAG_inst(
                // Inputs
                .UTDO       (UTDO),
                .TDI        (TDI),
                .TMS        (TMS),
                .TCK        (TCK),
                .TRSTB      (TRSTB),
                // Outputs
                .UDRCAP     (UDRCAPInt),
                .UDRSH      (UDRSHInt),
                .UDRUPD     (UDRUPDInt),
                .UIREG7     (UIREGInt[7]),
                .UIREG6     (UIREGInt[6]),
                .UIREG5     (UIREGInt[5]),
                .UIREG4     (UIREGInt[4]),
                .UIREG3     (UIREGInt[3]),
                .UIREG2     (UIREGInt[2]),
                .UIREG1     (UIREGInt[1]),
                .UIREG0     (UIREGInt[0]),
                .URSTB      (iURSTB),
                .UDRCK      (iUDRCK),
                .UTDI       (UTDIInt),
                .TDO        (TDO)
            );
        end
    end
endgenerate


// Use a low-skew resource for routing the clock between the UJTAG
// macro and the uj_jtag tunneling logic sequential elements.
/*CLKINT UDRCK_GLB(
    .A          (iUDRCK),
    .Y          (UDRCKInt)
);

CLKINT URSTB_GLB(
    .A          (iURSTB),
    .Y          (URSTBInt)
);*/

generate
if (!UJTAG_BYPASS)
    begin
    if (TGT_ACTIVE_HIGH_RESET[NUM_DEBUG_TGTS-1:0] != {NUM_DEBUG_TGTS{1'b0}})
        begin
            // Some debug targets require an active-high reset source. Invert
            // the reset and promote it to a global.
            assign iURSTB_inv = ~iURSTB;

            /*CLKINT URSTB_INV_GLB(
                .A          (iURSTB_inv),
                .Y          (URSTBInvInt)
            );*/
        end
    for (idx = 0; idx < NUM_DEBUG_TGTS; idx = idx + 1)
        begin
            if (TGT_ACTIVE_HIGH_RESET[idx])
                begin
                    assign TGT_TRSTBInt_Glb[idx] = iURSTB_inv;  //URSTBInvInt;
                end
            else
                begin
                    assign TGT_TRSTBInt_Glb[idx] = iURSTB;   //URSTBInt;
                end
        end
    end
endgenerate

generate
if (!UJTAG_BYPASS)
    begin
    if (NUM_DEBUG_TGTS > 1)
        begin
            // Instate multiple COREJTAGDEBUG_UJ_JTAG module instances, one per
            // debug target
            for (idx = 0; idx < NUM_DEBUG_TGTS; idx = idx + 1)
                begin
                    COREJTAGDEBUG_UJ_JTAG #(
                        .IR_CODE_TGT        (IR_CODE_TGT[((idx+1)*8)-1:idx*8])
                    ) UJ_JTAG (
                        // UJTAG inputs
                        .UDRCK      (iUDRCK),     //(UDRCKInt),
                        .URSTB      (iURSTB),     //(URSTBInt),
                        .UDRCAP     (UDRCAPInt),
                        .UDRSH      (UDRSHInt),
                        .UDRUPD     (UDRUPDInt),
                        .UIREG      (UIREGInt),
                        .UTDI       (UTDIInt),
                        
                        // TGT JTAG inputs
                        .DUT_TDO    (TGT_TDOInt[idx]),
                        
                        // UJTAG outputs
                        .UTDO       (UTDOInt[idx]),
                        .UTDODRV    (UTDODRVInt[idx]),
                        
                        // TGT outputs
                        .DUT_TCK    (TGT_TCKInt[idx]),
                        .DUT_TMS    (TGT_TMSInt[idx]),
                        .DUT_TDI    (TGT_TDIInt[idx])
                    );
            
                    CLKINT TGT_TCK_GLB (
                        .A          (TGT_TCKInt[idx]),
                        .Y          (TGT_TCKInt_Glb[idx])
                    );
                end
        end
    else
        begin
            // Instantiate a single uj_jtag module instance
            COREJTAGDEBUG_UJ_JTAG #(
                .IR_CODE_TGT        (IR_CODE_TGT)
            ) UJ_JTAG (
                // UJTAG inputs
                .UDRCK      (iUDRCK),     //(UDRCKInt),
                .URSTB      (iURSTB),     //(URSTBInt),
                .UDRCAP     (UDRCAPInt),
                .UDRSH      (UDRSHInt),
                .UDRUPD     (UDRUPDInt),
                .UIREG      (UIREGInt),
                .UTDI       (UTDIInt),
                
                // TGT JTAG inputs
                .DUT_TDO    (TGT_TDOInt),
                
                // UJTAG outputs
                .UTDO       (UTDOInt),
                .UTDODRV    (UTDODRVInt),
                
                // TGT outputs
                .DUT_TCK    (TGT_TCKInt),
                .DUT_TMS    (TGT_TMSInt),
                .DUT_TDI    (TGT_TDIInt)
            );
            
            // Each debug target's clock is promoted to a separate low-skew
            // routing resource as clock gating is implemented in the uj_jtag
            // tunnel controller to prevent TDI assertions from upsetting the
            // targets TAP FSM during the length fields of the tunnel packet.
            CLKINT TGT_TCK_GLB (
                .A          (TGT_TCKInt),
                .Y          (TGT_TCKInt_Glb)
            );
        end
    end
endgenerate

generate 
if (!UJTAG_BYPASS)
    begin
    assign UTDODriven = UTDOInt[NUM_DEBUG_TGTS-1:0] & UTDODRVInt[NUM_DEBUG_TGTS-1:0];
    assign UTDO = |UTDODriven[NUM_DEBUG_TGTS-1:0];
    
    assign {TGT_TCK_15, TGT_TCK_14, TGT_TCK_13, TGT_TCK_12, TGT_TCK_11,
            TGT_TCK_10, TGT_TCK_9, TGT_TCK_8, TGT_TCK_7, TGT_TCK_6,
            TGT_TCK_5, TGT_TCK_4, TGT_TCK_3, TGT_TCK_2, TGT_TCK_1,
            TGT_TCK_0} = {{16-NUM_DEBUG_TGTS{1'b0}}, TGT_TCKInt_Glb[NUM_DEBUG_TGTS-1:0]};
            
    assign {TGT_TMS_15, TGT_TMS_14, TGT_TMS_13, TGT_TMS_12, TGT_TMS_11,
            TGT_TMS_10, TGT_TMS_9, TGT_TMS_8, TGT_TMS_7, TGT_TMS_6,
            TGT_TMS_5, TGT_TMS_4, TGT_TMS_3, TGT_TMS_2, TGT_TMS_1,
            TGT_TMS_0} = {{16-NUM_DEBUG_TGTS{1'b0}}, TGT_TMSInt[NUM_DEBUG_TGTS-1:0]};
    
    assign {TGT_TDI_15, TGT_TDI_14, TGT_TDI_13, TGT_TDI_12, TGT_TDI_11,
            TGT_TDI_10, TGT_TDI_9, TGT_TDI_8, TGT_TDI_7, TGT_TDI_6,
            TGT_TDI_5, TGT_TDI_4, TGT_TDI_3, TGT_TDI_2, TGT_TDI_1,
            TGT_TDI_0} = {{16-NUM_DEBUG_TGTS{1'b0}}, TGT_TDIInt[NUM_DEBUG_TGTS-1:0]};
    
    assign {TGT_TRSTB_15, TGT_TRSTB_14, TGT_TRSTB_13, TGT_TRSTB_12, TGT_TRSTB_11,
            TGT_TRSTB_10, TGT_TRSTB_9, TGT_TRSTB_8, TGT_TRSTB_7, TGT_TRSTB_6,
            TGT_TRSTB_5, TGT_TRSTB_4, TGT_TRSTB_3, TGT_TRSTB_2, TGT_TRSTB_1,
            TGT_TRSTB_0} = {{16-NUM_DEBUG_TGTS{1'b0}}, TGT_TRSTBInt_Glb[NUM_DEBUG_TGTS-1:0]};
end
endgenerate

generate
if (!UJTAG_BYPASS)
    begin
    if (NUM_DEBUG_TGTS == 16)
        begin
            assign TGT_TDOInt[NUM_DEBUG_TGTS-1:0] = {TGT_TDO_15, TGT_TDO_14, TGT_TDO_13, TGT_TDO_12,
                                                     TGT_TDO_11, TGT_TDO_10, TGT_TDO_9, TGT_TDO_8,
                                                     TGT_TDO_7, TGT_TDO_6, TGT_TDO_5, TGT_TDO_4,
                                                     TGT_TDO_3, TGT_TDO_2, TGT_TDO_1, TGT_TDO_0};
        end
    else if (NUM_DEBUG_TGTS == 8)
        begin
            assign TGT_TDOInt[NUM_DEBUG_TGTS-1:0] = {TGT_TDO_7, TGT_TDO_6, TGT_TDO_5, TGT_TDO_4,
                                                     TGT_TDO_3, TGT_TDO_2, TGT_TDO_1, TGT_TDO_0};
        end
    else if (NUM_DEBUG_TGTS == 4)
        begin
            assign TGT_TDOInt[NUM_DEBUG_TGTS-1:0] = {TGT_TDO_3, TGT_TDO_2, TGT_TDO_1, TGT_TDO_0};
        end
    else if (NUM_DEBUG_TGTS == 2)
        begin
            assign TGT_TDOInt[NUM_DEBUG_TGTS-1:0] = {TGT_TDO_1, TGT_TDO_0};
        end
    else
        begin            
            assign TGT_TDOInt[NUM_DEBUG_TGTS-1:0] = {TGT_TDO_0};
        end
    end
endgenerate


//GPIO JTAG
generate 
if (UJTAG_BYPASS)
    begin
    if(NUM_DEBUG_TGTS <= 1)
    begin
        assign  TGT_TCK_0 = UJTAG_BYPASS_TCK_0;
        assign  TGT_TMS_0 = UJTAG_BYPASS_TMS_0;
        assign  TGT_TDI_0 = UJTAG_BYPASS_TDI_0;
        assign  TGT_TRSTB_0 = !UJTAG_BYPASS_TRSTB_0;
        assign  UJTAG_BYPASS_TDO_0 = TGT_TDO_0;
    end
    else if(NUM_DEBUG_TGTS == 2)
    begin
        assign  TGT_TCK_0 = UJTAG_BYPASS_TCK_0;
        assign  TGT_TMS_0 = UJTAG_BYPASS_TMS_0;
        assign  TGT_TDI_0 = UJTAG_BYPASS_TDI_0;
        assign  TGT_TRSTB_0 = !UJTAG_BYPASS_TRSTB_0;
        assign  UJTAG_BYPASS_TDO_0 = TGT_TDO_0;
    
        assign  TGT_TCK_1 = UJTAG_BYPASS_TCK_1;
        assign  TGT_TMS_1 = UJTAG_BYPASS_TMS_1;
        assign  TGT_TDI_1 = UJTAG_BYPASS_TDI_1;
        assign  TGT_TRSTB_1 = !UJTAG_BYPASS_TRSTB_1;
        assign  UJTAG_BYPASS_TDO_1 = TGT_TDO_1;
    end
    else if(NUM_DEBUG_TGTS == 3)
    begin
        assign  TGT_TCK_0 = UJTAG_BYPASS_TCK_0;
        assign  TGT_TMS_0 = UJTAG_BYPASS_TMS_0;
        assign  TGT_TDI_0 = UJTAG_BYPASS_TDI_0;
        assign  TGT_TRSTB_0 = !UJTAG_BYPASS_TRSTB_0;
        assign  UJTAG_BYPASS_TDO_0 = TGT_TDO_0;
    
        assign  TGT_TCK_1 = UJTAG_BYPASS_TCK_1;
        assign  TGT_TMS_1 = UJTAG_BYPASS_TMS_1;
        assign  TGT_TDI_1 = UJTAG_BYPASS_TDI_1;
        assign  TGT_TRSTB_1 = !UJTAG_BYPASS_TRSTB_1;
        assign  UJTAG_BYPASS_TDO_1 = TGT_TDO_1;
    
        assign  TGT_TCK_2 = UJTAG_BYPASS_TCK_2;
        assign  TGT_TMS_2 = UJTAG_BYPASS_TMS_2;
        assign  TGT_TDI_2 = UJTAG_BYPASS_TDI_2;
        assign  TGT_TRSTB_2 = !UJTAG_BYPASS_TRSTB_2;
        assign  UJTAG_BYPASS_TDO_2 = TGT_TDO_2;
    end
    else 
    begin
        assign  TGT_TCK_0 = UJTAG_BYPASS_TCK_0;
        assign  TGT_TMS_0 = UJTAG_BYPASS_TMS_0;
        assign  TGT_TDI_0 = UJTAG_BYPASS_TDI_0;
        assign  TGT_TRSTB_0 = !UJTAG_BYPASS_TRSTB_0;
        assign  UJTAG_BYPASS_TDO_0 = TGT_TDO_0;
    
        assign  TGT_TCK_1 = UJTAG_BYPASS_TCK_1;
        assign  TGT_TMS_1 = UJTAG_BYPASS_TMS_1;
        assign  TGT_TDI_1 = UJTAG_BYPASS_TDI_1;
        assign  TGT_TRSTB_1 = !UJTAG_BYPASS_TRSTB_1;
        assign  UJTAG_BYPASS_TDO_1 = TGT_TDO_1;
    
        assign  TGT_TCK_2 = UJTAG_BYPASS_TCK_2;
        assign  TGT_TMS_2 = UJTAG_BYPASS_TMS_2;
        assign  TGT_TDI_2 = UJTAG_BYPASS_TDI_2;
        assign  TGT_TRSTB_2 = !UJTAG_BYPASS_TRSTB_2;
        assign  UJTAG_BYPASS_TDO_2 = TGT_TDO_2;
        
        assign  TGT_TCK_3 = UJTAG_BYPASS_TCK_3;
        assign  TGT_TMS_3 = UJTAG_BYPASS_TMS_3;
        assign  TGT_TDI_3 = UJTAG_BYPASS_TDI_3;
        assign  TGT_TRSTB_3 = !UJTAG_BYPASS_TRSTB_3;
        assign  UJTAG_BYPASS_TDO_3 = TGT_TDO_3;
    end
end
endgenerate    


endmodule // COREJTAGDEBUG