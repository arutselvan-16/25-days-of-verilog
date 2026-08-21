Day 05 – Combinational Circuits

Overview

Day 05 focused on designing and verifying combinational circuits using Verilog HDL.

The main topics covered were:

Decoder

Encoder

Priority Encoder

case statement

casez statement

Don't-care conditions (?)

Concatenation

Combinational RTL design

Testbench development

ModelSim simulation

Waveform verification

The circuits were implemented using Verilog HDL, tested using separate testbenches, and verified through ModelSim simulation.

Objectives

Understand the working principle of decoders.

Understand the working principle of encoders.

Understand the difference between a normal encoder and a priority encoder.

Implement decoders using Verilog case statements.

Implement an encoder using Verilog case.

Implement a priority encoder using casez.

Understand don't-care conditions using ?.

Create separate RTL and testbench files.

Verify the designs using ModelSim.

Analyze simulation waveforms.

1. 2-to-4 Decoder

A decoder is a combinational circuit that converts binary input information into one of several output lines.

For a decoder with n input lines, the number of possible output lines is:

2^n

For a 2-to-4 decoder:

2 inputs → 4 outputs

Inputs

A1
A0

Output

Y[3:0]

Truth Table

A1

A0

Y[3:0]

0

0

0001

0

1

0010

1

0

0100

1

1

1000

Files

decoder_2_4.v
decoder_2_4_tb.v

2. 3-to-8 Decoder

A 3-to-8 decoder has 3 inputs and 8 outputs because:

2^3 = 8

Inputs

A2
A1
A0

Output

Y[7:0]

Truth Table

A2

A1

A0

Y[7:0]

0

0

0

0000_0001

0

0

1

0000_0010

0

1

0

0000_0100

0

1

1

0000_1000

1

0

0

0001_0000

1

0

1

0010_0000

1

1

0

0100_0000

1

1

1

1000_0000

Operation

000 → Y0
001 → Y1
010 → Y2
011 → Y3
100 → Y4
101 → Y5
110 → Y6
111 → Y7

Files

decoder_3_8.v
decoder_3_8_tb.v
decoder_3_8_waveform.png

3. 8-to-3 Encoder

An encoder performs the reverse operation of a decoder.

An 8-to-3 encoder converts one active input out of eight into a corresponding 3-bit binary code.

8 inputs → 3 outputs

because:

2^3 = 8

Inputs

D[7:0]

Output

Y[2:0]

For a normal encoder, only one input is assumed to be HIGH at a time.

Truth Table

Active Input

Y[2:0]

D0

000

D1

001

D2

010

D3

011

D4

100

D5

101

D6

110

D7

111

Files

encoder_8_3.v
encoder_8_3_tb.v
encoder_8_3_waveform.png

4. 8-to-3 Priority Encoder

A priority encoder assigns a priority to each input.

The priority order used in this design is:

D7 > D6 > D5 > D4 > D3 > D2 > D1 > D0

Therefore, D7 has the highest priority and D0 has the lowest priority.

Unlike a normal encoder, a priority encoder can handle multiple HIGH inputs. The highest-priority HIGH input determines the output.

Inputs

D[7:0]

Output

Y[2:0]

Priority Table

Highest Active Input

Y[2:0]

D7

111

D6

110

D5

101

D4

100

D3

011

D2

010

D1

001

D0

000

Example

If:

D = 0001_0100

both D4 and D2 are HIGH. Since D4 has higher priority:

Y = 100

If:

D = 1111_1111

D7 has the highest priority, so:

Y = 111

Verilog Concept

The priority encoder uses casez and don't-care conditions:

casez(D)
    8'b1???????: Y = 3'b111;
    8'b01??????: Y = 3'b110;
    8'b001?????: Y = 3'b101;
    8'b0001????: Y = 3'b100;
    8'b00001???: Y = 3'b011;
    8'b000001??: Y = 3'b010;
    8'b0000001?: Y = 3'b001;
    8'b00000001: Y = 3'b000;
    default: Y = 3'b000;
endcase

The ? symbols represent don't-care conditions.

Files

priority_encoder_8_3.v
priority_encoder_8_3_tb.v
priority_encoder_8_3_waveform.png

Verilog Concepts Practiced

1. Case Statement

The case statement was used to match input combinations with their corresponding outputs.

case(D)
    8'b0000_0001: Y = 3'b000;
    8'b0000_0010: Y = 3'b001;
endcase

2. Casez Statement

casez was used in the priority encoder to allow don't-care conditions.

8'b1???????: Y = 3'b111;

This matches any input combination where D7 is HIGH.

3. Don't-Care Condition

The ? symbol allows selected input bits to be ignored during case matching.

4. Concatenation

Multiple signals can be combined using {}.

case({A2,A1,A0})

5. Combinational RTL

All circuits were designed as combinational logic using:

always @(*)

Testbench Verification

A separate testbench was created for each circuit.

The testbenches were used to:

Apply different input combinations

Verify expected outputs

Test valid combinations

Test priority behavior

Observe output changes

Generate simulation waveforms

Common testbench constructs included:

initial begin

$monitor(...)

and:

#10;

ModelSim Simulation

All RTL designs were simulated using ModelSim.

The following three designs were selected for waveform verification:

3-to-8 Decoder

8-to-3 Encoder

8-to-3 Priority Encoder

Waveform Files

decoder_3_8_waveform.png
encoder_8_3_waveform.png
priority_encoder_8_3_waveform.png

Folder Structure

Day-05/
│
├── README.md
│
├── decoder-2-to-4/
│   ├── decoder_2_4.v
│   └── decoder_2_4_tb.v
│
├── decoder-3-to-8/
│   ├── decoder_3_8.v
│   ├── decoder_3_8_tb.v
│   └── decoder_3_8_waveform.png
│
├── encoder-8-to-3/
│   ├── encoder_8_3.v
│   ├── encoder_8_3_tb.v
│   └── encoder_8_3_waveform.png
│
└── priority-encoder-8-to-3/
    ├── priority_encoder_8_3.v
    ├── priority_encoder_8_3_tb.v
    └── priority_encoder_8_3_waveform.png

Key Learning Outcomes

By completing Day 05, I learned and practiced:

Understanding decoder operation

Understanding encoder operation

Understanding priority encoder operation

Designing a 2-to-4 decoder

Designing a 3-to-8 decoder

Designing an 8-to-3 encoder

Designing an 8-to-3 priority encoder

Using case statements for combinational RTL

Using casez statements

Using don't-care conditions with ?

Understanding priority-based selection

Using concatenation in case expressions

Creating separate RTL and testbench files

Applying multiple test cases

Simulating Verilog designs using ModelSim

Verifying RTL functionality using waveforms

Tools Used

Verilog HDL

ModelSim

GitHub

Day 05 Summary

Day 05 focused on combinational circuit design using decoders, encoders, and priority encoders.

The practical workflow followed was:

Concept
   ↓
Truth Table
   ↓
RTL Design
   ↓
Testbench
   ↓
ModelSim Simulation
   ↓
Waveform Verification
   ↓
GitHub

Day 05 builds on the combinational RTL concepts learned in previous days and introduces structured use of case, casez, and don't-care condition
