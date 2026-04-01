module bcd_to_7seg_8digit_st(seg_out,bcd_in);
input [31:0]bcd_in;
output [55:0]seg_out;
bcd_to_7segment_bh s0(seg_out[6:0],bcd_in[3:0]);
bcd_to_7segment_bh s1(seg_out[13:7],bcd_in[7:4]);
bcd_to_7segment_bh s2(seg_out[20:14],bcd_in[11:8]);
bcd_to_7segment_bh s3(seg_out[27:21],bcd_in[15:12]);
bcd_to_7segment_bh s4(seg_out[34:28],bcd_in[19:16]);
bcd_to_7segment_bh s5(seg_out[41:35],bcd_in[23:20]);
bcd_to_7segment_bh s6(seg_out[48:42],bcd_in[27:24]);
bcd_to_7segment_bh s7(seg_out[55:49],bcd_in[31:28]);
endmodule