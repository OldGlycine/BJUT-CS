module frequency_divider(clk_50mhz,clk,clk_1hz);
input clk_50mhz;
output clk,clk_1hz;
reg clk, clk_1hz;
reg [31:0]cnt1, cnt2;
parameter A=200000;
//parameter A = 2;
parameter B = 50000000;
//parameter B = 40;

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

always@(posedge clk_50mhz)
begin
  if(cnt2<B/2-1)
    cnt2<=cnt2+1'b1;
  else
    begin
	   cnt2<=1'b0;
		clk_1hz<=~clk_1hz;
	 end
end
endmodule	 