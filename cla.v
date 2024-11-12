module cla(input [3:0]a,input [3:0]b,input cin,output [3:0]sum,output cout);
wire [3:0]p;
wire [3:0]g;
wire [3:0]carry;

begin
assign p = a^b;
assign g = a&b;

assign carry[0]=cin;
assign carry[1]=p[0]|g[0]+carry[0];
assign carry[2]=p[1]|g[1]+carry[1];
assign carry[3]=p[2]|g[2]+carry[2];
assign cout =p[3]|g[3]+carry[3];
assign sum= p^carry[3:0];
end
endmodule

