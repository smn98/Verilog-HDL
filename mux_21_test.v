`timescale 1ns / 1ps


module mux_21_test;

	// Inputs
	reg [1:0] i;
	reg s;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	mux_21 uut (
		.i(i), 
		.s(s), 
		.o(o)
	);

	initial begin
		for(i = 1; i<4; i=i+1) begin
		s=1'b0; #100;
		s=1'b1; #100;
		end
	end
      
endmodule

