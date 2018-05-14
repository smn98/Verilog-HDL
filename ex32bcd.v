`timescale 1ns / 1ps

module ex32bcd(
    input [3:0] e,
    output [7:0] bcd
    );

wire [3:0]b;

ex32bin b1(e[3:0], b[3:0]);

assign bcd = (b > 9)? b+6 : b;

endmodule
