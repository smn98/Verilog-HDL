`timescale 1ns / 1ps


module cla_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	cla uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.cout(cout), 
		.cin(cin)
	);

	initial begin
		a = 4'b1111;
		b = 4'b0010;
		cin = 0;
		#100;
        
	end
      
endmodule

