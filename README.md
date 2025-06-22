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
- Decodes 3-bit opcodes into control signals
- Decoder is used to select specific operations for ALUs
- Enabled only under certain conditions to optimize control logic

<div align="center">
  <img src="https://github.com/user-attachments/assets/46f0f065-3c30-4e30-a32e-752cc8cfea2e" alt="image">
</div>


<b>Simulation:</b> All testing was verified using VHDL's waveforms to ensure timing was correct<br> 
<b>Seven Segment Display:</b> All results were displayed in a seven segment display, which showed operation outputs and digits <br>
<b>Functionality:</b> Implemented specific ALU operations such as bit manipulation, maximum/minimum value determination

## Technologies used
<b>VHDL</b><br>
<b>Quartus</b><br>
<b>Altera FPGA Cyclone II</b><br>

