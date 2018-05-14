`timescale 1ns / 1ps

module cla(
    input [3:0] a,
    input [3:0] b,
    output [3:0] s,
    output cout,
    input cin
    );
	 
wire [3:0]s;
wire c1,c3,c2;

full_adder f1(a[0], b[0], cin, s[0], c1), f2(a[1], b[1], c1, s[1], c2), f3(a[2], b[2], c2, s[2], c3), f4(a[3], b[3], c3, s[3], cout);

endmodule
