module frequency(clk_50mhz,rst,clk_hz, zeros);
input clk_50mhz,rst;
input [2:0] zeros;
output clk_hz;
reg clk_hz;
reg [31:0]cnt1;

always@(posedge clk_50mhz)
case(zeros)
	3'b000:
		begin
		if(!rst)
		  begin
			 cnt1<=1'b0;
			 clk_hz<=1'b0;
		  end
		else
		  if(cnt1< 50000000/2-1)
			 cnt1<=cnt1+1'b1;
		  else
			 begin
				cnt1<=1'b0;
				clk_hz<=~clk_hz;
			 end
		end
	3'b001:
		begin
		if(!rst)
		  begin
			 cnt1<=1'b0;
			 clk_hz<=1'b0;
		  end
		else
		  if(cnt1< 2500000/2-1)
			 cnt1<=cnt1+1'b1;
		  else
			 begin
				cnt1<=1'b0;
				clk_hz<=~clk_hz;
			 end
		end
	3'b010:
		begin
		if(!rst)
		  begin
			 cnt1<=1'b0;
			 clk_hz<=1'b0;
		  end
		else
		  if(cnt1< 10000000/2-1)
			 cnt1<=cnt1+1'b1;
		  else
			 begin
				cnt1<=1'b0;
				clk_hz<=~clk_hz;
			 end
		end
	3'b011:
		begin
		if(!rst)
		  begin
			 cnt1<=1'b0;
			 clk_hz<=1'b0;
		  end
		else
		  if(cnt1< 5000000/2-1)
			 cnt1<=cnt1+1'b1;
		  else
			 begin
				cnt1<=1'b0;
				clk_hz<=~clk_hz;
			 end
		end
	
	default:
		begin
		if(!rst)
		  begin
			 cnt1<=1'b0;
			 clk_hz<=1'b0;
		  end
		else
		  if(cnt1< 50000000/2-1)
			 cnt1<=cnt1+1'b1;
		  else
			 begin
				cnt1<=1'b0;
				clk_hz<=~clk_hz;
			 end
		end
	endcase
endmodule	 