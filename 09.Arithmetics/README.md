# Arithmetics

<pre>
In each computer we have arithmetics circuits to do operations of mathmaticals.

Comparators:
	Equality decoder:
		Base of their work is with XNOR gates. ( cause if two inputs are the same it give us 1 )
		To check equality of two n-bits numbers we give both bits in same place to XNOR and then we POS the outputs.
	A [ 3....0 ] => A is a 4 bit vector not a signal
	B [ 3....0 ] 
	XNOR ( A[0], B[0] ) and XNOR ( A[1], B[1] ) .....

4-bit magnitude comparator:
	This magnitude decoder compars the bits from left to find the greater number.
	It will check the equality first, after that it will check if A > B, if B > A it will simply give output that A_LT_B or in opposite A_GT_B, and if they were equal A_EQ_B.

Diagram:
	A[3...0] B[3...0] => E decoder => Are equal => A_EQ_B
			             => Not equal => M decoder => A[3] > B[3] => A_GT_B
						     => A[3] == B[3] => A[2] > B[2] => A_GT_B
							              => A[2] == B[2] => .....
	if it reaches the end then B > A so it will give A_LT_B

To check if A > B in circuit we have :
	1. A[3] , B[3] xnor => not equal => return A[3]B[3]` => if 0 then B is higher if 1 then A is higher
		             => equal => xnor(A[3], B[3]) and ( compare rest ... )

TLL ( 74x85 ):
	is just the M decoder only with three new inputs to compare more than 4 bits numbers.
	base work is to seperate the n-bit number in to 4 bits from right and give each 4 bits to a M decoder.
	the paiority is with left M decoder, so if the first part was equal it goes to second 4 bits and ..... .
	so we give the first 4 bits and input of 010 to three new inputs ( LT EQ GT ) and connect the outputs to next three inputs.
	Just with this rule :
		if (A>B) lt=0, eq=0, gt=1 => output to other M decoder 3 new inputs
		if (A<B) lt=1, eq=0, gt=0
		if (A=B) lt=l, eq=e, gt=g => just gives the inputs result to output result
TTL 74x682 => 8 bit comparator


Maximum finder >> if we connect two numbers and the g_t result to a 2:1 mux with 1 controler we have a maximum finder :)
</pre>

### Example
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/09.Arithmetics/Tools/Ex1.png" width=600 />
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/09.Arithmetics/Tools/Ex11.png" width=600 />
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/09.Arithmetics/Tools/Ex12.png" width=600 />
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/09.Arithmetics/Tools/Ex2.png" width=600 />

### Verilog definition
```verilog
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
```
