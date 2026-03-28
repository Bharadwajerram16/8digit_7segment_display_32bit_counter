module segment7_8digit_counter_topmodule_tb();
reg clk,reset;
wire [55:0]seg_out;
wire [31:0]bcd_output;
segment7_8digit_counter_top x1(seg_out,bcd_output,clk,reset);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial begin
reset=1;
#10 reset=0;
#1000;
$finish;
end
endmodule