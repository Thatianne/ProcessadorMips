module MemInstruction_TB();

reg [31:0] pc; 
wire [31:0] instruction; 

MemInstruction mem(pc, instruction);

initial
begin
	// Colocando instruçoes na memória
	mem.regInstruction[0] = 32'h8c030000;
	mem.regInstruction[1] = 32'h8c040001;
	mem.regInstruction[2] = 32'h8c050002;
	mem.regInstruction[3] = 32'h8c010002;

	//acessando os endereços preenchidos

	pc = 32'd0;			#5
	$display("PC = %x, Instruction = %x", pc, instruction);
	
	pc = 32'd1;			#5
	$display("PC = %x, Instruction = %x", pc, instruction);
	
	pc = 32'd2;			#5
	$display("PC = %x, Instruction = %x", pc, instruction);
	
	pc = 32'd3;			#5
	$display("PC = %x, Instruction = %x", pc, instruction);
	
	pc = 32'd4;		#5
	$display("PC = %x, Instruction = %x", pc, instruction);
end

endmodule