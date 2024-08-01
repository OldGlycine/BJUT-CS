module expand_task(clk_50mhz, I_COL, I_ROW);
	input clk_50mhz;
	wire clk, clk_1hz;
	output [15:0] I_ROW;
	output [3:0] I_COL;
	
	frequency_divider(.clk_50mhz(clk_50mhz),.clk(clk),.clk_1hz(clk_1hz));
	scanner(.clk(clk), .I_COL(I_COL), .I_ROW(I_ROW), .clk_1hz(clk_1hz));
	
endmodule