`timescale 1ns / 1ps

module divider(
    input  clk,
	input  rst_n,
	output clk_div
);

// ·ÖÆµÊý
parameter DIV_NUM = 314;  // 125MHZ / 100KHZ / 4 = 312.5 50KHZ

reg       clk_div;
reg [7:0] div_cnt;

always @ (posedge clk, negedge rst_n)
begin
	// ¸´Î»
	if(!rst_n)
	begin
		clk_div <= 1'b0;
		div_cnt <= 8'd0;
	end
	
	else
	begin
		if(div_cnt == 0)
			clk_div <= 1'b0;
		else if(div_cnt == (DIV_NUM / 2) )
			clk_div <= 1'b1;
		
        if(div_cnt == DIV_NUM - 1) 
             div_cnt <= 8'd0;
        else
             div_cnt <= div_cnt + 1'b1;
	end
end

endmodule
