module operator_demo(
input [3:0] a,
input [3:0] b,
output [4:0] sum,
output greater,
output [3:0] shift_result,
output [3:0] and_result
);
assign sum = a + b;
assign greater = a > b;
assign shift_result = a << 1;
assign and_result = a & b;
endmodule
