module binary_to_gray_tb;
reg [3:0] B;
wire [3:0] G;

binary_to_gray dut(
.B(B),
.G(G)
);

initial begin
$monitor("time=%0t,B=%b,G=%b",$time,B,G);

B = 4'b1010;
#10;

B = 4'b1011;
#10;

B = 4'b1000;
#10;

B = 4'b0111;
#10;

$finish;
end

endmodule
