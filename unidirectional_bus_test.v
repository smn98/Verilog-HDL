`timescale 1ns / 1ps

module unidirectional_bus_test;

	// Inputs
	reg [3:0] i;
	reg cnt;
	wire [3:0] z;

	// Instantiate the Unit Under Test (UUT)
	unidirectional_bus uut (
		.i(i), 
		.cnt(cnt), 
		.z(z)
	);

	initial begin
		i = 4'b0000;
		cnt = 1;
		#100;
		
		i = 4'b0011;
		cnt = 1;
		#100;
		
		i = 4'b1010;
		cnt = 1;
		#100;
		
		i = 4'b1110;
		cnt = 0;
		#100;
		
		i = 4'b1100;
		cnt = 0;
		#100;

	end
      
endmodule

