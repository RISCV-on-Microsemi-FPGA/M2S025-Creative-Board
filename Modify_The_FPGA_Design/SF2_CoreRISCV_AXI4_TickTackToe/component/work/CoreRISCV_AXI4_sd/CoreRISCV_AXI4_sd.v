//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Nov 10 11:31:41 2016
// Version: v11.7 11.7.0.119
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// CoreRISCV_AXI4_sd
module CoreRISCV_AXI4_sd(
    // Inputs
    AXI_MST_MEM_ARREADY,
    AXI_MST_MEM_AWREADY,
    AXI_MST_MEM_BID,
    AXI_MST_MEM_BRESP,
    AXI_MST_MEM_BUSER,
    AXI_MST_MEM_BVALID,
    AXI_MST_MEM_RDATA,
    AXI_MST_MEM_RID,
    AXI_MST_MEM_RLAST,
    AXI_MST_MEM_RRESP,
    AXI_MST_MEM_RUSER,
    AXI_MST_MEM_RVALID,
    AXI_MST_MEM_WREADY,
    AXI_MST_MMIO_ARREADY,
    AXI_MST_MMIO_AWREADY,
    AXI_MST_MMIO_BID,
    AXI_MST_MMIO_BRESP,
    AXI_MST_MMIO_BUSER,
    AXI_MST_MMIO_BVALID,
    AXI_MST_MMIO_RDATA,
    AXI_MST_MMIO_RID,
    AXI_MST_MMIO_RLAST,
    AXI_MST_MMIO_RRESP,
    AXI_MST_MMIO_RUSER,
    AXI_MST_MMIO_RVALID,
    AXI_MST_MMIO_WREADY,
    CLK,
    IRQ,
    RESET,
    TCK,
    TDI,
    TMS,
    TRST,
    // Outputs
    AXI_MST_MEM_ARADDR,
    AXI_MST_MEM_ARBURST,
    AXI_MST_MEM_ARCACHE,
    AXI_MST_MEM_ARID,
    AXI_MST_MEM_ARLEN,
    AXI_MST_MEM_ARLOCK,
    AXI_MST_MEM_ARPROT,
    AXI_MST_MEM_ARQOS,
    AXI_MST_MEM_ARREGION,
    AXI_MST_MEM_ARSIZE,
    AXI_MST_MEM_ARUSER,
    AXI_MST_MEM_ARVALID,
    AXI_MST_MEM_AWADDR,
    AXI_MST_MEM_AWBURST,
    AXI_MST_MEM_AWCACHE,
    AXI_MST_MEM_AWID,
    AXI_MST_MEM_AWLEN,
    AXI_MST_MEM_AWLOCK,
    AXI_MST_MEM_AWPROT,
    AXI_MST_MEM_AWQOS,
    AXI_MST_MEM_AWREGION,
    AXI_MST_MEM_AWSIZE,
    AXI_MST_MEM_AWUSER,
    AXI_MST_MEM_AWVALID,
    AXI_MST_MEM_BREADY,
    AXI_MST_MEM_RREADY,
    AXI_MST_MEM_WDATA,
    AXI_MST_MEM_WID,
    AXI_MST_MEM_WLAST,
    AXI_MST_MEM_WSTRB,
    AXI_MST_MEM_WUSER,
    AXI_MST_MEM_WVALID,
    AXI_MST_MMIO_ARADDR,
    AXI_MST_MMIO_ARBURST,
    AXI_MST_MMIO_ARCACHE,
    AXI_MST_MMIO_ARID,
    AXI_MST_MMIO_ARLEN,
    AXI_MST_MMIO_ARLOCK,
    AXI_MST_MMIO_ARPROT,
    AXI_MST_MMIO_ARQOS,
    AXI_MST_MMIO_ARREGION,
    AXI_MST_MMIO_ARSIZE,
    AXI_MST_MMIO_ARUSER,
    AXI_MST_MMIO_ARVALID,
    AXI_MST_MMIO_AWADDR,
    AXI_MST_MMIO_AWBURST,
    AXI_MST_MMIO_AWCACHE,
    AXI_MST_MMIO_AWID,
    AXI_MST_MMIO_AWLEN,
    AXI_MST_MMIO_AWLOCK,
    AXI_MST_MMIO_AWPROT,
    AXI_MST_MMIO_AWQOS,
    AXI_MST_MMIO_AWREGION,
    AXI_MST_MMIO_AWSIZE,
    AXI_MST_MMIO_AWUSER,
    AXI_MST_MMIO_AWVALID,
    AXI_MST_MMIO_BREADY,
    AXI_MST_MMIO_RREADY,
    AXI_MST_MMIO_WDATA,
    AXI_MST_MMIO_WID,
    AXI_MST_MMIO_WLAST,
    AXI_MST_MMIO_WSTRB,
    AXI_MST_MMIO_WUSER,
    AXI_MST_MMIO_WVALID,
    DRV_TDO,
    TDO
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         AXI_MST_MEM_ARREADY;
input         AXI_MST_MEM_AWREADY;
input  [4:0]  AXI_MST_MEM_BID;
input  [1:0]  AXI_MST_MEM_BRESP;
input         AXI_MST_MEM_BUSER;
input         AXI_MST_MEM_BVALID;
input  [63:0] AXI_MST_MEM_RDATA;
input  [4:0]  AXI_MST_MEM_RID;
input         AXI_MST_MEM_RLAST;
input  [1:0]  AXI_MST_MEM_RRESP;
input         AXI_MST_MEM_RUSER;
input         AXI_MST_MEM_RVALID;
input         AXI_MST_MEM_WREADY;
input         AXI_MST_MMIO_ARREADY;
input         AXI_MST_MMIO_AWREADY;
input  [4:0]  AXI_MST_MMIO_BID;
input  [1:0]  AXI_MST_MMIO_BRESP;
input         AXI_MST_MMIO_BUSER;
input         AXI_MST_MMIO_BVALID;
input  [63:0] AXI_MST_MMIO_RDATA;
input  [4:0]  AXI_MST_MMIO_RID;
input         AXI_MST_MMIO_RLAST;
input  [1:0]  AXI_MST_MMIO_RRESP;
input         AXI_MST_MMIO_RUSER;
input         AXI_MST_MMIO_RVALID;
input         AXI_MST_MMIO_WREADY;
input         CLK;
input  [30:0] IRQ;
input         RESET;
input         TCK;
input         TDI;
input         TMS;
input         TRST;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] AXI_MST_MEM_ARADDR;
output [1:0]  AXI_MST_MEM_ARBURST;
output [3:0]  AXI_MST_MEM_ARCACHE;
output [4:0]  AXI_MST_MEM_ARID;
output [7:0]  AXI_MST_MEM_ARLEN;
output        AXI_MST_MEM_ARLOCK;
output [2:0]  AXI_MST_MEM_ARPROT;
output [3:0]  AXI_MST_MEM_ARQOS;
output [3:0]  AXI_MST_MEM_ARREGION;
output [2:0]  AXI_MST_MEM_ARSIZE;
output        AXI_MST_MEM_ARUSER;
output        AXI_MST_MEM_ARVALID;
output [31:0] AXI_MST_MEM_AWADDR;
output [1:0]  AXI_MST_MEM_AWBURST;
output [3:0]  AXI_MST_MEM_AWCACHE;
output [4:0]  AXI_MST_MEM_AWID;
output [7:0]  AXI_MST_MEM_AWLEN;
output        AXI_MST_MEM_AWLOCK;
output [2:0]  AXI_MST_MEM_AWPROT;
output [3:0]  AXI_MST_MEM_AWQOS;
output [3:0]  AXI_MST_MEM_AWREGION;
output [2:0]  AXI_MST_MEM_AWSIZE;
output        AXI_MST_MEM_AWUSER;
output        AXI_MST_MEM_AWVALID;
output        AXI_MST_MEM_BREADY;
output        AXI_MST_MEM_RREADY;
output [63:0] AXI_MST_MEM_WDATA;
output [4:0]  AXI_MST_MEM_WID;
output        AXI_MST_MEM_WLAST;
output [7:0]  AXI_MST_MEM_WSTRB;
output        AXI_MST_MEM_WUSER;
output        AXI_MST_MEM_WVALID;
output [31:0] AXI_MST_MMIO_ARADDR;
output [1:0]  AXI_MST_MMIO_ARBURST;
output [3:0]  AXI_MST_MMIO_ARCACHE;
output [4:0]  AXI_MST_MMIO_ARID;
output [7:0]  AXI_MST_MMIO_ARLEN;
output        AXI_MST_MMIO_ARLOCK;
output [2:0]  AXI_MST_MMIO_ARPROT;
output [3:0]  AXI_MST_MMIO_ARQOS;
output [3:0]  AXI_MST_MMIO_ARREGION;
output [2:0]  AXI_MST_MMIO_ARSIZE;
output        AXI_MST_MMIO_ARUSER;
output        AXI_MST_MMIO_ARVALID;
output [31:0] AXI_MST_MMIO_AWADDR;
output [1:0]  AXI_MST_MMIO_AWBURST;
output [3:0]  AXI_MST_MMIO_AWCACHE;
output [4:0]  AXI_MST_MMIO_AWID;
output [7:0]  AXI_MST_MMIO_AWLEN;
output        AXI_MST_MMIO_AWLOCK;
output [2:0]  AXI_MST_MMIO_AWPROT;
output [3:0]  AXI_MST_MMIO_AWQOS;
output [3:0]  AXI_MST_MMIO_AWREGION;
output [2:0]  AXI_MST_MMIO_AWSIZE;
output        AXI_MST_MMIO_AWUSER;
output        AXI_MST_MMIO_AWVALID;
output        AXI_MST_MMIO_BREADY;
output        AXI_MST_MMIO_RREADY;
output [63:0] AXI_MST_MMIO_WDATA;
output [4:0]  AXI_MST_MMIO_WID;
output        AXI_MST_MMIO_WLAST;
output [7:0]  AXI_MST_MMIO_WSTRB;
output        AXI_MST_MMIO_WUSER;
output        AXI_MST_MMIO_WVALID;
output        DRV_TDO;
output        TDO;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] AXI_MST_MEM_ARADDR_net_0;
wire   [1:0]  AXI_MST_MEM_ARBURST_net_0;
wire   [3:0]  AXI_MST_MEM_ARCACHE_net_0;
wire   [4:0]  AXI_MST_MEM_ARID_net_0;
wire   [7:0]  AXI_MST_MEM_ARLEN_net_0;
wire          AXI_MST_MEM_ARLOCK_net_0;
wire   [2:0]  AXI_MST_MEM_ARPROT_net_0;
wire   [3:0]  AXI_MST_MEM_ARQOS_net_0;
wire          AXI_MST_MEM_ARREADY;
wire   [3:0]  AXI_MST_MEM_ARREGION_net_0;
wire   [2:0]  AXI_MST_MEM_ARSIZE_net_0;
wire          AXI_MST_MEM_ARUSER_net_0;
wire          AXI_MST_MEM_ARVALID_net_0;
wire   [31:0] AXI_MST_MEM_AWADDR_net_0;
wire   [1:0]  AXI_MST_MEM_AWBURST_net_0;
wire   [3:0]  AXI_MST_MEM_AWCACHE_net_0;
wire   [4:0]  AXI_MST_MEM_AWID_net_0;
wire   [7:0]  AXI_MST_MEM_AWLEN_net_0;
wire          AXI_MST_MEM_AWLOCK_net_0;
wire   [2:0]  AXI_MST_MEM_AWPROT_net_0;
wire   [3:0]  AXI_MST_MEM_AWQOS_net_0;
wire          AXI_MST_MEM_AWREADY;
wire   [3:0]  AXI_MST_MEM_AWREGION_net_0;
wire   [2:0]  AXI_MST_MEM_AWSIZE_net_0;
wire          AXI_MST_MEM_AWUSER_net_0;
wire          AXI_MST_MEM_AWVALID_net_0;
wire   [4:0]  AXI_MST_MEM_BID;
wire          AXI_MST_MEM_BREADY_net_0;
wire   [1:0]  AXI_MST_MEM_BRESP;
wire          AXI_MST_MEM_BUSER;
wire          AXI_MST_MEM_BVALID;
wire   [63:0] AXI_MST_MEM_RDATA;
wire   [4:0]  AXI_MST_MEM_RID;
wire          AXI_MST_MEM_RLAST;
wire          AXI_MST_MEM_RREADY_net_0;
wire   [1:0]  AXI_MST_MEM_RRESP;
wire          AXI_MST_MEM_RUSER;
wire          AXI_MST_MEM_RVALID;
wire   [63:0] AXI_MST_MEM_WDATA_net_0;
wire          AXI_MST_MEM_WLAST_net_0;
wire          AXI_MST_MEM_WREADY;
wire   [7:0]  AXI_MST_MEM_WSTRB_net_0;
wire          AXI_MST_MEM_WUSER_net_0;
wire          AXI_MST_MEM_WVALID_net_0;
wire   [4:0]  AXI_MST_MEM_WID_net_0;
wire   [31:0] AXI_MST_MMIO_ARADDR_net_0;
wire   [1:0]  AXI_MST_MMIO_ARBURST_net_0;
wire   [3:0]  AXI_MST_MMIO_ARCACHE_net_0;
wire   [4:0]  AXI_MST_MMIO_ARID_net_0;
wire   [7:0]  AXI_MST_MMIO_ARLEN_net_0;
wire          AXI_MST_MMIO_ARLOCK_net_0;
wire   [2:0]  AXI_MST_MMIO_ARPROT_net_0;
wire   [3:0]  AXI_MST_MMIO_ARQOS_net_0;
wire          AXI_MST_MMIO_ARREADY;
wire   [3:0]  AXI_MST_MMIO_ARREGION_net_0;
wire   [2:0]  AXI_MST_MMIO_ARSIZE_net_0;
wire          AXI_MST_MMIO_ARUSER_net_0;
wire          AXI_MST_MMIO_ARVALID_net_0;
wire   [31:0] AXI_MST_MMIO_AWADDR_net_0;
wire   [1:0]  AXI_MST_MMIO_AWBURST_net_0;
wire   [3:0]  AXI_MST_MMIO_AWCACHE_net_0;
wire   [4:0]  AXI_MST_MMIO_AWID_net_0;
wire   [7:0]  AXI_MST_MMIO_AWLEN_net_0;
wire          AXI_MST_MMIO_AWLOCK_net_0;
wire   [2:0]  AXI_MST_MMIO_AWPROT_net_0;
wire   [3:0]  AXI_MST_MMIO_AWQOS_net_0;
wire          AXI_MST_MMIO_AWREADY;
wire   [3:0]  AXI_MST_MMIO_AWREGION_net_0;
wire   [2:0]  AXI_MST_MMIO_AWSIZE_net_0;
wire          AXI_MST_MMIO_AWUSER_net_0;
wire          AXI_MST_MMIO_AWVALID_net_0;
wire   [4:0]  AXI_MST_MMIO_BID;
wire          AXI_MST_MMIO_BREADY_net_0;
wire   [1:0]  AXI_MST_MMIO_BRESP;
wire          AXI_MST_MMIO_BUSER;
wire          AXI_MST_MMIO_BVALID;
wire   [63:0] AXI_MST_MMIO_RDATA;
wire   [4:0]  AXI_MST_MMIO_RID;
wire          AXI_MST_MMIO_RLAST;
wire          AXI_MST_MMIO_RREADY_net_0;
wire   [1:0]  AXI_MST_MMIO_RRESP;
wire          AXI_MST_MMIO_RUSER;
wire          AXI_MST_MMIO_RVALID;
wire   [63:0] AXI_MST_MMIO_WDATA_net_0;
wire          AXI_MST_MMIO_WLAST_net_0;
wire          AXI_MST_MMIO_WREADY;
wire   [7:0]  AXI_MST_MMIO_WSTRB_net_0;
wire          AXI_MST_MMIO_WUSER_net_0;
wire          AXI_MST_MMIO_WVALID_net_0;
wire   [4:0]  AXI_MST_MMIO_WID_net_0;
wire          CLK;
wire          DRV_TDO_net_0;
wire   [30:0] IRQ;
wire          RESET;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          TRST;
wire   [4:0]  AXI_MST_MEM_AWID_net_1;
wire   [31:0] AXI_MST_MEM_AWADDR_net_1;
wire   [7:0]  AXI_MST_MEM_AWLEN_net_1;
wire   [2:0]  AXI_MST_MEM_AWSIZE_net_1;
wire   [1:0]  AXI_MST_MEM_AWBURST_net_1;
wire          AXI_MST_MEM_AWLOCK_net_1;
wire   [3:0]  AXI_MST_MEM_AWCACHE_net_1;
wire   [2:0]  AXI_MST_MEM_AWPROT_net_1;
wire   [3:0]  AXI_MST_MEM_AWQOS_net_1;
wire   [3:0]  AXI_MST_MEM_AWREGION_net_1;
wire          AXI_MST_MEM_AWVALID_net_1;
wire   [63:0] AXI_MST_MEM_WDATA_net_1;
wire   [7:0]  AXI_MST_MEM_WSTRB_net_1;
wire          AXI_MST_MEM_WLAST_net_1;
wire          AXI_MST_MEM_WVALID_net_1;
wire          AXI_MST_MEM_BREADY_net_1;
wire   [4:0]  AXI_MST_MEM_ARID_net_1;
wire   [31:0] AXI_MST_MEM_ARADDR_net_1;
wire   [7:0]  AXI_MST_MEM_ARLEN_net_1;
wire   [2:0]  AXI_MST_MEM_ARSIZE_net_1;
wire   [1:0]  AXI_MST_MEM_ARBURST_net_1;
wire          AXI_MST_MEM_ARLOCK_net_1;
wire   [3:0]  AXI_MST_MEM_ARCACHE_net_1;
wire   [2:0]  AXI_MST_MEM_ARPROT_net_1;
wire   [3:0]  AXI_MST_MEM_ARQOS_net_1;
wire   [3:0]  AXI_MST_MEM_ARREGION_net_1;
wire          AXI_MST_MEM_ARVALID_net_1;
wire          AXI_MST_MEM_RREADY_net_1;
wire          AXI_MST_MEM_AWUSER_net_1;
wire          AXI_MST_MEM_WUSER_net_1;
wire          AXI_MST_MEM_ARUSER_net_1;
wire   [4:0]  AXI_MST_MMIO_AWID_net_1;
wire   [31:0] AXI_MST_MMIO_AWADDR_net_1;
wire   [7:0]  AXI_MST_MMIO_AWLEN_net_1;
wire   [2:0]  AXI_MST_MMIO_AWSIZE_net_1;
wire   [1:0]  AXI_MST_MMIO_AWBURST_net_1;
wire          AXI_MST_MMIO_AWLOCK_net_1;
wire   [3:0]  AXI_MST_MMIO_AWCACHE_net_1;
wire   [2:0]  AXI_MST_MMIO_AWPROT_net_1;
wire   [3:0]  AXI_MST_MMIO_AWQOS_net_1;
wire   [3:0]  AXI_MST_MMIO_AWREGION_net_1;
wire          AXI_MST_MMIO_AWVALID_net_1;
wire   [63:0] AXI_MST_MMIO_WDATA_net_1;
wire   [7:0]  AXI_MST_MMIO_WSTRB_net_1;
wire          AXI_MST_MMIO_WLAST_net_1;
wire          AXI_MST_MMIO_WVALID_net_1;
wire          AXI_MST_MMIO_BREADY_net_1;
wire   [4:0]  AXI_MST_MMIO_ARID_net_1;
wire   [31:0] AXI_MST_MMIO_ARADDR_net_1;
wire   [7:0]  AXI_MST_MMIO_ARLEN_net_1;
wire   [2:0]  AXI_MST_MMIO_ARSIZE_net_1;
wire   [1:0]  AXI_MST_MMIO_ARBURST_net_1;
wire          AXI_MST_MMIO_ARLOCK_net_1;
wire   [3:0]  AXI_MST_MMIO_ARCACHE_net_1;
wire   [2:0]  AXI_MST_MMIO_ARPROT_net_1;
wire   [3:0]  AXI_MST_MMIO_ARQOS_net_1;
wire   [3:0]  AXI_MST_MMIO_ARREGION_net_1;
wire          AXI_MST_MMIO_ARVALID_net_1;
wire          AXI_MST_MMIO_RREADY_net_1;
wire          AXI_MST_MMIO_AWUSER_net_1;
wire          AXI_MST_MMIO_WUSER_net_1;
wire          AXI_MST_MMIO_ARUSER_net_1;
wire   [4:0]  AXI_MST_MMIO_WID_net_1;
wire   [4:0]  AXI_MST_MEM_WID_net_1;
wire          DRV_TDO_net_1;
wire          TDO_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign AXI_MST_MEM_AWID_net_1      = AXI_MST_MEM_AWID_net_0;
assign AXI_MST_MEM_AWID[4:0]       = AXI_MST_MEM_AWID_net_1;
assign AXI_MST_MEM_AWADDR_net_1    = AXI_MST_MEM_AWADDR_net_0;
assign AXI_MST_MEM_AWADDR[31:0]    = AXI_MST_MEM_AWADDR_net_1;
assign AXI_MST_MEM_AWLEN_net_1     = AXI_MST_MEM_AWLEN_net_0;
assign AXI_MST_MEM_AWLEN[7:0]      = AXI_MST_MEM_AWLEN_net_1;
assign AXI_MST_MEM_AWSIZE_net_1    = AXI_MST_MEM_AWSIZE_net_0;
assign AXI_MST_MEM_AWSIZE[2:0]     = AXI_MST_MEM_AWSIZE_net_1;
assign AXI_MST_MEM_AWBURST_net_1   = AXI_MST_MEM_AWBURST_net_0;
assign AXI_MST_MEM_AWBURST[1:0]    = AXI_MST_MEM_AWBURST_net_1;
assign AXI_MST_MEM_AWLOCK_net_1    = AXI_MST_MEM_AWLOCK_net_0;
assign AXI_MST_MEM_AWLOCK          = AXI_MST_MEM_AWLOCK_net_1;
assign AXI_MST_MEM_AWCACHE_net_1   = AXI_MST_MEM_AWCACHE_net_0;
assign AXI_MST_MEM_AWCACHE[3:0]    = AXI_MST_MEM_AWCACHE_net_1;
assign AXI_MST_MEM_AWPROT_net_1    = AXI_MST_MEM_AWPROT_net_0;
assign AXI_MST_MEM_AWPROT[2:0]     = AXI_MST_MEM_AWPROT_net_1;
assign AXI_MST_MEM_AWQOS_net_1     = AXI_MST_MEM_AWQOS_net_0;
assign AXI_MST_MEM_AWQOS[3:0]      = AXI_MST_MEM_AWQOS_net_1;
assign AXI_MST_MEM_AWREGION_net_1  = AXI_MST_MEM_AWREGION_net_0;
assign AXI_MST_MEM_AWREGION[3:0]   = AXI_MST_MEM_AWREGION_net_1;
assign AXI_MST_MEM_AWVALID_net_1   = AXI_MST_MEM_AWVALID_net_0;
assign AXI_MST_MEM_AWVALID         = AXI_MST_MEM_AWVALID_net_1;
assign AXI_MST_MEM_WDATA_net_1     = AXI_MST_MEM_WDATA_net_0;
assign AXI_MST_MEM_WDATA[63:0]     = AXI_MST_MEM_WDATA_net_1;
assign AXI_MST_MEM_WSTRB_net_1     = AXI_MST_MEM_WSTRB_net_0;
assign AXI_MST_MEM_WSTRB[7:0]      = AXI_MST_MEM_WSTRB_net_1;
assign AXI_MST_MEM_WLAST_net_1     = AXI_MST_MEM_WLAST_net_0;
assign AXI_MST_MEM_WLAST           = AXI_MST_MEM_WLAST_net_1;
assign AXI_MST_MEM_WVALID_net_1    = AXI_MST_MEM_WVALID_net_0;
assign AXI_MST_MEM_WVALID          = AXI_MST_MEM_WVALID_net_1;
assign AXI_MST_MEM_BREADY_net_1    = AXI_MST_MEM_BREADY_net_0;
assign AXI_MST_MEM_BREADY          = AXI_MST_MEM_BREADY_net_1;
assign AXI_MST_MEM_ARID_net_1      = AXI_MST_MEM_ARID_net_0;
assign AXI_MST_MEM_ARID[4:0]       = AXI_MST_MEM_ARID_net_1;
assign AXI_MST_MEM_ARADDR_net_1    = AXI_MST_MEM_ARADDR_net_0;
assign AXI_MST_MEM_ARADDR[31:0]    = AXI_MST_MEM_ARADDR_net_1;
assign AXI_MST_MEM_ARLEN_net_1     = AXI_MST_MEM_ARLEN_net_0;
assign AXI_MST_MEM_ARLEN[7:0]      = AXI_MST_MEM_ARLEN_net_1;
assign AXI_MST_MEM_ARSIZE_net_1    = AXI_MST_MEM_ARSIZE_net_0;
assign AXI_MST_MEM_ARSIZE[2:0]     = AXI_MST_MEM_ARSIZE_net_1;
assign AXI_MST_MEM_ARBURST_net_1   = AXI_MST_MEM_ARBURST_net_0;
assign AXI_MST_MEM_ARBURST[1:0]    = AXI_MST_MEM_ARBURST_net_1;
assign AXI_MST_MEM_ARLOCK_net_1    = AXI_MST_MEM_ARLOCK_net_0;
assign AXI_MST_MEM_ARLOCK          = AXI_MST_MEM_ARLOCK_net_1;
assign AXI_MST_MEM_ARCACHE_net_1   = AXI_MST_MEM_ARCACHE_net_0;
assign AXI_MST_MEM_ARCACHE[3:0]    = AXI_MST_MEM_ARCACHE_net_1;
assign AXI_MST_MEM_ARPROT_net_1    = AXI_MST_MEM_ARPROT_net_0;
assign AXI_MST_MEM_ARPROT[2:0]     = AXI_MST_MEM_ARPROT_net_1;
assign AXI_MST_MEM_ARQOS_net_1     = AXI_MST_MEM_ARQOS_net_0;
assign AXI_MST_MEM_ARQOS[3:0]      = AXI_MST_MEM_ARQOS_net_1;
assign AXI_MST_MEM_ARREGION_net_1  = AXI_MST_MEM_ARREGION_net_0;
assign AXI_MST_MEM_ARREGION[3:0]   = AXI_MST_MEM_ARREGION_net_1;
assign AXI_MST_MEM_ARVALID_net_1   = AXI_MST_MEM_ARVALID_net_0;
assign AXI_MST_MEM_ARVALID         = AXI_MST_MEM_ARVALID_net_1;
assign AXI_MST_MEM_RREADY_net_1    = AXI_MST_MEM_RREADY_net_0;
assign AXI_MST_MEM_RREADY          = AXI_MST_MEM_RREADY_net_1;
assign AXI_MST_MEM_AWUSER_net_1    = AXI_MST_MEM_AWUSER_net_0;
assign AXI_MST_MEM_AWUSER          = AXI_MST_MEM_AWUSER_net_1;
assign AXI_MST_MEM_WUSER_net_1     = AXI_MST_MEM_WUSER_net_0;
assign AXI_MST_MEM_WUSER           = AXI_MST_MEM_WUSER_net_1;
assign AXI_MST_MEM_ARUSER_net_1    = AXI_MST_MEM_ARUSER_net_0;
assign AXI_MST_MEM_ARUSER          = AXI_MST_MEM_ARUSER_net_1;
assign AXI_MST_MMIO_AWID_net_1     = AXI_MST_MMIO_AWID_net_0;
assign AXI_MST_MMIO_AWID[4:0]      = AXI_MST_MMIO_AWID_net_1;
assign AXI_MST_MMIO_AWADDR_net_1   = AXI_MST_MMIO_AWADDR_net_0;
assign AXI_MST_MMIO_AWADDR[31:0]   = AXI_MST_MMIO_AWADDR_net_1;
assign AXI_MST_MMIO_AWLEN_net_1    = AXI_MST_MMIO_AWLEN_net_0;
assign AXI_MST_MMIO_AWLEN[7:0]     = AXI_MST_MMIO_AWLEN_net_1;
assign AXI_MST_MMIO_AWSIZE_net_1   = AXI_MST_MMIO_AWSIZE_net_0;
assign AXI_MST_MMIO_AWSIZE[2:0]    = AXI_MST_MMIO_AWSIZE_net_1;
assign AXI_MST_MMIO_AWBURST_net_1  = AXI_MST_MMIO_AWBURST_net_0;
assign AXI_MST_MMIO_AWBURST[1:0]   = AXI_MST_MMIO_AWBURST_net_1;
assign AXI_MST_MMIO_AWLOCK_net_1   = AXI_MST_MMIO_AWLOCK_net_0;
assign AXI_MST_MMIO_AWLOCK         = AXI_MST_MMIO_AWLOCK_net_1;
assign AXI_MST_MMIO_AWCACHE_net_1  = AXI_MST_MMIO_AWCACHE_net_0;
assign AXI_MST_MMIO_AWCACHE[3:0]   = AXI_MST_MMIO_AWCACHE_net_1;
assign AXI_MST_MMIO_AWPROT_net_1   = AXI_MST_MMIO_AWPROT_net_0;
assign AXI_MST_MMIO_AWPROT[2:0]    = AXI_MST_MMIO_AWPROT_net_1;
assign AXI_MST_MMIO_AWQOS_net_1    = AXI_MST_MMIO_AWQOS_net_0;
assign AXI_MST_MMIO_AWQOS[3:0]     = AXI_MST_MMIO_AWQOS_net_1;
assign AXI_MST_MMIO_AWREGION_net_1 = AXI_MST_MMIO_AWREGION_net_0;
assign AXI_MST_MMIO_AWREGION[3:0]  = AXI_MST_MMIO_AWREGION_net_1;
assign AXI_MST_MMIO_AWVALID_net_1  = AXI_MST_MMIO_AWVALID_net_0;
assign AXI_MST_MMIO_AWVALID        = AXI_MST_MMIO_AWVALID_net_1;
assign AXI_MST_MMIO_WDATA_net_1    = AXI_MST_MMIO_WDATA_net_0;
assign AXI_MST_MMIO_WDATA[63:0]    = AXI_MST_MMIO_WDATA_net_1;
assign AXI_MST_MMIO_WSTRB_net_1    = AXI_MST_MMIO_WSTRB_net_0;
assign AXI_MST_MMIO_WSTRB[7:0]     = AXI_MST_MMIO_WSTRB_net_1;
assign AXI_MST_MMIO_WLAST_net_1    = AXI_MST_MMIO_WLAST_net_0;
assign AXI_MST_MMIO_WLAST          = AXI_MST_MMIO_WLAST_net_1;
assign AXI_MST_MMIO_WVALID_net_1   = AXI_MST_MMIO_WVALID_net_0;
assign AXI_MST_MMIO_WVALID         = AXI_MST_MMIO_WVALID_net_1;
assign AXI_MST_MMIO_BREADY_net_1   = AXI_MST_MMIO_BREADY_net_0;
assign AXI_MST_MMIO_BREADY         = AXI_MST_MMIO_BREADY_net_1;
assign AXI_MST_MMIO_ARID_net_1     = AXI_MST_MMIO_ARID_net_0;
assign AXI_MST_MMIO_ARID[4:0]      = AXI_MST_MMIO_ARID_net_1;
assign AXI_MST_MMIO_ARADDR_net_1   = AXI_MST_MMIO_ARADDR_net_0;
assign AXI_MST_MMIO_ARADDR[31:0]   = AXI_MST_MMIO_ARADDR_net_1;
assign AXI_MST_MMIO_ARLEN_net_1    = AXI_MST_MMIO_ARLEN_net_0;
assign AXI_MST_MMIO_ARLEN[7:0]     = AXI_MST_MMIO_ARLEN_net_1;
assign AXI_MST_MMIO_ARSIZE_net_1   = AXI_MST_MMIO_ARSIZE_net_0;
assign AXI_MST_MMIO_ARSIZE[2:0]    = AXI_MST_MMIO_ARSIZE_net_1;
assign AXI_MST_MMIO_ARBURST_net_1  = AXI_MST_MMIO_ARBURST_net_0;
assign AXI_MST_MMIO_ARBURST[1:0]   = AXI_MST_MMIO_ARBURST_net_1;
assign AXI_MST_MMIO_ARLOCK_net_1   = AXI_MST_MMIO_ARLOCK_net_0;
assign AXI_MST_MMIO_ARLOCK         = AXI_MST_MMIO_ARLOCK_net_1;
assign AXI_MST_MMIO_ARCACHE_net_1  = AXI_MST_MMIO_ARCACHE_net_0;
assign AXI_MST_MMIO_ARCACHE[3:0]   = AXI_MST_MMIO_ARCACHE_net_1;
assign AXI_MST_MMIO_ARPROT_net_1   = AXI_MST_MMIO_ARPROT_net_0;
assign AXI_MST_MMIO_ARPROT[2:0]    = AXI_MST_MMIO_ARPROT_net_1;
assign AXI_MST_MMIO_ARQOS_net_1    = AXI_MST_MMIO_ARQOS_net_0;
assign AXI_MST_MMIO_ARQOS[3:0]     = AXI_MST_MMIO_ARQOS_net_1;
assign AXI_MST_MMIO_ARREGION_net_1 = AXI_MST_MMIO_ARREGION_net_0;
assign AXI_MST_MMIO_ARREGION[3:0]  = AXI_MST_MMIO_ARREGION_net_1;
assign AXI_MST_MMIO_ARVALID_net_1  = AXI_MST_MMIO_ARVALID_net_0;
assign AXI_MST_MMIO_ARVALID        = AXI_MST_MMIO_ARVALID_net_1;
assign AXI_MST_MMIO_RREADY_net_1   = AXI_MST_MMIO_RREADY_net_0;
assign AXI_MST_MMIO_RREADY         = AXI_MST_MMIO_RREADY_net_1;
assign AXI_MST_MMIO_AWUSER_net_1   = AXI_MST_MMIO_AWUSER_net_0;
assign AXI_MST_MMIO_AWUSER         = AXI_MST_MMIO_AWUSER_net_1;
assign AXI_MST_MMIO_WUSER_net_1    = AXI_MST_MMIO_WUSER_net_0;
assign AXI_MST_MMIO_WUSER          = AXI_MST_MMIO_WUSER_net_1;
assign AXI_MST_MMIO_ARUSER_net_1   = AXI_MST_MMIO_ARUSER_net_0;
assign AXI_MST_MMIO_ARUSER         = AXI_MST_MMIO_ARUSER_net_1;
assign AXI_MST_MMIO_WID_net_1      = AXI_MST_MMIO_WID_net_0;
assign AXI_MST_MMIO_WID[4:0]       = AXI_MST_MMIO_WID_net_1;
assign AXI_MST_MEM_WID_net_1       = AXI_MST_MEM_WID_net_0;
assign AXI_MST_MEM_WID[4:0]        = AXI_MST_MEM_WID_net_1;
assign DRV_TDO_net_1               = DRV_TDO_net_0;
assign DRV_TDO                     = DRV_TDO_net_1;
assign TDO_net_1                   = TDO_net_0;
assign TDO                         = TDO_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CORERISCV_AXI4   -   Actel:DirectCore:CORERISCV_AXI4:1.0.8
CORERISCV_AXI4 #( 
        .RESET_VECTOR_ADDR ( 'h60000000 ) )
CORERISCV_AXI4_0(
        // Inputs
        .CLK                   ( CLK ),
        .RESET                 ( RESET ),
        .AXI_MST_MEM_AWREADY   ( AXI_MST_MEM_AWREADY ),
        .AXI_MST_MEM_WREADY    ( AXI_MST_MEM_WREADY ),
        .AXI_MST_MEM_BVALID    ( AXI_MST_MEM_BVALID ),
        .AXI_MST_MEM_BRESP     ( AXI_MST_MEM_BRESP ),
        .AXI_MST_MEM_BID       ( AXI_MST_MEM_BID ),
        .AXI_MST_MEM_BUSER     ( AXI_MST_MEM_BUSER ),
        .AXI_MST_MEM_ARREADY   ( AXI_MST_MEM_ARREADY ),
        .AXI_MST_MEM_RVALID    ( AXI_MST_MEM_RVALID ),
        .AXI_MST_MEM_RRESP     ( AXI_MST_MEM_RRESP ),
        .AXI_MST_MEM_RDATA     ( AXI_MST_MEM_RDATA ),
        .AXI_MST_MEM_RLAST     ( AXI_MST_MEM_RLAST ),
        .AXI_MST_MEM_RID       ( AXI_MST_MEM_RID ),
        .AXI_MST_MEM_RUSER     ( AXI_MST_MEM_RUSER ),
        .AXI_MST_MMIO_AWREADY  ( AXI_MST_MMIO_AWREADY ),
        .AXI_MST_MMIO_WREADY   ( AXI_MST_MMIO_WREADY ),
        .AXI_MST_MMIO_BVALID   ( AXI_MST_MMIO_BVALID ),
        .AXI_MST_MMIO_BRESP    ( AXI_MST_MMIO_BRESP ),
        .AXI_MST_MMIO_BID      ( AXI_MST_MMIO_BID ),
        .AXI_MST_MMIO_BUSER    ( AXI_MST_MMIO_BUSER ),
        .AXI_MST_MMIO_ARREADY  ( AXI_MST_MMIO_ARREADY ),
        .AXI_MST_MMIO_RVALID   ( AXI_MST_MMIO_RVALID ),
        .AXI_MST_MMIO_RRESP    ( AXI_MST_MMIO_RRESP ),
        .AXI_MST_MMIO_RDATA    ( AXI_MST_MMIO_RDATA ),
        .AXI_MST_MMIO_RLAST    ( AXI_MST_MMIO_RLAST ),
        .AXI_MST_MMIO_RID      ( AXI_MST_MMIO_RID ),
        .AXI_MST_MMIO_RUSER    ( AXI_MST_MMIO_RUSER ),
        .IRQ                   ( IRQ ),
        .TDI                   ( TDI ),
        .TCK                   ( TCK ),
        .TMS                   ( TMS ),
        .TRST                  ( TRST ),
        // Outputs
        .AXI_MST_MEM_AWVALID   ( AXI_MST_MEM_AWVALID_net_0 ),
        .AXI_MST_MEM_AWADDR    ( AXI_MST_MEM_AWADDR_net_0 ),
        .AXI_MST_MEM_AWLEN     ( AXI_MST_MEM_AWLEN_net_0 ),
        .AXI_MST_MEM_AWSIZE    ( AXI_MST_MEM_AWSIZE_net_0 ),
        .AXI_MST_MEM_AWBURST   ( AXI_MST_MEM_AWBURST_net_0 ),
        .AXI_MST_MEM_AWLOCK    ( AXI_MST_MEM_AWLOCK_net_0 ),
        .AXI_MST_MEM_AWCACHE   ( AXI_MST_MEM_AWCACHE_net_0 ),
        .AXI_MST_MEM_AWPROT    ( AXI_MST_MEM_AWPROT_net_0 ),
        .AXI_MST_MEM_AWQOS     ( AXI_MST_MEM_AWQOS_net_0 ),
        .AXI_MST_MEM_AWREGION  ( AXI_MST_MEM_AWREGION_net_0 ),
        .AXI_MST_MEM_AWID      ( AXI_MST_MEM_AWID_net_0 ),
        .AXI_MST_MEM_AWUSER    ( AXI_MST_MEM_AWUSER_net_0 ),
        .AXI_MST_MEM_WVALID    ( AXI_MST_MEM_WVALID_net_0 ),
        .AXI_MST_MEM_WDATA     ( AXI_MST_MEM_WDATA_net_0 ),
        .AXI_MST_MEM_WLAST     ( AXI_MST_MEM_WLAST_net_0 ),
        .AXI_MST_MEM_WSTRB     ( AXI_MST_MEM_WSTRB_net_0 ),
        .AXI_MST_MEM_WUSER     ( AXI_MST_MEM_WUSER_net_0 ),
        .AXI_MST_MEM_BREADY    ( AXI_MST_MEM_BREADY_net_0 ),
        .AXI_MST_MEM_ARVALID   ( AXI_MST_MEM_ARVALID_net_0 ),
        .AXI_MST_MEM_ARADDR    ( AXI_MST_MEM_ARADDR_net_0 ),
        .AXI_MST_MEM_ARLEN     ( AXI_MST_MEM_ARLEN_net_0 ),
        .AXI_MST_MEM_ARSIZE    ( AXI_MST_MEM_ARSIZE_net_0 ),
        .AXI_MST_MEM_ARBURST   ( AXI_MST_MEM_ARBURST_net_0 ),
        .AXI_MST_MEM_ARLOCK    ( AXI_MST_MEM_ARLOCK_net_0 ),
        .AXI_MST_MEM_ARCACHE   ( AXI_MST_MEM_ARCACHE_net_0 ),
        .AXI_MST_MEM_ARPROT    ( AXI_MST_MEM_ARPROT_net_0 ),
        .AXI_MST_MEM_ARQOS     ( AXI_MST_MEM_ARQOS_net_0 ),
        .AXI_MST_MEM_ARREGION  ( AXI_MST_MEM_ARREGION_net_0 ),
        .AXI_MST_MEM_ARID      ( AXI_MST_MEM_ARID_net_0 ),
        .AXI_MST_MEM_ARUSER    ( AXI_MST_MEM_ARUSER_net_0 ),
        .AXI_MST_MEM_RREADY    ( AXI_MST_MEM_RREADY_net_0 ),
        .AXI_MST_MMIO_AWVALID  ( AXI_MST_MMIO_AWVALID_net_0 ),
        .AXI_MST_MMIO_AWADDR   ( AXI_MST_MMIO_AWADDR_net_0 ),
        .AXI_MST_MMIO_AWLEN    ( AXI_MST_MMIO_AWLEN_net_0 ),
        .AXI_MST_MMIO_AWSIZE   ( AXI_MST_MMIO_AWSIZE_net_0 ),
        .AXI_MST_MMIO_AWBURST  ( AXI_MST_MMIO_AWBURST_net_0 ),
        .AXI_MST_MMIO_AWLOCK   ( AXI_MST_MMIO_AWLOCK_net_0 ),
        .AXI_MST_MMIO_AWCACHE  ( AXI_MST_MMIO_AWCACHE_net_0 ),
        .AXI_MST_MMIO_AWPROT   ( AXI_MST_MMIO_AWPROT_net_0 ),
        .AXI_MST_MMIO_AWQOS    ( AXI_MST_MMIO_AWQOS_net_0 ),
        .AXI_MST_MMIO_AWREGION ( AXI_MST_MMIO_AWREGION_net_0 ),
        .AXI_MST_MMIO_AWID     ( AXI_MST_MMIO_AWID_net_0 ),
        .AXI_MST_MMIO_AWUSER   ( AXI_MST_MMIO_AWUSER_net_0 ),
        .AXI_MST_MMIO_WVALID   ( AXI_MST_MMIO_WVALID_net_0 ),
        .AXI_MST_MMIO_WDATA    ( AXI_MST_MMIO_WDATA_net_0 ),
        .AXI_MST_MMIO_WLAST    ( AXI_MST_MMIO_WLAST_net_0 ),
        .AXI_MST_MMIO_WSTRB    ( AXI_MST_MMIO_WSTRB_net_0 ),
        .AXI_MST_MMIO_WUSER    ( AXI_MST_MMIO_WUSER_net_0 ),
        .AXI_MST_MMIO_BREADY   ( AXI_MST_MMIO_BREADY_net_0 ),
        .AXI_MST_MMIO_ARVALID  ( AXI_MST_MMIO_ARVALID_net_0 ),
        .AXI_MST_MMIO_ARADDR   ( AXI_MST_MMIO_ARADDR_net_0 ),
        .AXI_MST_MMIO_ARLEN    ( AXI_MST_MMIO_ARLEN_net_0 ),
        .AXI_MST_MMIO_ARSIZE   ( AXI_MST_MMIO_ARSIZE_net_0 ),
        .AXI_MST_MMIO_ARBURST  ( AXI_MST_MMIO_ARBURST_net_0 ),
        .AXI_MST_MMIO_ARLOCK   ( AXI_MST_MMIO_ARLOCK_net_0 ),
        .AXI_MST_MMIO_ARCACHE  ( AXI_MST_MMIO_ARCACHE_net_0 ),
        .AXI_MST_MMIO_ARPROT   ( AXI_MST_MMIO_ARPROT_net_0 ),
        .AXI_MST_MMIO_ARQOS    ( AXI_MST_MMIO_ARQOS_net_0 ),
        .AXI_MST_MMIO_ARREGION ( AXI_MST_MMIO_ARREGION_net_0 ),
        .AXI_MST_MMIO_ARID     ( AXI_MST_MMIO_ARID_net_0 ),
        .AXI_MST_MMIO_ARUSER   ( AXI_MST_MMIO_ARUSER_net_0 ),
        .AXI_MST_MMIO_RREADY   ( AXI_MST_MMIO_RREADY_net_0 ),
        .TDO                   ( TDO_net_0 ),
        .DRV_TDO               ( DRV_TDO_net_0 ),
        .AXI_MST_MEM_WID       ( AXI_MST_MEM_WID_net_0 ),
        .AXI_MST_MMIO_WID      ( AXI_MST_MMIO_WID_net_0 ) 
        );


endmodule
