module gray_to_binary_tb;
reg [3:0] G;
wire [3:0] B;

gray_to_binary dut(
.G(G),
.B(B)
);

initial begin 
$monitor("time=%0t,G=%b,B=%b",$time, G, B);

G = 4'b1010;
#10;

G = 4'b0001;
#10;

G = 4'b1001;
#10;

G = 4'b1111;
#10;

$finish;
end

endmodule
