module mux_2_1(
    input I0,I1,
    input S,
    output reg Y
);

always @(*) begin
    case (S)
        1'b0: Y = I0;
        1'b1: Y = I1;
        default: Y = 0;
    endcase
end

endmodule
