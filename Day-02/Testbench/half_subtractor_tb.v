module half_subtractor_tb;
reg A;
reg B;
wire difference;
wire borrow;

half_subtractor dut(
.A(A),
.B(B),
.difference(difference),
.borrow(borrow)
);

initial begin
    $monitor("time=%0t,A=%b,B=%b,difference=%b,borrow=%b", $time,A,B,difference,borrow);
    A=0;
    B=0;
    #10;
    A=0;
    B=1;
    #10;
    A=1;
    B=0;
    #10;
    A=1;
    B=1;
    #10;
    $finish;
end
endmodule
