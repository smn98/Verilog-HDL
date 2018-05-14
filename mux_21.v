`timescale 1ns / 1ps

module mux_21(
    input [1:0] i,
    input s,
    output o
    );

assign o = i[s];

endmodule
