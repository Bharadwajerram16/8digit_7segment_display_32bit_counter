module segment7_to_bcd_bh(bcd,seg);
input [6:0]seg;
output reg [3:0]bcd;
always@(*)
begin
case(seg)
7'b1111110: bcd=4'd0;
7'b0110000: bcd=4'd1;
7'b1101101: bcd=4'd2;
7'b1111001: bcd=4'd3;
7'b0110011: bcd=4'd4;
7'b1011011: bcd=4'd5;
7'b1011111: bcd=4'd6;
7'b1110000: bcd=4'd7;
7'b1111111: bcd=4'd8;
7'b1111011: bcd=4'd9;
default:bcd=4'd0;
endcase
end
endmodule