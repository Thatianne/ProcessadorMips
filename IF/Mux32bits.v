module Mux32bits(select, pc4 , branch, out);
input select; 
input [31:0] pc4, branch; 
output reg [31:0] out; 

always@(select, pc4 , branch) 
begin 
  case(select) 
      1'b0: 
        out <= pc4; 
      1'b1: 
        out <= branch; 
  endcase 
end 
endmodule 