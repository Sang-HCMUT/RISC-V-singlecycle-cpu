# RISC-V Single-Cycle CPU (RV32I)

This project implements a 32-bit single-cycle CPU based on the RISC-V RV32I instruction set architecture. It was developed for the EE3043 Computer Architecture course.

## 🧠 Features

- Implements the RV32I instruction set (excluding FENCE)
- Single-cycle datapath
- Peripherals supported:
  - LEDs, Switches (required)
  - LCD, 7-segment displays (optional)
- Two separate memory modules:
  - ROM for instruction memory
  - RAM for data memory and peripherals
 
## 🗂 Project Structure
src/ # SystemVerilog source files sim/ # Testbenches and simulation outputs doc/ # Reports and design documentation synthesis/ # FPGA synthesis constraints and setup platform/ # Board-specific config (e.g., DE2 pin constraints)

## 🧪 Simulation

Testbenches are provided in the `sim/` directory. Run simulations using tools like ModelSim, Verilator, or Quartus.

## 🖥️ Target Platform

- DE2 Board (Cyclone II EP2C35F672C6)
