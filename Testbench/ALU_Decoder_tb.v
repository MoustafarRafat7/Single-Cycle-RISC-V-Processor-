module  ALU_Decoder_tb();
reg [1:0]ALUOp;
reg [2:0]funct3;
reg funct7;
reg op5;
wire [2:0]ALUControl;

ALU_Decoder alu(.ALUOp(ALUOp),.funct3(funct3),.funct7(funct7),.op5(op5),.ALUControl(ALUControl));

initial
begin
ALUOp=2'b00;
#5
ALUOp=2'b01;
#5
ALUOp=2'b10;
funct3=3'b000;
#5
op5=0;
funct7=0;
#5
funct7=1;
#5
funct7=0;
op5=1;
#5
funct7=1;
#5
funct3=3'b101;
#5
funct3=3'b110;
#5
funct3=3'b111;
#5;
end
endmodule
