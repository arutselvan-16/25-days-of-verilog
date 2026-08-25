module parity_generator_tb;
reg [3:0] D;
wire P;

parity_generator dut(
.D(D),
.P(P)
);

initial begin 
$monitor("time=%0t,D=%b,P=%b",$time,D,P);

D = 4'b1001;
#10;

D = 4'b0001;
#10;

D = 4'b1111;
#10;

D = 4'b1101;
#10;

$finish;
end 

endmodule
