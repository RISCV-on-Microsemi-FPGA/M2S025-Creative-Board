//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sun Sep  4 15:46:21 2016
// Version: v11.7 11.7.0.119
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// MSS_SUBSYSTEM
module MSS_SUBSYSTEM(
    // Inputs
    ACLK,
    ARADDR,
    ARADDR_0,
    ARBURST,
    ARBURST_0,
    ARESETN,
    ARID,
    ARID_0,
    ARLEN,
    ARLEN_0,
    ARSIZE,
    ARSIZE_0,
    ARVALID,
    ARVALID_0,
    AWADDR,
    AWADDR_0,
    AWBURST,
    AWBURST_0,
    AWID,
    AWID_0,
    AWLEN,
    AWLEN_0,
    AWSIZE,
    AWSIZE_0,
    AWVALID,
    AWVALID_0,
    BREADY,
    BREADY_0,
    CLK0_PAD,
    DEVRST_N,
    FAB_RESET_N,
    GPIO_IN,
    HCLK,
    HRESETN,
    MDDR_DQS_TMATCH_0_IN,
    PCLK,
    PRESETN,
    RREADY,
    RREADY_0,
    RX,
    WDATA,
    WDATA_0,
    WID,
    WID_0,
    WLAST,
    WLAST_0,
    WSTRB,
    WSTRB_0,
    WVALID,
    WVALID_0,
    // Outputs
    ARREADY,
    ARREADY_0,
    AWREADY,
    AWREADY_0,
    BID,
    BID_0,
    BRESP,
    BRESP_0,
    BVALID,
    BVALID_0,
    DDR_READY,
    FIC_0_CLK,
    FIC_0_LOCK,
    GPIO_OUT,
    INIT_DONE,
    MDDR_ADDR,
    MDDR_BA,
    MDDR_CAS_N,
    MDDR_CKE,
    MDDR_CLK,
    MDDR_CLK_N,
    MDDR_CS_N,
    MDDR_DQS_TMATCH_0_OUT,
    MDDR_ODT,
    MDDR_RAS_N,
    MDDR_RESET_N,
    MDDR_WE_N,
    MSS_DDR_FIC_SUBSYSTEM_CLK,
    MSS_DDR_FIC_SUBSYSTEM_LOCK,
    MSS_READY,
    POWER_ON_RESET_N,
    RDATA,
    RDATA_0,
    RID,
    RID_0,
    RLAST,
    RLAST_0,
    RRESP,
    RRESP_0,
    RVALID,
    RVALID_0,
    TIMINT_0,
    TIMINT_1,
    TX,
    WREADY,
    WREADY_0,
    // Inouts
    MDDR_DM_RDQS,
    MDDR_DQ,
    MDDR_DQS,
    MDDR_DQS_N
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         ACLK;
input  [31:0] ARADDR;
input  [31:0] ARADDR_0;
input  [1:0]  ARBURST;
input  [1:0]  ARBURST_0;
input         ARESETN;
input  [4:0]  ARID;
input  [4:0]  ARID_0;
input  [3:0]  ARLEN;
input  [3:0]  ARLEN_0;
input  [2:0]  ARSIZE;
input  [2:0]  ARSIZE_0;
input         ARVALID;
input         ARVALID_0;
input  [31:0] AWADDR;
input  [31:0] AWADDR_0;
input  [1:0]  AWBURST;
input  [1:0]  AWBURST_0;
input  [4:0]  AWID;
input  [4:0]  AWID_0;
input  [3:0]  AWLEN;
input  [3:0]  AWLEN_0;
input  [2:0]  AWSIZE;
input  [2:0]  AWSIZE_0;
input         AWVALID;
input         AWVALID_0;
input         BREADY;
input         BREADY_0;
input         CLK0_PAD;
input         DEVRST_N;
input         FAB_RESET_N;
input  [31:0] GPIO_IN;
input         HCLK;
input         HRESETN;
input         MDDR_DQS_TMATCH_0_IN;
input         PCLK;
input         PRESETN;
input         RREADY;
input         RREADY_0;
input         RX;
input  [63:0] WDATA;
input  [63:0] WDATA_0;
input  [4:0]  WID;
input  [4:0]  WID_0;
input         WLAST;
input         WLAST_0;
input  [7:0]  WSTRB;
input  [7:0]  WSTRB_0;
input         WVALID;
input         WVALID_0;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        ARREADY;
output        ARREADY_0;
output        AWREADY;
output        AWREADY_0;
output [4:0]  BID;
output [4:0]  BID_0;
output [1:0]  BRESP;
output [1:0]  BRESP_0;
output        BVALID;
output        BVALID_0;
output        DDR_READY;
output        FIC_0_CLK;
output        FIC_0_LOCK;
output [31:0] GPIO_OUT;
output        INIT_DONE;
output [15:0] MDDR_ADDR;
output [2:0]  MDDR_BA;
output        MDDR_CAS_N;
output        MDDR_CKE;
output        MDDR_CLK;
output        MDDR_CLK_N;
output        MDDR_CS_N;
output        MDDR_DQS_TMATCH_0_OUT;
output        MDDR_ODT;
output        MDDR_RAS_N;
output        MDDR_RESET_N;
output        MDDR_WE_N;
output        MSS_DDR_FIC_SUBSYSTEM_CLK;
output        MSS_DDR_FIC_SUBSYSTEM_LOCK;
output        MSS_READY;
output        POWER_ON_RESET_N;
output [63:0] RDATA;
output [63:0] RDATA_0;
output [4:0]  RID;
output [4:0]  RID_0;
output        RLAST;
output        RLAST_0;
output [1:0]  RRESP;
output [1:0]  RRESP_0;
output        RVALID;
output        RVALID_0;
output        TIMINT_0;
output        TIMINT_1;
output        TX;
output        WREADY;
output        WREADY_0;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  [1:0]  MDDR_DM_RDQS;
inout  [15:0] MDDR_DQ;
inout  [1:0]  MDDR_DQS;
inout  [1:0]  MDDR_DQS_N;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          ACLK;
wire          ARESETN;
wire   [31:0] ARADDR_0;
wire   [1:0]  ARBURST_0;
wire   [4:0]  ARID_0;
wire   [3:0]  ARLEN_0;
wire          CachedAXISlaveIF_ARREADY;
wire   [2:0]  ARSIZE_0;
wire          ARVALID_0;
wire   [31:0] AWADDR_0;
wire   [1:0]  AWBURST_0;
wire   [4:0]  AWID_0;
wire   [3:0]  AWLEN_0;
wire          CachedAXISlaveIF_AWREADY;
wire   [2:0]  AWSIZE_0;
wire          AWVALID_0;
wire   [4:0]  CachedAXISlaveIF_BID;
wire          BREADY_0;
wire   [1:0]  CachedAXISlaveIF_BRESP;
wire          CachedAXISlaveIF_BVALID;
wire   [63:0] CachedAXISlaveIF_RDATA;
wire   [4:0]  CachedAXISlaveIF_RID;
wire          CachedAXISlaveIF_RLAST;
wire          RREADY_0;
wire   [1:0]  CachedAXISlaveIF_RRESP;
wire          CachedAXISlaveIF_RVALID;
wire   [63:0] WDATA_0;
wire   [4:0]  WID_0;
wire          WLAST_0;
wire          CachedAXISlaveIF_WREADY;
wire   [7:0]  WSTRB_0;
wire          WVALID_0;
wire          CLK0_PAD;
wire   [31:0] CoreAHBLite_0_AHBmslave6_HADDR;
wire   [2:0]  CoreAHBLite_0_AHBmslave6_HBURST;
wire          CoreAHBLite_0_AHBmslave6_HMASTLOCK;
wire   [3:0]  CoreAHBLite_0_AHBmslave6_HPROT;
wire   [31:0] CoreAHBLite_0_AHBmslave6_HRDATA;
wire          CoreAHBLite_0_AHBmslave6_HREADY;
wire          CoreAHBLite_0_AHBmslave6_HREADYOUT;
wire          CoreAHBLite_0_AHBmslave6_HSELx;
wire   [1:0]  CoreAHBLite_0_AHBmslave6_HTRANS;
wire   [31:0] CoreAHBLite_0_AHBmslave6_HWDATA;
wire          CoreAHBLite_0_AHBmslave6_HWRITE;
wire   [31:0] CoreAHBLite_0_AHBmslave7_HADDR;
wire   [2:0]  CoreAHBLite_0_AHBmslave7_HBURST;
wire          CoreAHBLite_0_AHBmslave7_HMASTLOCK;
wire   [3:0]  CoreAHBLite_0_AHBmslave7_HPROT;
wire   [31:0] CoreAHBLite_0_AHBmslave7_HRDATA;
wire          CoreAHBLite_0_AHBmslave7_HREADY;
wire          CoreAHBLite_0_AHBmslave7_HREADYOUT;
wire   [1:0]  CoreAHBLite_0_AHBmslave7_HRESP;
wire          CoreAHBLite_0_AHBmslave7_HSELx;
wire   [2:0]  CoreAHBLite_0_AHBmslave7_HSIZE;
wire   [1:0]  CoreAHBLite_0_AHBmslave7_HTRANS;
wire   [31:0] CoreAHBLite_0_AHBmslave7_HWDATA;
wire          CoreAHBLite_0_AHBmslave7_HWRITE;
wire   [31:0] CoreAHBLite_1_AHBmslave16_HADDR;
wire   [2:0]  CoreAHBLite_1_AHBmslave16_HBURST;
wire          CoreAHBLite_1_AHBmslave16_HMASTLOCK;
wire   [3:0]  CoreAHBLite_1_AHBmslave16_HPROT;
wire   [31:0] CoreAHBLite_1_AHBmslave16_HRDATA;
wire          CoreAHBLite_1_AHBmslave16_HREADY;
wire          CoreAHBLite_1_AHBmslave16_HREADYOUT;
wire          CoreAHBLite_1_AHBmslave16_HSELx;
wire   [1:0]  CoreAHBLite_1_AHBmslave16_HTRANS;
wire   [31:0] CoreAHBLite_1_AHBmslave16_HWDATA;
wire          CoreAHBLite_1_AHBmslave16_HWRITE;
wire   [31:0] COREAHBTOAPB3_0_APBmaster_PADDR;
wire          COREAHBTOAPB3_0_APBmaster_PENABLE;
wire   [31:0] COREAHBTOAPB3_0_APBmaster_PRDATA;
wire          COREAHBTOAPB3_0_APBmaster_PREADY;
wire          COREAHBTOAPB3_0_APBmaster_PSELx;
wire          COREAHBTOAPB3_0_APBmaster_PSLVERR;
wire   [31:0] COREAHBTOAPB3_0_APBmaster_PWDATA;
wire          COREAHBTOAPB3_0_APBmaster_PWRITE;
wire          CoreAPB3_0_APBmslave1_PENABLE;
wire          CoreAPB3_0_APBmslave1_PREADY;
wire          CoreAPB3_0_APBmslave1_PSELx;
wire          CoreAPB3_0_APBmslave1_PSLVERR;
wire          CoreAPB3_0_APBmslave1_PWRITE;
wire   [31:0] CoreAPB3_0_APBmslave2_PRDATA;
wire          CoreAPB3_0_APBmslave2_PREADY;
wire          CoreAPB3_0_APBmslave2_PSELx;
wire          CoreAPB3_0_APBmslave2_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave3_PRDATA;
wire          CoreAPB3_0_APBmslave3_PSELx;
wire   [31:0] CoreAPB3_0_APBmslave4_PRDATA;
wire          CoreAPB3_0_APBmslave4_PSELx;
wire   [31:0] CoreAPB3_0_APBmslave5_PRDATA;
wire          CoreAPB3_0_APBmslave5_PREADY;
wire          CoreAPB3_0_APBmslave5_PSELx;
wire          CoreAPB3_0_APBmslave5_PSLVERR;
wire   [31:0] COREAXITOAHBL_0_AHBMasterIF_HADDR;
wire   [2:0]  COREAXITOAHBL_0_AHBMasterIF_HBURST;
wire   [31:0] COREAXITOAHBL_0_AHBMasterIF_HRDATA;
wire          COREAXITOAHBL_0_AHBMasterIF_HREADY;
wire   [2:0]  COREAXITOAHBL_0_AHBMasterIF_HSIZE;
wire   [1:0]  COREAXITOAHBL_0_AHBMasterIF_HTRANS;
wire   [31:0] COREAXITOAHBL_0_AHBMasterIF_HWDATA;
wire          COREAXITOAHBL_0_AHBMasterIF_HWRITE;
wire   [31:0] COREAXITOAHBL_1_AHBMasterIF_HADDR;
wire   [2:0]  COREAXITOAHBL_1_AHBMasterIF_HBURST;
wire   [31:0] COREAXITOAHBL_1_AHBMasterIF_HRDATA;
wire          COREAXITOAHBL_1_AHBMasterIF_HREADY;
wire   [2:0]  COREAXITOAHBL_1_AHBMasterIF_HSIZE;
wire   [1:0]  COREAXITOAHBL_1_AHBMasterIF_HTRANS;
wire   [31:0] COREAXITOAHBL_1_AHBMasterIF_HWDATA;
wire          COREAXITOAHBL_1_AHBMasterIF_HWRITE;
wire          DDR_READY_net_0;
wire          DEVRST_N;
wire          FAB_RESET_N;
wire          FIC_0_CLK_net_0;
wire          FIC_0_LOCK_net_0;
wire   [31:0] GPIO_IN;
wire   [31:0] GPIO_OUT_net_0;
wire          HCLK;
wire          HRESETN;
wire          INIT_DONE_net_0;
wire   [15:0] MDDR_ADDR_net_0;
wire   [2:0]  MDDR_BA_net_0;
wire          MDDR_CAS_N_net_0;
wire          MDDR_CKE_net_0;
wire          MDDR_CLK_net_0;
wire          MDDR_CLK_N_net_0;
wire          MDDR_CS_N_net_0;
wire   [1:0]  MDDR_DM_RDQS;
wire   [15:0] MDDR_DQ;
wire   [1:0]  MDDR_DQS;
wire   [1:0]  MDDR_DQS_N;
wire          MDDR_DQS_TMATCH_0_IN;
wire          MDDR_DQS_TMATCH_0_OUT_net_0;
wire          MDDR_ODT_net_0;
wire          MDDR_RAS_N_net_0;
wire          MDDR_RESET_N_net_0;
wire          MDDR_WE_N_net_0;
wire          MSS_DDR_FIC_SUBSYSTEM_CLK_net_0;
wire          MSS_DDR_FIC_SUBSYSTEM_LOCK_net_0;
wire          MSS_READY_net_0;
wire          PCLK;
wire          POWER_ON_RESET_N_net_0;
wire          PRESETN;
wire          RX;
wire          TIMINT_0_net_0;
wire          TIMINT_1_net_0;
wire          TX_net_0;
wire   [31:0] ARADDR;
wire   [1:0]  ARBURST;
wire   [4:0]  ARID;
wire   [3:0]  ARLEN;
wire          UncachedAXISlaveIF_ARREADY;
wire   [2:0]  ARSIZE;
wire          ARVALID;
wire   [31:0] AWADDR;
wire   [1:0]  AWBURST;
wire   [4:0]  AWID;
wire   [3:0]  AWLEN;
wire          UncachedAXISlaveIF_AWREADY;
wire   [2:0]  AWSIZE;
wire          AWVALID;
wire   [4:0]  UncachedAXISlaveIF_BID;
wire          BREADY;
wire   [1:0]  UncachedAXISlaveIF_BRESP;
wire          UncachedAXISlaveIF_BVALID;
wire   [63:0] UncachedAXISlaveIF_RDATA;
wire   [4:0]  UncachedAXISlaveIF_RID;
wire          UncachedAXISlaveIF_RLAST;
wire          RREADY;
wire   [1:0]  UncachedAXISlaveIF_RRESP;
wire          UncachedAXISlaveIF_RVALID;
wire   [63:0] WDATA;
wire   [4:0]  WID;
wire          WLAST;
wire          UncachedAXISlaveIF_WREADY;
wire   [7:0]  WSTRB;
wire          WVALID;
wire          MDDR_DQS_TMATCH_0_OUT_net_1;
wire          MDDR_CAS_N_net_1;
wire          MDDR_CLK_net_1;
wire          MDDR_CLK_N_net_1;
wire          MDDR_CKE_net_1;
wire          MDDR_CS_N_net_1;
wire          MDDR_ODT_net_1;
wire          MDDR_RAS_N_net_1;
wire          MDDR_RESET_N_net_1;
wire          MDDR_WE_N_net_1;
wire          TIMINT_0_net_1;
wire          TIMINT_1_net_1;
wire          TX_net_1;
wire          UncachedAXISlaveIF_AWREADY_net_0;
wire          UncachedAXISlaveIF_WREADY_net_0;
wire          UncachedAXISlaveIF_BVALID_net_0;
wire          UncachedAXISlaveIF_ARREADY_net_0;
wire          UncachedAXISlaveIF_RLAST_net_0;
wire          UncachedAXISlaveIF_RVALID_net_0;
wire          CachedAXISlaveIF_AWREADY_net_0;
wire          CachedAXISlaveIF_WREADY_net_0;
wire          CachedAXISlaveIF_BVALID_net_0;
wire          CachedAXISlaveIF_ARREADY_net_0;
wire          CachedAXISlaveIF_RLAST_net_0;
wire          CachedAXISlaveIF_RVALID_net_0;
wire          MSS_READY_net_1;
wire          DDR_READY_net_1;
wire          POWER_ON_RESET_N_net_1;
wire          MSS_DDR_FIC_SUBSYSTEM_LOCK_net_1;
wire          MSS_DDR_FIC_SUBSYSTEM_CLK_net_1;
wire          FIC_0_LOCK_net_1;
wire          FIC_0_CLK_net_1;
wire          INIT_DONE_net_1;
wire   [15:0] MDDR_ADDR_net_1;
wire   [2:0]  MDDR_BA_net_1;
wire   [31:0] GPIO_OUT_net_1;
wire   [4:0]  UncachedAXISlaveIF_BID_net_0;
wire   [1:0]  UncachedAXISlaveIF_BRESP_net_0;
wire   [4:0]  UncachedAXISlaveIF_RID_net_0;
wire   [63:0] UncachedAXISlaveIF_RDATA_net_0;
wire   [1:0]  UncachedAXISlaveIF_RRESP_net_0;
wire   [4:0]  CachedAXISlaveIF_BID_net_0;
wire   [1:0]  CachedAXISlaveIF_BRESP_net_0;
wire   [4:0]  CachedAXISlaveIF_RID_net_0;
wire   [63:0] CachedAXISlaveIF_RDATA_net_0;
wire   [1:0]  CachedAXISlaveIF_RRESP_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [31:0] GPIO_IN_const_net_0;
wire   [15:0] MSS_INT_F2M_const_net_0;
wire          GND_net;
wire          VCC_net;
wire   [31:0] IADDR_const_net_0;
wire   [3:0]  HPROT_M0_const_net_0;
wire   [31:0] HADDR_M1_const_net_0;
wire   [1:0]  HTRANS_M1_const_net_0;
wire   [2:0]  HSIZE_M1_const_net_0;
wire   [2:0]  HBURST_M1_const_net_0;
wire   [3:0]  HPROT_M1_const_net_0;
wire   [31:0] HWDATA_M1_const_net_0;
wire   [31:0] HADDR_M2_const_net_0;
wire   [1:0]  HTRANS_M2_const_net_0;
wire   [2:0]  HSIZE_M2_const_net_0;
wire   [2:0]  HBURST_M2_const_net_0;
wire   [3:0]  HPROT_M2_const_net_0;
wire   [31:0] HWDATA_M2_const_net_0;
wire   [31:0] HADDR_M3_const_net_0;
wire   [1:0]  HTRANS_M3_const_net_0;
wire   [2:0]  HSIZE_M3_const_net_0;
wire   [2:0]  HBURST_M3_const_net_0;
wire   [3:0]  HPROT_M3_const_net_0;
wire   [31:0] HWDATA_M3_const_net_0;
wire   [31:0] HRDATA_S0_const_net_0;
wire   [1:0]  HRESP_S0_const_net_0;
wire   [31:0] HRDATA_S1_const_net_0;
wire   [1:0]  HRESP_S1_const_net_0;
wire   [31:0] HRDATA_S2_const_net_0;
wire   [1:0]  HRESP_S2_const_net_0;
wire   [31:0] HRDATA_S3_const_net_0;
wire   [1:0]  HRESP_S3_const_net_0;
wire   [31:0] HRDATA_S4_const_net_0;
wire   [1:0]  HRESP_S4_const_net_0;
wire   [31:0] HRDATA_S5_const_net_0;
wire   [1:0]  HRESP_S5_const_net_0;
wire   [31:0] HRDATA_S8_const_net_0;
wire   [1:0]  HRESP_S8_const_net_0;
wire   [31:0] HRDATA_S9_const_net_0;
wire   [1:0]  HRESP_S9_const_net_0;
wire   [31:0] HRDATA_S10_const_net_0;
wire   [1:0]  HRESP_S10_const_net_0;
wire   [31:0] HRDATA_S11_const_net_0;
wire   [1:0]  HRESP_S11_const_net_0;
wire   [31:0] HRDATA_S12_const_net_0;
wire   [1:0]  HRESP_S12_const_net_0;
wire   [31:0] HRDATA_S13_const_net_0;
wire   [1:0]  HRESP_S13_const_net_0;
wire   [31:0] HRDATA_S14_const_net_0;
wire   [1:0]  HRESP_S14_const_net_0;
wire   [31:0] HRDATA_S15_const_net_0;
wire   [1:0]  HRESP_S15_const_net_0;
wire   [31:0] HRDATA_S16_const_net_0;
wire   [1:0]  HRESP_S16_const_net_0;
wire   [3:0]  HPROT_M0_const_net_1;
wire   [31:0] HADDR_M1_const_net_1;
wire   [1:0]  HTRANS_M1_const_net_1;
wire   [2:0]  HSIZE_M1_const_net_1;
wire   [2:0]  HBURST_M1_const_net_1;
wire   [3:0]  HPROT_M1_const_net_1;
wire   [31:0] HWDATA_M1_const_net_1;
wire   [31:0] HADDR_M2_const_net_1;
wire   [1:0]  HTRANS_M2_const_net_1;
wire   [2:0]  HSIZE_M2_const_net_1;
wire   [2:0]  HBURST_M2_const_net_1;
wire   [3:0]  HPROT_M2_const_net_1;
wire   [31:0] HWDATA_M2_const_net_1;
wire   [31:0] HADDR_M3_const_net_1;
wire   [1:0]  HTRANS_M3_const_net_1;
wire   [2:0]  HSIZE_M3_const_net_1;
wire   [2:0]  HBURST_M3_const_net_1;
wire   [3:0]  HPROT_M3_const_net_1;
wire   [31:0] HWDATA_M3_const_net_1;
wire   [31:0] HRDATA_S0_const_net_1;
wire   [1:0]  HRESP_S0_const_net_1;
wire   [31:0] HRDATA_S1_const_net_1;
wire   [1:0]  HRESP_S1_const_net_1;
wire   [31:0] HRDATA_S2_const_net_1;
wire   [1:0]  HRESP_S2_const_net_1;
wire   [31:0] HRDATA_S3_const_net_1;
wire   [1:0]  HRESP_S3_const_net_1;
wire   [31:0] HRDATA_S4_const_net_1;
wire   [1:0]  HRESP_S4_const_net_1;
wire   [31:0] HRDATA_S5_const_net_1;
wire   [1:0]  HRESP_S5_const_net_1;
wire   [31:0] HRDATA_S6_const_net_0;
wire   [1:0]  HRESP_S6_const_net_0;
wire   [31:0] HRDATA_S7_const_net_0;
wire   [1:0]  HRESP_S7_const_net_0;
wire   [31:0] HRDATA_S8_const_net_1;
wire   [1:0]  HRESP_S8_const_net_1;
wire   [31:0] HRDATA_S9_const_net_1;
wire   [1:0]  HRESP_S9_const_net_1;
wire   [31:0] HRDATA_S10_const_net_1;
wire   [1:0]  HRESP_S10_const_net_1;
wire   [31:0] HRDATA_S11_const_net_1;
wire   [1:0]  HRESP_S11_const_net_1;
wire   [31:0] HRDATA_S12_const_net_1;
wire   [1:0]  HRESP_S12_const_net_1;
wire   [31:0] HRDATA_S13_const_net_1;
wire   [1:0]  HRESP_S13_const_net_1;
wire   [31:0] HRDATA_S14_const_net_1;
wire   [1:0]  HRESP_S14_const_net_1;
wire   [31:0] HRDATA_S15_const_net_1;
wire   [1:0]  HRESP_S15_const_net_1;
wire   [31:0] PRDATAS0_const_net_0;
wire   [31:0] PRDATAS6_const_net_0;
wire   [31:0] PRDATAS7_const_net_0;
wire   [31:0] PRDATAS8_const_net_0;
wire   [31:0] PRDATAS9_const_net_0;
wire   [31:0] PRDATAS10_const_net_0;
wire   [31:0] PRDATAS11_const_net_0;
wire   [31:0] PRDATAS12_const_net_0;
wire   [31:0] PRDATAS13_const_net_0;
wire   [31:0] PRDATAS14_const_net_0;
wire   [31:0] PRDATAS15_const_net_0;
wire   [31:0] PRDATAS16_const_net_0;
wire   [31:0] FIC_0_AHB_M_HRDATA_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [1:1]  CoreAHBLite_0_AHBmslave6_HRESP_0_1to1;
wire   [0:0]  CoreAHBLite_0_AHBmslave6_HRESP_0_0to0;
wire   [1:0]  CoreAHBLite_0_AHBmslave6_HRESP_0;
wire          CoreAHBLite_0_AHBmslave6_HRESP;
wire   [1:0]  CoreAHBLite_0_AHBmslave6_HSIZE_0_1to0;
wire   [1:0]  CoreAHBLite_0_AHBmslave6_HSIZE_0;
wire   [2:0]  CoreAHBLite_0_AHBmslave6_HSIZE;
wire          CoreAHBLite_1_AHBmslave16_HRESP;
wire   [1:1]  CoreAHBLite_1_AHBmslave16_HRESP_0_1to1;
wire   [0:0]  CoreAHBLite_1_AHBmslave16_HRESP_0_0to0;
wire   [1:0]  CoreAHBLite_1_AHBmslave16_HRESP_0;
wire   [2:0]  CoreAHBLite_1_AHBmslave16_HSIZE;
wire   [1:0]  CoreAHBLite_1_AHBmslave16_HSIZE_0_1to0;
wire   [1:0]  CoreAHBLite_1_AHBmslave16_HSIZE_0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_1_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_1;
wire   [4:0]  CoreAPB3_0_APBmslave1_PADDR_0_4to0;
wire   [4:0]  CoreAPB3_0_APBmslave1_PADDR_0;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_2_4to2;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_2;
wire   [31:0] CoreAPB3_0_APBmslave1_PADDR;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_3_4to2;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_3;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_4_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_4;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA;
wire   [31:8] CoreAPB3_0_APBmslave1_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave1_PRDATA_0;
wire   [31:0] CoreAPB3_0_APBmslave1_PWDATA;
wire   [7:0]  CoreAPB3_0_APBmslave1_PWDATA_0_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PWDATA_0;
wire   [1:0]  COREAXITOAHBL_0_AHBMasterIF_HRESP;
wire   [0:0]  COREAXITOAHBL_0_AHBMasterIF_HRESP_0_0to0;
wire          COREAXITOAHBL_0_AHBMasterIF_HRESP_0;
wire   [0:0]  COREAXITOAHBL_1_AHBMasterIF_HRESP_0_0to0;
wire          COREAXITOAHBL_1_AHBMasterIF_HRESP_0;
wire   [1:0]  COREAXITOAHBL_1_AHBMasterIF_HRESP;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GPIO_IN_const_net_0            = 32'h00000000;
assign MSS_INT_F2M_const_net_0        = 16'h0000;
assign GND_net                        = 1'b0;
assign VCC_net                        = 1'b1;
assign IADDR_const_net_0              = 32'h00000000;
assign HPROT_M0_const_net_0           = 4'h0;
assign HADDR_M1_const_net_0           = 32'h00000000;
assign HTRANS_M1_const_net_0          = 2'h0;
assign HSIZE_M1_const_net_0           = 3'h0;
assign HBURST_M1_const_net_0          = 3'h0;
assign HPROT_M1_const_net_0           = 4'h0;
assign HWDATA_M1_const_net_0          = 32'h00000000;
assign HADDR_M2_const_net_0           = 32'h00000000;
assign HTRANS_M2_const_net_0          = 2'h0;
assign HSIZE_M2_const_net_0           = 3'h0;
assign HBURST_M2_const_net_0          = 3'h0;
assign HPROT_M2_const_net_0           = 4'h0;
assign HWDATA_M2_const_net_0          = 32'h00000000;
assign HADDR_M3_const_net_0           = 32'h00000000;
assign HTRANS_M3_const_net_0          = 2'h0;
assign HSIZE_M3_const_net_0           = 3'h0;
assign HBURST_M3_const_net_0          = 3'h0;
assign HPROT_M3_const_net_0           = 4'h0;
assign HWDATA_M3_const_net_0          = 32'h00000000;
assign HRDATA_S0_const_net_0          = 32'h00000000;
assign HRESP_S0_const_net_0           = 2'h0;
assign HRDATA_S1_const_net_0          = 32'h00000000;
assign HRESP_S1_const_net_0           = 2'h0;
assign HRDATA_S2_const_net_0          = 32'h00000000;
assign HRESP_S2_const_net_0           = 2'h0;
assign HRDATA_S3_const_net_0          = 32'h00000000;
assign HRESP_S3_const_net_0           = 2'h0;
assign HRDATA_S4_const_net_0          = 32'h00000000;
assign HRESP_S4_const_net_0           = 2'h0;
assign HRDATA_S5_const_net_0          = 32'h00000000;
assign HRESP_S5_const_net_0           = 2'h0;
assign HRDATA_S8_const_net_0          = 32'h00000000;
assign HRESP_S8_const_net_0           = 2'h0;
assign HRDATA_S9_const_net_0          = 32'h00000000;
assign HRESP_S9_const_net_0           = 2'h0;
assign HRDATA_S10_const_net_0         = 32'h00000000;
assign HRESP_S10_const_net_0          = 2'h0;
assign HRDATA_S11_const_net_0         = 32'h00000000;
assign HRESP_S11_const_net_0          = 2'h0;
assign HRDATA_S12_const_net_0         = 32'h00000000;
assign HRESP_S12_const_net_0          = 2'h0;
assign HRDATA_S13_const_net_0         = 32'h00000000;
assign HRESP_S13_const_net_0          = 2'h0;
assign HRDATA_S14_const_net_0         = 32'h00000000;
assign HRESP_S14_const_net_0          = 2'h0;
assign HRDATA_S15_const_net_0         = 32'h00000000;
assign HRESP_S15_const_net_0          = 2'h0;
assign HRDATA_S16_const_net_0         = 32'h00000000;
assign HRESP_S16_const_net_0          = 2'h0;
assign HPROT_M0_const_net_1           = 4'h0;
assign HADDR_M1_const_net_1           = 32'h00000000;
assign HTRANS_M1_const_net_1          = 2'h0;
assign HSIZE_M1_const_net_1           = 3'h0;
assign HBURST_M1_const_net_1          = 3'h0;
assign HPROT_M1_const_net_1           = 4'h0;
assign HWDATA_M1_const_net_1          = 32'h00000000;
assign HADDR_M2_const_net_1           = 32'h00000000;
assign HTRANS_M2_const_net_1          = 2'h0;
assign HSIZE_M2_const_net_1           = 3'h0;
assign HBURST_M2_const_net_1          = 3'h0;
assign HPROT_M2_const_net_1           = 4'h0;
assign HWDATA_M2_const_net_1          = 32'h00000000;
assign HADDR_M3_const_net_1           = 32'h00000000;
assign HTRANS_M3_const_net_1          = 2'h0;
assign HSIZE_M3_const_net_1           = 3'h0;
assign HBURST_M3_const_net_1          = 3'h0;
assign HPROT_M3_const_net_1           = 4'h0;
assign HWDATA_M3_const_net_1          = 32'h00000000;
assign HRDATA_S0_const_net_1          = 32'h00000000;
assign HRESP_S0_const_net_1           = 2'h0;
assign HRDATA_S1_const_net_1          = 32'h00000000;
assign HRESP_S1_const_net_1           = 2'h0;
assign HRDATA_S2_const_net_1          = 32'h00000000;
assign HRESP_S2_const_net_1           = 2'h0;
assign HRDATA_S3_const_net_1          = 32'h00000000;
assign HRESP_S3_const_net_1           = 2'h0;
assign HRDATA_S4_const_net_1          = 32'h00000000;
assign HRESP_S4_const_net_1           = 2'h0;
assign HRDATA_S5_const_net_1          = 32'h00000000;
assign HRESP_S5_const_net_1           = 2'h0;
assign HRDATA_S6_const_net_0          = 32'h00000000;
assign HRESP_S6_const_net_0           = 2'h0;
assign HRDATA_S7_const_net_0          = 32'h00000000;
assign HRESP_S7_const_net_0           = 2'h0;
assign HRDATA_S8_const_net_1          = 32'h00000000;
assign HRESP_S8_const_net_1           = 2'h0;
assign HRDATA_S9_const_net_1          = 32'h00000000;
assign HRESP_S9_const_net_1           = 2'h0;
assign HRDATA_S10_const_net_1         = 32'h00000000;
assign HRESP_S10_const_net_1          = 2'h0;
assign HRDATA_S11_const_net_1         = 32'h00000000;
assign HRESP_S11_const_net_1          = 2'h0;
assign HRDATA_S12_const_net_1         = 32'h00000000;
assign HRESP_S12_const_net_1          = 2'h0;
assign HRDATA_S13_const_net_1         = 32'h00000000;
assign HRESP_S13_const_net_1          = 2'h0;
assign HRDATA_S14_const_net_1         = 32'h00000000;
assign HRESP_S14_const_net_1          = 2'h0;
assign HRDATA_S15_const_net_1         = 32'h00000000;
assign HRESP_S15_const_net_1          = 2'h0;
assign PRDATAS0_const_net_0           = 32'h00000000;
assign PRDATAS6_const_net_0           = 32'h00000000;
assign PRDATAS7_const_net_0           = 32'h00000000;
assign PRDATAS8_const_net_0           = 32'h00000000;
assign PRDATAS9_const_net_0           = 32'h00000000;
assign PRDATAS10_const_net_0          = 32'h00000000;
assign PRDATAS11_const_net_0          = 32'h00000000;
assign PRDATAS12_const_net_0          = 32'h00000000;
assign PRDATAS13_const_net_0          = 32'h00000000;
assign PRDATAS14_const_net_0          = 32'h00000000;
assign PRDATAS15_const_net_0          = 32'h00000000;
assign PRDATAS16_const_net_0          = 32'h00000000;
assign FIC_0_AHB_M_HRDATA_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign MDDR_DQS_TMATCH_0_OUT_net_1      = MDDR_DQS_TMATCH_0_OUT_net_0;
assign MDDR_DQS_TMATCH_0_OUT            = MDDR_DQS_TMATCH_0_OUT_net_1;
assign MDDR_CAS_N_net_1                 = MDDR_CAS_N_net_0;
assign MDDR_CAS_N                       = MDDR_CAS_N_net_1;
assign MDDR_CLK_net_1                   = MDDR_CLK_net_0;
assign MDDR_CLK                         = MDDR_CLK_net_1;
assign MDDR_CLK_N_net_1                 = MDDR_CLK_N_net_0;
assign MDDR_CLK_N                       = MDDR_CLK_N_net_1;
assign MDDR_CKE_net_1                   = MDDR_CKE_net_0;
assign MDDR_CKE                         = MDDR_CKE_net_1;
assign MDDR_CS_N_net_1                  = MDDR_CS_N_net_0;
assign MDDR_CS_N                        = MDDR_CS_N_net_1;
assign MDDR_ODT_net_1                   = MDDR_ODT_net_0;
assign MDDR_ODT                         = MDDR_ODT_net_1;
assign MDDR_RAS_N_net_1                 = MDDR_RAS_N_net_0;
assign MDDR_RAS_N                       = MDDR_RAS_N_net_1;
assign MDDR_RESET_N_net_1               = MDDR_RESET_N_net_0;
assign MDDR_RESET_N                     = MDDR_RESET_N_net_1;
assign MDDR_WE_N_net_1                  = MDDR_WE_N_net_0;
assign MDDR_WE_N                        = MDDR_WE_N_net_1;
assign TIMINT_0_net_1                   = TIMINT_0_net_0;
assign TIMINT_0                         = TIMINT_0_net_1;
assign TIMINT_1_net_1                   = TIMINT_1_net_0;
assign TIMINT_1                         = TIMINT_1_net_1;
assign TX_net_1                         = TX_net_0;
assign TX                               = TX_net_1;
assign UncachedAXISlaveIF_AWREADY_net_0 = UncachedAXISlaveIF_AWREADY;
assign AWREADY                          = UncachedAXISlaveIF_AWREADY_net_0;
assign UncachedAXISlaveIF_WREADY_net_0  = UncachedAXISlaveIF_WREADY;
assign WREADY                           = UncachedAXISlaveIF_WREADY_net_0;
assign UncachedAXISlaveIF_BVALID_net_0  = UncachedAXISlaveIF_BVALID;
assign BVALID                           = UncachedAXISlaveIF_BVALID_net_0;
assign UncachedAXISlaveIF_ARREADY_net_0 = UncachedAXISlaveIF_ARREADY;
assign ARREADY                          = UncachedAXISlaveIF_ARREADY_net_0;
assign UncachedAXISlaveIF_RLAST_net_0   = UncachedAXISlaveIF_RLAST;
assign RLAST                            = UncachedAXISlaveIF_RLAST_net_0;
assign UncachedAXISlaveIF_RVALID_net_0  = UncachedAXISlaveIF_RVALID;
assign RVALID                           = UncachedAXISlaveIF_RVALID_net_0;
assign CachedAXISlaveIF_AWREADY_net_0   = CachedAXISlaveIF_AWREADY;
assign AWREADY_0                        = CachedAXISlaveIF_AWREADY_net_0;
assign CachedAXISlaveIF_WREADY_net_0    = CachedAXISlaveIF_WREADY;
assign WREADY_0                         = CachedAXISlaveIF_WREADY_net_0;
assign CachedAXISlaveIF_BVALID_net_0    = CachedAXISlaveIF_BVALID;
assign BVALID_0                         = CachedAXISlaveIF_BVALID_net_0;
assign CachedAXISlaveIF_ARREADY_net_0   = CachedAXISlaveIF_ARREADY;
assign ARREADY_0                        = CachedAXISlaveIF_ARREADY_net_0;
assign CachedAXISlaveIF_RLAST_net_0     = CachedAXISlaveIF_RLAST;
assign RLAST_0                          = CachedAXISlaveIF_RLAST_net_0;
assign CachedAXISlaveIF_RVALID_net_0    = CachedAXISlaveIF_RVALID;
assign RVALID_0                         = CachedAXISlaveIF_RVALID_net_0;
assign MSS_READY_net_1                  = MSS_READY_net_0;
assign MSS_READY                        = MSS_READY_net_1;
assign DDR_READY_net_1                  = DDR_READY_net_0;
assign DDR_READY                        = DDR_READY_net_1;
assign POWER_ON_RESET_N_net_1           = POWER_ON_RESET_N_net_0;
assign POWER_ON_RESET_N                 = POWER_ON_RESET_N_net_1;
assign MSS_DDR_FIC_SUBSYSTEM_LOCK_net_1 = MSS_DDR_FIC_SUBSYSTEM_LOCK_net_0;
assign MSS_DDR_FIC_SUBSYSTEM_LOCK       = MSS_DDR_FIC_SUBSYSTEM_LOCK_net_1;
assign MSS_DDR_FIC_SUBSYSTEM_CLK_net_1  = MSS_DDR_FIC_SUBSYSTEM_CLK_net_0;
assign MSS_DDR_FIC_SUBSYSTEM_CLK        = MSS_DDR_FIC_SUBSYSTEM_CLK_net_1;
assign FIC_0_LOCK_net_1                 = FIC_0_LOCK_net_0;
assign FIC_0_LOCK                       = FIC_0_LOCK_net_1;
assign FIC_0_CLK_net_1                  = FIC_0_CLK_net_0;
assign FIC_0_CLK                        = FIC_0_CLK_net_1;
assign INIT_DONE_net_1                  = INIT_DONE_net_0;
assign INIT_DONE                        = INIT_DONE_net_1;
assign MDDR_ADDR_net_1                  = MDDR_ADDR_net_0;
assign MDDR_ADDR[15:0]                  = MDDR_ADDR_net_1;
assign MDDR_BA_net_1                    = MDDR_BA_net_0;
assign MDDR_BA[2:0]                     = MDDR_BA_net_1;
assign GPIO_OUT_net_1                   = GPIO_OUT_net_0;
assign GPIO_OUT[31:0]                   = GPIO_OUT_net_1;
assign UncachedAXISlaveIF_BID_net_0     = UncachedAXISlaveIF_BID;
assign BID[4:0]                         = UncachedAXISlaveIF_BID_net_0;
assign UncachedAXISlaveIF_BRESP_net_0   = UncachedAXISlaveIF_BRESP;
assign BRESP[1:0]                       = UncachedAXISlaveIF_BRESP_net_0;
assign UncachedAXISlaveIF_RID_net_0     = UncachedAXISlaveIF_RID;
assign RID[4:0]                         = UncachedAXISlaveIF_RID_net_0;
assign UncachedAXISlaveIF_RDATA_net_0   = UncachedAXISlaveIF_RDATA;
assign RDATA[63:0]                      = UncachedAXISlaveIF_RDATA_net_0;
assign UncachedAXISlaveIF_RRESP_net_0   = UncachedAXISlaveIF_RRESP;
assign RRESP[1:0]                       = UncachedAXISlaveIF_RRESP_net_0;
assign CachedAXISlaveIF_BID_net_0       = CachedAXISlaveIF_BID;
assign BID_0[4:0]                       = CachedAXISlaveIF_BID_net_0;
assign CachedAXISlaveIF_BRESP_net_0     = CachedAXISlaveIF_BRESP;
assign BRESP_0[1:0]                     = CachedAXISlaveIF_BRESP_net_0;
assign CachedAXISlaveIF_RID_net_0       = CachedAXISlaveIF_RID;
assign RID_0[4:0]                       = CachedAXISlaveIF_RID_net_0;
assign CachedAXISlaveIF_RDATA_net_0     = CachedAXISlaveIF_RDATA;
assign RDATA_0[63:0]                    = CachedAXISlaveIF_RDATA_net_0;
assign CachedAXISlaveIF_RRESP_net_0     = CachedAXISlaveIF_RRESP;
assign RRESP_0[1:0]                     = CachedAXISlaveIF_RRESP_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAHBLite_0_AHBmslave6_HRESP_0_1to1 = 1'b0;
assign CoreAHBLite_0_AHBmslave6_HRESP_0_0to0 = CoreAHBLite_0_AHBmslave6_HRESP;
assign CoreAHBLite_0_AHBmslave6_HRESP_0 = { CoreAHBLite_0_AHBmslave6_HRESP_0_1to1, CoreAHBLite_0_AHBmslave6_HRESP_0_0to0 };

assign CoreAHBLite_0_AHBmslave6_HSIZE_0_1to0 = CoreAHBLite_0_AHBmslave6_HSIZE[1:0];
assign CoreAHBLite_0_AHBmslave6_HSIZE_0 = { CoreAHBLite_0_AHBmslave6_HSIZE_0_1to0 };

assign CoreAHBLite_1_AHBmslave16_HRESP_0_1to1 = 1'b0;
assign CoreAHBLite_1_AHBmslave16_HRESP_0_0to0 = CoreAHBLite_1_AHBmslave16_HRESP;
assign CoreAHBLite_1_AHBmslave16_HRESP_0 = { CoreAHBLite_1_AHBmslave16_HRESP_0_1to1, CoreAHBLite_1_AHBmslave16_HRESP_0_0to0 };

assign CoreAHBLite_1_AHBmslave16_HSIZE_0_1to0 = CoreAHBLite_1_AHBmslave16_HSIZE[1:0];
assign CoreAHBLite_1_AHBmslave16_HSIZE_0 = { CoreAHBLite_1_AHBmslave16_HSIZE_0_1to0 };

assign CoreAPB3_0_APBmslave1_PADDR_1_7to0 = CoreAPB3_0_APBmslave1_PADDR[7:0];
assign CoreAPB3_0_APBmslave1_PADDR_1 = { CoreAPB3_0_APBmslave1_PADDR_1_7to0 };
assign CoreAPB3_0_APBmslave1_PADDR_0_4to0 = CoreAPB3_0_APBmslave1_PADDR[4:0];
assign CoreAPB3_0_APBmslave1_PADDR_0 = { CoreAPB3_0_APBmslave1_PADDR_0_4to0 };
assign CoreAPB3_0_APBmslave1_PADDR_2_4to2 = CoreAPB3_0_APBmslave1_PADDR[4:2];
assign CoreAPB3_0_APBmslave1_PADDR_2 = { CoreAPB3_0_APBmslave1_PADDR_2_4to2 };
assign CoreAPB3_0_APBmslave1_PADDR_3_4to2 = CoreAPB3_0_APBmslave1_PADDR[4:2];
assign CoreAPB3_0_APBmslave1_PADDR_3 = { CoreAPB3_0_APBmslave1_PADDR_3_4to2 };
assign CoreAPB3_0_APBmslave1_PADDR_4_7to0 = CoreAPB3_0_APBmslave1_PADDR[7:0];
assign CoreAPB3_0_APBmslave1_PADDR_4 = { CoreAPB3_0_APBmslave1_PADDR_4_7to0 };

assign CoreAPB3_0_APBmslave1_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave1_PRDATA_0_7to0 = CoreAPB3_0_APBmslave1_PRDATA[7:0];
assign CoreAPB3_0_APBmslave1_PRDATA_0 = { CoreAPB3_0_APBmslave1_PRDATA_0_31to8, CoreAPB3_0_APBmslave1_PRDATA_0_7to0 };

assign CoreAPB3_0_APBmslave1_PWDATA_0_7to0 = CoreAPB3_0_APBmslave1_PWDATA[7:0];
assign CoreAPB3_0_APBmslave1_PWDATA_0 = { CoreAPB3_0_APBmslave1_PWDATA_0_7to0 };

assign COREAXITOAHBL_0_AHBMasterIF_HRESP_0_0to0 = COREAXITOAHBL_0_AHBMasterIF_HRESP[0:0];
assign COREAXITOAHBL_0_AHBMasterIF_HRESP_0 = { COREAXITOAHBL_0_AHBMasterIF_HRESP_0_0to0 };

assign COREAXITOAHBL_1_AHBMasterIF_HRESP_0_0to0 = COREAXITOAHBL_1_AHBMasterIF_HRESP[0:0];
assign COREAXITOAHBL_1_AHBMasterIF_HRESP_0 = { COREAXITOAHBL_1_AHBMasterIF_HRESP_0_0to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreAHBLite   -   Actel:DirectCore:CoreAHBLite:5.2.100
CoreAHBLite #( 
        .FAMILY             ( 19 ),
        .HADDR_SHG_CFG      ( 1 ),
        .M0_AHBSLOT0ENABLE  ( 0 ),
        .M0_AHBSLOT1ENABLE  ( 0 ),
        .M0_AHBSLOT2ENABLE  ( 0 ),
        .M0_AHBSLOT3ENABLE  ( 0 ),
        .M0_AHBSLOT4ENABLE  ( 0 ),
        .M0_AHBSLOT5ENABLE  ( 0 ),
        .M0_AHBSLOT6ENABLE  ( 1 ),
        .M0_AHBSLOT7ENABLE  ( 1 ),
        .M0_AHBSLOT8ENABLE  ( 0 ),
        .M0_AHBSLOT9ENABLE  ( 0 ),
        .M0_AHBSLOT10ENABLE ( 0 ),
        .M0_AHBSLOT11ENABLE ( 0 ),
        .M0_AHBSLOT12ENABLE ( 0 ),
        .M0_AHBSLOT13ENABLE ( 0 ),
        .M0_AHBSLOT14ENABLE ( 0 ),
        .M0_AHBSLOT15ENABLE ( 0 ),
        .M0_AHBSLOT16ENABLE ( 0 ),
        .M1_AHBSLOT0ENABLE  ( 0 ),
        .M1_AHBSLOT1ENABLE  ( 0 ),
        .M1_AHBSLOT2ENABLE  ( 0 ),
        .M1_AHBSLOT3ENABLE  ( 0 ),
        .M1_AHBSLOT4ENABLE  ( 0 ),
        .M1_AHBSLOT5ENABLE  ( 0 ),
        .M1_AHBSLOT6ENABLE  ( 0 ),
        .M1_AHBSLOT7ENABLE  ( 0 ),
        .M1_AHBSLOT8ENABLE  ( 0 ),
        .M1_AHBSLOT9ENABLE  ( 0 ),
        .M1_AHBSLOT10ENABLE ( 0 ),
        .M1_AHBSLOT11ENABLE ( 0 ),
        .M1_AHBSLOT12ENABLE ( 0 ),
        .M1_AHBSLOT13ENABLE ( 0 ),
        .M1_AHBSLOT14ENABLE ( 0 ),
        .M1_AHBSLOT15ENABLE ( 0 ),
        .M1_AHBSLOT16ENABLE ( 0 ),
        .M2_AHBSLOT0ENABLE  ( 0 ),
        .M2_AHBSLOT1ENABLE  ( 0 ),
        .M2_AHBSLOT2ENABLE  ( 0 ),
        .M2_AHBSLOT3ENABLE  ( 0 ),
        .M2_AHBSLOT4ENABLE  ( 0 ),
        .M2_AHBSLOT5ENABLE  ( 0 ),
        .M2_AHBSLOT6ENABLE  ( 0 ),
        .M2_AHBSLOT7ENABLE  ( 0 ),
        .M2_AHBSLOT8ENABLE  ( 0 ),
        .M2_AHBSLOT9ENABLE  ( 0 ),
        .M2_AHBSLOT10ENABLE ( 0 ),
        .M2_AHBSLOT11ENABLE ( 0 ),
        .M2_AHBSLOT12ENABLE ( 0 ),
        .M2_AHBSLOT13ENABLE ( 0 ),
        .M2_AHBSLOT14ENABLE ( 0 ),
        .M2_AHBSLOT15ENABLE ( 0 ),
        .M2_AHBSLOT16ENABLE ( 0 ),
        .M3_AHBSLOT0ENABLE  ( 0 ),
        .M3_AHBSLOT1ENABLE  ( 0 ),
        .M3_AHBSLOT2ENABLE  ( 0 ),
        .M3_AHBSLOT3ENABLE  ( 0 ),
        .M3_AHBSLOT4ENABLE  ( 0 ),
        .M3_AHBSLOT5ENABLE  ( 0 ),
        .M3_AHBSLOT6ENABLE  ( 0 ),
        .M3_AHBSLOT7ENABLE  ( 0 ),
        .M3_AHBSLOT8ENABLE  ( 0 ),
        .M3_AHBSLOT9ENABLE  ( 0 ),
        .M3_AHBSLOT10ENABLE ( 0 ),
        .M3_AHBSLOT11ENABLE ( 0 ),
        .M3_AHBSLOT12ENABLE ( 0 ),
        .M3_AHBSLOT13ENABLE ( 0 ),
        .M3_AHBSLOT14ENABLE ( 0 ),
        .M3_AHBSLOT15ENABLE ( 0 ),
        .M3_AHBSLOT16ENABLE ( 0 ),
        .MEMSPACE           ( 1 ),
        .SC_0               ( 0 ),
        .SC_1               ( 0 ),
        .SC_2               ( 0 ),
        .SC_3               ( 0 ),
        .SC_4               ( 0 ),
        .SC_5               ( 0 ),
        .SC_6               ( 0 ),
        .SC_7               ( 0 ),
        .SC_8               ( 0 ),
        .SC_9               ( 0 ),
        .SC_10              ( 0 ),
        .SC_11              ( 0 ),
        .SC_12              ( 0 ),
        .SC_13              ( 0 ),
        .SC_14              ( 0 ),
        .SC_15              ( 0 ) )
CoreAHBLite_0(
        // Inputs
        .HCLK          ( HCLK ),
        .HRESETN       ( HRESETN ),
        .REMAP_M0      ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M0  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M0     ( COREAXITOAHBL_0_AHBMasterIF_HWRITE ),
        .HMASTLOCK_M1  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M1     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M2  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M2     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M3  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M3     ( GND_net ), // tied to 1'b0 from definition
        .HREADYOUT_S0  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S1  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S2  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S3  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S4  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S5  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S6  ( CoreAHBLite_0_AHBmslave6_HREADYOUT ),
        .HREADYOUT_S7  ( CoreAHBLite_0_AHBmslave7_HREADYOUT ),
        .HREADYOUT_S8  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S9  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S10 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S11 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S12 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S13 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S14 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S15 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S16 ( VCC_net ), // tied to 1'b1 from definition
        .HADDR_M0      ( COREAXITOAHBL_0_AHBMasterIF_HADDR ),
        .HSIZE_M0      ( COREAXITOAHBL_0_AHBMasterIF_HSIZE ),
        .HTRANS_M0     ( COREAXITOAHBL_0_AHBMasterIF_HTRANS ),
        .HWDATA_M0     ( COREAXITOAHBL_0_AHBMasterIF_HWDATA ),
        .HBURST_M0     ( COREAXITOAHBL_0_AHBMasterIF_HBURST ),
        .HPROT_M0      ( HPROT_M0_const_net_0 ), // tied to 4'h0 from definition
        .HADDR_M1      ( HADDR_M1_const_net_0 ), // tied to 32'h00000000 from definition
        .HSIZE_M1      ( HSIZE_M1_const_net_0 ), // tied to 3'h0 from definition
        .HTRANS_M1     ( HTRANS_M1_const_net_0 ), // tied to 2'h0 from definition
        .HWDATA_M1     ( HWDATA_M1_const_net_0 ), // tied to 32'h00000000 from definition
        .HBURST_M1     ( HBURST_M1_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M1      ( HPROT_M1_const_net_0 ), // tied to 4'h0 from definition
        .HADDR_M2      ( HADDR_M2_const_net_0 ), // tied to 32'h00000000 from definition
        .HSIZE_M2      ( HSIZE_M2_const_net_0 ), // tied to 3'h0 from definition
        .HTRANS_M2     ( HTRANS_M2_const_net_0 ), // tied to 2'h0 from definition
        .HWDATA_M2     ( HWDATA_M2_const_net_0 ), // tied to 32'h00000000 from definition
        .HBURST_M2     ( HBURST_M2_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M2      ( HPROT_M2_const_net_0 ), // tied to 4'h0 from definition
        .HADDR_M3      ( HADDR_M3_const_net_0 ), // tied to 32'h00000000 from definition
        .HSIZE_M3      ( HSIZE_M3_const_net_0 ), // tied to 3'h0 from definition
        .HTRANS_M3     ( HTRANS_M3_const_net_0 ), // tied to 2'h0 from definition
        .HWDATA_M3     ( HWDATA_M3_const_net_0 ), // tied to 32'h00000000 from definition
        .HBURST_M3     ( HBURST_M3_const_net_0 ), // tied to 3'h0 from definition
        .HPROT_M3      ( HPROT_M3_const_net_0 ), // tied to 4'h0 from definition
        .HRDATA_S0     ( HRDATA_S0_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S0      ( HRESP_S0_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S1     ( HRDATA_S1_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S1      ( HRESP_S1_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S2     ( HRDATA_S2_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S2      ( HRESP_S2_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S3     ( HRDATA_S3_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S3      ( HRESP_S3_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S4     ( HRDATA_S4_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S4      ( HRESP_S4_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S5     ( HRDATA_S5_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S5      ( HRESP_S5_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S6     ( CoreAHBLite_0_AHBmslave6_HRDATA ),
        .HRESP_S6      ( CoreAHBLite_0_AHBmslave6_HRESP_0 ),
        .HRDATA_S7     ( CoreAHBLite_0_AHBmslave7_HRDATA ),
        .HRESP_S7      ( CoreAHBLite_0_AHBmslave7_HRESP ),
        .HRDATA_S8     ( HRDATA_S8_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S8      ( HRESP_S8_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S9     ( HRDATA_S9_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S9      ( HRESP_S9_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S10    ( HRDATA_S10_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S10     ( HRESP_S10_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S11    ( HRDATA_S11_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S11     ( HRESP_S11_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S12    ( HRDATA_S12_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S12     ( HRESP_S12_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S13    ( HRDATA_S13_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S13     ( HRESP_S13_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S14    ( HRDATA_S14_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S14     ( HRESP_S14_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S15    ( HRDATA_S15_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S15     ( HRESP_S15_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S16    ( HRDATA_S16_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S16     ( HRESP_S16_const_net_0 ), // tied to 2'h0 from definition
        // Outputs
        .HREADY_M0     ( COREAXITOAHBL_0_AHBMasterIF_HREADY ),
        .HREADY_M1     (  ),
        .HREADY_M2     (  ),
        .HREADY_M3     (  ),
        .HSEL_S0       (  ),
        .HWRITE_S0     (  ),
        .HREADY_S0     (  ),
        .HMASTLOCK_S0  (  ),
        .HSEL_S1       (  ),
        .HWRITE_S1     (  ),
        .HREADY_S1     (  ),
        .HMASTLOCK_S1  (  ),
        .HSEL_S2       (  ),
        .HWRITE_S2     (  ),
        .HREADY_S2     (  ),
        .HMASTLOCK_S2  (  ),
        .HSEL_S3       (  ),
        .HWRITE_S3     (  ),
        .HREADY_S3     (  ),
        .HMASTLOCK_S3  (  ),
        .HSEL_S4       (  ),
        .HWRITE_S4     (  ),
        .HREADY_S4     (  ),
        .HMASTLOCK_S4  (  ),
        .HSEL_S5       (  ),
        .HWRITE_S5     (  ),
        .HREADY_S5     (  ),
        .HMASTLOCK_S5  (  ),
        .HSEL_S6       ( CoreAHBLite_0_AHBmslave6_HSELx ),
        .HWRITE_S6     ( CoreAHBLite_0_AHBmslave6_HWRITE ),
        .HREADY_S6     ( CoreAHBLite_0_AHBmslave6_HREADY ),
        .HMASTLOCK_S6  ( CoreAHBLite_0_AHBmslave6_HMASTLOCK ),
        .HSEL_S7       ( CoreAHBLite_0_AHBmslave7_HSELx ),
        .HWRITE_S7     ( CoreAHBLite_0_AHBmslave7_HWRITE ),
        .HREADY_S7     ( CoreAHBLite_0_AHBmslave7_HREADY ),
        .HMASTLOCK_S7  ( CoreAHBLite_0_AHBmslave7_HMASTLOCK ),
        .HSEL_S8       (  ),
        .HWRITE_S8     (  ),
        .HREADY_S8     (  ),
        .HMASTLOCK_S8  (  ),
        .HSEL_S9       (  ),
        .HWRITE_S9     (  ),
        .HREADY_S9     (  ),
        .HMASTLOCK_S9  (  ),
        .HSEL_S10      (  ),
        .HWRITE_S10    (  ),
        .HREADY_S10    (  ),
        .HMASTLOCK_S10 (  ),
        .HSEL_S11      (  ),
        .HWRITE_S11    (  ),
        .HREADY_S11    (  ),
        .HMASTLOCK_S11 (  ),
        .HSEL_S12      (  ),
        .HWRITE_S12    (  ),
        .HREADY_S12    (  ),
        .HMASTLOCK_S12 (  ),
        .HSEL_S13      (  ),
        .HWRITE_S13    (  ),
        .HREADY_S13    (  ),
        .HMASTLOCK_S13 (  ),
        .HSEL_S14      (  ),
        .HWRITE_S14    (  ),
        .HREADY_S14    (  ),
        .HMASTLOCK_S14 (  ),
        .HSEL_S15      (  ),
        .HWRITE_S15    (  ),
        .HREADY_S15    (  ),
        .HMASTLOCK_S15 (  ),
        .HSEL_S16      (  ),
        .HWRITE_S16    (  ),
        .HREADY_S16    (  ),
        .HMASTLOCK_S16 (  ),
        .HRESP_M0      ( COREAXITOAHBL_0_AHBMasterIF_HRESP ),
        .HRDATA_M0     ( COREAXITOAHBL_0_AHBMasterIF_HRDATA ),
        .HRESP_M1      (  ),
        .HRDATA_M1     (  ),
        .HRESP_M2      (  ),
        .HRDATA_M2     (  ),
        .HRESP_M3      (  ),
        .HRDATA_M3     (  ),
        .HADDR_S0      (  ),
        .HSIZE_S0      (  ),
        .HTRANS_S0     (  ),
        .HWDATA_S0     (  ),
        .HBURST_S0     (  ),
        .HPROT_S0      (  ),
        .HADDR_S1      (  ),
        .HSIZE_S1      (  ),
        .HTRANS_S1     (  ),
        .HWDATA_S1     (  ),
        .HBURST_S1     (  ),
        .HPROT_S1      (  ),
        .HADDR_S2      (  ),
        .HSIZE_S2      (  ),
        .HTRANS_S2     (  ),
        .HWDATA_S2     (  ),
        .HBURST_S2     (  ),
        .HPROT_S2      (  ),
        .HADDR_S3      (  ),
        .HSIZE_S3      (  ),
        .HTRANS_S3     (  ),
        .HWDATA_S3     (  ),
        .HBURST_S3     (  ),
        .HPROT_S3      (  ),
        .HADDR_S4      (  ),
        .HSIZE_S4      (  ),
        .HTRANS_S4     (  ),
        .HWDATA_S4     (  ),
        .HBURST_S4     (  ),
        .HPROT_S4      (  ),
        .HADDR_S5      (  ),
        .HSIZE_S5      (  ),
        .HTRANS_S5     (  ),
        .HWDATA_S5     (  ),
        .HBURST_S5     (  ),
        .HPROT_S5      (  ),
        .HADDR_S6      ( CoreAHBLite_0_AHBmslave6_HADDR ),
        .HSIZE_S6      ( CoreAHBLite_0_AHBmslave6_HSIZE ),
        .HTRANS_S6     ( CoreAHBLite_0_AHBmslave6_HTRANS ),
        .HWDATA_S6     ( CoreAHBLite_0_AHBmslave6_HWDATA ),
        .HBURST_S6     ( CoreAHBLite_0_AHBmslave6_HBURST ),
        .HPROT_S6      ( CoreAHBLite_0_AHBmslave6_HPROT ),
        .HADDR_S7      ( CoreAHBLite_0_AHBmslave7_HADDR ),
        .HSIZE_S7      ( CoreAHBLite_0_AHBmslave7_HSIZE ),
        .HTRANS_S7     ( CoreAHBLite_0_AHBmslave7_HTRANS ),
        .HWDATA_S7     ( CoreAHBLite_0_AHBmslave7_HWDATA ),
        .HBURST_S7     ( CoreAHBLite_0_AHBmslave7_HBURST ),
        .HPROT_S7      ( CoreAHBLite_0_AHBmslave7_HPROT ),
        .HADDR_S8      (  ),
        .HSIZE_S8      (  ),
        .HTRANS_S8     (  ),
        .HWDATA_S8     (  ),
        .HBURST_S8     (  ),
        .HPROT_S8      (  ),
        .HADDR_S9      (  ),
        .HSIZE_S9      (  ),
        .HTRANS_S9     (  ),
        .HWDATA_S9     (  ),
        .HBURST_S9     (  ),
        .HPROT_S9      (  ),
        .HADDR_S10     (  ),
        .HSIZE_S10     (  ),
        .HTRANS_S10    (  ),
        .HWDATA_S10    (  ),
        .HBURST_S10    (  ),
        .HPROT_S10     (  ),
        .HADDR_S11     (  ),
        .HSIZE_S11     (  ),
        .HTRANS_S11    (  ),
        .HWDATA_S11    (  ),
        .HBURST_S11    (  ),
        .HPROT_S11     (  ),
        .HADDR_S12     (  ),
        .HSIZE_S12     (  ),
        .HTRANS_S12    (  ),
        .HWDATA_S12    (  ),
        .HBURST_S12    (  ),
        .HPROT_S12     (  ),
        .HADDR_S13     (  ),
        .HSIZE_S13     (  ),
        .HTRANS_S13    (  ),
        .HWDATA_S13    (  ),
        .HBURST_S13    (  ),
        .HPROT_S13     (  ),
        .HADDR_S14     (  ),
        .HSIZE_S14     (  ),
        .HTRANS_S14    (  ),
        .HWDATA_S14    (  ),
        .HBURST_S14    (  ),
        .HPROT_S14     (  ),
        .HADDR_S15     (  ),
        .HSIZE_S15     (  ),
        .HTRANS_S15    (  ),
        .HWDATA_S15    (  ),
        .HBURST_S15    (  ),
        .HPROT_S15     (  ),
        .HADDR_S16     (  ),
        .HSIZE_S16     (  ),
        .HTRANS_S16    (  ),
        .HWDATA_S16    (  ),
        .HBURST_S16    (  ),
        .HPROT_S16     (  ) 
        );

//--------CoreAHBLite   -   Actel:DirectCore:CoreAHBLite:5.2.100
CoreAHBLite #( 
        .FAMILY             ( 19 ),
        .HADDR_SHG_CFG      ( 1 ),
        .M0_AHBSLOT0ENABLE  ( 0 ),
        .M0_AHBSLOT1ENABLE  ( 0 ),
        .M0_AHBSLOT2ENABLE  ( 0 ),
        .M0_AHBSLOT3ENABLE  ( 0 ),
        .M0_AHBSLOT4ENABLE  ( 0 ),
        .M0_AHBSLOT5ENABLE  ( 0 ),
        .M0_AHBSLOT6ENABLE  ( 0 ),
        .M0_AHBSLOT7ENABLE  ( 0 ),
        .M0_AHBSLOT8ENABLE  ( 0 ),
        .M0_AHBSLOT9ENABLE  ( 0 ),
        .M0_AHBSLOT10ENABLE ( 0 ),
        .M0_AHBSLOT11ENABLE ( 0 ),
        .M0_AHBSLOT12ENABLE ( 0 ),
        .M0_AHBSLOT13ENABLE ( 0 ),
        .M0_AHBSLOT14ENABLE ( 0 ),
        .M0_AHBSLOT15ENABLE ( 0 ),
        .M0_AHBSLOT16ENABLE ( 1 ),
        .M1_AHBSLOT0ENABLE  ( 0 ),
        .M1_AHBSLOT1ENABLE  ( 0 ),
        .M1_AHBSLOT2ENABLE  ( 0 ),
        .M1_AHBSLOT3ENABLE  ( 0 ),
        .M1_AHBSLOT4ENABLE  ( 0 ),
        .M1_AHBSLOT5ENABLE  ( 0 ),
        .M1_AHBSLOT6ENABLE  ( 0 ),
        .M1_AHBSLOT7ENABLE  ( 0 ),
        .M1_AHBSLOT8ENABLE  ( 0 ),
        .M1_AHBSLOT9ENABLE  ( 0 ),
        .M1_AHBSLOT10ENABLE ( 0 ),
        .M1_AHBSLOT11ENABLE ( 0 ),
        .M1_AHBSLOT12ENABLE ( 0 ),
        .M1_AHBSLOT13ENABLE ( 0 ),
        .M1_AHBSLOT14ENABLE ( 0 ),
        .M1_AHBSLOT15ENABLE ( 0 ),
        .M1_AHBSLOT16ENABLE ( 0 ),
        .M2_AHBSLOT0ENABLE  ( 0 ),
        .M2_AHBSLOT1ENABLE  ( 0 ),
        .M2_AHBSLOT2ENABLE  ( 0 ),
        .M2_AHBSLOT3ENABLE  ( 0 ),
        .M2_AHBSLOT4ENABLE  ( 0 ),
        .M2_AHBSLOT5ENABLE  ( 0 ),
        .M2_AHBSLOT6ENABLE  ( 0 ),
        .M2_AHBSLOT7ENABLE  ( 0 ),
        .M2_AHBSLOT8ENABLE  ( 0 ),
        .M2_AHBSLOT9ENABLE  ( 0 ),
        .M2_AHBSLOT10ENABLE ( 0 ),
        .M2_AHBSLOT11ENABLE ( 0 ),
        .M2_AHBSLOT12ENABLE ( 0 ),
        .M2_AHBSLOT13ENABLE ( 0 ),
        .M2_AHBSLOT14ENABLE ( 0 ),
        .M2_AHBSLOT15ENABLE ( 0 ),
        .M2_AHBSLOT16ENABLE ( 0 ),
        .M3_AHBSLOT0ENABLE  ( 0 ),
        .M3_AHBSLOT1ENABLE  ( 0 ),
        .M3_AHBSLOT2ENABLE  ( 0 ),
        .M3_AHBSLOT3ENABLE  ( 0 ),
        .M3_AHBSLOT4ENABLE  ( 0 ),
        .M3_AHBSLOT5ENABLE  ( 0 ),
        .M3_AHBSLOT6ENABLE  ( 0 ),
        .M3_AHBSLOT7ENABLE  ( 0 ),
        .M3_AHBSLOT8ENABLE  ( 0 ),
        .M3_AHBSLOT9ENABLE  ( 0 ),
        .M3_AHBSLOT10ENABLE ( 0 ),
        .M3_AHBSLOT11ENABLE ( 0 ),
        .M3_AHBSLOT12ENABLE ( 0 ),
        .M3_AHBSLOT13ENABLE ( 0 ),
        .M3_AHBSLOT14ENABLE ( 0 ),
        .M3_AHBSLOT15ENABLE ( 0 ),
        .M3_AHBSLOT16ENABLE ( 0 ),
        .MEMSPACE           ( 0 ),
        .SC_0               ( 0 ),
        .SC_1               ( 0 ),
        .SC_2               ( 0 ),
        .SC_3               ( 0 ),
        .SC_4               ( 0 ),
        .SC_5               ( 0 ),
        .SC_6               ( 0 ),
        .SC_7               ( 0 ),
        .SC_8               ( 0 ),
        .SC_9               ( 0 ),
        .SC_10              ( 0 ),
        .SC_11              ( 0 ),
        .SC_12              ( 0 ),
        .SC_13              ( 0 ),
        .SC_14              ( 0 ),
        .SC_15              ( 0 ) )
CoreAHBLite_1(
        // Inputs
        .HCLK          ( HCLK ),
        .HRESETN       ( HRESETN ),
        .REMAP_M0      ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M0  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M0     ( COREAXITOAHBL_1_AHBMasterIF_HWRITE ),
        .HMASTLOCK_M1  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M1     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M2  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M2     ( GND_net ), // tied to 1'b0 from definition
        .HMASTLOCK_M3  ( GND_net ), // tied to 1'b0 from definition
        .HWRITE_M3     ( GND_net ), // tied to 1'b0 from definition
        .HREADYOUT_S0  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S1  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S2  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S3  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S4  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S5  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S6  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S7  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S8  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S9  ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S10 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S11 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S12 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S13 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S14 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S15 ( VCC_net ), // tied to 1'b1 from definition
        .HREADYOUT_S16 ( CoreAHBLite_1_AHBmslave16_HREADYOUT ),
        .HADDR_M0      ( COREAXITOAHBL_1_AHBMasterIF_HADDR ),
        .HSIZE_M0      ( COREAXITOAHBL_1_AHBMasterIF_HSIZE ),
        .HTRANS_M0     ( COREAXITOAHBL_1_AHBMasterIF_HTRANS ),
        .HWDATA_M0     ( COREAXITOAHBL_1_AHBMasterIF_HWDATA ),
        .HBURST_M0     ( COREAXITOAHBL_1_AHBMasterIF_HBURST ),
        .HPROT_M0      ( HPROT_M0_const_net_1 ), // tied to 4'h0 from definition
        .HADDR_M1      ( HADDR_M1_const_net_1 ), // tied to 32'h00000000 from definition
        .HSIZE_M1      ( HSIZE_M1_const_net_1 ), // tied to 3'h0 from definition
        .HTRANS_M1     ( HTRANS_M1_const_net_1 ), // tied to 2'h0 from definition
        .HWDATA_M1     ( HWDATA_M1_const_net_1 ), // tied to 32'h00000000 from definition
        .HBURST_M1     ( HBURST_M1_const_net_1 ), // tied to 3'h0 from definition
        .HPROT_M1      ( HPROT_M1_const_net_1 ), // tied to 4'h0 from definition
        .HADDR_M2      ( HADDR_M2_const_net_1 ), // tied to 32'h00000000 from definition
        .HSIZE_M2      ( HSIZE_M2_const_net_1 ), // tied to 3'h0 from definition
        .HTRANS_M2     ( HTRANS_M2_const_net_1 ), // tied to 2'h0 from definition
        .HWDATA_M2     ( HWDATA_M2_const_net_1 ), // tied to 32'h00000000 from definition
        .HBURST_M2     ( HBURST_M2_const_net_1 ), // tied to 3'h0 from definition
        .HPROT_M2      ( HPROT_M2_const_net_1 ), // tied to 4'h0 from definition
        .HADDR_M3      ( HADDR_M3_const_net_1 ), // tied to 32'h00000000 from definition
        .HSIZE_M3      ( HSIZE_M3_const_net_1 ), // tied to 3'h0 from definition
        .HTRANS_M3     ( HTRANS_M3_const_net_1 ), // tied to 2'h0 from definition
        .HWDATA_M3     ( HWDATA_M3_const_net_1 ), // tied to 32'h00000000 from definition
        .HBURST_M3     ( HBURST_M3_const_net_1 ), // tied to 3'h0 from definition
        .HPROT_M3      ( HPROT_M3_const_net_1 ), // tied to 4'h0 from definition
        .HRDATA_S0     ( HRDATA_S0_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S0      ( HRESP_S0_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S1     ( HRDATA_S1_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S1      ( HRESP_S1_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S2     ( HRDATA_S2_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S2      ( HRESP_S2_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S3     ( HRDATA_S3_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S3      ( HRESP_S3_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S4     ( HRDATA_S4_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S4      ( HRESP_S4_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S5     ( HRDATA_S5_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S5      ( HRESP_S5_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S6     ( HRDATA_S6_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S6      ( HRESP_S6_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S7     ( HRDATA_S7_const_net_0 ), // tied to 32'h00000000 from definition
        .HRESP_S7      ( HRESP_S7_const_net_0 ), // tied to 2'h0 from definition
        .HRDATA_S8     ( HRDATA_S8_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S8      ( HRESP_S8_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S9     ( HRDATA_S9_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S9      ( HRESP_S9_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S10    ( HRDATA_S10_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S10     ( HRESP_S10_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S11    ( HRDATA_S11_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S11     ( HRESP_S11_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S12    ( HRDATA_S12_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S12     ( HRESP_S12_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S13    ( HRDATA_S13_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S13     ( HRESP_S13_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S14    ( HRDATA_S14_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S14     ( HRESP_S14_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S15    ( HRDATA_S15_const_net_1 ), // tied to 32'h00000000 from definition
        .HRESP_S15     ( HRESP_S15_const_net_1 ), // tied to 2'h0 from definition
        .HRDATA_S16    ( CoreAHBLite_1_AHBmslave16_HRDATA ),
        .HRESP_S16     ( CoreAHBLite_1_AHBmslave16_HRESP_0 ),
        // Outputs
        .HREADY_M0     ( COREAXITOAHBL_1_AHBMasterIF_HREADY ),
        .HREADY_M1     (  ),
        .HREADY_M2     (  ),
        .HREADY_M3     (  ),
        .HSEL_S0       (  ),
        .HWRITE_S0     (  ),
        .HREADY_S0     (  ),
        .HMASTLOCK_S0  (  ),
        .HSEL_S1       (  ),
        .HWRITE_S1     (  ),
        .HREADY_S1     (  ),
        .HMASTLOCK_S1  (  ),
        .HSEL_S2       (  ),
        .HWRITE_S2     (  ),
        .HREADY_S2     (  ),
        .HMASTLOCK_S2  (  ),
        .HSEL_S3       (  ),
        .HWRITE_S3     (  ),
        .HREADY_S3     (  ),
        .HMASTLOCK_S3  (  ),
        .HSEL_S4       (  ),
        .HWRITE_S4     (  ),
        .HREADY_S4     (  ),
        .HMASTLOCK_S4  (  ),
        .HSEL_S5       (  ),
        .HWRITE_S5     (  ),
        .HREADY_S5     (  ),
        .HMASTLOCK_S5  (  ),
        .HSEL_S6       (  ),
        .HWRITE_S6     (  ),
        .HREADY_S6     (  ),
        .HMASTLOCK_S6  (  ),
        .HSEL_S7       (  ),
        .HWRITE_S7     (  ),
        .HREADY_S7     (  ),
        .HMASTLOCK_S7  (  ),
        .HSEL_S8       (  ),
        .HWRITE_S8     (  ),
        .HREADY_S8     (  ),
        .HMASTLOCK_S8  (  ),
        .HSEL_S9       (  ),
        .HWRITE_S9     (  ),
        .HREADY_S9     (  ),
        .HMASTLOCK_S9  (  ),
        .HSEL_S10      (  ),
        .HWRITE_S10    (  ),
        .HREADY_S10    (  ),
        .HMASTLOCK_S10 (  ),
        .HSEL_S11      (  ),
        .HWRITE_S11    (  ),
        .HREADY_S11    (  ),
        .HMASTLOCK_S11 (  ),
        .HSEL_S12      (  ),
        .HWRITE_S12    (  ),
        .HREADY_S12    (  ),
        .HMASTLOCK_S12 (  ),
        .HSEL_S13      (  ),
        .HWRITE_S13    (  ),
        .HREADY_S13    (  ),
        .HMASTLOCK_S13 (  ),
        .HSEL_S14      (  ),
        .HWRITE_S14    (  ),
        .HREADY_S14    (  ),
        .HMASTLOCK_S14 (  ),
        .HSEL_S15      (  ),
        .HWRITE_S15    (  ),
        .HREADY_S15    (  ),
        .HMASTLOCK_S15 (  ),
        .HSEL_S16      ( CoreAHBLite_1_AHBmslave16_HSELx ),
        .HWRITE_S16    ( CoreAHBLite_1_AHBmslave16_HWRITE ),
        .HREADY_S16    ( CoreAHBLite_1_AHBmslave16_HREADY ),
        .HMASTLOCK_S16 ( CoreAHBLite_1_AHBmslave16_HMASTLOCK ),
        .HRESP_M0      ( COREAXITOAHBL_1_AHBMasterIF_HRESP ),
        .HRDATA_M0     ( COREAXITOAHBL_1_AHBMasterIF_HRDATA ),
        .HRESP_M1      (  ),
        .HRDATA_M1     (  ),
        .HRESP_M2      (  ),
        .HRDATA_M2     (  ),
        .HRESP_M3      (  ),
        .HRDATA_M3     (  ),
        .HADDR_S0      (  ),
        .HSIZE_S0      (  ),
        .HTRANS_S0     (  ),
        .HWDATA_S0     (  ),
        .HBURST_S0     (  ),
        .HPROT_S0      (  ),
        .HADDR_S1      (  ),
        .HSIZE_S1      (  ),
        .HTRANS_S1     (  ),
        .HWDATA_S1     (  ),
        .HBURST_S1     (  ),
        .HPROT_S1      (  ),
        .HADDR_S2      (  ),
        .HSIZE_S2      (  ),
        .HTRANS_S2     (  ),
        .HWDATA_S2     (  ),
        .HBURST_S2     (  ),
        .HPROT_S2      (  ),
        .HADDR_S3      (  ),
        .HSIZE_S3      (  ),
        .HTRANS_S3     (  ),
        .HWDATA_S3     (  ),
        .HBURST_S3     (  ),
        .HPROT_S3      (  ),
        .HADDR_S4      (  ),
        .HSIZE_S4      (  ),
        .HTRANS_S4     (  ),
        .HWDATA_S4     (  ),
        .HBURST_S4     (  ),
        .HPROT_S4      (  ),
        .HADDR_S5      (  ),
        .HSIZE_S5      (  ),
        .HTRANS_S5     (  ),
        .HWDATA_S5     (  ),
        .HBURST_S5     (  ),
        .HPROT_S5      (  ),
        .HADDR_S6      (  ),
        .HSIZE_S6      (  ),
        .HTRANS_S6     (  ),
        .HWDATA_S6     (  ),
        .HBURST_S6     (  ),
        .HPROT_S6      (  ),
        .HADDR_S7      (  ),
        .HSIZE_S7      (  ),
        .HTRANS_S7     (  ),
        .HWDATA_S7     (  ),
        .HBURST_S7     (  ),
        .HPROT_S7      (  ),
        .HADDR_S8      (  ),
        .HSIZE_S8      (  ),
        .HTRANS_S8     (  ),
        .HWDATA_S8     (  ),
        .HBURST_S8     (  ),
        .HPROT_S8      (  ),
        .HADDR_S9      (  ),
        .HSIZE_S9      (  ),
        .HTRANS_S9     (  ),
        .HWDATA_S9     (  ),
        .HBURST_S9     (  ),
        .HPROT_S9      (  ),
        .HADDR_S10     (  ),
        .HSIZE_S10     (  ),
        .HTRANS_S10    (  ),
        .HWDATA_S10    (  ),
        .HBURST_S10    (  ),
        .HPROT_S10     (  ),
        .HADDR_S11     (  ),
        .HSIZE_S11     (  ),
        .HTRANS_S11    (  ),
        .HWDATA_S11    (  ),
        .HBURST_S11    (  ),
        .HPROT_S11     (  ),
        .HADDR_S12     (  ),
        .HSIZE_S12     (  ),
        .HTRANS_S12    (  ),
        .HWDATA_S12    (  ),
        .HBURST_S12    (  ),
        .HPROT_S12     (  ),
        .HADDR_S13     (  ),
        .HSIZE_S13     (  ),
        .HTRANS_S13    (  ),
        .HWDATA_S13    (  ),
        .HBURST_S13    (  ),
        .HPROT_S13     (  ),
        .HADDR_S14     (  ),
        .HSIZE_S14     (  ),
        .HTRANS_S14    (  ),
        .HWDATA_S14    (  ),
        .HBURST_S14    (  ),
        .HPROT_S14     (  ),
        .HADDR_S15     (  ),
        .HSIZE_S15     (  ),
        .HTRANS_S15    (  ),
        .HWDATA_S15    (  ),
        .HBURST_S15    (  ),
        .HPROT_S15     (  ),
        .HADDR_S16     ( CoreAHBLite_1_AHBmslave16_HADDR ),
        .HSIZE_S16     ( CoreAHBLite_1_AHBmslave16_HSIZE ),
        .HTRANS_S16    ( CoreAHBLite_1_AHBmslave16_HTRANS ),
        .HWDATA_S16    ( CoreAHBLite_1_AHBmslave16_HWDATA ),
        .HBURST_S16    ( CoreAHBLite_1_AHBmslave16_HBURST ),
        .HPROT_S16     ( CoreAHBLite_1_AHBmslave16_HPROT ) 
        );

//--------COREAHBTOAPB3   -   Actel:DirectCore:COREAHBTOAPB3:3.1.100
COREAHBTOAPB3 #( 
        .FAMILY ( 19 ) )
COREAHBTOAPB3_0(
        // Inputs
        .HCLK      ( HCLK ),
        .HRESETN   ( HRESETN ),
        .HWRITE    ( CoreAHBLite_0_AHBmslave7_HWRITE ),
        .HSEL      ( CoreAHBLite_0_AHBmslave7_HSELx ),
        .HREADY    ( CoreAHBLite_0_AHBmslave7_HREADY ),
        .PREADY    ( COREAHBTOAPB3_0_APBmaster_PREADY ),
        .PSLVERR   ( COREAHBTOAPB3_0_APBmaster_PSLVERR ),
        .HADDR     ( CoreAHBLite_0_AHBmslave7_HADDR ),
        .HTRANS    ( CoreAHBLite_0_AHBmslave7_HTRANS ),
        .HWDATA    ( CoreAHBLite_0_AHBmslave7_HWDATA ),
        .PRDATA    ( COREAHBTOAPB3_0_APBmaster_PRDATA ),
        // Outputs
        .HREADYOUT ( CoreAHBLite_0_AHBmslave7_HREADYOUT ),
        .PENABLE   ( COREAHBTOAPB3_0_APBmaster_PENABLE ),
        .PWRITE    ( COREAHBTOAPB3_0_APBmaster_PWRITE ),
        .PSEL      ( COREAHBTOAPB3_0_APBmaster_PSELx ),
        .HRDATA    ( CoreAHBLite_0_AHBmslave7_HRDATA ),
        .HRESP     ( CoreAHBLite_0_AHBmslave7_HRESP ),
        .PWDATA    ( COREAHBTOAPB3_0_APBmaster_PWDATA ),
        .PADDR     ( COREAHBTOAPB3_0_APBmaster_PADDR ) 
        );

//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 32 ),
        .APBSLOT0ENABLE  ( 0 ),
        .APBSLOT1ENABLE  ( 1 ),
        .APBSLOT2ENABLE  ( 1 ),
        .APBSLOT3ENABLE  ( 1 ),
        .APBSLOT4ENABLE  ( 1 ),
        .APBSLOT5ENABLE  ( 1 ),
        .APBSLOT6ENABLE  ( 0 ),
        .APBSLOT7ENABLE  ( 0 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .FAMILY          ( 19 ),
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 16 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 6 ) )
CoreAPB3_0(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PWRITE     ( COREAHBTOAPB3_0_APBmaster_PWRITE ),
        .PENABLE    ( COREAHBTOAPB3_0_APBmaster_PENABLE ),
        .PSEL       ( COREAHBTOAPB3_0_APBmaster_PSELx ),
        .PREADYS0   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS0  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS1   ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERRS1  ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .PREADYS2   ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERRS2  ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .PREADYS3   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS4   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS5   ( CoreAPB3_0_APBmslave5_PREADY ),
        .PSLVERRS5  ( CoreAPB3_0_APBmslave5_PSLVERR ),
        .PREADYS6   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS6  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS7   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS7  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( COREAHBTOAPB3_0_APBmaster_PADDR ),
        .PWDATA     ( COREAHBTOAPB3_0_APBmaster_PWDATA ),
        .PRDATAS0   ( PRDATAS0_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS1   ( CoreAPB3_0_APBmslave1_PRDATA_0 ),
        .PRDATAS2   ( CoreAPB3_0_APBmslave2_PRDATA ),
        .PRDATAS3   ( CoreAPB3_0_APBmslave3_PRDATA ),
        .PRDATAS4   ( CoreAPB3_0_APBmslave4_PRDATA ),
        .PRDATAS5   ( CoreAPB3_0_APBmslave5_PRDATA ),
        .PRDATAS6   ( PRDATAS6_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS7   ( PRDATAS7_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS8   ( PRDATAS8_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS9   ( PRDATAS9_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS10  ( PRDATAS10_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS11  ( PRDATAS11_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS12  ( PRDATAS12_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS13  ( PRDATAS13_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS14  ( PRDATAS14_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS15  ( PRDATAS15_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS16  ( PRDATAS16_const_net_0 ), // tied to 32'h00000000 from definition
        .IADDR      ( IADDR_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .PREADY     ( COREAHBTOAPB3_0_APBmaster_PREADY ),
        .PSLVERR    ( COREAHBTOAPB3_0_APBmaster_PSLVERR ),
        .PWRITES    ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PENABLES   ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PSELS0     (  ),
        .PSELS1     ( CoreAPB3_0_APBmslave1_PSELx ),
        .PSELS2     ( CoreAPB3_0_APBmslave2_PSELx ),
        .PSELS3     ( CoreAPB3_0_APBmslave3_PSELx ),
        .PSELS4     ( CoreAPB3_0_APBmslave4_PSELx ),
        .PSELS5     ( CoreAPB3_0_APBmslave5_PSELx ),
        .PSELS6     (  ),
        .PSELS7     (  ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ),
        .PRDATA     ( COREAHBTOAPB3_0_APBmaster_PRDATA ),
        .PADDRS     ( CoreAPB3_0_APBmslave1_PADDR ),
        .PWDATAS    ( CoreAPB3_0_APBmslave1_PWDATA ) 
        );

//--------COREAXITOAHBL   -   Actel:DirectCore:COREAXITOAHBL:3.0.101
COREAXITOAHBL #( 
        .ASYNC_CLOCKS   ( 0 ),
        .ID_WIDTH       ( 5 ),
        .NO_BURST_TRANS ( 0 ),
        .WRAP_SUPPORT   ( 0 ) )
COREAXITOAHBL_0(
        // Inputs
        .ACLK     ( ACLK ),
        .ARESETN  ( ARESETN ),
        .AWVALID  ( AWVALID ),
        .WVALID   ( WVALID ),
        .WLAST    ( WLAST ),
        .BREADY   ( BREADY ),
        .ARVALID  ( ARVALID ),
        .RREADY   ( RREADY ),
        .HCLK     ( HCLK ),
        .HRESETN  ( HRESETN ),
        .HREADYIN ( COREAXITOAHBL_0_AHBMasterIF_HREADY ),
        .HRESP    ( COREAXITOAHBL_0_AHBMasterIF_HRESP_0 ),
        .AWLEN    ( AWLEN ),
        .AWSIZE   ( AWSIZE ),
        .AWBURST  ( AWBURST ),
        .AWID     ( AWID ),
        .AWADDR   ( AWADDR ),
        .WDATA    ( WDATA ),
        .WSTRB    ( WSTRB ),
        .ARADDR   ( ARADDR ),
        .ARSIZE   ( ARSIZE ),
        .ARID     ( ARID ),
        .ARLEN    ( ARLEN ),
        .ARBURST  ( ARBURST ),
        .HRDATA   ( COREAXITOAHBL_0_AHBMasterIF_HRDATA ),
        .WID      ( WID ),
        // Outputs
        .BVALID   ( UncachedAXISlaveIF_BVALID ),
        .AWREADY  ( UncachedAXISlaveIF_AWREADY ),
        .WREADY   ( UncachedAXISlaveIF_WREADY ),
        .ARREADY  ( UncachedAXISlaveIF_ARREADY ),
        .RVALID   ( UncachedAXISlaveIF_RVALID ),
        .RLAST    ( UncachedAXISlaveIF_RLAST ),
        .HWRITE   ( COREAXITOAHBL_0_AHBMasterIF_HWRITE ),
        .BRESP    ( UncachedAXISlaveIF_BRESP ),
        .BID      ( UncachedAXISlaveIF_BID ),
        .RID      ( UncachedAXISlaveIF_RID ),
        .RDATA    ( UncachedAXISlaveIF_RDATA ),
        .RRESP    ( UncachedAXISlaveIF_RRESP ),
        .HSIZE    ( COREAXITOAHBL_0_AHBMasterIF_HSIZE ),
        .HWDATA   ( COREAXITOAHBL_0_AHBMasterIF_HWDATA ),
        .HADDR    ( COREAXITOAHBL_0_AHBMasterIF_HADDR ),
        .HTRANS   ( COREAXITOAHBL_0_AHBMasterIF_HTRANS ),
        .HBURST   ( COREAXITOAHBL_0_AHBMasterIF_HBURST ) 
        );

//--------COREAXITOAHBL   -   Actel:DirectCore:COREAXITOAHBL:3.0.101
COREAXITOAHBL #( 
        .ASYNC_CLOCKS   ( 0 ),
        .ID_WIDTH       ( 5 ),
        .NO_BURST_TRANS ( 0 ),
        .WRAP_SUPPORT   ( 0 ) )
COREAXITOAHBL_1(
        // Inputs
        .ACLK     ( ACLK ),
        .ARESETN  ( ARESETN ),
        .AWVALID  ( AWVALID_0 ),
        .WVALID   ( WVALID_0 ),
        .WLAST    ( WLAST_0 ),
        .BREADY   ( BREADY_0 ),
        .ARVALID  ( ARVALID_0 ),
        .RREADY   ( RREADY_0 ),
        .HCLK     ( HCLK ),
        .HRESETN  ( HRESETN ),
        .HREADYIN ( COREAXITOAHBL_1_AHBMasterIF_HREADY ),
        .HRESP    ( COREAXITOAHBL_1_AHBMasterIF_HRESP_0 ),
        .AWLEN    ( AWLEN_0 ),
        .AWSIZE   ( AWSIZE_0 ),
        .AWBURST  ( AWBURST_0 ),
        .AWID     ( AWID_0 ),
        .AWADDR   ( AWADDR_0 ),
        .WDATA    ( WDATA_0 ),
        .WSTRB    ( WSTRB_0 ),
        .ARADDR   ( ARADDR_0 ),
        .ARSIZE   ( ARSIZE_0 ),
        .ARID     ( ARID_0 ),
        .ARLEN    ( ARLEN_0 ),
        .ARBURST  ( ARBURST_0 ),
        .HRDATA   ( COREAXITOAHBL_1_AHBMasterIF_HRDATA ),
        .WID      ( WID_0 ),
        // Outputs
        .BVALID   ( CachedAXISlaveIF_BVALID ),
        .AWREADY  ( CachedAXISlaveIF_AWREADY ),
        .WREADY   ( CachedAXISlaveIF_WREADY ),
        .ARREADY  ( CachedAXISlaveIF_ARREADY ),
        .RVALID   ( CachedAXISlaveIF_RVALID ),
        .RLAST    ( CachedAXISlaveIF_RLAST ),
        .HWRITE   ( COREAXITOAHBL_1_AHBMasterIF_HWRITE ),
        .BRESP    ( CachedAXISlaveIF_BRESP ),
        .BID      ( CachedAXISlaveIF_BID ),
        .RID      ( CachedAXISlaveIF_RID ),
        .RDATA    ( CachedAXISlaveIF_RDATA ),
        .RRESP    ( CachedAXISlaveIF_RRESP ),
        .HSIZE    ( COREAXITOAHBL_1_AHBMasterIF_HSIZE ),
        .HWDATA   ( COREAXITOAHBL_1_AHBMasterIF_HWDATA ),
        .HADDR    ( COREAXITOAHBL_1_AHBMasterIF_HADDR ),
        .HTRANS   ( COREAXITOAHBL_1_AHBMasterIF_HTRANS ),
        .HBURST   ( COREAXITOAHBL_1_AHBMasterIF_HBURST ) 
        );

//--------CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.1.101
CoreGPIO #( 
        .APB_WIDTH       ( 32 ),
        .FAMILY          ( 19 ),
        .FIXED_CONFIG_0  ( 1 ),
        .FIXED_CONFIG_1  ( 1 ),
        .FIXED_CONFIG_2  ( 1 ),
        .FIXED_CONFIG_3  ( 1 ),
        .FIXED_CONFIG_4  ( 1 ),
        .FIXED_CONFIG_5  ( 1 ),
        .FIXED_CONFIG_6  ( 1 ),
        .FIXED_CONFIG_7  ( 1 ),
        .FIXED_CONFIG_8  ( 1 ),
        .FIXED_CONFIG_9  ( 1 ),
        .FIXED_CONFIG_10 ( 1 ),
        .FIXED_CONFIG_11 ( 1 ),
        .FIXED_CONFIG_12 ( 1 ),
        .FIXED_CONFIG_13 ( 1 ),
        .FIXED_CONFIG_14 ( 1 ),
        .FIXED_CONFIG_15 ( 1 ),
        .FIXED_CONFIG_16 ( 1 ),
        .FIXED_CONFIG_17 ( 1 ),
        .FIXED_CONFIG_18 ( 1 ),
        .FIXED_CONFIG_19 ( 1 ),
        .FIXED_CONFIG_20 ( 1 ),
        .FIXED_CONFIG_21 ( 1 ),
        .FIXED_CONFIG_22 ( 1 ),
        .FIXED_CONFIG_23 ( 1 ),
        .FIXED_CONFIG_24 ( 1 ),
        .FIXED_CONFIG_25 ( 1 ),
        .FIXED_CONFIG_26 ( 1 ),
        .FIXED_CONFIG_27 ( 1 ),
        .FIXED_CONFIG_28 ( 1 ),
        .FIXED_CONFIG_29 ( 1 ),
        .FIXED_CONFIG_30 ( 1 ),
        .FIXED_CONFIG_31 ( 1 ),
        .INT_BUS         ( 0 ),
        .IO_INT_TYPE_0   ( 7 ),
        .IO_INT_TYPE_1   ( 7 ),
        .IO_INT_TYPE_2   ( 7 ),
        .IO_INT_TYPE_3   ( 7 ),
        .IO_INT_TYPE_4   ( 7 ),
        .IO_INT_TYPE_5   ( 7 ),
        .IO_INT_TYPE_6   ( 7 ),
        .IO_INT_TYPE_7   ( 7 ),
        .IO_INT_TYPE_8   ( 7 ),
        .IO_INT_TYPE_9   ( 7 ),
        .IO_INT_TYPE_10  ( 7 ),
        .IO_INT_TYPE_11  ( 7 ),
        .IO_INT_TYPE_12  ( 7 ),
        .IO_INT_TYPE_13  ( 7 ),
        .IO_INT_TYPE_14  ( 7 ),
        .IO_INT_TYPE_15  ( 7 ),
        .IO_INT_TYPE_16  ( 7 ),
        .IO_INT_TYPE_17  ( 7 ),
        .IO_INT_TYPE_18  ( 7 ),
        .IO_INT_TYPE_19  ( 7 ),
        .IO_INT_TYPE_20  ( 7 ),
        .IO_INT_TYPE_21  ( 7 ),
        .IO_INT_TYPE_22  ( 7 ),
        .IO_INT_TYPE_23  ( 7 ),
        .IO_INT_TYPE_24  ( 7 ),
        .IO_INT_TYPE_25  ( 7 ),
        .IO_INT_TYPE_26  ( 7 ),
        .IO_INT_TYPE_27  ( 7 ),
        .IO_INT_TYPE_28  ( 7 ),
        .IO_INT_TYPE_29  ( 7 ),
        .IO_INT_TYPE_30  ( 7 ),
        .IO_INT_TYPE_31  ( 7 ),
        .IO_NUM          ( 32 ),
        .IO_TYPE_0       ( 0 ),
        .IO_TYPE_1       ( 0 ),
        .IO_TYPE_2       ( 0 ),
        .IO_TYPE_3       ( 0 ),
        .IO_TYPE_4       ( 0 ),
        .IO_TYPE_5       ( 0 ),
        .IO_TYPE_6       ( 0 ),
        .IO_TYPE_7       ( 0 ),
        .IO_TYPE_8       ( 0 ),
        .IO_TYPE_9       ( 0 ),
        .IO_TYPE_10      ( 0 ),
        .IO_TYPE_11      ( 0 ),
        .IO_TYPE_12      ( 0 ),
        .IO_TYPE_13      ( 0 ),
        .IO_TYPE_14      ( 0 ),
        .IO_TYPE_15      ( 0 ),
        .IO_TYPE_16      ( 0 ),
        .IO_TYPE_17      ( 0 ),
        .IO_TYPE_18      ( 0 ),
        .IO_TYPE_19      ( 0 ),
        .IO_TYPE_20      ( 0 ),
        .IO_TYPE_21      ( 0 ),
        .IO_TYPE_22      ( 0 ),
        .IO_TYPE_23      ( 0 ),
        .IO_TYPE_24      ( 0 ),
        .IO_TYPE_25      ( 0 ),
        .IO_TYPE_26      ( 0 ),
        .IO_TYPE_27      ( 0 ),
        .IO_TYPE_28      ( 0 ),
        .IO_TYPE_29      ( 0 ),
        .IO_TYPE_30      ( 0 ),
        .IO_TYPE_31      ( 0 ),
        .IO_VAL_0        ( 0 ),
        .IO_VAL_1        ( 0 ),
        .IO_VAL_2        ( 0 ),
        .IO_VAL_3        ( 0 ),
        .IO_VAL_4        ( 0 ),
        .IO_VAL_5        ( 0 ),
        .IO_VAL_6        ( 0 ),
        .IO_VAL_7        ( 0 ),
        .IO_VAL_8        ( 0 ),
        .IO_VAL_9        ( 0 ),
        .IO_VAL_10       ( 0 ),
        .IO_VAL_11       ( 0 ),
        .IO_VAL_12       ( 0 ),
        .IO_VAL_13       ( 0 ),
        .IO_VAL_14       ( 0 ),
        .IO_VAL_15       ( 0 ),
        .IO_VAL_16       ( 0 ),
        .IO_VAL_17       ( 0 ),
        .IO_VAL_18       ( 0 ),
        .IO_VAL_19       ( 0 ),
        .IO_VAL_20       ( 0 ),
        .IO_VAL_21       ( 0 ),
        .IO_VAL_22       ( 0 ),
        .IO_VAL_23       ( 0 ),
        .IO_VAL_24       ( 0 ),
        .IO_VAL_25       ( 0 ),
        .IO_VAL_26       ( 0 ),
        .IO_VAL_27       ( 0 ),
        .IO_VAL_28       ( 0 ),
        .IO_VAL_29       ( 0 ),
        .IO_VAL_30       ( 0 ),
        .IO_VAL_31       ( 0 ),
        .OE_TYPE         ( 1 ) )
CoreGPIO_IN(
        // Inputs
        .PRESETN  ( PRESETN ),
        .PCLK     ( PCLK ),
        .PSEL     ( CoreAPB3_0_APBmslave2_PSELx ),
        .PENABLE  ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITE   ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PADDR    ( CoreAPB3_0_APBmslave1_PADDR_1 ),
        .PWDATA   ( CoreAPB3_0_APBmslave1_PWDATA ),
        .GPIO_IN  ( GPIO_IN ),
        // Outputs
        .PSLVERR  ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .PREADY   ( CoreAPB3_0_APBmslave2_PREADY ),
        .INT_OR   (  ),
        .PRDATA   ( CoreAPB3_0_APBmslave2_PRDATA ),
        .INT      (  ),
        .GPIO_OUT (  ),
        .GPIO_OE  (  ) 
        );

//--------CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.1.101
CoreGPIO #( 
        .APB_WIDTH       ( 32 ),
        .FAMILY          ( 19 ),
        .FIXED_CONFIG_0  ( 1 ),
        .FIXED_CONFIG_1  ( 1 ),
        .FIXED_CONFIG_2  ( 1 ),
        .FIXED_CONFIG_3  ( 1 ),
        .FIXED_CONFIG_4  ( 1 ),
        .FIXED_CONFIG_5  ( 1 ),
        .FIXED_CONFIG_6  ( 1 ),
        .FIXED_CONFIG_7  ( 1 ),
        .FIXED_CONFIG_8  ( 1 ),
        .FIXED_CONFIG_9  ( 1 ),
        .FIXED_CONFIG_10 ( 1 ),
        .FIXED_CONFIG_11 ( 1 ),
        .FIXED_CONFIG_12 ( 1 ),
        .FIXED_CONFIG_13 ( 1 ),
        .FIXED_CONFIG_14 ( 1 ),
        .FIXED_CONFIG_15 ( 1 ),
        .FIXED_CONFIG_16 ( 1 ),
        .FIXED_CONFIG_17 ( 1 ),
        .FIXED_CONFIG_18 ( 1 ),
        .FIXED_CONFIG_19 ( 1 ),
        .FIXED_CONFIG_20 ( 1 ),
        .FIXED_CONFIG_21 ( 1 ),
        .FIXED_CONFIG_22 ( 1 ),
        .FIXED_CONFIG_23 ( 1 ),
        .FIXED_CONFIG_24 ( 1 ),
        .FIXED_CONFIG_25 ( 1 ),
        .FIXED_CONFIG_26 ( 1 ),
        .FIXED_CONFIG_27 ( 1 ),
        .FIXED_CONFIG_28 ( 1 ),
        .FIXED_CONFIG_29 ( 1 ),
        .FIXED_CONFIG_30 ( 1 ),
        .FIXED_CONFIG_31 ( 1 ),
        .INT_BUS         ( 0 ),
        .IO_INT_TYPE_0   ( 7 ),
        .IO_INT_TYPE_1   ( 7 ),
        .IO_INT_TYPE_2   ( 7 ),
        .IO_INT_TYPE_3   ( 7 ),
        .IO_INT_TYPE_4   ( 7 ),
        .IO_INT_TYPE_5   ( 7 ),
        .IO_INT_TYPE_6   ( 7 ),
        .IO_INT_TYPE_7   ( 7 ),
        .IO_INT_TYPE_8   ( 7 ),
        .IO_INT_TYPE_9   ( 7 ),
        .IO_INT_TYPE_10  ( 7 ),
        .IO_INT_TYPE_11  ( 7 ),
        .IO_INT_TYPE_12  ( 7 ),
        .IO_INT_TYPE_13  ( 7 ),
        .IO_INT_TYPE_14  ( 7 ),
        .IO_INT_TYPE_15  ( 7 ),
        .IO_INT_TYPE_16  ( 7 ),
        .IO_INT_TYPE_17  ( 7 ),
        .IO_INT_TYPE_18  ( 7 ),
        .IO_INT_TYPE_19  ( 7 ),
        .IO_INT_TYPE_20  ( 7 ),
        .IO_INT_TYPE_21  ( 7 ),
        .IO_INT_TYPE_22  ( 7 ),
        .IO_INT_TYPE_23  ( 7 ),
        .IO_INT_TYPE_24  ( 7 ),
        .IO_INT_TYPE_25  ( 7 ),
        .IO_INT_TYPE_26  ( 7 ),
        .IO_INT_TYPE_27  ( 7 ),
        .IO_INT_TYPE_28  ( 7 ),
        .IO_INT_TYPE_29  ( 7 ),
        .IO_INT_TYPE_30  ( 7 ),
        .IO_INT_TYPE_31  ( 7 ),
        .IO_NUM          ( 32 ),
        .IO_TYPE_0       ( 1 ),
        .IO_TYPE_1       ( 1 ),
        .IO_TYPE_2       ( 1 ),
        .IO_TYPE_3       ( 1 ),
        .IO_TYPE_4       ( 1 ),
        .IO_TYPE_5       ( 1 ),
        .IO_TYPE_6       ( 1 ),
        .IO_TYPE_7       ( 1 ),
        .IO_TYPE_8       ( 1 ),
        .IO_TYPE_9       ( 1 ),
        .IO_TYPE_10      ( 1 ),
        .IO_TYPE_11      ( 1 ),
        .IO_TYPE_12      ( 1 ),
        .IO_TYPE_13      ( 1 ),
        .IO_TYPE_14      ( 1 ),
        .IO_TYPE_15      ( 1 ),
        .IO_TYPE_16      ( 1 ),
        .IO_TYPE_17      ( 1 ),
        .IO_TYPE_18      ( 1 ),
        .IO_TYPE_19      ( 1 ),
        .IO_TYPE_20      ( 1 ),
        .IO_TYPE_21      ( 1 ),
        .IO_TYPE_22      ( 1 ),
        .IO_TYPE_23      ( 1 ),
        .IO_TYPE_24      ( 1 ),
        .IO_TYPE_25      ( 1 ),
        .IO_TYPE_26      ( 1 ),
        .IO_TYPE_27      ( 1 ),
        .IO_TYPE_28      ( 1 ),
        .IO_TYPE_29      ( 1 ),
        .IO_TYPE_30      ( 1 ),
        .IO_TYPE_31      ( 1 ),
        .IO_VAL_0        ( 0 ),
        .IO_VAL_1        ( 0 ),
        .IO_VAL_2        ( 0 ),
        .IO_VAL_3        ( 0 ),
        .IO_VAL_4        ( 0 ),
        .IO_VAL_5        ( 0 ),
        .IO_VAL_6        ( 0 ),
        .IO_VAL_7        ( 0 ),
        .IO_VAL_8        ( 0 ),
        .IO_VAL_9        ( 0 ),
        .IO_VAL_10       ( 0 ),
        .IO_VAL_11       ( 0 ),
        .IO_VAL_12       ( 0 ),
        .IO_VAL_13       ( 0 ),
        .IO_VAL_14       ( 0 ),
        .IO_VAL_15       ( 0 ),
        .IO_VAL_16       ( 0 ),
        .IO_VAL_17       ( 0 ),
        .IO_VAL_18       ( 0 ),
        .IO_VAL_19       ( 0 ),
        .IO_VAL_20       ( 0 ),
        .IO_VAL_21       ( 0 ),
        .IO_VAL_22       ( 0 ),
        .IO_VAL_23       ( 0 ),
        .IO_VAL_24       ( 0 ),
        .IO_VAL_25       ( 0 ),
        .IO_VAL_26       ( 0 ),
        .IO_VAL_27       ( 0 ),
        .IO_VAL_28       ( 0 ),
        .IO_VAL_29       ( 0 ),
        .IO_VAL_30       ( 0 ),
        .IO_VAL_31       ( 0 ),
        .OE_TYPE         ( 1 ) )
CoreGPIO_OUT(
        // Inputs
        .PRESETN  ( PRESETN ),
        .PCLK     ( PCLK ),
        .PSEL     ( CoreAPB3_0_APBmslave5_PSELx ),
        .PENABLE  ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITE   ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PADDR    ( CoreAPB3_0_APBmslave1_PADDR_4 ),
        .PWDATA   ( CoreAPB3_0_APBmslave1_PWDATA ),
        .GPIO_IN  ( GPIO_IN_const_net_0 ),
        // Outputs
        .PSLVERR  ( CoreAPB3_0_APBmslave5_PSLVERR ),
        .PREADY   ( CoreAPB3_0_APBmslave5_PREADY ),
        .INT_OR   (  ),
        .PRDATA   ( CoreAPB3_0_APBmslave5_PRDATA ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_net_0 ),
        .GPIO_OE  (  ) 
        );

//--------CoreTimer   -   Actel:DirectCore:CoreTimer:2.0.103
CoreTimer #( 
        .FAMILY     ( 19 ),
        .INTACTIVEH ( 1 ),
        .WIDTH      ( 32 ) )
CoreTimer_0(
        // Inputs
        .PCLK    ( PCLK ),
        .PRESETn ( PRESETN ),
        .PSEL    ( CoreAPB3_0_APBmslave3_PSELx ),
        .PWRITE  ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PENABLE ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PADDR   ( CoreAPB3_0_APBmslave1_PADDR_2 ),
        .PWDATA  ( CoreAPB3_0_APBmslave1_PWDATA ),
        // Outputs
        .TIMINT  ( TIMINT_0_net_0 ),
        .PRDATA  ( CoreAPB3_0_APBmslave3_PRDATA ) 
        );

//--------CoreTimer   -   Actel:DirectCore:CoreTimer:2.0.103
CoreTimer #( 
        .FAMILY     ( 19 ),
        .INTACTIVEH ( 1 ),
        .WIDTH      ( 32 ) )
CoreTimer_1(
        // Inputs
        .PCLK    ( PCLK ),
        .PRESETn ( PRESETN ),
        .PSEL    ( CoreAPB3_0_APBmslave4_PSELx ),
        .PWRITE  ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PENABLE ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PADDR   ( CoreAPB3_0_APBmslave1_PADDR_3 ),
        .PWDATA  ( CoreAPB3_0_APBmslave1_PWDATA ),
        // Outputs
        .TIMINT  ( TIMINT_1_net_0 ),
        .PRDATA  ( CoreAPB3_0_APBmslave4_PRDATA ) 
        );

//--------MSS_SUBSYSTEM_CoreUARTapb_0_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.5.101
MSS_SUBSYSTEM_CoreUARTapb_0_CoreUARTapb #( 
        .BAUD_VAL_FRCTN    ( 0 ),
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .BAUD_VALUE        ( 1 ),
        .FAMILY            ( 19 ),
        .FIXEDMODE         ( 0 ),
        .PRG_BIT8          ( 0 ),
        .PRG_PARITY        ( 0 ),
        .RX_FIFO           ( 0 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 0 ) )
CoreUARTapb_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .PSEL        ( CoreAPB3_0_APBmslave1_PSELx ),
        .PENABLE     ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITE      ( CoreAPB3_0_APBmslave1_PWRITE ),
        .RX          ( RX ),
        .PADDR       ( CoreAPB3_0_APBmslave1_PADDR_0 ),
        .PWDATA      ( CoreAPB3_0_APBmslave1_PWDATA_0 ),
        // Outputs
        .TXRDY       (  ),
        .RXRDY       (  ),
        .PARITY_ERR  (  ),
        .OVERFLOW    (  ),
        .TX          ( TX_net_0 ),
        .PREADY      ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERR     ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .FRAMING_ERR (  ),
        .PRDATA      ( CoreAPB3_0_APBmslave1_PRDATA ) 
        );

//--------MSS_SUBSYSTEM_sb
MSS_SUBSYSTEM_sb MSS_SUBSYSTEM_sb_0(
        // Inputs
        .MDDR_DQS_TMATCH_0_IN       ( MDDR_DQS_TMATCH_0_IN ),
        .FAB_RESET_N                ( FAB_RESET_N ),
        .CLK0_PAD                   ( CLK0_PAD ),
        .DEVRST_N                   ( DEVRST_N ),
        .MSS_INT_F2M                ( MSS_INT_F2M_const_net_0 ),
        .MDDR_DDR_AHB0_S_HADDR      ( CoreAHBLite_1_AHBmslave16_HADDR ),
        .MDDR_DDR_AHB0_S_HTRANS     ( CoreAHBLite_1_AHBmslave16_HTRANS ),
        .MDDR_DDR_AHB0_S_HWRITE     ( CoreAHBLite_1_AHBmslave16_HWRITE ),
        .MDDR_DDR_AHB0_S_HSIZE      ( CoreAHBLite_1_AHBmslave16_HSIZE_0 ),
        .MDDR_DDR_AHB0_S_HBURST     ( CoreAHBLite_1_AHBmslave16_HBURST ),
        .MDDR_DDR_AHB0_S_HWDATA     ( CoreAHBLite_1_AHBmslave16_HWDATA ),
        .MDDR_DDR_AHB0_S_HSEL       ( CoreAHBLite_1_AHBmslave16_HSELx ),
        .MDDR_DDR_AHB0_S_HMASTLOCK  ( CoreAHBLite_1_AHBmslave16_HMASTLOCK ),
        .MDDR_DDR_AHB0_S_HREADY     ( CoreAHBLite_1_AHBmslave16_HREADY ),
        .FIC_0_AHB_S_HADDR          ( CoreAHBLite_0_AHBmslave6_HADDR ),
        .FIC_0_AHB_S_HTRANS         ( CoreAHBLite_0_AHBmslave6_HTRANS ),
        .FIC_0_AHB_S_HWRITE         ( CoreAHBLite_0_AHBmslave6_HWRITE ),
        .FIC_0_AHB_S_HSIZE          ( CoreAHBLite_0_AHBmslave6_HSIZE_0 ),
        .FIC_0_AHB_S_HWDATA         ( CoreAHBLite_0_AHBmslave6_HWDATA ),
        .FIC_0_AHB_S_HSEL           ( CoreAHBLite_0_AHBmslave6_HSELx ),
        .FIC_0_AHB_S_HMASTLOCK      ( CoreAHBLite_0_AHBmslave6_HMASTLOCK ),
        .FIC_0_AHB_S_HREADY         ( CoreAHBLite_0_AHBmslave6_HREADY ),
        .FIC_0_AHB_M_HRDATA         ( FIC_0_AHB_M_HRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .FIC_0_AHB_M_HREADY         ( VCC_net ), // tied to 1'b1 from definition
        .FIC_0_AHB_M_HRESP          ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .MDDR_DQS_TMATCH_0_OUT      ( MDDR_DQS_TMATCH_0_OUT_net_0 ),
        .MDDR_CAS_N                 ( MDDR_CAS_N_net_0 ),
        .MDDR_CLK                   ( MDDR_CLK_net_0 ),
        .MDDR_CLK_N                 ( MDDR_CLK_N_net_0 ),
        .MDDR_CKE                   ( MDDR_CKE_net_0 ),
        .MDDR_CS_N                  ( MDDR_CS_N_net_0 ),
        .MDDR_ODT                   ( MDDR_ODT_net_0 ),
        .MDDR_RAS_N                 ( MDDR_RAS_N_net_0 ),
        .MDDR_RESET_N               ( MDDR_RESET_N_net_0 ),
        .MDDR_WE_N                  ( MDDR_WE_N_net_0 ),
        .MDDR_ADDR                  ( MDDR_ADDR_net_0 ),
        .MDDR_BA                    ( MDDR_BA_net_0 ),
        .POWER_ON_RESET_N           ( POWER_ON_RESET_N_net_0 ),
        .INIT_DONE                  ( INIT_DONE_net_0 ),
        .MSS_DDR_FIC_SUBSYSTEM_CLK  ( MSS_DDR_FIC_SUBSYSTEM_CLK_net_0 ),
        .MSS_DDR_FIC_SUBSYSTEM_LOCK ( MSS_DDR_FIC_SUBSYSTEM_LOCK_net_0 ),
        .FIC_0_CLK                  ( FIC_0_CLK_net_0 ),
        .FIC_0_LOCK                 ( FIC_0_LOCK_net_0 ),
        .DDR_READY                  ( DDR_READY_net_0 ),
        .FAB_CCC_GL1                (  ),
        .FAB_CCC_LOCK               (  ),
        .MSS_READY                  ( MSS_READY_net_0 ),
        .MDDR_DDR_AHB0_S_HRDATA     ( CoreAHBLite_1_AHBmslave16_HRDATA ),
        .MDDR_DDR_AHB0_S_HREADYOUT  ( CoreAHBLite_1_AHBmslave16_HREADYOUT ),
        .MDDR_DDR_AHB0_S_HRESP      ( CoreAHBLite_1_AHBmslave16_HRESP ),
        .FIC_0_AHB_S_HRDATA         ( CoreAHBLite_0_AHBmslave6_HRDATA ),
        .FIC_0_AHB_S_HREADYOUT      ( CoreAHBLite_0_AHBmslave6_HREADYOUT ),
        .FIC_0_AHB_S_HRESP          ( CoreAHBLite_0_AHBmslave6_HRESP ),
        .FIC_0_AHB_M_HADDR          (  ),
        .FIC_0_AHB_M_HTRANS         (  ),
        .FIC_0_AHB_M_HWRITE         (  ),
        .FIC_0_AHB_M_HSIZE          (  ),
        .FIC_0_AHB_M_HWDATA         (  ),
        // Inouts
        .MDDR_DM_RDQS               ( MDDR_DM_RDQS ),
        .MDDR_DQ                    ( MDDR_DQ ),
        .MDDR_DQS                   ( MDDR_DQS ),
        .MDDR_DQS_N                 ( MDDR_DQS_N ) 
        );


endmodule
