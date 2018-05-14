`timescale 1ns / 1ps



module ex32bin_test;

	// Inputs
	reg [3:0] e;

	// Outputs
	wire [3:0] b;

	// Instantiate the Unit Under Test (UUT)
	ex32bin uut (
		.e(e), 
		.b(b)
	);

	initial begin
		for(e = 0; e<16; e=e+1) begin
			#100;
		end

	end
      
endmodule

