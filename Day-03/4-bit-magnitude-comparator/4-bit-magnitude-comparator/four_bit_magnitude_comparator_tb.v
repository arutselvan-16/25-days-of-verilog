module four_bit_magnitude_comparator_tb;

reg [3:0] A;
reg [3:0] B;

wire greater;
wire less;
wire equal;

four_bit_magnitude_comparator dut(
    .A(A),
    .B(B),
    .greater(greater),
    .less(less),
    .equal(equal)
);

initial begin

    $monitor("time=%0t,A=%b,B=%b,greater=%b,less=%b,equal=%b",
             $time,A,B,greater,less,equal);

    A=4'b0010;
    B=4'b0001;
    #10;

    A=4'b1101;
    B=4'b1101;
    #10;

    A=4'b1001;
    B=4'b0110;
    #10;

    A=4'b0001;
    B=4'b1111;
    #10;

    $finish;

end

endmodule
