module Adder_TB
();
reg [31:0] input1_TB;
reg [31:0] input2_TB;
wire [31:0]out_TB;
Adder Adder_TB (.input1(input1_TB),.input2(input2_TB),.out(out_TB) );

initial
begin
input1_TB=10000;
input2_TB=20000;
#10
input1_TB=10000;
input2_TB=10000;
#10
input1_TB=10000;
input2_TB=30000;
#10
input1_TB=10000;
input2_TB=50000;
#10
input1_TB=10000;
input2_TB=170000;
#10
input1_TB=10000000;
input2_TB=2000000;
#10;




end

endmodule