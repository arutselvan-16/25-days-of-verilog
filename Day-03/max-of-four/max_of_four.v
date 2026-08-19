module max_of_four(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    output reg [3:0] max_AB,
    output reg [3:0] max_ABC,
    output reg [3:0] max
);

always @(*) begin

    if (A > B)
        max_AB = A;
    else
        max_AB = B;

    if (max_AB > C)
        max_ABC = max_AB;
    else
        max_ABC = C;

    if (max_ABC > D)
        max = max_ABC;
    else
        max = D;

end

endmodule
