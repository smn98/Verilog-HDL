`timescale 1ns / 1ps

module csa(
    input [3:0] a,
    input [3:0] b,
    output [4:0] s,
    input cin,
    output cout
    );
	 
wire [4:0]s;
wire s1,s2,s3,c0,c1,c3,c2;

full_adder f1(a[0], b[0], cin, s[0], c1), f2(a[1], b[1], 0, s1, c2), f3(a[2], b[2], 0, s2, c3), f4(a[3], b[3], 0, s3, c4);
cla c_1({c4,c3,c2,c1},{0,s3,s2,s1}, s[4:1], cout, 0);

endmodule
