module frequency_divider(clk_50mhz,clk_1hz, clk_4khz, clk_2hz, clk_100hz);
input clk_50mhz;
output reg clk_1hz, clk_4khz, clk_100hz, clk_2hz;
reg clk;
reg [31:0]cnt1, cnt2, cnt3, cnt4;
parameter A=50000000;
parameter B=12500;
parameter C=25000000;
parameter D=500000;
//parameter A = 2;
always@(posedge clk_50mhz)
begin
  if(cnt1<A/2-1)
    cnt1<=cnt1+1'b1;
  else
    begin
	   cnt1<=1'b0;
		clk_1hz<=~clk_1hz;
	 end
end
always@(posedge clk_50mhz)
begin
  if(cnt2<B/2-1)
    cnt2<=cnt2+1'b1;
  else
    begin
	   cnt2<=1'b0;
		clk_4khz<=~clk_4khz;
	 end
end
always@(posedge clk_50mhz)
begin
  if(cnt3<C/2-1)
    cnt3<=cnt3+1'b1;
  else
    begin
	   cnt3<=1'b0;
		clk_2hz<=~clk_2hz;
	 end
end
always@(posedge clk_50mhz)
begin
  if(cnt4<D/2-1)
    cnt4<=cnt4+1'b1;
  else
    begin
	   cnt4<=1'b0;
		clk_100hz<=~clk_100hz;
	 end
end
endmodule	 