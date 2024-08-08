module Instruction_Memory_tb();

reg [31:0]Instruction_address;
wire[31:0] RD;

Instruction_Memory mem(.Instruction_address(Instruction_address),.RD(RD));


initial
begin
Instruction_address=20;
#5
Instruction_address=1;
#5
Instruction_address=3;
#5
Instruction_address=15;
#5
Instruction_address=20;
#5;

end
endmodule