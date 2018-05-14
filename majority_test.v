`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:14:55 05/14/2018
// Design Name:   majority
// Module Name:   F:/xilinx programs/exam/exam/majority_test.v
// Project Name:  exam
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: majority
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module majority_test;

	// Inputs
	reg [2:0] i;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	majority uut (
		.i(i), 
		.o(o)
	);

	initial begin
		for(i = 0; i<8; i=i+1) begin
			#100;
		end

	end
      
endmodule

