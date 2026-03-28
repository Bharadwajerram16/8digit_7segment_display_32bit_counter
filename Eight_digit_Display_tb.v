module bcd_to_7seg_8digit_st_tb();
reg [31:0]bcd_in;
wire [55:0]seg_out;
bcd_to_7seg_8digit_st x1(seg_out,bcd_in);
initial
begin
bcd_in=32'h00000000;
#10 bcd_in=32'h00000001;
#10 bcd_in=32'h00000023;
#10 bcd_in=32'h00004567;
#10 bcd_in=32'h00008999;
#10 $stop;
end
endmodule