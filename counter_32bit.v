module decimal_counter_32bit(count,clk,reset);
input clk,reset;
output [31:0]count;
reg [31:0]count;
integer i;
always@(posedge clk or posedge reset)
begin
if(reset)
count<=32'h00000000;
else
begin
count[3:0]<=count[3:0]+1;
for(i=0;i<8;i=i+1)
begin
if(count[i*4+:4]==4'd10)
begin
count[i*4+:4]<=4'd0;
if(i<7)
count[(i+1)*4+:4]<=count[(i+1)*4+:4]+1;
end
end
end
end
endmodule