`timescale 1ns / 1ps

module alu_1_test;

	// Inputs

	reg [3:0] a;
	reg [3:0] b;
	reg [2:0] s;

	wire [7:0] y;
	
	// Instantiate the Unit Under Test (UUT)
	alu_1 uut (
		.y(y), 
		.a(a), 
		.b(b), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 4'b0110;
		b = 4'b0010;
		for(s = 0; s < 8; s = s + 1)
			#100;
	end
      
endmodule

