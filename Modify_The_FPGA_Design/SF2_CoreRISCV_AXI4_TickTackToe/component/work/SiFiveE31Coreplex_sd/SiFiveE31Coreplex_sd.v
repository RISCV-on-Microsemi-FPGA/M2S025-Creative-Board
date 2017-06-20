//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Jul 27 13:50:44 2016
// Version: v11.7 11.7.0.119
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// SiFiveE31Coreplex_sd
module SiFiveE31Coreplex_sd(
    // Inputs
    TCK,
    TDI,
    TMS,
    TRST,
    axi_mst_mem_ARREADY,
    axi_mst_mem_AWREADY,
    axi_mst_mem_BID,
    axi_mst_mem_BRESP,
    axi_mst_mem_BUSER,
    axi_mst_mem_BVALID,
    axi_mst_mem_RDATA,
    axi_mst_mem_RID,
    axi_mst_mem_RLAST,
    axi_mst_mem_RRESP,
    axi_mst_mem_RUSER,
    axi_mst_mem_RVALID,
    axi_mst_mem_WREADY,
    axi_mst_mmio_ARREADY,
    axi_mst_mmio_AWREADY,
    axi_mst_mmio_BID,
    axi_mst_mmio_BRESP,
    axi_mst_mmio_BUSER,
    axi_mst_mmio_BVALID,
    axi_mst_mmio_RDATA,
    axi_mst_mmio_RID,
    axi_mst_mmio_RLAST,
    axi_mst_mmio_RRESP,
    axi_mst_mmio_RUSER,
    axi_mst_mmio_RVALID,
    axi_mst_mmio_WREADY,
    clk,
    interruptVector,
    reset,
    // Outputs
    DRV_TDO,
    TDO,
    axi_mst_mem_ARADDR,
    axi_mst_mem_ARBURST,
    axi_mst_mem_ARCACHE,
    axi_mst_mem_ARID,
    axi_mst_mem_ARLEN,
    axi_mst_mem_ARLOCK,
    axi_mst_mem_ARPROT,
    axi_mst_mem_ARQOS,
    axi_mst_mem_ARREGION,
    axi_mst_mem_ARSIZE,
    axi_mst_mem_ARUSER,
    axi_mst_mem_ARVALID,
    axi_mst_mem_AWADDR,
    axi_mst_mem_AWBURST,
    axi_mst_mem_AWCACHE,
    axi_mst_mem_AWID,
    axi_mst_mem_AWLEN,
    axi_mst_mem_AWLOCK,
    axi_mst_mem_AWPROT,
    axi_mst_mem_AWQOS,
    axi_mst_mem_AWREGION,
    axi_mst_mem_AWSIZE,
    axi_mst_mem_AWUSER,
    axi_mst_mem_AWVALID,
    axi_mst_mem_BREADY,
    axi_mst_mem_RREADY,
    axi_mst_mem_WDATA,
    axi_mst_mem_WID,
    axi_mst_mem_WLAST,
    axi_mst_mem_WSTRB,
    axi_mst_mem_WUSER,
    axi_mst_mem_WVALID,
    axi_mst_mmio_ARADDR,
    axi_mst_mmio_ARBURST,
    axi_mst_mmio_ARCACHE,
    axi_mst_mmio_ARID,
    axi_mst_mmio_ARLEN,
    axi_mst_mmio_ARLOCK,
    axi_mst_mmio_ARPROT,
    axi_mst_mmio_ARQOS,
    axi_mst_mmio_ARREGION,
    axi_mst_mmio_ARSIZE,
    axi_mst_mmio_ARUSER,
    axi_mst_mmio_ARVALID,
    axi_mst_mmio_AWADDR,
    axi_mst_mmio_AWBURST,
    axi_mst_mmio_AWCACHE,
    axi_mst_mmio_AWID,
    axi_mst_mmio_AWLEN,
    axi_mst_mmio_AWLOCK,
    axi_mst_mmio_AWPROT,
    axi_mst_mmio_AWQOS,
    axi_mst_mmio_AWREGION,
    axi_mst_mmio_AWSIZE,
    axi_mst_mmio_AWUSER,
    axi_mst_mmio_AWVALID,
    axi_mst_mmio_BREADY,
    axi_mst_mmio_RREADY,
    axi_mst_mmio_WDATA,
    axi_mst_mmio_WID,
    axi_mst_mmio_WLAST,
    axi_mst_mmio_WSTRB,
    axi_mst_mmio_WUSER,
    axi_mst_mmio_WVALID
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         TCK;
input         TDI;
input         TMS;
input         TRST;
input         axi_mst_mem_ARREADY;
input         axi_mst_mem_AWREADY;
input  [4:0]  axi_mst_mem_BID;
input  [1:0]  axi_mst_mem_BRESP;
input         axi_mst_mem_BUSER;
input         axi_mst_mem_BVALID;
input  [63:0] axi_mst_mem_RDATA;
input  [4:0]  axi_mst_mem_RID;
input         axi_mst_mem_RLAST;
input  [1:0]  axi_mst_mem_RRESP;
input         axi_mst_mem_RUSER;
input         axi_mst_mem_RVALID;
input         axi_mst_mem_WREADY;
input         axi_mst_mmio_ARREADY;
input         axi_mst_mmio_AWREADY;
input  [4:0]  axi_mst_mmio_BID;
input  [1:0]  axi_mst_mmio_BRESP;
input         axi_mst_mmio_BUSER;
input         axi_mst_mmio_BVALID;
input  [63:0] axi_mst_mmio_RDATA;
input  [4:0]  axi_mst_mmio_RID;
input         axi_mst_mmio_RLAST;
input  [1:0]  axi_mst_mmio_RRESP;
input         axi_mst_mmio_RUSER;
input         axi_mst_mmio_RVALID;
input         axi_mst_mmio_WREADY;
input         clk;
input  [30:0] interruptVector;
input         reset;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        DRV_TDO;
output        TDO;
output [31:0] axi_mst_mem_ARADDR;
output [1:0]  axi_mst_mem_ARBURST;
output [3:0]  axi_mst_mem_ARCACHE;
output [4:0]  axi_mst_mem_ARID;
output [7:0]  axi_mst_mem_ARLEN;
output        axi_mst_mem_ARLOCK;
output [2:0]  axi_mst_mem_ARPROT;
output [3:0]  axi_mst_mem_ARQOS;
output [3:0]  axi_mst_mem_ARREGION;
output [2:0]  axi_mst_mem_ARSIZE;
output        axi_mst_mem_ARUSER;
output        axi_mst_mem_ARVALID;
output [31:0] axi_mst_mem_AWADDR;
output [1:0]  axi_mst_mem_AWBURST;
output [3:0]  axi_mst_mem_AWCACHE;
output [4:0]  axi_mst_mem_AWID;
output [7:0]  axi_mst_mem_AWLEN;
output        axi_mst_mem_AWLOCK;
output [2:0]  axi_mst_mem_AWPROT;
output [3:0]  axi_mst_mem_AWQOS;
output [3:0]  axi_mst_mem_AWREGION;
output [2:0]  axi_mst_mem_AWSIZE;
output        axi_mst_mem_AWUSER;
output        axi_mst_mem_AWVALID;
output        axi_mst_mem_BREADY;
output        axi_mst_mem_RREADY;
output [63:0] axi_mst_mem_WDATA;
output [4:0]  axi_mst_mem_WID;
output        axi_mst_mem_WLAST;
output [7:0]  axi_mst_mem_WSTRB;
output        axi_mst_mem_WUSER;
output        axi_mst_mem_WVALID;
output [31:0] axi_mst_mmio_ARADDR;
output [1:0]  axi_mst_mmio_ARBURST;
output [3:0]  axi_mst_mmio_ARCACHE;
output [4:0]  axi_mst_mmio_ARID;
output [7:0]  axi_mst_mmio_ARLEN;
output        axi_mst_mmio_ARLOCK;
output [2:0]  axi_mst_mmio_ARPROT;
output [3:0]  axi_mst_mmio_ARQOS;
output [3:0]  axi_mst_mmio_ARREGION;
output [2:0]  axi_mst_mmio_ARSIZE;
output        axi_mst_mmio_ARUSER;
output        axi_mst_mmio_ARVALID;
output [31:0] axi_mst_mmio_AWADDR;
output [1:0]  axi_mst_mmio_AWBURST;
output [3:0]  axi_mst_mmio_AWCACHE;
output [4:0]  axi_mst_mmio_AWID;
output [7:0]  axi_mst_mmio_AWLEN;
output        axi_mst_mmio_AWLOCK;
output [2:0]  axi_mst_mmio_AWPROT;
output [3:0]  axi_mst_mmio_AWQOS;
output [3:0]  axi_mst_mmio_AWREGION;
output [2:0]  axi_mst_mmio_AWSIZE;
output        axi_mst_mmio_AWUSER;
output        axi_mst_mmio_AWVALID;
output        axi_mst_mmio_BREADY;
output        axi_mst_mmio_RREADY;
output [63:0] axi_mst_mmio_WDATA;
output [4:0]  axi_mst_mmio_WID;
output        axi_mst_mmio_WLAST;
output [7:0]  axi_mst_mmio_WSTRB;
output        axi_mst_mmio_WUSER;
output        axi_mst_mmio_WVALID;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] axi_mst_mem_1_ARADDR;
wire   [1:0]  axi_mst_mem_1_ARBURST;
wire   [3:0]  axi_mst_mem_1_ARCACHE;
wire   [4:0]  axi_mst_mem_1_ARID;
wire   [7:0]  axi_mst_mem_1_ARLEN;
wire          axi_mst_mem_1_ARLOCK;
wire   [2:0]  axi_mst_mem_1_ARPROT;
wire   [3:0]  axi_mst_mem_1_ARQOS;
wire          axi_mst_mem_ARREADY;
wire   [3:0]  axi_mst_mem_1_ARREGION;
wire   [2:0]  axi_mst_mem_1_ARSIZE;
wire          axi_mst_mem_1_ARUSER;
wire          axi_mst_mem_1_ARVALID;
wire   [31:0] axi_mst_mem_1_AWADDR;
wire   [1:0]  axi_mst_mem_1_AWBURST;
wire   [3:0]  axi_mst_mem_1_AWCACHE;
wire   [4:0]  axi_mst_mem_1_AWID;
wire   [7:0]  axi_mst_mem_1_AWLEN;
wire          axi_mst_mem_1_AWLOCK;
wire   [2:0]  axi_mst_mem_1_AWPROT;
wire   [3:0]  axi_mst_mem_1_AWQOS;
wire          axi_mst_mem_AWREADY;
wire   [3:0]  axi_mst_mem_1_AWREGION;
wire   [2:0]  axi_mst_mem_1_AWSIZE;
wire          axi_mst_mem_1_AWUSER;
wire          axi_mst_mem_1_AWVALID;
wire   [4:0]  axi_mst_mem_BID;
wire          axi_mst_mem_1_BREADY;
wire   [1:0]  axi_mst_mem_BRESP;
wire          axi_mst_mem_BUSER;
wire          axi_mst_mem_BVALID;
wire   [63:0] axi_mst_mem_RDATA;
wire   [4:0]  axi_mst_mem_RID;
wire          axi_mst_mem_RLAST;
wire          axi_mst_mem_1_RREADY;
wire   [1:0]  axi_mst_mem_RRESP;
wire          axi_mst_mem_RUSER;
wire          axi_mst_mem_RVALID;
wire   [63:0] axi_mst_mem_1_WDATA;
wire          axi_mst_mem_1_WLAST;
wire          axi_mst_mem_WREADY;
wire   [7:0]  axi_mst_mem_1_WSTRB;
wire          axi_mst_mem_1_WUSER;
wire          axi_mst_mem_1_WVALID;
wire   [4:0]  axi_mst_mem_WID_net_0;
wire   [31:0] axi_mst_mmio_1_ARADDR;
wire   [1:0]  axi_mst_mmio_1_ARBURST;
wire   [3:0]  axi_mst_mmio_1_ARCACHE;
wire   [4:0]  axi_mst_mmio_1_ARID;
wire   [7:0]  axi_mst_mmio_1_ARLEN;
wire          axi_mst_mmio_1_ARLOCK;
wire   [2:0]  axi_mst_mmio_1_ARPROT;
wire   [3:0]  axi_mst_mmio_1_ARQOS;
wire          axi_mst_mmio_ARREADY;
wire   [3:0]  axi_mst_mmio_1_ARREGION;
wire   [2:0]  axi_mst_mmio_1_ARSIZE;
wire          axi_mst_mmio_1_ARUSER;
wire          axi_mst_mmio_1_ARVALID;
wire   [31:0] axi_mst_mmio_1_AWADDR;
wire   [1:0]  axi_mst_mmio_1_AWBURST;
wire   [3:0]  axi_mst_mmio_1_AWCACHE;
wire   [4:0]  axi_mst_mmio_1_AWID;
wire   [7:0]  axi_mst_mmio_1_AWLEN;
wire          axi_mst_mmio_1_AWLOCK;
wire   [2:0]  axi_mst_mmio_1_AWPROT;
wire   [3:0]  axi_mst_mmio_1_AWQOS;
wire          axi_mst_mmio_AWREADY;
wire   [3:0]  axi_mst_mmio_1_AWREGION;
wire   [2:0]  axi_mst_mmio_1_AWSIZE;
wire          axi_mst_mmio_1_AWUSER;
wire          axi_mst_mmio_1_AWVALID;
wire   [4:0]  axi_mst_mmio_BID;
wire          axi_mst_mmio_1_BREADY;
wire   [1:0]  axi_mst_mmio_BRESP;
wire          axi_mst_mmio_BUSER;
wire          axi_mst_mmio_BVALID;
wire   [63:0] axi_mst_mmio_RDATA;
wire   [4:0]  axi_mst_mmio_RID;
wire          axi_mst_mmio_RLAST;
wire          axi_mst_mmio_1_RREADY;
wire   [1:0]  axi_mst_mmio_RRESP;
wire          axi_mst_mmio_RUSER;
wire          axi_mst_mmio_RVALID;
wire   [63:0] axi_mst_mmio_1_WDATA;
wire          axi_mst_mmio_1_WLAST;
wire          axi_mst_mmio_WREADY;
wire   [7:0]  axi_mst_mmio_1_WSTRB;
wire          axi_mst_mmio_1_WUSER;
wire          axi_mst_mmio_1_WVALID;
wire   [4:0]  axi_mst_mmio_WID_net_0;
wire          clk;
wire          DRV_TDO_net_0;
wire   [30:0] interruptVector;
wire          reset;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          TRST;
wire          DRV_TDO_net_1;
wire          TDO_net_1;
wire   [4:0]  axi_mst_mmio_WID_net_1;
wire   [4:0]  axi_mst_mem_WID_net_1;
wire   [4:0]  axi_mst_mem_1_AWID_net_0;
wire   [31:0] axi_mst_mem_1_AWADDR_net_0;
wire   [7:0]  axi_mst_mem_1_AWLEN_net_0;
wire   [2:0]  axi_mst_mem_1_AWSIZE_net_0;
wire   [1:0]  axi_mst_mem_1_AWBURST_net_0;
wire          axi_mst_mem_1_AWLOCK_net_0;
wire   [3:0]  axi_mst_mem_1_AWCACHE_net_0;
wire   [2:0]  axi_mst_mem_1_AWPROT_net_0;
wire   [3:0]  axi_mst_mem_1_AWQOS_net_0;
wire   [3:0]  axi_mst_mem_1_AWREGION_net_0;
wire          axi_mst_mem_1_AWVALID_net_0;
wire   [63:0] axi_mst_mem_1_WDATA_net_0;
wire   [7:0]  axi_mst_mem_1_WSTRB_net_0;
wire          axi_mst_mem_1_WLAST_net_0;
wire          axi_mst_mem_1_WVALID_net_0;
wire          axi_mst_mem_1_BREADY_net_0;
wire   [4:0]  axi_mst_mem_1_ARID_net_0;
wire   [31:0] axi_mst_mem_1_ARADDR_net_0;
wire   [7:0]  axi_mst_mem_1_ARLEN_net_0;
wire   [2:0]  axi_mst_mem_1_ARSIZE_net_0;
wire   [1:0]  axi_mst_mem_1_ARBURST_net_0;
wire          axi_mst_mem_1_ARLOCK_net_0;
wire   [3:0]  axi_mst_mem_1_ARCACHE_net_0;
wire   [2:0]  axi_mst_mem_1_ARPROT_net_0;
wire   [3:0]  axi_mst_mem_1_ARQOS_net_0;
wire   [3:0]  axi_mst_mem_1_ARREGION_net_0;
wire          axi_mst_mem_1_ARVALID_net_0;
wire          axi_mst_mem_1_RREADY_net_0;
wire          axi_mst_mem_1_AWUSER_net_0;
wire          axi_mst_mem_1_WUSER_net_0;
wire          axi_mst_mem_1_ARUSER_net_0;
wire   [4:0]  axi_mst_mmio_1_AWID_net_0;
wire   [31:0] axi_mst_mmio_1_AWADDR_net_0;
wire   [7:0]  axi_mst_mmio_1_AWLEN_net_0;
wire   [2:0]  axi_mst_mmio_1_AWSIZE_net_0;
wire   [1:0]  axi_mst_mmio_1_AWBURST_net_0;
wire          axi_mst_mmio_1_AWLOCK_net_0;
wire   [3:0]  axi_mst_mmio_1_AWCACHE_net_0;
wire   [2:0]  axi_mst_mmio_1_AWPROT_net_0;
wire   [3:0]  axi_mst_mmio_1_AWQOS_net_0;
wire   [3:0]  axi_mst_mmio_1_AWREGION_net_0;
wire          axi_mst_mmio_1_AWVALID_net_0;
wire   [63:0] axi_mst_mmio_1_WDATA_net_0;
wire   [7:0]  axi_mst_mmio_1_WSTRB_net_0;
wire          axi_mst_mmio_1_WLAST_net_0;
wire          axi_mst_mmio_1_WVALID_net_0;
wire          axi_mst_mmio_1_BREADY_net_0;
wire   [4:0]  axi_mst_mmio_1_ARID_net_0;
wire   [31:0] axi_mst_mmio_1_ARADDR_net_0;
wire   [7:0]  axi_mst_mmio_1_ARLEN_net_0;
wire   [2:0]  axi_mst_mmio_1_ARSIZE_net_0;
wire   [1:0]  axi_mst_mmio_1_ARBURST_net_0;
wire          axi_mst_mmio_1_ARLOCK_net_0;
wire   [3:0]  axi_mst_mmio_1_ARCACHE_net_0;
wire   [2:0]  axi_mst_mmio_1_ARPROT_net_0;
wire   [3:0]  axi_mst_mmio_1_ARQOS_net_0;
wire   [3:0]  axi_mst_mmio_1_ARREGION_net_0;
wire          axi_mst_mmio_1_ARVALID_net_0;
wire          axi_mst_mmio_1_RREADY_net_0;
wire          axi_mst_mmio_1_AWUSER_net_0;
wire          axi_mst_mmio_1_WUSER_net_0;
wire          axi_mst_mmio_1_ARUSER_net_0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign DRV_TDO_net_1                 = DRV_TDO_net_0;
assign DRV_TDO                       = DRV_TDO_net_1;
assign TDO_net_1                     = TDO_net_0;
assign TDO                           = TDO_net_1;
assign axi_mst_mmio_WID_net_1        = axi_mst_mmio_WID_net_0;
assign axi_mst_mmio_WID[4:0]         = axi_mst_mmio_WID_net_1;
assign axi_mst_mem_WID_net_1         = axi_mst_mem_WID_net_0;
assign axi_mst_mem_WID[4:0]          = axi_mst_mem_WID_net_1;
assign axi_mst_mem_1_AWID_net_0      = axi_mst_mem_1_AWID;
assign axi_mst_mem_AWID[4:0]         = axi_mst_mem_1_AWID_net_0;
assign axi_mst_mem_1_AWADDR_net_0    = axi_mst_mem_1_AWADDR;
assign axi_mst_mem_AWADDR[31:0]      = axi_mst_mem_1_AWADDR_net_0;
assign axi_mst_mem_1_AWLEN_net_0     = axi_mst_mem_1_AWLEN;
assign axi_mst_mem_AWLEN[7:0]        = axi_mst_mem_1_AWLEN_net_0;
assign axi_mst_mem_1_AWSIZE_net_0    = axi_mst_mem_1_AWSIZE;
assign axi_mst_mem_AWSIZE[2:0]       = axi_mst_mem_1_AWSIZE_net_0;
assign axi_mst_mem_1_AWBURST_net_0   = axi_mst_mem_1_AWBURST;
assign axi_mst_mem_AWBURST[1:0]      = axi_mst_mem_1_AWBURST_net_0;
assign axi_mst_mem_1_AWLOCK_net_0    = axi_mst_mem_1_AWLOCK;
assign axi_mst_mem_AWLOCK            = axi_mst_mem_1_AWLOCK_net_0;
assign axi_mst_mem_1_AWCACHE_net_0   = axi_mst_mem_1_AWCACHE;
assign axi_mst_mem_AWCACHE[3:0]      = axi_mst_mem_1_AWCACHE_net_0;
assign axi_mst_mem_1_AWPROT_net_0    = axi_mst_mem_1_AWPROT;
assign axi_mst_mem_AWPROT[2:0]       = axi_mst_mem_1_AWPROT_net_0;
assign axi_mst_mem_1_AWQOS_net_0     = axi_mst_mem_1_AWQOS;
assign axi_mst_mem_AWQOS[3:0]        = axi_mst_mem_1_AWQOS_net_0;
assign axi_mst_mem_1_AWREGION_net_0  = axi_mst_mem_1_AWREGION;
assign axi_mst_mem_AWREGION[3:0]     = axi_mst_mem_1_AWREGION_net_0;
assign axi_mst_mem_1_AWVALID_net_0   = axi_mst_mem_1_AWVALID;
assign axi_mst_mem_AWVALID           = axi_mst_mem_1_AWVALID_net_0;
assign axi_mst_mem_1_WDATA_net_0     = axi_mst_mem_1_WDATA;
assign axi_mst_mem_WDATA[63:0]       = axi_mst_mem_1_WDATA_net_0;
assign axi_mst_mem_1_WSTRB_net_0     = axi_mst_mem_1_WSTRB;
assign axi_mst_mem_WSTRB[7:0]        = axi_mst_mem_1_WSTRB_net_0;
assign axi_mst_mem_1_WLAST_net_0     = axi_mst_mem_1_WLAST;
assign axi_mst_mem_WLAST             = axi_mst_mem_1_WLAST_net_0;
assign axi_mst_mem_1_WVALID_net_0    = axi_mst_mem_1_WVALID;
assign axi_mst_mem_WVALID            = axi_mst_mem_1_WVALID_net_0;
assign axi_mst_mem_1_BREADY_net_0    = axi_mst_mem_1_BREADY;
assign axi_mst_mem_BREADY            = axi_mst_mem_1_BREADY_net_0;
assign axi_mst_mem_1_ARID_net_0      = axi_mst_mem_1_ARID;
assign axi_mst_mem_ARID[4:0]         = axi_mst_mem_1_ARID_net_0;
assign axi_mst_mem_1_ARADDR_net_0    = axi_mst_mem_1_ARADDR;
assign axi_mst_mem_ARADDR[31:0]      = axi_mst_mem_1_ARADDR_net_0;
assign axi_mst_mem_1_ARLEN_net_0     = axi_mst_mem_1_ARLEN;
assign axi_mst_mem_ARLEN[7:0]        = axi_mst_mem_1_ARLEN_net_0;
assign axi_mst_mem_1_ARSIZE_net_0    = axi_mst_mem_1_ARSIZE;
assign axi_mst_mem_ARSIZE[2:0]       = axi_mst_mem_1_ARSIZE_net_0;
assign axi_mst_mem_1_ARBURST_net_0   = axi_mst_mem_1_ARBURST;
assign axi_mst_mem_ARBURST[1:0]      = axi_mst_mem_1_ARBURST_net_0;
assign axi_mst_mem_1_ARLOCK_net_0    = axi_mst_mem_1_ARLOCK;
assign axi_mst_mem_ARLOCK            = axi_mst_mem_1_ARLOCK_net_0;
assign axi_mst_mem_1_ARCACHE_net_0   = axi_mst_mem_1_ARCACHE;
assign axi_mst_mem_ARCACHE[3:0]      = axi_mst_mem_1_ARCACHE_net_0;
assign axi_mst_mem_1_ARPROT_net_0    = axi_mst_mem_1_ARPROT;
assign axi_mst_mem_ARPROT[2:0]       = axi_mst_mem_1_ARPROT_net_0;
assign axi_mst_mem_1_ARQOS_net_0     = axi_mst_mem_1_ARQOS;
assign axi_mst_mem_ARQOS[3:0]        = axi_mst_mem_1_ARQOS_net_0;
assign axi_mst_mem_1_ARREGION_net_0  = axi_mst_mem_1_ARREGION;
assign axi_mst_mem_ARREGION[3:0]     = axi_mst_mem_1_ARREGION_net_0;
assign axi_mst_mem_1_ARVALID_net_0   = axi_mst_mem_1_ARVALID;
assign axi_mst_mem_ARVALID           = axi_mst_mem_1_ARVALID_net_0;
assign axi_mst_mem_1_RREADY_net_0    = axi_mst_mem_1_RREADY;
assign axi_mst_mem_RREADY            = axi_mst_mem_1_RREADY_net_0;
assign axi_mst_mem_1_AWUSER_net_0    = axi_mst_mem_1_AWUSER;
assign axi_mst_mem_AWUSER            = axi_mst_mem_1_AWUSER_net_0;
assign axi_mst_mem_1_WUSER_net_0     = axi_mst_mem_1_WUSER;
assign axi_mst_mem_WUSER             = axi_mst_mem_1_WUSER_net_0;
assign axi_mst_mem_1_ARUSER_net_0    = axi_mst_mem_1_ARUSER;
assign axi_mst_mem_ARUSER            = axi_mst_mem_1_ARUSER_net_0;
assign axi_mst_mmio_1_AWID_net_0     = axi_mst_mmio_1_AWID;
assign axi_mst_mmio_AWID[4:0]        = axi_mst_mmio_1_AWID_net_0;
assign axi_mst_mmio_1_AWADDR_net_0   = axi_mst_mmio_1_AWADDR;
assign axi_mst_mmio_AWADDR[31:0]     = axi_mst_mmio_1_AWADDR_net_0;
assign axi_mst_mmio_1_AWLEN_net_0    = axi_mst_mmio_1_AWLEN;
assign axi_mst_mmio_AWLEN[7:0]       = axi_mst_mmio_1_AWLEN_net_0;
assign axi_mst_mmio_1_AWSIZE_net_0   = axi_mst_mmio_1_AWSIZE;
assign axi_mst_mmio_AWSIZE[2:0]      = axi_mst_mmio_1_AWSIZE_net_0;
assign axi_mst_mmio_1_AWBURST_net_0  = axi_mst_mmio_1_AWBURST;
assign axi_mst_mmio_AWBURST[1:0]     = axi_mst_mmio_1_AWBURST_net_0;
assign axi_mst_mmio_1_AWLOCK_net_0   = axi_mst_mmio_1_AWLOCK;
assign axi_mst_mmio_AWLOCK           = axi_mst_mmio_1_AWLOCK_net_0;
assign axi_mst_mmio_1_AWCACHE_net_0  = axi_mst_mmio_1_AWCACHE;
assign axi_mst_mmio_AWCACHE[3:0]     = axi_mst_mmio_1_AWCACHE_net_0;
assign axi_mst_mmio_1_AWPROT_net_0   = axi_mst_mmio_1_AWPROT;
assign axi_mst_mmio_AWPROT[2:0]      = axi_mst_mmio_1_AWPROT_net_0;
assign axi_mst_mmio_1_AWQOS_net_0    = axi_mst_mmio_1_AWQOS;
assign axi_mst_mmio_AWQOS[3:0]       = axi_mst_mmio_1_AWQOS_net_0;
assign axi_mst_mmio_1_AWREGION_net_0 = axi_mst_mmio_1_AWREGION;
assign axi_mst_mmio_AWREGION[3:0]    = axi_mst_mmio_1_AWREGION_net_0;
assign axi_mst_mmio_1_AWVALID_net_0  = axi_mst_mmio_1_AWVALID;
assign axi_mst_mmio_AWVALID          = axi_mst_mmio_1_AWVALID_net_0;
assign axi_mst_mmio_1_WDATA_net_0    = axi_mst_mmio_1_WDATA;
assign axi_mst_mmio_WDATA[63:0]      = axi_mst_mmio_1_WDATA_net_0;
assign axi_mst_mmio_1_WSTRB_net_0    = axi_mst_mmio_1_WSTRB;
assign axi_mst_mmio_WSTRB[7:0]       = axi_mst_mmio_1_WSTRB_net_0;
assign axi_mst_mmio_1_WLAST_net_0    = axi_mst_mmio_1_WLAST;
assign axi_mst_mmio_WLAST            = axi_mst_mmio_1_WLAST_net_0;
assign axi_mst_mmio_1_WVALID_net_0   = axi_mst_mmio_1_WVALID;
assign axi_mst_mmio_WVALID           = axi_mst_mmio_1_WVALID_net_0;
assign axi_mst_mmio_1_BREADY_net_0   = axi_mst_mmio_1_BREADY;
assign axi_mst_mmio_BREADY           = axi_mst_mmio_1_BREADY_net_0;
assign axi_mst_mmio_1_ARID_net_0     = axi_mst_mmio_1_ARID;
assign axi_mst_mmio_ARID[4:0]        = axi_mst_mmio_1_ARID_net_0;
assign axi_mst_mmio_1_ARADDR_net_0   = axi_mst_mmio_1_ARADDR;
assign axi_mst_mmio_ARADDR[31:0]     = axi_mst_mmio_1_ARADDR_net_0;
assign axi_mst_mmio_1_ARLEN_net_0    = axi_mst_mmio_1_ARLEN;
assign axi_mst_mmio_ARLEN[7:0]       = axi_mst_mmio_1_ARLEN_net_0;
assign axi_mst_mmio_1_ARSIZE_net_0   = axi_mst_mmio_1_ARSIZE;
assign axi_mst_mmio_ARSIZE[2:0]      = axi_mst_mmio_1_ARSIZE_net_0;
assign axi_mst_mmio_1_ARBURST_net_0  = axi_mst_mmio_1_ARBURST;
assign axi_mst_mmio_ARBURST[1:0]     = axi_mst_mmio_1_ARBURST_net_0;
assign axi_mst_mmio_1_ARLOCK_net_0   = axi_mst_mmio_1_ARLOCK;
assign axi_mst_mmio_ARLOCK           = axi_mst_mmio_1_ARLOCK_net_0;
assign axi_mst_mmio_1_ARCACHE_net_0  = axi_mst_mmio_1_ARCACHE;
assign axi_mst_mmio_ARCACHE[3:0]     = axi_mst_mmio_1_ARCACHE_net_0;
assign axi_mst_mmio_1_ARPROT_net_0   = axi_mst_mmio_1_ARPROT;
assign axi_mst_mmio_ARPROT[2:0]      = axi_mst_mmio_1_ARPROT_net_0;
assign axi_mst_mmio_1_ARQOS_net_0    = axi_mst_mmio_1_ARQOS;
assign axi_mst_mmio_ARQOS[3:0]       = axi_mst_mmio_1_ARQOS_net_0;
assign axi_mst_mmio_1_ARREGION_net_0 = axi_mst_mmio_1_ARREGION;
assign axi_mst_mmio_ARREGION[3:0]    = axi_mst_mmio_1_ARREGION_net_0;
assign axi_mst_mmio_1_ARVALID_net_0  = axi_mst_mmio_1_ARVALID;
assign axi_mst_mmio_ARVALID          = axi_mst_mmio_1_ARVALID_net_0;
assign axi_mst_mmio_1_RREADY_net_0   = axi_mst_mmio_1_RREADY;
assign axi_mst_mmio_RREADY           = axi_mst_mmio_1_RREADY_net_0;
assign axi_mst_mmio_1_AWUSER_net_0   = axi_mst_mmio_1_AWUSER;
assign axi_mst_mmio_AWUSER           = axi_mst_mmio_1_AWUSER_net_0;
assign axi_mst_mmio_1_WUSER_net_0    = axi_mst_mmio_1_WUSER;
assign axi_mst_mmio_WUSER            = axi_mst_mmio_1_WUSER_net_0;
assign axi_mst_mmio_1_ARUSER_net_0   = axi_mst_mmio_1_ARUSER;
assign axi_mst_mmio_ARUSER           = axi_mst_mmio_1_ARUSER_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------SiFiveE31Coreplex   -   SiFive:SiFive:SiFiveE31Coreplex:1.0.8
SiFiveE31Coreplex SiFiveE31Coreplex_0(
        // Inputs
        .clk                   ( clk ),
        .reset                 ( reset ),
        .axi_mst_mem_AWREADY   ( axi_mst_mem_AWREADY ),
        .axi_mst_mem_WREADY    ( axi_mst_mem_WREADY ),
        .axi_mst_mem_BVALID    ( axi_mst_mem_BVALID ),
        .axi_mst_mem_BRESP     ( axi_mst_mem_BRESP ),
        .axi_mst_mem_BID       ( axi_mst_mem_BID ),
        .axi_mst_mem_BUSER     ( axi_mst_mem_BUSER ),
        .axi_mst_mem_ARREADY   ( axi_mst_mem_ARREADY ),
        .axi_mst_mem_RVALID    ( axi_mst_mem_RVALID ),
        .axi_mst_mem_RRESP     ( axi_mst_mem_RRESP ),
        .axi_mst_mem_RDATA     ( axi_mst_mem_RDATA ),
        .axi_mst_mem_RLAST     ( axi_mst_mem_RLAST ),
        .axi_mst_mem_RID       ( axi_mst_mem_RID ),
        .axi_mst_mem_RUSER     ( axi_mst_mem_RUSER ),
        .axi_mst_mmio_AWREADY  ( axi_mst_mmio_AWREADY ),
        .axi_mst_mmio_WREADY   ( axi_mst_mmio_WREADY ),
        .axi_mst_mmio_BVALID   ( axi_mst_mmio_BVALID ),
        .axi_mst_mmio_BRESP    ( axi_mst_mmio_BRESP ),
        .axi_mst_mmio_BID      ( axi_mst_mmio_BID ),
        .axi_mst_mmio_BUSER    ( axi_mst_mmio_BUSER ),
        .axi_mst_mmio_ARREADY  ( axi_mst_mmio_ARREADY ),
        .axi_mst_mmio_RVALID   ( axi_mst_mmio_RVALID ),
        .axi_mst_mmio_RRESP    ( axi_mst_mmio_RRESP ),
        .axi_mst_mmio_RDATA    ( axi_mst_mmio_RDATA ),
        .axi_mst_mmio_RLAST    ( axi_mst_mmio_RLAST ),
        .axi_mst_mmio_RID      ( axi_mst_mmio_RID ),
        .axi_mst_mmio_RUSER    ( axi_mst_mmio_RUSER ),
        .interruptVector       ( interruptVector ),
        .TDI                   ( TDI ),
        .TCK                   ( TCK ),
        .TMS                   ( TMS ),
        .TRST                  ( TRST ),
        // Outputs
        .axi_mst_mem_AWVALID   ( axi_mst_mem_1_AWVALID ),
        .axi_mst_mem_AWADDR    ( axi_mst_mem_1_AWADDR ),
        .axi_mst_mem_AWLEN     ( axi_mst_mem_1_AWLEN ),
        .axi_mst_mem_AWSIZE    ( axi_mst_mem_1_AWSIZE ),
        .axi_mst_mem_AWBURST   ( axi_mst_mem_1_AWBURST ),
        .axi_mst_mem_AWLOCK    ( axi_mst_mem_1_AWLOCK ),
        .axi_mst_mem_AWCACHE   ( axi_mst_mem_1_AWCACHE ),
        .axi_mst_mem_AWPROT    ( axi_mst_mem_1_AWPROT ),
        .axi_mst_mem_AWQOS     ( axi_mst_mem_1_AWQOS ),
        .axi_mst_mem_AWREGION  ( axi_mst_mem_1_AWREGION ),
        .axi_mst_mem_AWID      ( axi_mst_mem_1_AWID ),
        .axi_mst_mem_AWUSER    ( axi_mst_mem_1_AWUSER ),
        .axi_mst_mem_WVALID    ( axi_mst_mem_1_WVALID ),
        .axi_mst_mem_WDATA     ( axi_mst_mem_1_WDATA ),
        .axi_mst_mem_WLAST     ( axi_mst_mem_1_WLAST ),
        .axi_mst_mem_WSTRB     ( axi_mst_mem_1_WSTRB ),
        .axi_mst_mem_WUSER     ( axi_mst_mem_1_WUSER ),
        .axi_mst_mem_BREADY    ( axi_mst_mem_1_BREADY ),
        .axi_mst_mem_ARVALID   ( axi_mst_mem_1_ARVALID ),
        .axi_mst_mem_ARADDR    ( axi_mst_mem_1_ARADDR ),
        .axi_mst_mem_ARLEN     ( axi_mst_mem_1_ARLEN ),
        .axi_mst_mem_ARSIZE    ( axi_mst_mem_1_ARSIZE ),
        .axi_mst_mem_ARBURST   ( axi_mst_mem_1_ARBURST ),
        .axi_mst_mem_ARLOCK    ( axi_mst_mem_1_ARLOCK ),
        .axi_mst_mem_ARCACHE   ( axi_mst_mem_1_ARCACHE ),
        .axi_mst_mem_ARPROT    ( axi_mst_mem_1_ARPROT ),
        .axi_mst_mem_ARQOS     ( axi_mst_mem_1_ARQOS ),
        .axi_mst_mem_ARREGION  ( axi_mst_mem_1_ARREGION ),
        .axi_mst_mem_ARID      ( axi_mst_mem_1_ARID ),
        .axi_mst_mem_ARUSER    ( axi_mst_mem_1_ARUSER ),
        .axi_mst_mem_RREADY    ( axi_mst_mem_1_RREADY ),
        .axi_mst_mmio_AWVALID  ( axi_mst_mmio_1_AWVALID ),
        .axi_mst_mmio_AWADDR   ( axi_mst_mmio_1_AWADDR ),
        .axi_mst_mmio_AWLEN    ( axi_mst_mmio_1_AWLEN ),
        .axi_mst_mmio_AWSIZE   ( axi_mst_mmio_1_AWSIZE ),
        .axi_mst_mmio_AWBURST  ( axi_mst_mmio_1_AWBURST ),
        .axi_mst_mmio_AWLOCK   ( axi_mst_mmio_1_AWLOCK ),
        .axi_mst_mmio_AWCACHE  ( axi_mst_mmio_1_AWCACHE ),
        .axi_mst_mmio_AWPROT   ( axi_mst_mmio_1_AWPROT ),
        .axi_mst_mmio_AWQOS    ( axi_mst_mmio_1_AWQOS ),
        .axi_mst_mmio_AWREGION ( axi_mst_mmio_1_AWREGION ),
        .axi_mst_mmio_AWID     ( axi_mst_mmio_1_AWID ),
        .axi_mst_mmio_AWUSER   ( axi_mst_mmio_1_AWUSER ),
        .axi_mst_mmio_WVALID   ( axi_mst_mmio_1_WVALID ),
        .axi_mst_mmio_WDATA    ( axi_mst_mmio_1_WDATA ),
        .axi_mst_mmio_WLAST    ( axi_mst_mmio_1_WLAST ),
        .axi_mst_mmio_WSTRB    ( axi_mst_mmio_1_WSTRB ),
        .axi_mst_mmio_WUSER    ( axi_mst_mmio_1_WUSER ),
        .axi_mst_mmio_BREADY   ( axi_mst_mmio_1_BREADY ),
        .axi_mst_mmio_ARVALID  ( axi_mst_mmio_1_ARVALID ),
        .axi_mst_mmio_ARADDR   ( axi_mst_mmio_1_ARADDR ),
        .axi_mst_mmio_ARLEN    ( axi_mst_mmio_1_ARLEN ),
        .axi_mst_mmio_ARSIZE   ( axi_mst_mmio_1_ARSIZE ),
        .axi_mst_mmio_ARBURST  ( axi_mst_mmio_1_ARBURST ),
        .axi_mst_mmio_ARLOCK   ( axi_mst_mmio_1_ARLOCK ),
        .axi_mst_mmio_ARCACHE  ( axi_mst_mmio_1_ARCACHE ),
        .axi_mst_mmio_ARPROT   ( axi_mst_mmio_1_ARPROT ),
        .axi_mst_mmio_ARQOS    ( axi_mst_mmio_1_ARQOS ),
        .axi_mst_mmio_ARREGION ( axi_mst_mmio_1_ARREGION ),
        .axi_mst_mmio_ARID     ( axi_mst_mmio_1_ARID ),
        .axi_mst_mmio_ARUSER   ( axi_mst_mmio_1_ARUSER ),
        .axi_mst_mmio_RREADY   ( axi_mst_mmio_1_RREADY ),
        .TDO                   ( TDO_net_0 ),
        .DRV_TDO               ( DRV_TDO_net_0 ),
        .axi_mst_mem_WID       ( axi_mst_mem_WID_net_0 ),
        .axi_mst_mmio_WID      ( axi_mst_mmio_WID_net_0 ) 
        );


endmodule
