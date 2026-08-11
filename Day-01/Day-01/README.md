# Day 01 — Verilog Basics

## 📚 Topics Covered

- Verilog module structure
- Input and output ports
- `reg` and `wire`
- Number systems
- Basic Verilog syntax
- DUT (Design Under Test)
- Testbench basics
- `$monitor`
- Simulation stimulus

---

## 💻 RTL Designs

### Basic Logic Gates
- AND Gate
- XOR Gate
- XNOR Gate

### Combinational Circuits
- Half Adder
- 2:1 Multiplexer

---

## 🧪 Testbenches

Testbenches were written and practiced for:

- AND Gate
- XOR Gate
- Half Adder

The testbenches included:

- `reg` for inputs
- `wire` for outputs
- DUT instantiation
- `initial` block
- Input stimulus
- `#10` simulation delays
- `$monitor`
- `$finish`

---

## 🔍 Verification Approach

For each circuit:

1. Understand the logic
2. Write the RTL
3. Create a testbench
4. Apply different input combinations
5. Predict the expected output
6. Compare simulation results

---

## 🎯 Key Learning

Day 1 focused on understanding the basic structure of Verilog and how RTL code connects to a testbench.

The main goal was to become comfortable with:

```text
Module → RTL → Testbench → Simulation
