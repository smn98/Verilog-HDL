`timescale 1ns / 1ps

module full_adder(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
assign s = a ^ b ^ cin;
assign cout = (a & b) | (cin & b) | (a & cin);
endmodule
