module top(clk_50mhz,rst,out);
	input clk_50mhz, rst;
	wire clk_1hz;
	output [15:0] out;

	frequency_divider(.clk_50mhz(clk_50mhz), .rst(rst), .clk_1hz(clk_1hz));
	flowing_water_light(.clk(clk_1hz), .reset(rst), .out(out));
endmodule