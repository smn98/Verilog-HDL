`timescale 1ns / 1ps

module mux_81(
    input [7:0] i,
    input [2:0] s,
    output o
    );

wire [1:0]o1;

mux41 m1(i[3:0],s[1:0],o1[0]), m2(i[7:4],s[1:0],o1[1]);
mux_21  m3(o1[1:0],s[2],o);

endmodule
