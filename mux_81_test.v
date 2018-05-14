`timescale 1ns / 1ps



module mux_81_test;

	// Inputs
	reg [7:0] i;
	reg [2:0] s;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	mux_81 uut (
		.i(i), 
		.s(s), 
		.o(o)
	);

	initial begin
		for(i = 0; i < 256; ) begin
			for(s = 0; s < 8; s=s+1) begin
				#100; 
			end
			i=i+1;
		end
	end
      
endmodule

