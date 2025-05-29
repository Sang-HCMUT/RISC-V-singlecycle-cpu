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

## 🧭 Block Diagram

![image](https://github.com/user-attachments/assets/6576a3b5-419f-4294-901a-4ade5528e605)



## 🧪 Simulation

Testbenches are provided in the `sim/` directory. Run simulations using tools like ModelSim, Verilator, or Quartus.

## 🖥️ Target Platform

- DE2 Board (Cyclone II EP2C35F672C6)

## LICENSE
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
