module one_bit_comparator_tb;

reg A;
reg B;

wire greater;
wire equal;
wire less;

one_bit_comparator dut(
    .A(A),
    .B(B),
    .greater(greater),
    .equal(equal),
    .less(less)
);

initial begin

    $monitor("time=%0t,A=%b,B=%b,greater=%b,equal=%b,less=%b",
             $time,A,B,greater,equal,less);

    A=0;
    B=0;
    #10;

    A=0;
    B=1;
    #10;

    A=1;
    B=0;
    #10;

    A=1;
    B=1;
    #10;

    $finish;

end

endmodule
