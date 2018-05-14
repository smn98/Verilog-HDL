`timescale 1ns / 1ps

module johnson_counter_test;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] i;

	// Instantiate the Unit Under Test (UUT)
	johnson_counter uut (
		.i(i), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #10 clk = ~clk;
      
endmodule

