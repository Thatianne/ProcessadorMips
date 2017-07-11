module ALUController_TB;
	reg [5:0] funct; 
   reg [5:0] opcode;
	wire [3:0] ALUop;
	
	ALUController aluController(funct, opcode, ALUop);
	
	initial
	begin
		funct = 6'b100011;		opcode = 6'b000000; #5
		$display("Func = %x, Opcode = %x, ALUop = %x", funct, opcode,  ALUop);

		
	end
endmodule