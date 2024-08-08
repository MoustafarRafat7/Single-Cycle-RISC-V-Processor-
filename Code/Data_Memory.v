module Data_Memory 
(
input [7:0] Address, 
input WE, 
input clk, 
input [31:0] WD, 
output reg [31:0] RD
); 

reg [31:0]RAM[0:255];
/*integer i;
initial 
begin
for(i=0;i<256;i=i+1)
RAM[i]=32'b0;
end
*/

always@( posedge clk )
begin
if(WE)
RAM[Address]<=WD;
else
RAM[Address]<=RAM[Address];
end     
always@(*)

begin

if(!WE)
begin
RD=RAM[Address];
end

else
begin
RD=RD;
end


end

endmodule
