`timescale 1ns / 1ps

module ram_hor(
    input [7:0] d,
    output [7:0] o,
    input [3:0] addr,
    input cs,
	 input clk,
    input rw
    );
	 
ram1 r1(d[3:0], addr, cs, rw,clk, o[3:0]),  r2(d[7:4], addr, cs, rw, clk, o[7:4]);

endmodule
