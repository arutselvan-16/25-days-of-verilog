module decoder_2_4_tb;
reg A1,A0;
wire [3:0] Y;

decoder_2_4 dut(
.A1(A1),
.A0(A0),
.Y(Y)
);

initial begin
$monitor("time=%0t,A1=%b,A0=%b,Y=%b",$time,A1,A0,Y);

A1=0;A0=0;
#10;

A1=0;A0=1;
#10;

A1=1;A0=0;
#10;

A1=1;A0=1;
#10;

$finish;
end

endmodule
