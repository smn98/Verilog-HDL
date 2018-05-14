`timescale 1ns / 1ps

module piso(
    input [3:0] i,
    output o,
    input rst,
    input clk,
	 input l
    );

	reg [3:0] d;
	reg o;

	initial begin
		d = 4'b0000;
	end
	always@(posedge clk, rst) begin
		if(rst == 1'b1) begin
			d = 4'b0000;
			o = 0;
		end
		else if(l == 1) begin
			d = i;
			o = d[0];
			d = d >> 1;
		end
		else if(l == 0) begin
			o = d[0];
			d = d >> 1;
		end
	end
endmodule
