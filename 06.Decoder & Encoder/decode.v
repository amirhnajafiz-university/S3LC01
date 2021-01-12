module decoder3to8(
    Data_in,
    Data_out
    );

    //what are the input ports and their sizes.
    input [2:0] Data_in;
    //what are the output ports and their sizes.
    output [7:0] Data_out;
    //Internal variables
    reg [7:0] Data_out;

    //Whenever there is a change in the Data_in, execute the always block.
    always @(Data_in)
    case (Data_in)   //case statement. Check all the 8 combinations.
        3'b000 : Data_out = 8'b00000001;
        3'b001 : Data_out = 8'b00000010;
        3'b010 : Data_out = 8'b00000100;
        3'b011 : Data_out = 8'b00001000;
        3'b100 : Data_out = 8'b00010000;
        3'b101 : Data_out = 8'b00100000;
        3'b110 : Data_out = 8'b01000000;
        3'b111 : Data_out = 8'b10000000;
        //To make sure that latches are not created create a default value for output.
        default : Data_out = 8'b00000000; 
    endcase
    
endmodule