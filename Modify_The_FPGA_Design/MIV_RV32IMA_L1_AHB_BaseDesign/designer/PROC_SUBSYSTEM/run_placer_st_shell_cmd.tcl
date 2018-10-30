read_sdc -scenario "place_and_route" -netlist "user" -pin_separator "/" -ignore_errors {C:/Users/ciaran.lappin/Downloads/M2S025-Creative-Board-master/Modify_The_FPGA_Design/MIV_RV32IMA_L1_AHB_BaseDesign/designer/PROC_SUBSYSTEM/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM_layout_combinational_loops.xml}
report -type slack {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\designer\PROC_SUBSYSTEM\pinslacks.txt}
