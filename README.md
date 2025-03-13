# Electronic Voting Machine (EVM) on PYNQ-Z2 FPGA
![evm](https://github.com/user-attachments/assets/49925afc-0867-487b-8611-72e5194a1eef)
## Overview
This project implements an **Electronic Voting Machine (EVM)** using Verilog and is deployed on the **PYNQ-Z2 FPGA**. The system allows voters to cast votes for four candidates using buttons, records the votes, and displays results on a **seven-segment display**.

## Features
- **Four candidate voting system** using push buttons.
- **Vote logging system** to store and count votes.
- **Admin mode** to view results.
- **Seven-segment display output** to show vote count.

## Top-Level Module: `votingMachine`
The `votingMachine` module integrates all submodules required to operate the electronic voting machine. The key signals include:

### Inputs
```verilog
clock   // System clock
reset   // Resets the system
mode    // Selects between voting mode and result mode
button1 // Button for Candidate 1
button2 // Button for Candidate 2
button3 // Button for Candidate 3
button4 // Button for Candidate 4
```

### Outputs
```verilog
led1 // Seven-segment display output for Candidate 1 & 2
led2 // Seven-segment display output for Candidate 3 & 4
```

## Module Descriptions

### 1. `buttonControl`
Detects valid button presses and debounces the input to prevent multiple votes from a single press. A valid vote is detected **only if the button is pressed continuously for 1 second**.

### 2. `voteLogger`
Stores the votes received for each candidate and increments the count accordingly.

### 3. `modeControl`
Handles the overall system behavior based on the **mode** selected (voting or result viewing).

### 4. `seven_segment_decoder`
Converts the binary vote count to a format suitable for display on a **seven-segment display**.

## How to Use
```bash
1. Program the PYNQ-Z2 FPGA with the Verilog design.
2. Ensure the system is in voting mode.
3. Press a button (`button1` to `button4`) to cast a vote for a candidate.
4. Switch to result mode to view the total votes on the seven-segment display.
5. Reset the system to clear all votes and restart the process.
---
This Electronic Voting Machine (EVM) is a simple yet effective way to understand FPGA-based digital design and Verilog programming.


