`timescale 1ns / 1ps

module d_test;

	// Inputs
	reg clk;
	reg d;

	// Outputs
	wire q;
	wire q1;

	// Instantiate the Unit Under Test (UUT)
	d_flipflop uut (
		.clk(clk), 
		.d(d), 
		.q(q), 
		.q1(q1)
	);

	initial begin
		clk = 0;
		d = 0;

		#100;
		
		clk = 1;
		d = 1;

		#100;
		
		clk = 0;
		d = 0;

		#100;
		
		clk = 1;
		d = 0;

		#100;
		
        
		// Add stimulus here

	end
      
endmodule