# Hardware Discription Language

<pre>
Describes circuits and systems in textual format like a software program.
Totally different from software.
	Gates execute at the same time, not line by line from top.
	Nothing in here is like software.
	Gates run together at the same time.
	Just like real world, not like software.

Simulation and Synthesis

	simulation = Predicts circuit behavior before fabrication 
	synthesis = Software program takes design description
		 and tries to find the equivalent circuit

Verilog
	module: A hardware component
	ports: A component’s input(s) and output(s)
	wires: Intermediate signals

Time scale ==> a delay in executing
	‘timescale (time unit)/(precision)

	Default: 1ns/100ps (0.1 ns)

Testbench
	Program written to test the circuit
	Doesn’t have ports
	Instantiates the module
	Assigns values:
		<size>’<base><value> = Ex 1`b0 == one bite with value 0
    </pre>
<img src="https://github.com/amirhnajafiz/GarbPack/blob/main/01.HDL/Tools/Dis.png" /><br />
<img src="https://github.com/amirhnajafiz/GarbPack/blob/main/01.HDL/Tools/Exp.jpg" /><br />

## Compare
<img src="https://github.com/amirhnajafiz/GarbPack/blob/main/01.HDL/Tools/PLvsHDL.png" /><br />

## Verilog
<img src="https://github.com/amirhnajafiz/GarbPack/blob/main/01.HDL/Tools/HDL.jpg" /><br />

### Example
<img src="https://github.com/amirhnajafiz/GarbPack/blob/main/01.HDL/Tools/Ex.png" /><br />
