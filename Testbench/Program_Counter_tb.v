module Program_Counter_tb();
reg[31:0]PCNext;
reg clk;
reg reset;
wire [31:0]PC;
localparam T=10;

Program_Counter pc(.PC(PC),.PCNext(PCNext),.clk(clk),.reset(reset));
always
begin
clk=1'b1;
#(T/2);
clk=1'b0;
#(T/2);
end
initial
begin
reset=1'b0;
#1
reset=1'b1;
PCNext=32'b1111;
#10
PCNext=32'b0011;
#10
PCNext=32'b1100;
#10
PCNext=32'b1101;
#10;
end
endmodule
