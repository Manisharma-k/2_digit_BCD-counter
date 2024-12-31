module bcd_tb();
reg clk;
reg rst;
wire [3:0] ones;
wire [3:0] tens;
bcd_count dut(clk,rst,ones,tens);
initial
begin
clk=0;
forever #10 clk = ~clk;
end
initial
begin
clk = 0;
rst = 1;
#10 rst = 0;
#2000 $stop;
end
initial
begin
$monitor("Time = %t, tens = %d ,ones = %d",$time, tens, ones);
end
endmodule
