module even_odd_detector(
    input [3:0] A,
    output reg even,
    output reg odd
);

always @(*) begin

    even = 0;
    odd = 0;

    if (A[0] == 0)
        even = 1;
    else
        odd = 1;

end

endmodule
