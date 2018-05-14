`timescale 1ns / 1ps

module majority(
    input [2:0] i,
    output o
    );

assign o = (i[1] & i[2]) | (i[1] & i[0]) | (i[0] & i[2]);

endmodule
