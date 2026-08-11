module full_subtractor_tb;
reg A;
reg B;
reg Bin;
wire difference;
wire Bout;

full_subtractor dut(
.A(A),
.B(B),
.Bin(Bin),
.difference(difference),
.Bout(Bout)
);

initial begin
    $monitor("time=%0t,A=%b,B=%b,Bin=%b,difference=%b,Bout=%b",$time,A,B,Bin,difference,Bout);
    A=0;
    B=0;
    Bin=0;
    #10;
    A=0;
    B=0;
    Bin=1;
    #10;
    A=0;
    B=1;
    Bin=0;
    #10;
    A=0;
    B=1;
    Bin=1;
    #10;
    A=1;
    B=0;
    Bin=0;
    #10;
    A=1;
    B=0;
    Bin=1;
    #10;
    A=1;
    B=1;
    Bin=0;
    #10;
    A=1;
    B=1;
    Bin=1;
    #10;
    $finish;
end
endmodule
