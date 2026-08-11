module full_subtractor(
input A,
input B,
input Bin,
output difference,
output Bout
);
assign difference = A^B^Bin;
assign Bout = (~A & B) | (~A & Bin) | (B & Bin);
endmodule
