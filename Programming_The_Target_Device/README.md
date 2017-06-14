# Smartfusion2 Creative Development Board RISC-V Sample Designs 
Sample RISC-V Libero project(s) for the SmartFusion2 M2S025 Creative Development Board.

This project contains a Libero project containing an FPGA design including a RISC-V RV32IM soft processor. Programming bitstreams are also included so that you do not need to run through the full FPGA design flow in order to start developping software for RISC-V.

### Design Features
The FPGA design includes the following features:
* CoreRISCV_AXI4 RV32IM RISC-V processor
* RISC-V debug block allowing on-target debug using openocd/GDB
* On-chip NVM used as boot/execution memory
* DDR2 memory for code/data
* User peripherals such as GPIO, Timers, UART

The memory map for each design is available within each Libero project.

### Target Hardware
The Creative Development Kit includes a SmartFusion2 M2S025 SoC FPGA. Details of the features of this development board are available [here](https://www.microsemi.com/products/fpga-soc/design-resources/dev-kits/smartfusion2/future-creative-board)

### FlashPro Express
This folder includes two FlashPro Express projects that can be used to program the development boards FPGA. A standalone installer for FlashPro Express is available [here](https://www.microsemi.com/products/fpga-soc/design-resources/programming/flashpro#software) . Please note that you only need to install this standalone version of FlashPro Express if you do not have Libero tools installed.

* PROC_SUBSYSTEM_BaseDesign, allows software debugging using the embedded FlashPro5. The same JTAG port is used for programming the FPGA and debugging RISC-V software.
* PROC_SUBSYSTEM_TickTackToe, contains the design used along side of the TickTackToe example software found [here](https://github.com/RISCV-on-Microsemi-FPGA/M2GL025-Creative-Board/tree/master/ExampleSoftware). To use this deisgn a daughter board is needed from Adafruit, more information on this can be found [here](https://www.adafruit.com/product/1651)


