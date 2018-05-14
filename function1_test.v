`timescale 1ns / 1ps



module function1_test;

	// Inputs
	reg [3:0] a;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	function1 uut (
		.a(a), 
		.f(f)
	);
	initial begin
		for(a = 1; a<=15; a=a+1) begin
			#100;
		end
	end
      
endmodule

