# Day 03 – Verilog Procedural Combinational Logic

## Overview

Day 3 focused on designing and simulating basic combinational circuits using Verilog procedural blocks.

The main concepts practiced were:

- `always @(*)`
- `if`
- `else if`
- `else`
- Relational operators
- Bit selection
- `output reg`
- Testbench creation
- Simulation and waveform verification

---

## 1. 1-Bit Comparator

A 1-bit comparator compares two 1-bit inputs, `A` and `B`, and determines whether:

- A is greater than B
- A is equal to B
- A is less than B

### Inputs

- `A`
- `B`

### Outputs

- `greater`
- `equal`
- `less`

### Truth Table

| A | B | Greater | Equal | Less |
|---|---|---------|-------|------|
| 0 | 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 | 1 |
| 1 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 1 | 0 |

### Files

- `one_bit_comparator.v` – RTL design
- `one_bit_comparator_tb.v` – Testbench
- `one_bit_comparator_waveform.png` – Simulation result

---

## 2. 4-Bit Magnitude Comparator

A 4-bit magnitude comparator compares two 4-bit binary numbers and determines whether `A > B`, `A < B`, or `A = B`.

### Inputs

- `A[3:0]`
- `B[3:0]`

### Outputs

- `greater`
- `equal`
- `less`

### Files

- `four_bit_magnitude_comparator.v`
- `four_bit_magnitude_comparator_tb.v`

---

## 3. Maximum of Four Numbers

This design finds the maximum value among four 4-bit inputs:

`A`, `B`, `C`, and `D`.

The comparison is performed step-by-step:

```text
A vs B → max_AB
max_AB vs C → max_ABC
max_ABC vs D → max
