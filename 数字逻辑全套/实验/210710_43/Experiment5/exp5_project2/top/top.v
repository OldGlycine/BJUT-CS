module top(clk_50mhz, swc, n_en, sel, ledout);
	input n_en, clk_50mhz;
	input [3:0] swc;
	output sel = 1'b0;
	wire clk;
	wire [3:0] key;
	output [6:0] ledout;
	
	frequency_divider(.clk_50mhz(clk_50mhz), .clk_100hz(clk));
	button(.clk(clk), .swc(swc), .key(key));
	led(.in(key), .n_en(n_en), .out(ledout));
	
endmodule
	