module even_odd_detector_tb;

reg [3:0] A;

wire odd;
wire even;

even_odd_detector dut(
    .A(A),
    .odd(odd),
    .even(even)
);

initial begin

    $monitor("time=%0t,A=%b,odd=%b,even=%b",
             $time,A,odd,even);

    A=4'b1001;
    #10;

    A=4'b0011;
    #10;

    A=4'b1010;
    #10;

    A=4'b1111;
    #10;

    $finish;

end

endmodule
