module encoder_8_3_tb;

reg [7:0] D;
wire [2:0] Y;

encoder_8_3 dut(
    .D(D),
    .Y(Y)
);

initial begin

    $monitor("time=%0t,D=%b,Y=%b",
             $time,D,Y);

    D = 8'b0000_0001;
    #10;

    D = 8'b0000_0010;
    #10;

    D = 8'b0000_0100;
    #10;

    D = 8'b0000_1000;
    #10;

    D = 8'b0001_0000;
    #10;

    D = 8'b0010_0000;
    #10;

    D = 8'b0100_0000;
    #10;

    D = 8'b1000_0000;
    #10;

    $finish;

end

endmodule
