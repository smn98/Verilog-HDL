`timescale 1ns / 1ps


module twoscomplement_test;

	// Inputs
	reg [3:0] i;

	// Outputs
	wire [3:0] o;

	// Instantiate the Unit Under Test (UUT)
	twoscomplement uut (
		.i(i), 
		.o(o)
	);

	initial begin
		for(i = 1; i<=15; i=i+1) begin
			#100;
		end
	end
endmodule

