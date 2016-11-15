open_project -project {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/PROC_SUBSYSTEM/PROC_SUBSYSTEM_fp/PROC_SUBSYSTEM.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {M2S025} \
    -fpga {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/PROC_SUBSYSTEM/PROC_SUBSYSTEM.map} \
    -header {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/PROC_SUBSYSTEM/PROC_SUBSYSTEM.hdr} \
    -envm {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/PROC_SUBSYSTEM/PROC_SUBSYSTEM.efc}  \
    -spm {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/PROC_SUBSYSTEM/PROC_SUBSYSTEM.spm} \
    -dca {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/Libero/CoreRISCV_AXI4_BaseDesign/designer/PROC_SUBSYSTEM/PROC_SUBSYSTEM.dca}
export_single_stapl \
    -name {M2S025} \
    -file {/home/user/CoreRISCV_AXI4/M2S025-Creative-Board-master/FlashProExpress/PROC_SUBSYSTEM_CoreRISCV_AXI4_BaseDesign_M2S025.stp} \
    -secured
set_programming_file -name {M2S025} -no_file
save_project
close_project
