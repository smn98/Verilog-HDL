`timescale 1ns / 1ps



module jk_flipflop_test;

	// Inputs
	reg j;
	reg k;
	reg clk;

	// Outputs
	wire q;
	wire q1;

	// Instantiate the Unit Under Test (UUT)
	jk_flipflop uut (
		.j(j), 
		.k(k), 
		.q(q), 
		.q1(q1), 
		.clk(clk)
	);

	initial begin
		j = 0;
		k = 0;
		clk = 0;

		#100;
		j = 1;
		k = 0;
		clk = 1;

		#100;
		j = 1;
		k = 1;
		clk = 1;

		#100;
		j = 0;
		k = 0;
		clk = 1;

		#100;
		j = 0;
		k = 1;
		clk = 1;

		#100;
		j = 0;
		k = 0;
		clk = 1;

		#100;
        

	end
      
endmodule

