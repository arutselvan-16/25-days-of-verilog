module parity_generator(
input [3:0] D,
output reg P
);
always @(*) begin
P = D[3]^D[2]^D[1]^D[0];
end
endmodule
