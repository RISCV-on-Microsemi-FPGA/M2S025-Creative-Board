// Created from SiFiveE31Coreplex_SF2_Reference_System from our friends at SiFive.

// Define USE_JTAG to allow debug through the FPGA's JTAG port using FlashPro5.
`define USE_UJTAG

module RISCV_BaseDesign (
   
                   input         CLK0_PAD,
                   input         DEVRST_N,
                   
                   //JTAG Interface
`ifdef USE_UJTAG
                   input         TDI,
                   output        TDO,
                   input         TCK,
                   input         TMS,
                   input         TRSTB,
`else
                   input         RV_TDI,
                   output        RV_TDO,
                   input         RV_TCK,
                   input         RV_TMS,
                   input         RV_TRSTB,
`endif                   
                   // GPIOs (for switches, interrupts, and LEDs)

//<CJ>                   input  [15:0] GPIO_HDR_IN,
//<CJ>                   output [15:0] GPIO_HDR_OUT,
                   
//<CJ>                   input [3:0]   BUTTONS,
                   input [1:0]   BUTTONS,
//<CJ>                   input [3:0]   SWITCHES,
//<CJ>                   output [7:0]  LEDS,
                   output [3:0]  LEDS,
                   
                   //UART 

                   input         RX,
                   output        TX,
                   
                   //DDR
                   output [15:0] MDDR_ADDR,
                   output [2:0]  MDDR_BA,
                   output        MDDR_CAS_N,
                   output        MDDR_CKE,
                   output        MDDR_CLK,
                   output        MDDR_CLK_N,
                   output        MDDR_CS_N,
                   output        MDDR_DQS_TMATCH_0_OUT,
                   output        MDDR_ODT,
                   output        MDDR_RAS_N,
                   output        MDDR_RESET_N,
                   output        MDDR_WE_N,

                   inout [1:0]   MDDR_DM_RDQS,
                   inout [15:0]  MDDR_DQ,
                   inout [1:0]   MDDR_DQS,
                   inout [1:0]   MDDR_DQS_N,
                

                   input         MDDR_DQS_TMATCH_0_IN

                   // MISC

                   );

   //--------------------------------------------------------
   // Reg and Wire Declarations
   
   //|@Wires;
   wire  ACLK;
   wire [31:0] ARADDR;
   wire [31:0] ARADDR_0;
   wire [1:0] ARBURST;
   wire [1:0] ARBURST_0;
   wire [3:0] ARCACHE;
   wire [3:0] ARCACHE_0;
   wire  ARESETN;
   wire [4:0] ARID;
   wire [4:0] ARID_0;
   wire [7:0] ARLEN;
   wire [7:0] ARLEN_0;
   wire  ARLOCK;
   wire  ARLOCK_0;
   wire [2:0] ARPROT;
   wire [2:0] ARPROT_0;
   wire [3:0] ARQOS;
   wire [3:0] ARQOS_0;
   wire  ARREADY;
   wire  ARREADY_0;
   wire [3:0] ARREGION;
   wire [3:0] ARREGION_0;
   wire [2:0] ARSIZE;
   wire [2:0] ARSIZE_0;
   wire  ARUSER;
   wire  ARUSER_0;
   wire  ARVALID;
   wire  ARVALID_0;
   wire [31:0] AWADDR;
   wire [31:0] AWADDR_0;
   wire [1:0] AWBURST;
   wire [1:0] AWBURST_0;
   wire [3:0] AWCACHE;
   wire [3:0] AWCACHE_0;
   wire [4:0] AWID;
   wire [4:0] AWID_0;
   wire [7:0] AWLEN;
   wire [7:0] AWLEN_0;
   wire  AWLOCK;
   wire  AWLOCK_0;
   wire [2:0] AWPROT;
   wire [2:0] AWPROT_0;
   wire [3:0] AWQOS;
   wire [3:0] AWQOS_0;
   wire  AWREADY;
   wire  AWREADY_0;
   wire [3:0] AWREGION;
   wire [3:0] AWREGION_0;
   wire [2:0] AWSIZE;
   wire [2:0] AWSIZE_0;
   wire  AWUSER;
   wire  AWUSER_0;
   wire  AWVALID;
   wire  AWVALID_0;
   wire [4:0] BID;
   wire [4:0] BID_0;
   wire  BREADY;
   wire  BREADY_0;
   wire [1:0] BRESP;
   wire [1:0] BRESP_0;
   wire  BUSER;
   wire  BUSER_0;
   wire  BVALID;
   wire  BVALID_0;
   wire  DDR_READY;
   wire  FAB_RESET_N;
   wire  FIC_0_CLK;
   wire  FIC_0_LOCK;
   wire  FRAMING_ERR;
   wire  HCLK;
   wire  HRESETN;
   wire  INIT_DONE;
   wire [31:0] INT;
   wire  MSS_DDR_FIC_SUBSYSTEM_CLK;
   wire  MSS_DDR_FIC_SUBSYSTEM_LOCK;
   wire  MSS_READY;
   wire  OVERFLOW;
   wire  PARITY_ERR;
   wire  PCLK;
   wire  POWER_ON_RESET_N;
   wire  PRESETN;
   wire [63:0] RDATA;
   wire [63:0] RDATA_0;
   wire [4:0] RID;
   wire [4:0] RID_0;
   wire  RLAST;
   wire  RLAST_0;
   wire  RREADY;
   wire  RREADY_0;
   wire [1:0] RRESP;
   wire [1:0] RRESP_0;
   wire  RUSER;
   wire  RUSER_0;
   wire  RVALID;
   wire  RVALID_0;
   wire  RXRDY;
   wire  TIMINT_0;
   wire  TIMINT_1;
   wire  TXRDY;
   wire [63:0] WDATA;
   wire [63:0] WDATA_0;
   wire [4:0] WID;
   wire [4:0] WID_0;
   wire  WLAST;
   wire  WLAST_0;
   wire  WREADY;
   wire  WREADY_0;
   wire [7:0] WSTRB;
   wire [7:0] WSTRB_0;
   wire  WUSER;
   wire  WUSER_0;
   wire  WVALID;
   wire  WVALID_0;
   wire  asyncTRSTB;
   wire  clk;
   wire  core_DRV_TDO;
   wire  icore_TCK;
   wire  core_TCK;
   wire  core_TDI;
   wire  core_TDO;
   wire  core_TMS;
   wire  core_TRST;
   wire [30:0] interruptVector;
   wire  reset;
   //|@Regs;
   reg [2:0] conditioned_ARSIZE;
   reg [2:0] conditioned_ARSIZE_0;
   reg [2:0] conditioned_AWSIZE;
   reg [2:0] conditioned_AWSIZE_0;
   reg [7:0] conditioned_WSTRB;
   reg [7:0] conditioned_WSTRB_0;

`ifdef USE_UJTAG   
   wire                          UTDO;
   wire                          UDRCAP;
   wire                          UDRSH;
   wire                          UDRUPD;
   wire [7:0]                    UIREG;
   wire                          URSTB;
   wire                          UDRCK;
   wire                          UTDI;
   
   wire                          UTDO_0;
   wire                          UTDODRV_0;
`endif //  `ifdef USE_UJTAG
   
   wire                          core_TRSTB;

   wire     [31:0]               GPIO_IN;
   wire     [31:0]               GPIO_OUT;
   
   //--------------------------------------------------------
   // Combo Logic
 

   //--------------------------------------------------------
   // Switches & LEDs
   
   assign GPIO_IN = {22'b0, // pad
                     BUTTONS[1:0], 
                     8'b0};

   assign LEDS = GPIO_OUT[3:0];
   
   //--------------------------------------------------------
   // Interrupts
       
   assign interruptVector[30:0] = {
                                   // Timer Interrupts
                                    TIMINT_1
                                   , TIMINT_0    
                                   //UART interrupts
                                   , 1'b0    //<CJ>, FRAMING_ERR 
                                   , 1'b0    //<CJ>, OVERFLOW 
                                   , 1'b0    //<CJ>, PARITY_ERR 
                                   , 1'b0    //<CJ>, RXRDY 
                                   , 1'b0    //<CJ>, TXRDY
                                   //Alignment  
                                   , 8'b0
                                   //GPIO Interrupts
                                   , 8'b0    //<CJ>, INT [7:0]
                                   , 4'b0   //<CJ>, SWITCHES[3:0]
                                   , 2'b0
                                   , BUTTONS[1:0]
                                   };

   //!!! Unused signals from generated cores.
   //!!! We need to consider these if using MDDR.
   //|@Waive no_sink DDR_READY;
   //|@Waive no_sink INIT_DONE;
   //|@Waive no_sink MSS_DDR_FIC_SUBSYSTEM_CLK;
   //|@Waive no_sink MSS_DDR_FIC_SUBSYSTEM_LOCK;

   assign clk = FIC_0_CLK;

   reg syncResetCatchReg;
   reg syncResetReg;

   always @(posedge FIC_0_CLK or negedge POWER_ON_RESET_N) begin
      if (~POWER_ON_RESET_N) begin
         syncResetCatchReg <= 1'b1;
         syncResetReg <= 1'b1;
      end else begin
         syncResetCatchReg <= (~FIC_0_LOCK | ~MSS_READY);
         syncResetReg <= syncResetCatchReg;
      end
   end
 
   assign reset = syncResetReg;
      
   assign ACLK = FIC_0_CLK;
   assign PCLK = FIC_0_CLK;
   assign HCLK = FIC_0_CLK;

   assign ARESETN = ~reset;
   assign PRESETN = ~reset;
   assign HRESETN = ~reset;

   assign FAB_RESET_N = 1'b1;
   
   //We just need this to keep
   //VP3 happy for inouts.
   //|@Waive no_source MDDR_DQ;
   //|@Waive no_source MDDR_DQS;
   //|@Waive no_source MDDR_DM_RDQS;

   // Mismatched features of AXI
   // OK: *USER fields are optional in the specification.
   assign BUSER = 'b0;
   assign BUSER_0 = 'b0;
   //|@Waive no_sink ARUSER;
   //|@Waive no_sink ARUSER_0;
   //|@Waive no_sink AWUSER;
   //|@Waive no_sink AWUSER_0;
   assign RUSER = 'b0;
   assign RUSER_0 = 'b0;
   //|@Waive no_sink WUSER;
   //|@Waive no_sink WUSER_0;
   //OK: *CACHE is optional part of AXI4
   //|@Waive no_sink ARCACHE;
   //|@Waive no_sink ARCACHE_0;
   //|@Waive no_sink AWCACHE;
   //|@Waive no_sink AWCACHE_0;
   //LOCK is not supposed to be in AXI4
   //|@Waive no_sink ARLOCK;
   //|@Waive no_sink ARLOCK_0;
   //|@Waive no_sink AWLOCK;
   //|@Waive no_sink AWLOCK_0;
 
   //WID is only in AXI3. Ours is AXI4,
   //but does drive it for compatibility.

   //OK: A*PROT signals are required for the master, but optional for the slave.   
   //|@Waive no_sink ARPROT;
   //|@Waive no_sink ARPROT_0;
   //|@Waive no_sink AWPROT;
   //|@Waive no_sink AWPROT_0;
   //OK: A*QOS signals are optional for both slave and master.
   //|@Waive no_sink ARQOS;
   //|@Waive no_sink ARQOS_0;
   //|@Waive no_sink AWQOS;
   //|@Waive no_sink AWQOS_0;
  //OK: A*REGION signals are optional for both slave and master.
   //|@Waive no_sink ARREGION;
   //|@Waive no_sink ARREGION_0;
   //|@Waive no_sink AWREGION;
   //|@Waive no_sink AWREGION_0;

   //|@Waive no_sink core_DRV_TDO;
   
   //--------------------------------------------------------
   // Combinational Logic

   // CoreAXIToAHBL does not support anything but 64-bit
   // Transactions. Bare minimal code to translate our
   // 32-bit transactions into 64-bit

   always @(*) begin
      conditioned_ARSIZE[2:0] = ARSIZE[2:0];
      if (ARVALID) begin
         if (ARSIZE == 3'b000) begin // 8-bit
            conditioned_ARSIZE[2:0] = 3'b011; 
         end else if (ARSIZE == 3'b001) begin //16-bit
            conditioned_ARSIZE[2:0] = 3'b011; 
         end else if (ARSIZE == 3'b010) begin // 32-bit
            conditioned_ARSIZE[2:0] = 3'b011; // 64-bit.
         end else if (ARSIZE == 3'b011) begin
         end else begin
            //$display ("UNSUPPORTED ARSIZE : %h", ARSIZE);
            //$finish;
         end
      end
   end


   always @(*) begin
      conditioned_ARSIZE_0[2:0] = ARSIZE_0[2:0];
      if (ARVALID_0) begin
         if (ARSIZE_0 == 3'b000) begin // 8-bit
            conditioned_ARSIZE_0[2:0] = 3'b011; 
         end else if (ARSIZE_0 == 3'b001) begin //16-bit
            conditioned_ARSIZE_0[2:0] = 3'b011; 
         end else if (ARSIZE_0 == 3'b010) begin // 32-bit
            conditioned_ARSIZE_0[2:0] = 3'b011; // 64-bit.
         end else if (ARSIZE_0 == 3'b011) begin
         end else begin
            //$display ("UNSUPPORTED ARSIZE_0 : %h", ARSIZE_0);
            //$finish;
         end
      end
   end

  
   always @(*) begin
      conditioned_AWSIZE[2:0] = AWSIZE[2:0];
      conditioned_WSTRB[7:0] = WSTRB[7:0];
      if (AWVALID) begin
         if (AWSIZE == 3'b000) begin // 8-bit
            conditioned_AWSIZE[2:0] = 3'b011;
            conditioned_WSTRB[7:0] = WSTRB[7:0] & 7'h1;
         end else if (AWSIZE == 3'b001) begin // 16-bit
            conditioned_AWSIZE[2:0] = 3'b011;
            conditioned_WSTRB[7:0] = WSTRB[7:0] & 7'h3;
         end else if (AWSIZE == 3'b010) begin // 32-bit
            conditioned_AWSIZE[2:0] = 3'b011; 
            conditioned_WSTRB[7:0] = WSTRB[7:0] & 7'hF;
         end else if (AWSIZE == 3'b011) begin // 64-bit
         end else begin
            //$display ("UNSUPPORTED AWSIZE : %h", AWSIZE);
            //$finish;
         end
      end
   end

    always @(*) begin
      conditioned_AWSIZE_0[2:0] = AWSIZE_0[2:0];
      conditioned_WSTRB_0[7:0] = WSTRB_0[7:0];
      if (AWVALID_0) begin
         if (AWSIZE_0 == 3'b000) begin // 8-bit
            conditioned_AWSIZE_0[2:0] = 3'b011;
            conditioned_WSTRB_0[7:0] = WSTRB_0[7:0] & 7'h1;
         end else if (AWSIZE_0 == 3'b001) begin // 16-bit
            conditioned_AWSIZE_0[2:0] = 3'b011;
            conditioned_WSTRB_0[7:0] = WSTRB_0[7:0] & 7'h3;
         end else if (AWSIZE_0 == 3'b010) begin // 32-bit
            conditioned_AWSIZE_0[2:0] = 3'b011; 
            conditioned_WSTRB_0[7:0] = WSTRB_0[7:0] & 7'hF;
         end else if (AWSIZE_0 == 3'b011) begin // 64-bit
         end else begin
            //$display ("UNSUPPORTED AWSIZE_0 : %h", AWSIZE_0);
            //$finish;
         end
      end
   end


   //--------------------------------------------------------
   // Sub Instances
     
   //|@Instance SiFiveE31Coreplex_sd core
   //|  -connect /^AXI_MST_MEM_(.*)/ $1_0
   //|    -connect /^AXI_MST_MMIO_(.*)/ $1
   //|      -connect TRST  core_TRST
   //|        -connect TCK   core_TCK 
   //|          -connect TMS   core_TMS 
   //|            -connect TDI   core_TDI
   //|              -connect TDO   core_TDO
   //|                -connect DRV_TDO core_DRV_TDO;
   CoreRISCV_AXI4_sd core (
    .CLK(clk)
   ,.RESET(reset)
   ,.AXI_MST_MEM_AWREADY(AWREADY_0)
   ,.AXI_MST_MEM_AWVALID(AWVALID_0)
   ,.AXI_MST_MEM_AWADDR(AWADDR_0[31:0])
   ,.AXI_MST_MEM_AWLEN(AWLEN_0[7:0])
   ,.AXI_MST_MEM_AWSIZE(AWSIZE_0[2:0])
   ,.AXI_MST_MEM_AWBURST(AWBURST_0[1:0])
   ,.AXI_MST_MEM_AWLOCK(AWLOCK_0)
   ,.AXI_MST_MEM_AWCACHE(AWCACHE_0[3:0])
   ,.AXI_MST_MEM_AWPROT(AWPROT_0[2:0])
   ,.AXI_MST_MEM_AWQOS(AWQOS_0[3:0])
   ,.AXI_MST_MEM_AWREGION(AWREGION_0[3:0])
   ,.AXI_MST_MEM_AWID(AWID_0[4:0])
   ,.AXI_MST_MEM_AWUSER(AWUSER_0)
   ,.AXI_MST_MEM_WREADY(WREADY_0)
   ,.AXI_MST_MEM_WVALID(WVALID_0)
   ,.AXI_MST_MEM_WDATA(WDATA_0[63:0])
   ,.AXI_MST_MEM_WLAST(WLAST_0)
   ,.AXI_MST_MEM_WID(WID_0[4:0])
   ,.AXI_MST_MEM_WSTRB(WSTRB_0[7:0])
   ,.AXI_MST_MEM_WUSER(WUSER_0)
   ,.AXI_MST_MEM_BREADY(BREADY_0)
   ,.AXI_MST_MEM_BVALID(BVALID_0)
   ,.AXI_MST_MEM_BRESP(BRESP_0[1:0])
   ,.AXI_MST_MEM_BID(BID_0[4:0])
   ,.AXI_MST_MEM_BUSER(BUSER_0)
   ,.AXI_MST_MEM_ARREADY(ARREADY_0)
   ,.AXI_MST_MEM_ARVALID(ARVALID_0)
   ,.AXI_MST_MEM_ARADDR(ARADDR_0[31:0])
   ,.AXI_MST_MEM_ARLEN(ARLEN_0[7:0])
   ,.AXI_MST_MEM_ARSIZE(ARSIZE_0[2:0])
   ,.AXI_MST_MEM_ARBURST(ARBURST_0[1:0])
   ,.AXI_MST_MEM_ARLOCK(ARLOCK_0)
   ,.AXI_MST_MEM_ARCACHE(ARCACHE_0[3:0])
   ,.AXI_MST_MEM_ARPROT(ARPROT_0[2:0])
   ,.AXI_MST_MEM_ARQOS(ARQOS_0[3:0])
   ,.AXI_MST_MEM_ARREGION(ARREGION_0[3:0])
   ,.AXI_MST_MEM_ARID(ARID_0[4:0])
   ,.AXI_MST_MEM_ARUSER(ARUSER_0)
   ,.AXI_MST_MEM_RREADY(RREADY_0)
   ,.AXI_MST_MEM_RVALID(RVALID_0)
   ,.AXI_MST_MEM_RRESP(RRESP_0[1:0])
   ,.AXI_MST_MEM_RDATA(RDATA_0[63:0])
   ,.AXI_MST_MEM_RLAST(RLAST_0)
   ,.AXI_MST_MEM_RID(RID_0[4:0])
   ,.AXI_MST_MEM_RUSER(RUSER_0)
   ,.AXI_MST_MMIO_AWREADY(AWREADY)
   ,.AXI_MST_MMIO_AWVALID(AWVALID)
   ,.AXI_MST_MMIO_AWADDR(AWADDR[31:0])
   ,.AXI_MST_MMIO_AWLEN(AWLEN[7:0])
   ,.AXI_MST_MMIO_AWSIZE(AWSIZE[2:0])
   ,.AXI_MST_MMIO_AWBURST(AWBURST[1:0])
   ,.AXI_MST_MMIO_AWLOCK(AWLOCK)
   ,.AXI_MST_MMIO_AWCACHE(AWCACHE[3:0])
   ,.AXI_MST_MMIO_AWPROT(AWPROT[2:0])
   ,.AXI_MST_MMIO_AWQOS(AWQOS[3:0])
   ,.AXI_MST_MMIO_AWREGION(AWREGION[3:0])
   ,.AXI_MST_MMIO_AWID(AWID[4:0])
   ,.AXI_MST_MMIO_AWUSER(AWUSER)
   ,.AXI_MST_MMIO_WREADY(WREADY)
   ,.AXI_MST_MMIO_WVALID(WVALID)
   ,.AXI_MST_MMIO_WDATA(WDATA[63:0])
   ,.AXI_MST_MMIO_WLAST(WLAST)
   ,.AXI_MST_MMIO_WID(WID[4:0])
   ,.AXI_MST_MMIO_WSTRB(WSTRB[7:0])
   ,.AXI_MST_MMIO_WUSER(WUSER)
   ,.AXI_MST_MMIO_BREADY(BREADY)
   ,.AXI_MST_MMIO_BVALID(BVALID)
   ,.AXI_MST_MMIO_BRESP(BRESP[1:0])
   ,.AXI_MST_MMIO_BID(BID[4:0])
   ,.AXI_MST_MMIO_BUSER(BUSER)
   ,.AXI_MST_MMIO_ARREADY(ARREADY)
   ,.AXI_MST_MMIO_ARVALID(ARVALID)
   ,.AXI_MST_MMIO_ARADDR(ARADDR[31:0])
   ,.AXI_MST_MMIO_ARLEN(ARLEN[7:0])
   ,.AXI_MST_MMIO_ARSIZE(ARSIZE[2:0])
   ,.AXI_MST_MMIO_ARBURST(ARBURST[1:0])
   ,.AXI_MST_MMIO_ARLOCK(ARLOCK)
   ,.AXI_MST_MMIO_ARCACHE(ARCACHE[3:0])
   ,.AXI_MST_MMIO_ARPROT(ARPROT[2:0])
   ,.AXI_MST_MMIO_ARQOS(ARQOS[3:0])
   ,.AXI_MST_MMIO_ARREGION(ARREGION[3:0])
   ,.AXI_MST_MMIO_ARID(ARID[4:0])
   ,.AXI_MST_MMIO_ARUSER(ARUSER)
   ,.AXI_MST_MMIO_RREADY(RREADY)
   ,.AXI_MST_MMIO_RVALID(RVALID)
   ,.AXI_MST_MMIO_RRESP(RRESP[1:0])
   ,.AXI_MST_MMIO_RDATA(RDATA[63:0])
   ,.AXI_MST_MMIO_RLAST(RLAST)
   ,.AXI_MST_MMIO_RID(RID[4:0])
   ,.AXI_MST_MMIO_RUSER(RUSER)
   ,.IRQ(interruptVector[30:0])
   ,.TDI(core_TDI)
   ,.TDO(core_TDO)
   ,.TCK(core_TCK)
   ,.TMS(core_TMS)
   ,.TRST(core_TRST)
   ,.DRV_TDO(core_DRV_TDO)
   );
   
      
   //|@Instance SmartFusion2_reference_system uncore 
   //|  -connect /^ARSIZE(_0)?/ conditioned_ARSIZE$1 
   //|    -connect /^AWSIZE(_0)?/ conditioned_AWSIZE$1 
   //|      -connect /^WSTRB(_0)?/  conditioned_WSTRB$1;
//   SmartFusion2_reference_system uncore (
   MSS_SUBSYSTEM uncore (
    .ACLK(ACLK)
   ,.ARADDR(ARADDR[31:0])
   ,.ARADDR_0(ARADDR_0[31:0])
   ,.ARBURST(ARBURST[1:0])
   ,.ARBURST_0(ARBURST_0[1:0])
   ,.ARESETN(ARESETN)
   ,.ARID(ARID[4:0])
   ,.ARID_0(ARID_0[4:0])
   ,.ARLEN(ARLEN[3:0])
   ,.ARLEN_0(ARLEN_0[3:0])
   ,.ARSIZE(conditioned_ARSIZE[2:0])
   ,.ARSIZE_0(conditioned_ARSIZE_0[2:0])
   ,.ARVALID(ARVALID)
   ,.ARVALID_0(ARVALID_0)
   ,.AWADDR(AWADDR[31:0])
   ,.AWADDR_0(AWADDR_0[31:0])
   ,.AWBURST(AWBURST[1:0])
   ,.AWBURST_0(AWBURST_0[1:0])
   ,.AWID(AWID[4:0])
   ,.AWID_0(AWID_0[4:0])
   ,.AWLEN(AWLEN[3:0])
   ,.AWLEN_0(AWLEN_0[3:0])
   ,.AWSIZE(conditioned_AWSIZE[2:0])
   ,.AWSIZE_0(conditioned_AWSIZE_0[2:0])
   ,.AWVALID(AWVALID)
   ,.AWVALID_0(AWVALID_0)
   ,.BREADY(BREADY)
   ,.BREADY_0(BREADY_0)
   ,.CLK0_PAD(CLK0_PAD)
   ,.DEVRST_N(DEVRST_N)
   ,.FAB_RESET_N(FAB_RESET_N)
   ,.GPIO_IN(GPIO_IN[31:0])
   ,.HCLK(HCLK)
   ,.HRESETN(HRESETN)
   ,.MDDR_DQS_TMATCH_0_IN(MDDR_DQS_TMATCH_0_IN)
   ,.PCLK(PCLK)
   ,.PRESETN(PRESETN)
   ,.RREADY(RREADY)
   ,.RREADY_0(RREADY_0)
   ,.RX(RX)
   ,.WDATA(WDATA[63:0])
   ,.WDATA_0(WDATA_0[63:0])
   ,.WID(WID[4:0])
   ,.WID_0(WID_0[4:0])
   ,.WLAST(WLAST)
   ,.WLAST_0(WLAST_0)
   ,.WSTRB(conditioned_WSTRB[7:0])
   ,.WSTRB_0(conditioned_WSTRB_0[7:0])
   ,.WVALID(WVALID)
   ,.WVALID_0(WVALID_0)
   ,.ARREADY(ARREADY)
   ,.ARREADY_0(ARREADY_0)
   ,.AWREADY(AWREADY)
   ,.AWREADY_0(AWREADY_0)
   ,.BID(BID[4:0])
   ,.BID_0(BID_0[4:0])
   ,.BRESP(BRESP[1:0])
   ,.BRESP_0(BRESP_0[1:0])
   ,.BVALID(BVALID)
   ,.BVALID_0(BVALID_0)
   ,.DDR_READY(DDR_READY)
   ,.FIC_0_CLK(FIC_0_CLK)
   ,.FIC_0_LOCK(FIC_0_LOCK)
//<CJ>   ,.FRAMING_ERR(FRAMING_ERR)
   ,.GPIO_OUT(GPIO_OUT[31:0])
   ,.INIT_DONE(INIT_DONE)
//<CJ>   ,.INT(INT[31:0])
   ,.MDDR_ADDR(MDDR_ADDR[15:0])
   ,.MDDR_BA(MDDR_BA[2:0])
   ,.MDDR_CAS_N(MDDR_CAS_N)
   ,.MDDR_CKE(MDDR_CKE)
   ,.MDDR_CLK(MDDR_CLK)
   ,.MDDR_CLK_N(MDDR_CLK_N)
   ,.MDDR_CS_N(MDDR_CS_N)
   ,.MDDR_DQS_TMATCH_0_OUT(MDDR_DQS_TMATCH_0_OUT)
   ,.MDDR_ODT(MDDR_ODT)
   ,.MDDR_RAS_N(MDDR_RAS_N)
   ,.MDDR_RESET_N(MDDR_RESET_N)
   ,.MDDR_WE_N(MDDR_WE_N)
   ,.MSS_DDR_FIC_SUBSYSTEM_CLK(MSS_DDR_FIC_SUBSYSTEM_CLK)
   ,.MSS_DDR_FIC_SUBSYSTEM_LOCK(MSS_DDR_FIC_SUBSYSTEM_LOCK)
   ,.MSS_READY(MSS_READY)
//<CJ>   ,.OVERFLOW(OVERFLOW)
//<CJ>   ,.PARITY_ERR(PARITY_ERR)
   ,.POWER_ON_RESET_N(POWER_ON_RESET_N)
   ,.RDATA(RDATA[63:0])
   ,.RDATA_0(RDATA_0[63:0])
   ,.RID(RID[4:0])
   ,.RID_0(RID_0[4:0])
   ,.RLAST(RLAST)
   ,.RLAST_0(RLAST_0)
   ,.RRESP(RRESP[1:0])
   ,.RRESP_0(RRESP_0[1:0])
   ,.RVALID(RVALID)
   ,.RVALID_0(RVALID_0)
//<CJ>   ,.RXRDY(RXRDY)
   ,.TIMINT_0(TIMINT_0)
   ,.TIMINT_1(TIMINT_1)
   ,.TX(TX)
//<CJ>   ,.TXRDY(TXRDY)
   ,.WREADY(WREADY)
   ,.WREADY_0(WREADY_0)
   ,.MDDR_DM_RDQS(MDDR_DM_RDQS[1:0])
   ,.MDDR_DQ(MDDR_DQ[15:0])
   ,.MDDR_DQS(MDDR_DQS[1:0])
   ,.MDDR_DQS_N(MDDR_DQS_N)
   );
    
   // These waivers are only needed because VP3 does not
   // parse the block of code below:
`ifdef USE_UJTAG
   
//   @Waive no_source core_TCK;
//   @Waive no_source core_TDI;
//   @Waive no_source core_TMS;
//   @Waive no_source core_TRST;
//   @Waive no_sink TRSTB;
//   @Waive no_source UTDO;
//   @Waive no_sink core_TDO;
//  @Waive no_sink TRST;
//   @Waive no_source TDO;
//   @Waive no_sink TCK;
//   @Waive no_sink TDI;
//   @Waive no_sink TMS;
//   @Waive no_sink UDRCAP;
//   @Waive no_sink UDRCK;
//   @Waive no_sink UDRSH;
//   @Waive no_sink UDRUPD;
//   @Waive no_sink UIREG;
//   @Waive no_sink URSTB;
//   @Waive no_sink UTDI;
   
//   @Unparsed begin;

      
   //--- UJTAG:  Macro which converts from 
   //        Physical JTAG ports
   //        to an intermediate representation
      
   UJTAG UJTAG_0(
                 // Inputs
                 .UTDO   ( UTDO ),
                 .TDI    ( TDI ),
                 .TMS    ( TMS ),
                 .TCK    ( TCK ),
                 .TRSTB  ( TRSTB ),
                 // Outputs
                 .UDRCAP ( UDRCAP ),
                 .UDRSH  ( UDRSH  ),
                 .UDRUPD ( UDRUPD ),
                 .UIREG  ( UIREG [7:0]),
                 .URSTB  ( URSTB ),
                 .UDRCK  ( UDRCK ),
                 .UTDI   ( UTDI ),
                 .TDO    ( TDO ) 
                 );

   //--- UJ_JTAG:  Code provided by Microsemi then modified
   //              which
   //              converts back from the intermediate
   //              representation to digital JTAG as understood.
   //              by CORERV32IM.

   // If there were more on the chain, their outputs could
   // be muxed here. See comments in uj_jtag.v.
   assign UTDO = (UTDO_0 & UTDODRV_0);
      
   assign core_TRST = ~core_TRSTB;
    
   uj_jtag #(.uj_jtag_ircode(8'h55)) UJ_JTAG_0(
                     // UJTAG port (to I/O)
                     .uireg  (UIREG[7:0]),
                     .urstb  (URSTB),
                     .udrupd (UDRUPD),
                     .udrck  (UDRCK),
                     .udrcap (UDRCAP),
                     .udrsh  (UDRSH),
                     .utdi   (UTDI),
                     .utdo   (UTDO_0),
                     .utdodrv(UTDODRV_0),
                     
                     // JTAG port (to DUT)
                     .dutntrst (core_TRSTB),
                     .duttck   (icore_TCK), 
                     .duttms   (core_TMS), 
                     .duttdi   (core_TDI),
                     .duttdo   (core_TDO),
                     
                     // gpio output port
                     .gpout(),
                     .gpin(4'b0)
                     );          
                     
    CLKINT coretck_clkint(.A(icore_TCK), .Y(core_TCK));
    
//    @Unparsed end;

`else // !`ifdef USE_UJTAG

   // We need this logic to catch the system reset as well.
   
   assign asyncTRSTB = POWER_ON_RESET_N & RV_TRSTB;
   
   reg TRSTCatchReg;
   reg syncTRSTReg;

   always @(posedge RV_TCK or negedge asyncTRSTB) begin
      if (~asyncTRSTB) begin
         TRSTCatchReg <= 1'b1;
         syncTRSTReg  <= 1'b1;
      end else begin
         TRSTCatchReg <= 1'b0;
         syncTRSTReg  <= TRSTCatchReg;
      end
   end
 
   assign core_TRST  = syncTRSTReg;
   
   assign core_TCK   = RV_TCK;
   assign core_TMS   = RV_TMS;
   assign core_TDI   = RV_TDI;
   // !!!The Debugger works without this. Disabling it until further testing.
   //assign RV_TDO   = core_DRV_TDO ? core_TDO : 1'bz;
   assign RV_TDO     = core_TDO;
`endif
      
endmodule

   
