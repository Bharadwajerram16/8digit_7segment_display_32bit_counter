module segment7_8digit_counter_top(seg_out,bcd_output,clk,reset);
input clk,reset;
output [55:0]seg_out;
output [31:0]bcd_output;
wire [31:0]count_value;
decimal_counter_32bit x1(count_value,clk,reset);
bcd_to_7seg_8digit_st x2(seg_out,count_value);
segment7_8digit_st x3(bcd_output,seg_out);
endmodule
