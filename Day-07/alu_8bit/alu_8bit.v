module alu_8bit(
input [7:0] A,
input [7:0] B,
input [3:0] OP,
output reg [7:0] Y
);
always @(*) begin
case (OP)
4'b0000: Y = A + B;
4'b0001: Y = A - B;
4'b0010: Y = A & B;
4'b0011: Y = A | B;
4'b0100: Y = A^B;
4'b0101: Y = ~A;
4'b0110: Y = A<<1;
4'b0111: Y = A>>1;
4'b1000: begin
if(A>B)
 Y = 8'b0000_0001;
    else if (A == B)
        Y = 8'b0000_0000;
    else
        Y = 8'b1111_1111;
end
default: Y = 8'b0000_0000;
endcase
end
endmodule
