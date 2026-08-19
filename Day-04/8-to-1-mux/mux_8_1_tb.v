module mux_8_1_tb;

reg I0,I1,I2,I3,I4,I5,I6,I7;
reg S2,S1,S0;

wire Y;

mux_8_1 dut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .I4(I4),
    .I5(I5),
    .I6(I6),
    .I7(I7),
    .S2(S2),
    .S1(S1),
    .S0(S0),
    .Y(Y)
);

initial begin

    $monitor("time=%0t,I0=%b,I1=%b,I2=%b,I3=%b,I4=%b,I5=%b,I6=%b,I7=%b,S2=%b,S1=%b,S0=%b,Y=%b",
             $time,I0,I1,I2,I3,I4,I5,I6,I7,S2,S1,S0,Y);

    I0=0; I1=1; I2=0; I3=1;
    I4=0; I5=1; I6=0; I7=1;

    S2=0; S1=0; S0=0;
    #10;

    S2=0; S1=0; S0=1;
    #10;

    S2=0; S1=1; S0=0;
    #10;

    S2=0; S1=1; S0=1;
    #10;

    S2=1; S1=0; S0=0;
    #10;

    S2=1; S1=0; S0=1;
    #10;

    S2=1; S1=1; S0=0;
    #10;

    S2=1; S1=1; S0=1;
    #10;

    $finish;

end

endmodule
