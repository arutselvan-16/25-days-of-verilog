module max_of_four_tb;

reg [3:0] A, B, C, D;

wire [3:0] max_AB;
wire [3:0] max_ABC;
wire [3:0] max;

max_of_four dut(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .max(max),
    .max_AB(max_AB),
    .max_ABC(max_ABC)
);

initial begin

    $monitor("time=%0t,A=%b,B=%b,C=%b,D=%b,max=%b,max_AB=%b,max_ABC=%b",
             $time,A,B,C,D,max,max_AB,max_ABC);

    A=4'b0010;
    B=4'b1010;
    C=4'b1000;
    D=4'b1101;
    #10;

    A=4'b1111;
    B=4'b0000;
    C=4'b0111;
    D=4'b1011;
    #10;

    A=4'b0101;
    B=4'b0011;
    C=4'b1111;
    D=4'b1011;
    #10;

    $finish;

end

endmodule
