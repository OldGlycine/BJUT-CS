module expand(clk_50mhz,rst,zeros,     clrn, enp, ent, ldn,data_in,rco,   q_o,  out1,n_en,sel1);
	input clk_50mhz,rst;
	input [2:0] zeros;
	wire clk_xhz;
	
	input clrn, enp, ent, ldn;
	input [3:0] data_in;
	wire [3:0] q_o1, q_o2, q_o3;
	output rco;
	
	input n_en;
	output sel1;
	output [6:0] out1;
	
	output q_o;
	
	

frequency(.clk_50mhz(clk_50mhz), .rst(rst), .zeros(zeros), .clk_hz(clk_xhz));
counter c1(.clk(clk_xhz),.clrn(clrn), .ldn(ldn),.enp(enp), .ent(ent), .data_in(data_in), .rco(rco), .q_out(q_o1));
//counter c2(.clk(clk_xhz),.clrn(clrn), .enp(), .ent(ent),.data_in(data_in),.rco(rco2),.q_out(q_o2));
//counter c3(.clk(clk_xhz),.clrn(clrn), .enp(), .ent(),.data_in(data_in), .rco(rco3),.q_out(q_o3));
led l1(.sel(sel1), .in(q_o1), .out(out1), .n_en(n_en));
//led l2(.sel(sel2), .in(q_o2), .out(out2), .n_en(n_en));
//led l3(.sel(sel3), .in(q_o3), .out(out3), .n_en(n_en));
assign q_o = clk_xhz;
endmodule