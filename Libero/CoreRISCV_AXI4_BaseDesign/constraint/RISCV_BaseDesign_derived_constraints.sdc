# Microsemi Corp.
# Date: 2016-Sep-08 22:16:19
# This file was generated based on the following SDC source files:
#   /scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM_sb/CCC_0/MSS_SUBSYSTEM_sb_CCC_0_FCCC.sdc
#   /usr/local/microsemi/Libero_v11.7/Libero/data/aPA4M/cores/constraints/PA4M2500/coreconfigp.sdc
#   /usr/local/microsemi/Libero_v11.7/Libero/data/aPA4M/cores/constraints/coreresetp.sdc
#   /scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM_sb/FABOSC_0/MSS_SUBSYSTEM_sb_FABOSC_0_OSC.sdc
#   /scratch/FutureBoard/RISCV_BaseDesign/component/work/MSS_SUBSYSTEM_sb_MSS/MSS_SUBSYSTEM_sb_MSS.sdc
#

create_clock -name {CLK0_PAD} -period 20 [ get_ports { CLK0_PAD } ]
create_clock -name {uncore/MSS_SUBSYSTEM_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT} -period 20 [ get_pins { uncore/MSS_SUBSYSTEM_sb_0/FABOSC_0/I_RCOSC_25_50MHZ/CLKOUT } ]
create_clock -name {uncore/MSS_SUBSYSTEM_sb_0/MSS_SUBSYSTEM_sb_MSS_0/CLK_CONFIG_APB} -period 60.6061 [ get_pins { uncore/MSS_SUBSYSTEM_sb_0/MSS_SUBSYSTEM_sb_MSS_0/MSS_ADLIB_INST/CLK_CONFIG_APB } ]
create_generated_clock -name {uncore/MSS_SUBSYSTEM_sb_0/CCC_0/GL0} -multiply_by 99 -divide_by 75 -source [ get_pins { uncore/MSS_SUBSYSTEM_sb_0/CCC_0/CCC_INST/CLK0_PAD } ] -phase 0 [ get_pins { uncore/MSS_SUBSYSTEM_sb_0/CCC_0/CCC_INST/GL0 } ]
set_false_path -ignore_errors -through [ get_nets { uncore/MSS_SUBSYSTEM_sb_0/CORECONFIGP_0/INIT_DONE uncore/MSS_SUBSYSTEM_sb_0/CORECONFIGP_0/SDIF_RELEASED } ]
set_false_path -ignore_errors -through [ get_nets { uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/ddr_settled uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/count_ddr_enable uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/release_sdif*_core uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/count_sdif*_enable } ]
set_false_path -ignore_errors -from [ get_cells { uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/MSS_HPMS_READY_int } ] -to [ get_cells { uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/sm0_areset_n_rcosc uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/sm0_areset_n_rcosc_q1 } ]
set_false_path -ignore_errors -from [ get_cells { uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/MSS_HPMS_READY_int uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/SDIF*_PERST_N_re } ] -to [ get_cells { uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/sdif*_areset_n_rcosc* } ]
set_false_path -ignore_errors -through [ get_nets { uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/CONFIG1_DONE uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/CONFIG2_DONE uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/SDIF*_PERST_N uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/SDIF*_PSEL uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/SDIF*_PWRITE uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/SDIF*_PRDATA[*] uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/SOFT_EXT_RESET_OUT uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/SOFT_RESET_F2M uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/SOFT_M3_RESET uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/SOFT_MDDR_DDR_AXI_S_CORE_RESET uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/SOFT_FDDR_CORE_RESET uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/SOFT_SDIF*_PHY_RESET uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/SOFT_SDIF*_CORE_RESET uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/SOFT_SDIF0_0_CORE_RESET uncore/MSS_SUBSYSTEM_sb_0/CORERESETP_0/SOFT_SDIF0_1_CORE_RESET } ]
set_max_delay 0 -through [ get_nets { uncore/MSS_SUBSYSTEM_sb_0/CORECONFIGP_0/FIC_2_APB_M_PSEL uncore/MSS_SUBSYSTEM_sb_0/CORECONFIGP_0/FIC_2_APB_M_PENABLE } ] -to [ get_cells { uncore/MSS_SUBSYSTEM_sb_0/CORECONFIGP_0/FIC_2_APB_M_PREADY* uncore/MSS_SUBSYSTEM_sb_0/CORECONFIGP_0/state[0] } ]
set_min_delay -24 -through [ get_nets { uncore/MSS_SUBSYSTEM_sb_0/CORECONFIGP_0/FIC_2_APB_M_PWRITE uncore/MSS_SUBSYSTEM_sb_0/CORECONFIGP_0/FIC_2_APB_M_PADDR[*] uncore/MSS_SUBSYSTEM_sb_0/CORECONFIGP_0/FIC_2_APB_M_PWDATA[*] uncore/MSS_SUBSYSTEM_sb_0/CORECONFIGP_0/FIC_2_APB_M_PSEL uncore/MSS_SUBSYSTEM_sb_0/CORECONFIGP_0/FIC_2_APB_M_PENABLE } ]
