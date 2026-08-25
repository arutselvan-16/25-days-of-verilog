module parity_checker(
input [3:0] D,
input P,
output reg ERROR
);
always @(*) begin
ERROR = D[3]^D[2]^D[1]^D[0]^P;
end
endmodule
