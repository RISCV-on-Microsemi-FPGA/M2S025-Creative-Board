set_device \
    -family  SmartFusion2 \
    -die     PA4M2500_N \
    -package vf256 \
    -speed   STD \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def {RTG4_MITIGATION_ON} {0}
set_def USE_CONSTRAINTS_FLOW 1
set_def NETLIST_TYPE EDIF
set_name PROC_SUBSYSTEM
set_workdir {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\designer\PROC_SUBSYSTEM}
set_log     {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM_coverage_pr.log}
set_design_state pre_layout
