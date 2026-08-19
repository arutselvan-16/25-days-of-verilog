module priority_encoder_4_2(
    input D3,D2,D1,D0,
    output reg Y1,Y0
);

always @(*) begin
    casez ({D3,D2,D1,D0})
        4'b1???: {Y1,Y0} = 2'b11;
        4'b01??: {Y1,Y0} = 2'b10;
        4'b001?: {Y1,Y0} = 2'b01;
        4'b0001: {Y1,Y0} = 2'b00;
        default: {Y1,Y0} = 2'b00;
    endcase
end

endmodule
