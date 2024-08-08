module Control_Unit_tb();
reg[6:0]Opcode;
reg [2:0]funct3;
reg funct7;
reg zero;
wire [2:0]ALUControl;
wire [1:0]ImmSrc;
wire  RegWrite;
wire  ALUSrc;
wire  MemWrite;
wire [1:0]ResultSrc;
wire Branch;
wire Jump;
wire PCSrc;

Control_Unit Control_Unit_module(.Opcode(Opcode),.funct3(funct3),.funct7(funct7),.zero(zero),.ALUControl(ALUControl),
				 .ImmSrc(ImmSrc),.RegWrite(RegWrite),.ALUSrc(ALUSrc),.MemWrite(MemWrite),.ResultSrc
(ResultSrc),.Branch(Branch),.Jump(Jump),.PCSrc(PCSrc));

initial 
begin
Opcode=7'b0000011;
funct3=3'b101;
funct7=1;
zero=0;
#5
Opcode=7'b0100011;
funct3=3'b110;
funct7=1;
#5
Opcode=7'b0110011;
#5
funct3=3'b111;
funct7=0;
Opcode=7'b1100011;
#5
Opcode=7'b0010011;
#5
Opcode=7'b1101111;
#5
Opcode=7'b1111111;
#5;
end
endmodule
