`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:17:26 05/14/2018
// Design Name:   tristate_buffer
// Module Name:   F:/xilinx programs/exam/exam/tristate_buffer_test.v
// Project Name:  exam
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tristate_buffer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tristate_buffer_test;

	// Inputs
	reg i;
	reg cnt;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	tristate_buffer uut (
		.i(i), 
		.cnt(cnt), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		i = 0;
		cnt = 0;

		#100;
        i = 1;
		cnt = 0;

		#100;
        
		  i = 0;
		cnt = 1;

		#100;
        
		  i = 1;
		cnt = 1;

		#100;
        
		// Add stimulus here

	end
      
endmodule

