read_sdc -scenario "place_and_route" -netlist "user" -pin_separator "/" -ignore_errors {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/RISCV_BaseDesign/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/RISCV_BaseDesign/RISCV_BaseDesign_layout_combinational_loops.xml}
report -type slack {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/RISCV_BaseDesign/pinslacks.txt}
