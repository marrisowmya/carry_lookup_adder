`timescale 1ns/1ps
module cla_tb();
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;
integer i;
integer j;
cla DUT(a,b,cin,sum,cout);
initial 
begin
cin = 0;
for(i=0;i<16;i=i+1)begin
for(j=0;j<16;j=j+1)
begin
a=i;
b=j;
#10;
cin =1;
end
end
end
endmodule
