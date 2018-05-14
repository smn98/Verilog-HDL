`timescale 1ns / 1ps

module twoscomplement(
    input [3:0] i,
    output [3:0] o
    );

assign o = (~i) + 1'b1;

endmodule
