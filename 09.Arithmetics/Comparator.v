`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:04 11/28/2020 
// Design Name: 
// Module Name:    Comparator_8_bits 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Comparator_8_bits(
	input [7:0] A,
	input [7:0] B,
	input l,
	input e,
	input g,
	output lt,
	output gt,
	output eq
    );
	 
	 wire [2:0] extra_A, extra_B;
	 
	 assign extra_A = { A[7], A[7:6] };
	 assign extra_B = { B[7], B[7:6] };
	 
	 wire [2:0] c1, c2;
	 
	 Comparator_3_bits
		first_3_bits (A[2:0], B[2:0], l, e, g, c1[2], c1[1], c1[0]),
		second_3_bits (A[5:3], B[5:3], c1[2], c1[1], c1[0], c2[2], c2[1], c2[0]),
		final_3_bits (extra_A, extra_B, c2[2], c2[1], c2[0], lt, eq, gt);
		

endmodule