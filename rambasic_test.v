`timescale 1ns / 1ps


module ram1_test;

	// Inputs
	reg [3:0] d;
	reg [3:0] addr;
	reg rw;
	reg cs;
	reg clk;
	
	// Outputs
	wire [3:0] o;

	// Instantiate the Unit Under Test (UUT)
	ram1 uut (
		.d(d), 
		.addr(addr), 
		.cs(cs), 
		.rw(rw), 
		.clk(clk),
		.o(o)
	);

	initial begin
		clk = 0;
		#10;
		d = 8'b11111;
		addr = 4'b1111;
		rw = 0;
		cs = 1;
 		clk = 1;
		#10;
		
		clk = 0;
		#10;
		d = 8'b00000;
		addr = 4'b0000;
		rw = 0;
		cs = 1;
 		clk = 1;
		#10;
		
		clk = 0;
		#10;
		addr = 4'b1111;
		rw = 1;
		cs = 1;
 		clk = 1;
		#10;
		
		clk = 0;
		#10;
		addr = 4'b0000;
		rw = 1;
		cs = 1;
 		clk = 1;
		#10;
	end
      
endmodule

