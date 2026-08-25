module bcd_to_7segment(
    input [3:0] BCD,
    output reg [6:0] SEG
);

always @(*) begin
    case (BCD)
        4'b0000: SEG = 7'b1111110;
        4'b0001: SEG = 7'b0110000;
        4'b0010: SEG = 7'b1101101;
        4'b0011: SEG = 7'b1111001;
        4'b0100: SEG = 7'b0110011;
        4'b0101: SEG = 7'b1011011;
        4'b0110: SEG = 7'b1011111;
        4'b0111: SEG = 7'b1110000;
        4'b1000: SEG = 7'b1111111;
        4'b1001: SEG = 7'b1111011;
        default: SEG = 7'b0000000;
    endcase
end

endmodule
