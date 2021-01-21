# Verilog Part 1

<pre>
The and , or gates in verilog act with some rules => check ppx

In verilog lang , we can create vector insted of signals.
	Ex: output [0:3] D;
	      wire [7:0] SUM;
And we can use indexing to them and slicing them.

Verilog also have the keys bufif1 and notif0,
which are tri-state buffers and inverters.

Also to give an output to multi gates, you can define a 'tri' output which will let you to connect more than one outputs to it.
</pre>

### Example
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/11.Verilog%201/Tools/Ex1.png" width=600 />

### Code Example
```verilog
reg [7:0]      addr;             // 8-bit reg variable [7, 6, 5, 4, 3, 2, 1, 0]  
addr [0] = 1;                     // assign 1 to bit 0 of addr  
addr [3] = 0;                     // assign 0 to bit 3 of addr  
addr [8] = 1;                     // illegal : bit8  does not exist in addr  

reg [31:0]    addr;  
addr [23:16] = 8'h23;     // bits 23 to 16 will be replaced by the new value 'h23 -> constant part-select.  
```
