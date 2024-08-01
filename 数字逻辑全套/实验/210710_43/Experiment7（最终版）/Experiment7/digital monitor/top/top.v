module top(en, x, clk_50mhz, ds, led);
	input en, clk_50mhz;
	input [5:0] x;
	wire clk_100hz;
	wire [1:0] sel;
	output [1:0] ds;
	output [6:0] led;
	wire [3:0] out;
	
	// ds[1] 接入最左边的数码管，以此类推
	// test02是数据选择器
	frequency_divider(.clk_50mhz(clk_50mhz), .clk_100hz(clk_100hz));
	scan(.clk(clk_100hz), .ds(ds), .sel(sel));
	test02(.sel(sel), .en(en), .out(out), .x(x));
	LED(.in(out), .en(en), .out(led));
	
endmodule