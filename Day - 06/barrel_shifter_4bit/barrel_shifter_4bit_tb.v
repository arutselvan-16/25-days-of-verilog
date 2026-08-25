module barrel_shifter_4bit_tb;

reg [3:0] A;
reg [1:0] S;
wire [3:0] Y;

barrel_shifter_4bit dut(
    .A(A),
    .S(S),
    .Y(Y)
);

initial begin

    $monitor("time=%0t,A=%b,S=%b,Y=%b",
             $time,A,S,Y);

    A = 4'b1011;
    S = 2'b00;
    #10;

    S = 2'b01;
    #10;

    S = 2'b10;
    #10;

    S = 2'b11;
    #10;

    A = 4'b1101;
    S = 2'b00;
    #10;

    S = 2'b01;
    #10;

    S = 2'b10;
    #10;

    S = 2'b11;
    #10;

    $finish;

end

endmodule
