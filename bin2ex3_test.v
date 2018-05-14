`timescale 1ns / 1ps



module bin2ex3_test;

	// Inputs
	reg [2:0] b;

	// Outputs
	wire [3:0] e;

	// Instantiate the Unit Under Test (UUT)
	bin2ex3 uut (
		.b(b), 
		.e(e)
	);

	initial begin
		for(b = 0; b<8; b=b+1) begin
			#100;
		end

	end
      
endmodule

