
# Day 04 – Verilog Case Statements and Combinational Circuits

## Overview

Day 04 focused on designing combinational circuits using Verilog `case` and `casez` statements.

The main concepts practiced were:

- `case`
- `casez`
- `default`
- Concatenation
- Don't-care conditions
- Multiplexers
- Priority encoders
- Decoders
- Testbench creation
- Simulation and waveform verification

All designs were simulated using ModelSim.

---

## 1. 4-to-1 Multiplexer

A 4-to-1 multiplexer selects one of four input signals based on two select lines and connects the selected input to the output.

### Inputs

- `I0`
- `I1`
- `I2`
- `I3`

### Select Lines

- `S1`
- `S0`

### Output

- `Y`

### Selection Table

| S1 | S0 | Selected Input | Y |
|----|----|----------------|---|
| 0  | 0  | I0             | I0 |
| 0  | 1  | I1             | I1 |
| 1  | 0  | I2             | I2 |
| 1  | 1  | I3             | I3 |

### Files

- `mux_4_1.v` – RTL design
- `mux_4_1_tb.v` – Testbench
- `mux_4_1_waveform.png` – Simulation waveform

---

## 2. 8-to-1 Multiplexer

An 8-to-1 multiplexer selects one of eight input signals using three select lines.

### Inputs

- `I0` to `I7`

### Select Lines

- `S2`
- `S1`
- `S0`

### Output

- `Y`

### Selection Table

| S2 | S1 | S0 | Selected Input | Y |
|----|----|----|----------------|---|
| 0  | 0  | 0  | I0             | I0 |
| 0  | 0  | 1  | I1             | I1 |
| 0  | 1  | 0  | I2             | I2 |
| 0  | 1  | 1  | I3             | I3 |
| 1  | 0  | 0  | I4             | I4 |
| 1  | 0  | 1  | I5             | I5 |
| 1  | 1  | 0  | I6             | I6 |
| 1  | 1  | 1  | I7             | I7 |

### Files

- `mux_8_1.v` – RTL design
- `mux_8_1_tb.v` – Testbench
- `mux_8_1_waveform.png` – Simulation waveform

---

## 3. 4-to-2 Priority Encoder

A 4-to-2 priority encoder converts four input signals into a 2-bit binary output according to their priority.

The priority order is:

```text
D3 > D2 > D1 > D0
