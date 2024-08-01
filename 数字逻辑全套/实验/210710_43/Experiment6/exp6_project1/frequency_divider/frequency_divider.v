module frequency_divider(clk_50mhz,clk);
input clk_50mhz;
output clk;
reg clk;
reg [31:0]cnt1;
//parameter A=200000;
parameter A = 2;
always@(posedge clk_50mhz)
begin
  if(cnt1<A/2-1)
    cnt1<=cnt1+1'b1;
  else
    begin
	   cnt1<=1'b0;
		clk<=~clk;
	 end
end
endmodule	 