`timescale 1ns / 1ps

module mux41(
    input [3:0] i,
    input [1:0] s,
    output o
    );

assign o = i[s];

endmodule
