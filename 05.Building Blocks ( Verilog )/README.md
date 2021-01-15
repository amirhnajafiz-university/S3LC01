# Building Blocks

<pre>
Building Blocks:

Tri-State:
A tri-state inverter has three outputs. The extra output calles "Enable".
In this case if Enable is 0 then its like we don't have anything at that part of circuit, so the result is UK.

Tri-State Buffer => just gives a better output, it will not change the input into anything.
Enables can also get inverters too.


Note :: The enable is not same everywhere, it has different outputs depend on the circuit and truth table.


Decoder:
Its combinational, means it has a enable part.
>> Implementing general logic
>> Making larger circuits such as Read-Only Memories 

Ex: 3:8 decoder 
	Each decoder output is a minterm.
	It changes to canonical form.
	Any combinational circuti can be constructed using decoders and or gates

> A decoder can be used to implement any combinational circuit 
    (reminder: each decoder output is a minterm).

Note => inputs/outputs can be active low
	Ex: if an input has a not gate ( Bubble in diagram ) is is active low, means it works only when it gets logic 0
	Same as output

74x139 decoder => consists of two 2to4 decoders
	:: one enable gate if not on it will give 1
74x138 decoder => is a 3 to 8 decoder 
	:: is has three enables that each should be on to work
		if not enable output is always 1
Note => large decoders use small decoders in them so we can impliment the larger decoders by small ones


Device selection:
	Normally, gate outputs cannot be tied together
	_ Have to use tri-state buffers to do that
	_ Have to make sure the buffers are not on simultaneously
	_ Can use a decoder to control the buffers
=> We knew that tri-state only powers the input, not changing anything of value.
	by using it in our circuits we can control the outputs to go in orders.


7-Segment Decoder
	7 LEDs (light emitting diodes), each one
	controlled by an input.

	Input is a 4-bit BCD code / 4 inputs (A, B, C, D).
	Output is a 7-bit code (a,b,c,d,e,f,g) that allows for the decimal equivalent to be displayed.
>> To create this decoder we need to analize 7 4-var karnugh maps for each output. Then give the inputs from 0 to 9 and see what values should
	be in karnugh map. After that we can find our circuit function based on the maps.


Encoder:
	The reverse operation of a decoder.
	Has 2^n input lines and n output lines.
	The output lines generate the binary equivalent of the input line whose value is 1.
	Simplify ==> we get inputs and we see in what inputs each output is 1, then we sum them to the value of that output.
	
Note : The previous design has a major problem:
	Only one input can be active at any given time
	If two inputs are active simultaneously, the output produces an undefined combination

Fix the problem above:
	Priority Encoder:
		Multiple asserted inputs are allowed; one has priority over all others.

In priority encoder the inputs have order with each other, means the order of I3 for ex is higher than I2 I1 I0
	so if the I3 is active, no matter what are the less order inputs are, the result or output is unique I3 situation.


Big note :: in all of out circuits from now, we have a valid signal which is different in any circuit.
	This valid signals tells us if the output we are getting in true or not. For ex if all of our inputs are 0 we are getting a 0 at the end.
	but what if we where getting non 0 inputs but the output is still 0 ?
	To seperate them from each other we create a valid signal which tells us if all of our inputs where deactivate and the answer we are getting is not valid.

An ex of priority encoder is our system cpu which decides what operations should be done in neccesury times.
==>> 74x148

</pre>

## Basics
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/05.Building%20Blocks%20(%20Verilog%20)/Tools/Def.png" />
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/05.Building%20Blocks%20(%20Verilog%20)/Tools/Def2.png" />
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/05.Building%20Blocks%20(%20Verilog%20)/Tools/Def3.png" />

### Example
<pre>
Example:  
   Module gate() 
   Wire ot0; 
   Wire ot1; 
   Wire ot2; 
   
   Reg in0,in1,in2,in3; 
   Not U1(ot0,in0); 
   Xor U2(ot1,in1,in2,in3); 
   And U3(ot2, in2,in3,in0) 

Example:  
   Module gate() 
   Wire out0; 
   Wire out1; 
   
   Reg in0,in1;
   Not U1(out0,in0); 
   Buf U2(out0,in0); 
</pre>
