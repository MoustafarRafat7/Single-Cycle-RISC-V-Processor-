module Main_Decoder_tb();

reg  [6:0]Opcode;
wire [1:0]ALUOp;
wire [1:0]ImmSrc;
wire RegWrite;
wire ALUSrc;
wire MemWrite;
wire [1:0]ResultSrc;
wire Branch;
wire Jump;

Main_Decoder decoder(.Opcode(Opcode),.ALUOp(ALUOp),.ImmSrc(ImmSrc),.RegWrite(RegWrite),.ALUSrc(ALUSrc),. MemWrite( MemWrite),
	     .ResultSrc( ResultSrc),.Branch(Branch),.Jump(Jump));

initial
begin
Opcode=7'b0000011;
#5
Opcode=7'b0100011;
#5
Opcode=7'b0110011;
#5
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