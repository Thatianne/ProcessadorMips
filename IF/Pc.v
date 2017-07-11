module Pc(nextPc, pcWrite, currentPc);

input [31:0] nextPc;
input pcWrite;

output reg [31:0] currentPc;

always@(*)
begin
	if(pcWrite)
	begin
		currentPc = nextPc;
	end
end
endmodule