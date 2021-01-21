# Multiplexer

<pre>
Multiplexer (Selector) 
- 2^n data inputs
- n control inputs 
- 1 output 
- Described as 2n:1 
Is used to connect only one of 2^n inputs to a single output at a given time.
The control signal pattern forms the binary index of the input connected to the output.
Called “MUX” for brevity.

Basically the mux is just a selector that works by its controllers.

Large muxes have the design to be impliment by smaller muxes.


To chose multi signals we use multimuxes.
The diagram is just like muxes, but the connections are in a way that multi signals are choosed for 
the results.

Adder is what the gate named for this operation.

The multimux is like this:
	        ----------------	----------------
  input =	| x1 x2 x3 x4 |	   | y1 y2 y3 y4 |
	        ----------------	----------------
		       mux
		        ----------------
	 output =	| z1 z2 z3 z4 |
		        ----------------
	So the output is neither x1..x4 or y1..y4

General Logic by MUX:
Any Boolean function of n variables can be implemented using a 2^n-1:1 multiplexer.
- n-1 inputs go to the control lines directly
- One input is used to appropriately determine the output

>> The choice of the singled-out input doesn’t change the functionality but it affects the complexity.
>> MUXes can only implement single-output functions.
</pre>

<pre>
In electronics, a multiplexer (or mux; spelled sometimes as multiplexor), also known as a data selector, 
is a device that selects between several analog or digital input signals and forwards the selected input to a single output line.
[1] The selection is directed a separate set of digital inputs known as select lines. 
A multiplexer of 2 n {\displaystyle 2^{n}} 2^{n} inputs has n {\displaystyle n} n select lines, which are used to select which input line to send to the output.
[2] A multiplexer makes it possible for several input signals to share one device or resource, 
for example, one analog-to-digital converter or one communications transmission medium, instead of having one device per input signal. 
Multiplexers can also be used to implement Boolean functions of multiple variables.

Conversely, a demultiplexer (or demux) is a device taking a single input and selecting signals of the output of the compatible mux, 
which is connected to the single input, and a shared selection line. A multiplexer is often used with a complementary demultiplexer on the receiving end.[1] 
</pre>

### Verilog example

```verilog
module m41(out, a, b, c, d, s0, s1);

output out;
input a, b, c, d, s0, s1;
wire sobar, s1bar, T1, T2, T3, T4;

not (s0bar, s0), (s1bar, s1);
and (T1, a, s0bar, s1bar), (T2, b, s0bar, s1),(T3, c, s0, s1bar), (T4, d, s0, s1);
or(out, T1, T2, T3, T4);

endmodule
```


## Mux v.s. Decoder
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/07.Mux/Tools/Difference.png" width=1200 />

## Examples
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/07.Mux/Tools/ex1.png" width=700 />
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/07.Mux/Tools/ex2.png" width=700 />
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/07.Mux/Tools/ex3.png" width=700 />
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/07.Mux/Tools/ex4.png" width=700 />
