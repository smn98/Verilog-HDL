`timescale 1ns / 1ps

module function1(
    input [3:0] a,
    output f
    );
reg f;

always@(a) begin
	if( a < 4 )
		f = 1;
	else
		f = 0;
end

endmodule
