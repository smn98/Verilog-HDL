`timescale 1ns / 1ps



module ring_counter_test;

	// Inputs
	reg rst;
	reg clk;

	// Outputs
	wire [3:0] i;

	// Instantiate the Unit Under Test (UUT)
	ring_counter uut (
		.i(i), 
		.rst(rst), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		clk = 0;
		#100;
      end
		always #5 clk = ~clk;
	
      
endmodule

