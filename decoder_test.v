`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:31:39 05/14/2018
// Design Name:   decoder
// Module Name:   F:/xilinx programs/exam/exam/decoder_test.v
// Project Name:  exam
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_test;

	// Inputs
	reg [2:0] s;

	// Outputs
	wire [7:0] o;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.s(s), 
		.o(o)
	);

	initial begin
		for(s = 0; s<8; s=s+1) begin
			#100;
		end
	end
      
endmodule

