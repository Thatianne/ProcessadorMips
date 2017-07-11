module IF(clock, addrBranch, isBranch, pcWrite, pc4, instruction);
// entradas: endereço branch, select endereço, pcWrite, é branch,
// saída: instruções, endereço +4
input clock;
input [31:0] addrBranch;
input isBranch; // vem da and (branch ou pc+4)
input pcWrite; // vem do hazard
output reg [31:0] pc4;
output wire [31:0] instruction;

wire [31:0] nextPc;
wire [31:0] currentPc;

Mux32bits mux (isBranch, pc4, addrBranch, nextPc);
Pc pc (nextPc, pcWrite, currentPc);

MemInstruction mem(currentPc, instruction);

always@(posedge clock)
begin
	pc4 = currentPc + 1'b1; // +4 no mips
end

endmodule