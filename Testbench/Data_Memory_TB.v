module Data_Memory_TB
();
reg [31:0] Address_TB;
reg WE_TB;
reg clk_TB;
reg [31:0] WD_TB;
wire [31:0]RD_TB;

localparam T=10;
Data_Memory Data_Memory_TB (.Address(Address_TB),.WE(WE_TB),.clk(clk_TB),.WD(WD_TB),.RD(RD_TB) );

always
begin
clk_TB=1'b1;
#(T/2)
clk_TB=1'b0;
#(T/2);
end

initial
begin
WD_TB=11;
WE_TB=1;
Address_TB=2;
#T
WE_TB=0;
WD_TB=12;
#T
WE_TB=1;
#T
WD_TB=55;
Address_TB=12;
#T;
end

endmodule