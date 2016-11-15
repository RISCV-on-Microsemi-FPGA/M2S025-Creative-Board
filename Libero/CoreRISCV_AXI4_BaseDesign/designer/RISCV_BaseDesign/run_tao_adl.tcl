set_family {SmartFusion2}
read_adl {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/RISCV_BaseDesign/RISCV_BaseDesign.adl}
map_netlist
read_sdc {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/constraint/RISCV_BaseDesign_derived_constraints.sdc}
check_constraints {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/constraint/placer_sdc_errors.log}
write_sdc -strict {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/RISCV_BaseDesign/place_route.sdc}
