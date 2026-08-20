module decoder_3_8_tb;
reg A2,A1,A0;
wire [7:0] Y;

decoder_3_8 dut(
.A2(A2),
.A1(A1),
.A0(A0),
.Y(Y)
);

initial begin
$monitor("time=%0t,A2=%b,A1=%b,A0=%b,Y=%b", $time,A2,A1,A0,Y);

A2=0;A1=0;A0=0;
#10;

A2=0;A1=0;A0=1;
#10;

A2=0;A1=1;A0=0;
#10;

A2=0;A1=1;A0=1;
#10;

A2=1;A1=0;A0=0;
#10;

A2=1;A1=0;A0=1;
#10;

A2=1;A1=1;A0=0;
#10;

A2=1;A1=1;A0=1;
#10;

$finish;
end

endmodule
