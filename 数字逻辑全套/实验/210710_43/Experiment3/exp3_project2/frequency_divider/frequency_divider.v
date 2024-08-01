module frequency_divider(clk_50mhz,rst,clk_1khz,clk_100hz,clk_10hz,clk_1hz);
input clk_50mhz,rst;
output clk_1khz,clk_100hz,clk_10hz,clk_1hz;
reg clk_1khz,clk_100hz,clk_10hz,clk_1hz;
reg [31:0]cnt1,cnt2,cnt3,cnt4;
//parameter A=50000;
//parameter B=500000;
//parameter C=5000000;
//parameter D=50000000;
parameter A = 4, B = 10, C = 10, D =10;
always@(posedge clk_50mhz)
begin
if(!rst)
  begin
    cnt1<=1'b0;
	 clk_1khz<=1'b0;
  end
else
  if(cnt1<A/2-1)
    cnt1<=cnt1+1'b1;
  else
    begin
	   cnt1<=1'b0;
		clk_1khz<=~clk_1khz;
	 end
end

always@(posedge clk_50mhz)
begin
if(!rst)
  begin
    cnt2<=1'b0;
	 clk_100hz<=1'b0;
  end
else
  if(cnt2<B/2-1)
    cnt2<=cnt2+1'b1;
  else
    begin
	   cnt2<=1'b0;
		clk_100hz<=~clk_100hz;
	 end
end

always@(posedge clk_50mhz)
begin
if(!rst)
  begin
    cnt3<=1'b0;
	 clk_10hz<=1'b0;
  end
else
  if(cnt3<C/2-1)
    cnt3<=cnt3+1'b1;
  else
    begin
	   cnt3<=1'b0;
		clk_10hz<=~clk_10hz;
	 end
end

always@(posedge clk_50mhz)
begin
if(!rst)
  begin
    cnt4<=1'b0;
	 clk_1hz<=1'b0;
  end
else
  if(cnt4<D/2-1)
    cnt4<=cnt4+1'b1;
  else
    begin
	   cnt4<=1'b0;
		clk_1hz<=~clk_1hz;
	 end
end
endmodule	 