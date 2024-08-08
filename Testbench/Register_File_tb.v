module Register_File_tb();
reg [31:0]WD3;
reg [4:0]A1,A2,A3;
reg WE3,clk;
wire [31:0]RD1,RD2;

Register_File reg_file(.clk(clk),.A1(A1),.A2(A2),.A3(A3),.WE3(WE3),.WD3(WD3),.RD1(RD1),.RD2(RD2));

localparam T=10;

always
begin
clk=1'b1;
#(T/2)
clk=1'b0;
#(T/2);
end

initial
begin
WE3=1;
WD3=12;
A3=10;
#T
WD3=15;
A3=20;
#T
WD3=12;
A3=30;
#T
WE3=0;
WD3=15;
A3=10;
A1=10;
A2=20;
#T
WE3=0;
#T;
end
endmodule