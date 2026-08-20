module priority_encoder_8_3_tb;

reg [7:0] D;
wire [2:0] Y;

priority_encoder_8_3 dut(
    .D(D),
    .Y(Y)
);

initial begin

    $monitor("time=%0t,D=%b,Y=%b",
             $time,D,Y);

    D = 8'b0000_0000;
    #10;

    D = 8'b0000_0001;
    #10;

    D = 8'b0000_1010;
    #10;

    D = 8'b0001_0100;
    #10;

    D = 8'b0011_0000;
    #10;

    D = 8'b0101_0000;
    #10;

    D = 8'b1010_0000;
    #10;

    D = 8'b1111_1111;
    #10;

    $finish;

end

endmodule
