# M2S025-Creative-Board
SmartFusion2 M2S025 Creative Development Board


After regenerating the PROC_SUBSYSTEM or your own smart design for the M2S025 add
the following line to each of the signals below:

   /* synthesis syn_ramstyle = "registers" */

If this is not added the design will fail synthesis with a ram error.

/********************************************************************************************
* Signals 
********************************************************************************************/

CoreRISCV_AXI4 -> Top.v
ram_payload_addr_beat [0:1]; 
ram_payload_addr_block [0:1]; 
ram_payload_data [0:1]; 
ram_data [0:1];
ram_id [0:1];
ram_strb [0:1]; 


Files  -> Component -> Actel -> DirectCore -> COREAXITOAHBL -> 3.0.101 -> rtl -> vlog -> core -> 
CoreAXItoAHB_RAM_syncWrAsyncRd.v

reg    [63:0]  mem [15:0];


e.g. ram_id [0:1];   /* synthesis syn_ramstyle = "registers" */
