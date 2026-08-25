module barrel_shifter_4bit(
input [3:0] A,
input [1:0] S,
output reg [3:0] Y
);
always @(*) begin 
case(S)
2'b00: Y = A;
2'b01: Y = A>>1;
2'b10: Y = A>>2;
2'b11: Y = A>>3;
default: Y = 4'b0000;
endcase
end
endmodule
