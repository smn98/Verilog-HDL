`timescale 1ns / 1ps

module tristate_buffer(i, cnt, z );
	 
input i;
input cnt;
output z;

assign z = cnt ? i : 1'bz;

endmodule
