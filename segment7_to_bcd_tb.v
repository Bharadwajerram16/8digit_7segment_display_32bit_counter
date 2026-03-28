module segment7_to_bcd_bh_tb();
reg [6:0]seg;
wire [3:0]bcd;
segment7_to_bcd_bh x1(bcd,seg);
initial
begin
seg=7'b1111110;
#10 seg=7'b0110000;
#10 seg=7'b1101101;
#10 seg=7'b1111001;
#10 seg=7'b0110011;
#10 seg=7'b1011011;
#10 seg=7'b1011111;
#10 seg=7'b1110000;
#10 seg=7'b1111111;
#10 seg=7'b1111011;
#10 $stop;
13
end
endmodule