`timescale 1ns / 1ps


module csa_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [4:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	csa uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.cin(cin), 
		.cout(cout)
	);

	initial begin
		a = 4'b1111;
		b = 4'b0010;
		cin = 0;
		#100;
        
	end
      
endmodule

