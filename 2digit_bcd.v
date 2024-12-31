module bcd_count (
input clk,
input rst,
output [3:0] ones,
output [3:0] tens
);
reg [3:0] ones_reg;
reg [3:0] tens_reg;
always @(posedge clk or posedge rst )
begin
if (rst)
begin
ones_reg <= 4'b0000;
tens_reg <= 4'b0000;
end
else
begin
if (ones_reg == 9)
begin
ones_reg <= 4'b0000;
if (tens_reg == 9)
begin
tens_reg <= 4'b0000;
end
else
begin
tens_reg <= tens_reg + 1;
end
end
else begin
ones_reg <= ones_reg + 1;
end
end
end
assign ones = ones_reg;
assign tens = tens_reg;
endmodule