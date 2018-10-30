set_family {SmartFusion2}
read_adl {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.adl}
map_netlist
read_sdc {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\constraint\PROC_SUBSYSTEM_derived_constraints.sdc}
read_sdc {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\constraint\user.sdc}
check_constraints {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\constraint\placer_sdc_errors.log}
write_sdc -strict {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\designer\PROC_SUBSYSTEM\place_route.sdc}
