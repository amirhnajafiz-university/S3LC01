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