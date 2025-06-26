# ALU Task-1 - CodTech Internship

This is my Task-1 for CodTech internship. In this I wrote Verilog code for a 4-bit ALU and also created a testbench to check different operations.

## What ALU Does

The ALU takes 2 inputs A and B (4-bit each) and one select input (3-bit) to perform operations like:

| sel value | Operation  |
|-----------|------------|
| 000       | A + B      |
| 001       | A - B      |
| 010       | A & B      |
| 011       | A \| B     |
| 100       | ~A         |
| others    | 0000       |

## Files in this repo

- `ALU.v` → This file has the ALU module code.
- `ALU_tb.v` → Testbench file to test ALU operations.
- `dump.vcd` → Waveform file after running simulation.

## How to Run

1. I used **Icarus Verilog** and **GTKWave** to run and check output.

2. Commands I used:

```bash
iverilog -o alu_test ALU.v ALU_tb.v
vvp alu_test
gtkwave dump.vcd
