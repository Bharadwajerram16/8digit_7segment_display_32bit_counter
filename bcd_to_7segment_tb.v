module bcd_to_7segment_bh_tb();
reg [3:0] bcd;
wire [6:0] seg;
10
bcd_to_7segment_bh x1(seg,bcd);
initial
begin
bcd=4'b0000;
#10 bcd=4'b0001;
#10 bcd=4'b0010;
#10 bcd=4'b0011;
#10 bcd=4'b0100;
#10 bcd=4'b0101;
#10 bcd=4'b0110;
#10 bcd=4'b0111;
#10 bcd=4'b1000;
#10 bcd=4'b1001;
#10 $stop;
end
endmodule