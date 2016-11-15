new_project \
         -name {RISCV_BaseDesign} \
         -location {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/RISCV_BaseDesign/designer/RISCV_BaseDesign/RISCV_BaseDesign_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S025} \
         -name {M2S025}
enable_device \
         -name {M2S025} \
         -enable {TRUE}
save_project
close_project
