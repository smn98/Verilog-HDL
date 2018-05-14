`timescale 1ns / 1ps

module ram1(
    input [3:0] d,
    input [3:0] addr,
    input cs,
    input rw,
	 input clk,
    output [3:0] o
    );
	 
	reg [3:0] ram [31:0];
	reg [3:0]o;
	
	always@(posedge clk) begin
		if(rw == 0 && cs == 1) begin
			ram[addr] <= d;
		end
		else if( rw == 1 && cs ==1)
			o <= ram[addr];
	end

endmodule
