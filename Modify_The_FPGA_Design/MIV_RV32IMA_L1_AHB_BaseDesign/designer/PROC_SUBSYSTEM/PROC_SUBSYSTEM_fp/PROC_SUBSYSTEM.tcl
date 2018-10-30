open_project -project {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM_fp\PROC_SUBSYSTEM.pro}\
         -connect_programmers {FALSE}
if { [catch {load_programming_data \
    -name {M2S025} \
    -fpga {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.map} \
    -header {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.hdr} \
    -envm {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.efc}  \
    -spm {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.spm} \
    -dca {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.dca} } return_val] } {
save_project
close_project
exit }
export_single_stapl \
    -name {M2S025} \
    -file {C:\Users\ciaran.lappin\Downloads\M2S025-Creative-Board-master\Modify_The_FPGA_Design\MIV_RV32IMA_L1_AHB_BaseDesign\designer\PROC_SUBSYSTEM\export\PROC_SUBSYSTEM_BaseDesign_M2S025.stp} \
    -secured
set_programming_file -name {M2S025} -no_file
save_project
close_project
