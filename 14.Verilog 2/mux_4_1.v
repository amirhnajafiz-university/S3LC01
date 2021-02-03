`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:22:45 12/08/2020 
// Design Name: 
// Module Name:    mux_4_1 
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
module mux_4_1(
	input [1:0] A,
	input [1:0] B,
	input [1:0] S,
	output [3:0] O
    );
	 
	 // Holder wires
	 wire [3:0] arith_sum, arith_mult, logic_nand, logic_prime;
	 
	 // Arithmetic unit results
	 arithmetic_unit mathmatics (A, B, arith_sum, arith_mult);
	 
	 // Logic units result
	 logic_unit logics (A, B, logic_nand, logic_prime);
	 
	 // Mux holder wires
	 wire [3:0] arith_result, logic_result;
	 
	 // Choosing with s0
	 assign arith_result = S[0] ? arith_mult : arith_sum;
	 assign logic_result = S[0] ? logic_nand : logic_prime;
	 
	 // Chossing with s1
	 assign O = S[1] ? arith_result : logic_result;

endmodule
