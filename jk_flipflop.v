`timescale 1ns / 1ps

module jk_flipflop(
    input j,
    input k,
    output q,
    output q1,
    input clk
    );
	 
	reg q,q1;
	
	initial begin
		q = 1'b0;
		q1 = 1'b1;
	end

	always@(posedge clk,j,k) begin
		case({j, k})
			{1'b0, 1'b1}: begin q = 1'b0; q1 = 1'b1; end
			{1'b1, 1'b0}: begin q = 1'b1; q1 = 1'b0; end
			{1'b1, 1'b1}: begin q = ~q; q1 = ~q1; end
		endcase
	end
endmodule
