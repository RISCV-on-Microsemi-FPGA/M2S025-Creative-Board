set_device -family {SmartFusion2} -die {M2S025}
read_verilog -lib COREAHBLITE_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreAHBLite/5.2.100/rtl/vlog/core/coreahblite.v}
read_verilog -lib COREAHBLITE_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreAHBLite/5.2.100/rtl/vlog/core/coreahblite_addrdec.v}
read_verilog -lib COREAHBLITE_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreAHBLite/5.2.100/rtl/vlog/core/coreahblite_defaultslavesm.v}
read_verilog -lib COREAHBLITE_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreAHBLite/5.2.100/rtl/vlog/core/coreahblite_masterstage.v}
read_verilog -lib COREAHBLITE_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreAHBLite/5.2.100/rtl/vlog/core/coreahblite_matrix4x16.v}
read_verilog -lib COREAHBLITE_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreAHBLite/5.2.100/rtl/vlog/core/coreahblite_slavearbiter.v}
read_verilog -lib COREAHBLITE_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreAHBLite/5.2.100/rtl/vlog/core/coreahblite_slavestage.v}
read_verilog -lib COREAHBTOAPB3_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/COREAHBTOAPB3/3.1.100/rtl/vlog/core/coreahbtoapb3.v}
read_verilog -lib COREAHBTOAPB3_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/COREAHBTOAPB3/3.1.100/rtl/vlog/core/coreahbtoapb3_ahbtoapbsm.v}
read_verilog -lib COREAHBTOAPB3_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/COREAHBTOAPB3/3.1.100/rtl/vlog/core/coreahbtoapb3_apbaddrdata.v}
read_verilog -lib COREAHBTOAPB3_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/COREAHBTOAPB3/3.1.100/rtl/vlog/core/coreahbtoapb3_penablescheduler.v}
read_verilog -lib COREAPB3_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreAPB3/4.1.100/rtl/vlog/core/coreapb3.v}
read_verilog -lib COREAPB3_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreAPB3/4.1.100/rtl/vlog/core/coreapb3_iaddr_reg.v}
read_verilog -lib COREAPB3_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreAPB3/4.1.100/rtl/vlog/core/coreapb3_muxptob3.v}
read_verilog -lib COREAXITOAHBL {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/COREAXITOAHBL/3.0.101/rtl/vlog/core/CoreAXItoAHBL.v}
read_verilog -lib COREAXITOAHBL {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/COREAXITOAHBL/3.0.101/rtl/vlog/core/CoreAXItoAHBL_AHBMasterCtrl.v}
read_verilog -lib COREAXITOAHBL {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/COREAXITOAHBL/3.0.101/rtl/vlog/core/CoreAXItoAHBL_AXIOutReg.v}
read_verilog -lib COREAXITOAHBL {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/COREAXITOAHBL/3.0.101/rtl/vlog/core/CoreAXItoAHBL_AXISlaveCtrl.v}
read_verilog -lib COREAXITOAHBL {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/COREAXITOAHBL/3.0.101/rtl/vlog/core/CoreAXItoAHBL_RAM_syncWrAsyncRd.v}
read_verilog -lib COREAXITOAHBL {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/COREAXITOAHBL/3.0.101/rtl/vlog/core/CoreAXItoAHBL_readByteCnt.v}
read_verilog -lib COREAXITOAHBL {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/COREAXITOAHBL/3.0.101/rtl/vlog/core/CoreAXItoAHBL_synchronizer.v}
read_verilog -lib COREAXITOAHBL {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/COREAXITOAHBL/3.0.101/rtl/vlog/core/CoreAXItoAHBL_WSTRBAddrOffset.v}
read_verilog -lib COREAXITOAHBL {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/COREAXITOAHBL/3.0.101/rtl/vlog/core/CoreAXItoAHBL_WSTRBPopCntr.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreConfigP/7.0.105/rtl/vlog/core/coreconfigp.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreGPIO/3.1.101/rtl/vlog/core/coregpio.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreResetP/7.0.104/rtl/vlog/core/coreresetp.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreResetP/7.0.104/rtl/vlog/core/coreresetp_pcie_hotreset.v}
read_verilog -lib CORETIMER_LIB {/scratch/FutureBoard/RISCV_BaseDesign/component/Actel/DirectCore/CoreTimer/2.0.103/rtl/vlog/core/coretimer.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/SiFive/SiFive/SiFiveE31Coreplex/1.0.8/rtl/verilog/AsyncFifo.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/SiFive/SiFive/SiFiveE31Coreplex/1.0.8/rtl/verilog/DebugTransportModuleJtag.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/SiFive/SiFive/SiFiveE31Coreplex/1.0.8/rtl/verilog/SiFiveE31Coreplex.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/SiFive/SiFive/SiFiveE31Coreplex/1.0.8/rtl/verilog/Top.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM/CoreUARTapb_0/rtl/vlog/core/Clock_gen.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM/CoreUARTapb_0/rtl/vlog/core/CoreUART.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM/CoreUARTapb_0/rtl/vlog/core/CoreUARTapb.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM/CoreUARTapb_0/rtl/vlog/core/fifo_256x8_g4.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM/CoreUARTapb_0/rtl/vlog/core/Rx_async.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM/CoreUARTapb_0/rtl/vlog/core/Tx_async.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM/MSS_SUBSYSTEM.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM_sb/CCC_0/MSS_SUBSYSTEM_sb_CCC_0_FCCC.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM_sb/FABOSC_0/MSS_SUBSYSTEM_sb_FABOSC_0_OSC.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM_sb/MSS_SUBSYSTEM_sb.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM_sb_MSS/MSS_SUBSYSTEM_sb_MSS.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/component/work/SiFiveE31Coreplex_sd/SiFiveE31Coreplex_sd.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/hdl/RISCV_BaseDesign.v}
read_verilog {/scratch/FutureBoard/RISCV_BaseDesign/hdl/uj_jtag.v}
set_top_level {RISCV_BaseDesign}
read_sdc -component {/scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM_sb/FABOSC_0/MSS_SUBSYSTEM_sb_FABOSC_0_OSC.sdc}
read_sdc -component {/scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM_sb/CCC_0/MSS_SUBSYSTEM_sb_CCC_0_FCCC.sdc}
read_sdc -component {/scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM_sb_MSS/MSS_SUBSYSTEM_sb_MSS.sdc}
derive_constraints
write_sdc {/scratch/FutureBoard/RISCV_BaseDesign/constraint/RISCV_BaseDesign_derived_constraints.sdc}
