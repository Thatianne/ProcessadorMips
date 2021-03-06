module MemInstruction(pc,instruction); 
    
    input [31:0] pc; 
    output [31:0] instruction; 
    reg [31:0] regInstruction[511:0];//32 32-bit register 
    
    assign instruction = regInstruction[pc]; //assigns output to instruction 
endmodule 