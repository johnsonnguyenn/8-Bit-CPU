# 8-Bit-CPU Design

## Description
An 8-bit CPU design was structured to display the fundamentals of digital system design. The CPU integrates key components such as registers, a 3-to-8 decoder, a finite state machine, and three unique Arithmetic Logic Units (ALU). The CPU also includes data and control flows synchronized within a system clock. Each component was constructed in VHDL, synthesized in Quartus, and represented on an Altera Cyclone II FPGA board.

---

## Key Features

**Registers**
- Two 8-bit registers store values **A** and **B**, derived via specific student ID digits.
- Includes a clock and reset.
- The outputs of the registers are fed into an ALU for operations.
  
<div align="center">
  <img src="https://github.com/user-attachments/assets/5e27d4aa-2c93-4a2a-9d14-3b9f8e054918" alt="image">
</div>

**3-to-8 Decoder** 
- Decodes 3-bit opcodes into control signals.
- Decoder is used to select specific operations for ALUs.
- Enabled only under certain conditions to optimize control logic.

<div align="center">
  <img src="https://github.com/user-attachments/assets/46f0f065-3c30-4e30-a32e-752cc8cfea2e" alt="image">
</div>

**Finite State Machine**
- Cycles through 8 states to simulate student ID digits.
- Drives instruction timing and ID-based logic.
- Synchronized with the system clock.

<div align="center">
  <img src="https://github.com/user-attachments/assets/c1594c9d-7ac7-47a5-b91b-c03d17dfe8c7" alt="image">
</div>

<b>Simulation:</b> All testing was verified using VHDL's waveforms to ensure timing was correct<br> 
<b>Seven Segment Display:</b> All results were displayed in a seven segment display, which showed operation outputs and digits <br>
<b>Functionality:</b> Implemented specific ALU operations such as bit manipulation, maximum/minimum value determination

---

## ALU Implementation

**ALU 1: Basic Arithmetic and Logic**
- Supports addition, subtraction, NOT, OR, AND, XOR, etc.
- Output is split into two 4-bit values for signed display on seven-segment modules. 
- Basic digital arithmetic and logic operations are validated through the ALU.

**ALU 2: Student-Specific Logic**
- Implements ID-specific logic such as swapping bit order, bit inversions, and comparison-based functions.

**ALU 3: Conditional Output Display**
- Compares 4-bit segments of each register with Student ID digits.
- Outputs **Y** or **N** on a seven-segment display are based on whether the digits match.
- Integrates FSM state with conditional logic flow

---

## Technologies used
<b>VHDL</b><br>
<b>Quartus</b><br>
<b>Altera FPGA Cyclone II</b><br>

