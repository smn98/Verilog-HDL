`timescale 1ns / 1ps

module siso(
    input i,
    output o,
    input rst,
	 input clk
    );

	reg [3:0] d;
	reg o;

	initial begin
		d = 4'b0000;
	end

	always@(posedge clk) begin
		if(rst == 1'b1) begin
			d = 4'b0000;
			o = 0;
		end
		else begin
			o = d[0];
			d = d >> 1;
			d[3] = i;
		end
	end

endmodule
