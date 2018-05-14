`timescale 1ns / 1ps

module ex32bin(
    input [3:0] e,
    output [3:0] b
    );
	 
	 reg [3:0]b;
always@(e) begin
	if(e >= 3)
		assign b = e - 3;
	else
		assign b = 4'bz;
end
endmodule
