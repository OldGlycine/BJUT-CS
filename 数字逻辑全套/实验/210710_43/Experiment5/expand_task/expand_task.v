module expand_task(num_sel, n_en, clk_50mhz, ds, led, swc);
	input n_en, clk_50mhz, num_sel;
	input [3:0] swc;
	wire [3:0] in1, in2;
	wire clk_100hz;
	wire [2:0] sel;
	output [7:0] ds;
	output [6:0] led;
	wire [3:0] out;
	
	// ds[7] 接入最左边的数码管，以此类推
	// test02是数据选择器
	
	frequency_divider(.clk_50mhz(clk_50mhz), .clk_100hz(clk_100hz));
	button(.clk(clk_100hz), .swc(swc), .key1(in1), .key2(in2), .num_sel(num_sel));
	scan(.clk(clk_100hz), .ds(ds), .sel(sel));
	test02(.sel(sel), .n_en(n_en), .out(out), .in1(in1), .in2(in2));
	LED(.in(out), .n_en(n_en), .out(led));
	
endmodule