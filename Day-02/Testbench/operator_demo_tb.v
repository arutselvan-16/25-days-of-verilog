module operator_demo_tb;
reg [3:0] a;
reg [3:0] b;
wire [4:0] sum;
wire greater;
wire [3:0] shift_result;
wire [3:0] and_result;

operator_demo dut(
.a(a),
.b(b),
.sum(sum),
.greater(greater),
.shift_result(shift_result),
.and_result(and_result)
);

initial begin
    $monitor("time=%0t,a=%b,b=%b,sum=%b,greater=%b,shift_result=%b,and_result=%b",
             $time,a,b,sum,greater,shift_result,and_result);
    a = 4'b1111;
    b = 4'b0001;
    #10;
    a = 4'b1010;
    b = 4'b1110;
    #10;
    a = 4'b0101;
    b = 4'b0011;
    #10;
    a = 4'b0001;
    b = 4'b1000;
    #10;
    a = 4'b0100;
    b = 4'b0100;
    #10;
    $finish;
end
endmodule
