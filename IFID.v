module IFID(clock, flush, write, pc, instruction, pcReg, instructionReg); 
	     
	input clock, flush, write; 
	input [31:0] pc, instruction;
	output [31:0] instructionReg, pcReg; 
	reg [31:0] instructionReg, pcReg; 
	    
	initial begin 
		instructionReg = 0; 
		pcReg = 0; 
	end 
	
	always@(posedge clock) 
	begin 
		if(flush) 
		begin 
		   instructionReg <= 0; 
		   pcReg <=0; 
		end 
		else if(write) 
		begin 
		   instructionReg <= instruction; 
		   pcReg <= pc; 
		end 
	end 
endmodule