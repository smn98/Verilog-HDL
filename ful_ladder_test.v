`timescale 1ns / 1ps

module ful_ladder_test;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 1;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

