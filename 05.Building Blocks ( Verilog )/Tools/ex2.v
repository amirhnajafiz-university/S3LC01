Example: 
   Wire [msb:lsb] wire_variable_list; 
   Wirec // simple wire 
   Wand d; 
   
   Assign d = a; // value of d is the logical AND of 
   Assign d = b; // a and b 
   Wire [9:0] A; // a cable (vector) of 10 wires. 
   
   Wand [msb:lsb] wand_variable_list; 
   Wor [msb:lsb] wor_variable_list; 
   Tri [msb:lsb] tri_variable_list; 

Module sample(a, c, b, d);  
Input c;   // An input where wire is used. 

Output a, b;  // Two outputs where wire is used. 
Output [2:0] d;  /* A three-bit output. One must declare type in a separate statement. */ 
reg [1:0] a;  // The above ‘a’ port is for declaration in reg.