`timescale 1ns / 1ps

module decoder(
    input [2:0] s,
    output [7:0] o
    );

assign o = 128>>s;

endmodule
