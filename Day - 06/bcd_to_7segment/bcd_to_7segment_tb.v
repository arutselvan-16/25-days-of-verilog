module bcd_to_7segment_tb;

reg [3:0] BCD;
wire [6:0] SEG;

bcd_to_7segment dut(
    .BCD(BCD),
    .SEG(SEG)
);

initial begin

    $monitor("time=%0t,BCD=%b,SEG=%b",
             $time,BCD,SEG);

    BCD = 4'b0000;
    #10;

    BCD = 4'b0001;
    #10;

    BCD = 4'b0010;
    #10;

    BCD = 4'b0011;
    #10;

    BCD = 4'b0100;
    #10;

    BCD = 4'b0101;
    #10;

    BCD = 4'b0110;
    #10;

    BCD = 4'b0111;
    #10;

    BCD = 4'b1000;
    #10;

    BCD = 4'b1001;
    #10;

    BCD = 4'b1010;
    #10;

    BCD = 4'b1111;
    #10;

    $finish;

end

endmodule
