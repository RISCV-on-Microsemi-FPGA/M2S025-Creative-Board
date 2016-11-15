open_project -project {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/RISCV_BaseDesign/RISCV_BaseDesign_fp/RISCV_BaseDesign.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {M2S025} \
    -fpga {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/RISCV_BaseDesign/RISCV_BaseDesign.map} \
    -header {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/RISCV_BaseDesign/RISCV_BaseDesign.hdr} \
    -envm {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/RISCV_BaseDesign/RISCV_BaseDesign.efc}  \
    -spm {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/RISCV_BaseDesign/RISCV_BaseDesign.spm} \
    -dca {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/RISCV_BaseDesign/RISCV_BaseDesign.dca}
export_single_stapl \
    -name {M2S025} \
    -file {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/FlashProExpress/RISCV_BaseDesign_CoreRISCV_AXI4_M2S025.stp} \
    -secured
set_programming_file -name {M2S025} -no_file
save_project
close_project
