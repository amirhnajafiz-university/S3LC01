reg [7:0]      addr;             // 8-bit reg variable [7, 6, 5, 4, 3, 2, 1, 0]  
addr [0] = 1;                     // assign 1 to bit 0 of addr  
addr [3] = 0;                     // assign 0 to bit 3 of addr  
addr [8] = 1;                     // illegal : bit8  does not exist in addr  

reg [31:0]    addr;  
addr [23:16] = 8'h23;     // bits 23 to 16 will be replaced by the new value 'h23 -> constant part-select.  