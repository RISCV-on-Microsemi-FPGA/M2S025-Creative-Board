set_device \
    -fam SmartFusion2 \
    -die PA4M2500_N \
    -pkg vf256
set_input_cfg \
	-path {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/component/work/MSS_SUBSYSTEM_sb_MSS/ENVM.cfg}
set_output_efc \
    -path {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/RISCV_BaseDesign/RISCV_BaseDesign.efc}
set_proj_dir \
    -path {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign}
gen_prg -use_init false
