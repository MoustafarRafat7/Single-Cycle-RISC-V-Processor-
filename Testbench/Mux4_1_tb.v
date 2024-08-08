module Mux4_1_tb
(
);
reg [31:0]input1,input2,input3;
reg [1:0]selector;
wire [31:0]out;

Mux4_1 mux(.input1(input1),.input2(input2),.input3(input3),.selector(selector),.out(out));

initial 
begin
input1 =3;
input2 =1;
input3 =5;
selector=1;
#5
selector=0;
#5
selector=2;
#5
selector=3;
#5
input1 =10;
input2 =2;
input3 =9;
selector=1;
#5
selector=0;
#5
selector=2;
#5
selector=3;
#5;

end
endmodule
