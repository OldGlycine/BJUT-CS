module frequency_divider(clk_50mhz,rst,clk_1hz);
input clk_50mhz,rst;
output clk_1hz;
reg clk_1hz;
reg [31:0]cnt1;
parameter A=50000000;
//parameter A = 2;
always@(posedge clk_50mhz)
begin
if(!rst)
  begin
    cnt1<=1'b0;
	 clk_1hz<=1'b0;
  end
else
  if(cnt1<A/2-1)
    cnt1<=cnt1+1'b1;
  else
    begin
	   cnt1<=1'b0;
		clk_1hz<=~clk_1hz;
	 end
end
endmodule	 