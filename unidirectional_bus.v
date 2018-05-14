`timescale 1ns / 1ps

module unidirectional_bus(i, cnt, z );

input [3:0] i;
input cnt;
output [3:0] z;

tristate_buffer t0(i[0], cnt, z[0]), t1(i[1], cnt, z[1]), t2(i[2], cnt, z[2]), t3(i[3], cnt, z[3]);

endmodule
