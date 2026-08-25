module parity_checker_tb;
reg [3:0] D;
reg P;
wire ERROR;

parity_checker dut(
.D(D),
.P(P),
.ERROR(ERROR)
);

initial begin 
$monitor("time=%0t,D=%b,P=%b,ERROR=%b", $time, D, P, ERROR);

D = 4'b1010; P = 1;
#10;

D = 4'b1000; P = 1;
#10;

D = 4'b0011; P = 0;
#10;

D = 4'b1001; P = 1;
#10;

$finish;
end

endmodule
