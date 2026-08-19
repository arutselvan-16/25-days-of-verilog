module one_bit_comparator(
    input A,
    input B,
    output reg greater,
    output reg equal,
    output reg less
);

always @(*) begin
    greater = 0;
    equal = 0;
    less = 0;

    if (A > B)
        greater = 1;
    else if (A < B)
        less = 1;
    else
        equal = 1;
end

endmodule
