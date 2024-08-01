module top(clk_50mhz, I_COL, I_ROW);
	input clk_50mhz;
	wire clk;
	output [15:0] I_ROW;
	output [3:0] I_COL;
	
	frequency_divider(.clk_50mhz(clk_50mhz),.clk(clk));
	scanner(.clk(clk), .I_COL(I_COL), .I_ROW(I_ROW));
	
endmodule