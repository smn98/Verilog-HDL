`timescale 1ns / 1ps

module d_flipflop(
    input clk,
    input d,
    output q,
    output q1
    );
	reg q,q1;
	
	always@(posedge clk) begin
		if(d == 1'b1) begin
			q = d;
			q1 = ~d;
		end
		else begin
			q = d;
			q1 = ~d;
		end
	end
	
endmodule
