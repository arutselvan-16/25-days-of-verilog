# Day 02 — Operators & Dataflow

## 📚 Theory Covered

### Operators

- Arithmetic Operators
- Logical Operators
- Relational Operators
- Bitwise Operators
- Shift Operators
- Conditional Operator `?:`

### Dataflow

- `assign`
- Continuous assignment

---

## 💻 RTL Designs

### 1. Half Adder

Inputs:
- A
- B

Outputs:
- Sum
- Carry

### 2. Full Adder

Inputs:
- A
- B
- Cin

Outputs:
- Sum
- Carry

### 3. Half Subtractor

Inputs:
- A
- B

Outputs:
- Difference
- Borrow

### 4. Full Subtractor

Inputs:
- A
- B
- Bin

Outputs:
- Difference
- Bout

### 5. Operator Demo

Practiced:

- Addition
- Relational comparison
- Left shift
- Bitwise AND

---

## 🧪 Testbench Practice

Testbenches were written for:

- Full Adder
- Half Subtractor
- Full Subtractor
- Operator Demo

The testbenches included:

- `reg` inputs
- `wire` outputs
- DUT instantiation
- `initial` block
- `$monitor`
- Input stimulus
- Simulation delays
- `$finish`

---

## 🔍 Verification Approach

For each combinational circuit:

1. Build the truth table
2. Derive Boolean expressions
3. Write RTL
4. Write the testbench
5. Predict expected outputs
6. Run simulation
7. Compare expected vs actual outputs
8. Fix syntax or logic errors

---

## 🧠 Important Concepts Learned

### Full Adder

```text
Sum  = A ^ B ^ Cin
Cout = (A & B) | (B & Cin) | (Cin & A)
