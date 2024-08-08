module Data_Path_TB
();
reg clk_TB;
reg reset_TB;
reg [31:0] Instruction_TB;
reg [31:0] Read_Data_TB;
reg RegSrc_TB;
reg RegWrite_TB;
reg [1:0] ImmSrc_TB;
reg ALUSrc_TB;
reg [2:0] ALUControl_TB;
reg [1:0] ResultSrc_TB;
reg PCSrc_TB;
wire [31:0]PC_TB;
wire [31:0]ALUResult_TB;
wire [31:0]WriteData_TB;
wire Zero_TB;
localparam T =10;
Data_Path Data_Path_TB (.clk(clk_TB),.reset(reset_TB),.Instruction(Instruction_TB),.Read_Data(Read_Data_TB),.RegSrc(RegSrc_TB),.RegWrite(RegWrite_TB),.ImmSrc(ImmSrc_TB),.ALUSrc(ALUSrc_TB),.ALUControl(ALUControl_TB),.ResultSrc(ResultSrc_TB),.PCSrc(PCSrc_TB),.PC(PC_TB),.ALUResult(ALUResult_TB),.WriteData(WriteData_TB),.Zero(Zero_TB) );

always
begin
clk_TB=1'b1;
#(T/2);
clk_TB=1'b0;
#(T/2);
end

initial
begin




end

endmodule