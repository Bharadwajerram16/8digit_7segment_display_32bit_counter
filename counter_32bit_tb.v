module decimal_counter_32bit_tb();
reg clk,reset;
wire [31:0]count;
decimal_counter_32bit x1(count, clk, reset);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
reset=1;
#10 reset=0;
#200;
$stop;
end
endmodule
