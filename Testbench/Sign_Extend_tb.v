module Sign_Extend_tb();
reg [31:7]instruction;
reg [1:0] ImmSrc;
wire [31:0]ImmExt;

localparam T =10;

Sign_Extend Sign_EXtend (.instruction(instruction),.ImmSrc(ImmSrc),.ImmExt(ImmExt));

initial 
begin
instruction = 32'ha15141;
ImmSrc=0;
#T
instruction = 32'ha151414;
ImmSrc=1;
#T
instruction = 32'haF514141;
ImmSrc=2;
#T
instruction = 32'ha1514141;
ImmSrc=3;
#T
instruction = 32'haabbccdd;
ImmSrc=0;
#T
instruction = 32'haabbccdd;
ImmSrc=2;
#T;
end
endmodule