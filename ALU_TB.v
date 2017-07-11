module ALU_TB;
	reg [31:0] DataA, DataB;
	reg [3:0] ALUCon;
	wire [31:0] result;
	
	ALU alu(ALUCon, DataA, DataB, result);
	
	initial
	begin
		ALUCon = 4'b0010;		DataA = 32'd2;		DataB = 32'd1; #5
		$display("A = %x, B = %x, result = %x", DataA, DataB,  result);
		
		ALUCon = 4'b0010;		DataA = 32'd2;		DataB = 32'd1; #5
		$display("A = %x, B = %x, result = %x", DataA, DataB,  result);
		
	end
endmodule