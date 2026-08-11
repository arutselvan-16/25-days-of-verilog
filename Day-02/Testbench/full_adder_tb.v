module full_adder_tb;
reg A;
reg B;
reg Cin;
wire sum;
wire carry;

full_adder dut(
.A(A),
.B(B),
.Cin(Cin),
.sum(sum),
.carry(carry)
);

initial begin
    $monitor("time=%0t,A=%b,B=%b,Cin=%b,sum=%b,carry=%b", $time,A,B,Cin,sum,carry);
    A=0;
    B=0;
    Cin=0;
    #10;
    A=0;
    B=0;
    Cin=1;
    #10;
    A=0;
    B=1;
    Cin=0;
    #10;
    A=0;
    B=1;
    Cin=1;
    #10;
    A=1;
    B=0;
    Cin=0;
    #10;
    A=1;
    B=0;
    Cin=1;
    #10;
    A=1;
    B=1;
    Cin=0;
    #10;
    A=1;
    B=1;
    Cin=1;
    #10;
    $finish;
end
endmodule
