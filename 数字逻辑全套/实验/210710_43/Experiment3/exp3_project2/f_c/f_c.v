module f_c(clrn, enp, ent, ldn, data_in,q_out, rco, n_en, clk_50mhz,rst,clk_1khz,clk_100hz,clk_10hz);
	input clrn, ent, enp, ldn, n_en ,rst, clk_50mhz;
	input [3:0] data_in;
	output [3:0] q_out;
	output rco, clk_1khz, clk_100hz, clk_10hz;
	wire clk_1hz;
	
	frequency_divider(.rst(rst), .clk_50mhz(clk_50mhz), .clk_1khz(clk_1khz), .clk_100hz(clk_100hz), .clk_10hz(clk_10hz), .clk_1hz(clk_1hz));
	counter(.data_in(data_in), .clk(clk_1hz),.clrn(clrn), .ent(ent), .enp(enp),.ldn(ldn), .q_out(q_out),.rco(rco));
endmodule