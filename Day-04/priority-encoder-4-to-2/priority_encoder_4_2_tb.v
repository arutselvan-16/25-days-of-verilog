module priority_encoder_4_2_tb;

reg D3,D2,D1,D0;

wire Y1,Y0;

priority_encoder_4_2 dut(
    .D3(D3),
    .D2(D2),
    .D1(D1),
    .D0(D0),
    .Y1(Y1),
    .Y0(Y0)
);

initial begin

    $monitor("time=%0t,D3=%b,D2=%b,D1=%b,D0=%b,Y1=%b,Y0=%b",
             $time,D3,D2,D1,D0,Y1,Y0);

    D3=0; D2=0; D1=0; D0=0;
    #10;

    D3=0; D2=0; D1=0; D0=1;
    #10;

    D3=0; D2=0; D1=1; D0=0;
    #10;

    D3=0; D2=0; D1=1; D0=1;
    #10;

    D3=0; D2=1; D1=0; D0=0;
    #10;

    D3=0; D2=1; D1=1; D0=1;
    #10;

    D3=1; D2=0; D1=0; D0=0;
    #10;

    D3=1; D2=0; D1=1; D0=1;
    #10;

    D3=1; D2=1; D1=1; D0=1;
    #10;

    $finish;

end

endmodule
