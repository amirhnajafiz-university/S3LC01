# Global Gates

<pre>
Implemention by NAND gates only:
- Universal gate
- Can replace gates by equivalent NAND circuit.

Demorgan law :
	 (a + b)’ = a’ b’        (a b)’ = a’ + b’
	 a + b = (a’ b’)’       (a b) = (a’ + b’)’

Implements:
	NAND 
		 (a . a)’ = a’
	NOR
		(a + a)’ = a’

Finding NAND-only Implementation:
	1st step: Find Sum-of Product form
	2nd step: Add double inverters
	3rd step: Identify equivalent NANDs

NOR-Only Implementation:
	1st step: Find Product-of Sums form
	2nd step: Add double inverters
	3rd step: Identify equivalent NORs
</pre>

## Full Explain
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/03.Global%20Gates/Tools/Exp.png" width=500 /><br />
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/03.Global%20Gates/Tools/convert.jpg" width=500 /><br />
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/03.Global%20Gates/Tools/def1.png" width=500 /><br />
<img src="https://github.com/amirhnajafiz/LogicCircuitsForLearn/blob/main/03.Global%20Gates/Tools/def2.png" width=500 /><br />
