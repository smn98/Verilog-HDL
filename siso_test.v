`timescale 1ns / 1ps


module siso_test;

	// Inputs
	reg i;
	reg rst;
	reg clk;
	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	siso uut (
		.i(i), 
		.o(o), 
		.rst(rst),
		.clk(clk)
	);

	initial begin
		
		clk = 0; #10; i = 1; clk = 1;
		rst = 0;	#10;
		clk = 0; #10; i = 0; clk = 1;	#10;
		clk = 0;	#10; i = 1;	clk = 1;	#10;
		clk = 0;	#10; i = 0;	clk = 1;	#10;
		clk = 0;	#10; i = 1;	clk = 1;
		
	end
      
endmodule

