`timescale 1ns / 1ps



module ram_hor_test;

	reg [7:0] d;
	reg [3:0] addr;
	reg cs;
	reg rw;
	reg clk;

	wire [7:0] o;

	ram_hor uut (
		.d(d), 
		.o(o), 
		.addr(addr), 
		.cs(cs),
		.clk(clk),
		.rw(rw)
	);

	initial begin

	clk = 0;
		#10;
		d = 8'b111111111;
		addr = 4'b1111;
		rw = 0;
		cs = 1;
 		clk = 1;
		#10;
		
		clk = 0;
		#10;
		d = 8'b000000000;
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

