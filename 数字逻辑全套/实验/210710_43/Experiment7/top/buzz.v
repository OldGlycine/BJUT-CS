module buzz(clk, beep_r, clk_slow, clk_fast, ring, beep);
	// beep信号允许蜂鸣器进行取反操作
	// clk信号是工作频率信号
	input clk, clk_slow, clk_fast;
	input [1:0] ring;
	output reg beep;
	output reg beep_r;
	
	// 蜂鸣器beep时长
	always@(ring, clk_slow, clk_fast)
	begin
		if(ring == 2'b01)
			beep = clk_slow;
		else if(ring == 2'b10)
			beep = clk_fast;
		else
			beep = 0;
	end
	
	always@(posedge clk)
		if(beep)
			beep_r <= !beep_r;
		else
			beep_r <= beep_r;
endmodule
	