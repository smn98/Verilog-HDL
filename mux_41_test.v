`timescale 1ns / 1ps


module mux41_test;

	// Inputs
	reg [3:0] i;
	reg [1:0] s;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	mux41 uut (
		.i(i), 
		.s(s), 
		.o(o)
	);

	initial begin
	for(i = 0; i<16; i=i+1) begin
		s=2'b00; #100;
		s=2'b01; #100;
		s=2'b10; #100;
		s=2'b11; #100;
		end
	end
      
endmodule

