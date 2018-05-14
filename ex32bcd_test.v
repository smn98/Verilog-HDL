`timescale 1ns / 1ps

module ex32bcd_test;

	// Inputs
	reg [3:0] e;

	// Outputs
	wire [7:0] bcd;

	// Instantiate the Unit Under Test (UUT)
	ex32bcd uut (
		.e(e), 
		.bcd(bcd)
	);

	initial begin
		for(e = 0; e<16; e=e+1) begin
			#100;
		end

	end
      
endmodule

