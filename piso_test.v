`timescale 1ns / 1ps


module piso_test;

	// Inputs
	reg [3:0] i;
	reg rst;
	reg clk;
	reg l;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	piso uut (
		.i(i), 
		.o(o), 
		.rst(rst), 
		.clk(clk),
		.l(l)
	);

	initial begin
		clk = 0; #10; i = 4'b1010; clk = 1;l=1;
		rst = 0;	#10;
		clk = 0; #10; clk = 1; l = 0;	#10;
		clk = 0;	#10; clk = 1; l = 0;	#10;
		clk = 0;	#10; clk = 1; l = 0;	#10;
		clk = 0;	#10; clk = 1; l = 0;

	end
      
endmodule

