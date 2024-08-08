module Mux_TB
();
localparam n=32;
reg [n-1:0] input1_TB;
reg [n-1:0] input2_TB;
reg selector_TB;
wire [n-1:0]out_TB;
Mux #(.n(n)) Mux_TB (.input1(input1_TB),.input2(input2_TB),.selector(selector_TB),.out(out_TB) );

initial
begin
input1_TB=20;
input2_TB=10;
selector_TB=0;
#5
selector_TB=1;
#5
input1_TB=10;
input2_TB=20;
selector_TB=0;
#5
selector_TB=1;
#5;
end

endmodule