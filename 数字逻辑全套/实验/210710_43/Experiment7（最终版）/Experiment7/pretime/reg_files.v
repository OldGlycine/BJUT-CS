module reg_files
	(
		clk,
		cs,
		w_r,
		addr,
		w_data,
		r_r,
		r_g,
		r_y
	);
	input clk,
	input cs,
	input w_r,
	input [2 - 1:0] addr,
	input [6 - 1:0] w_data,
	output [6 - 1:0] r_r,
	output [6 - 1:0] r_g,
	output [6 - 1:0] r_y
	reg [6 - 1:0] array_reg[2**2:0];
	
	assign r_r = (!cs&&!w_r)?array_reg[0]:6'hz;
	assign r_g = (!cs&&!w_r)?array_reg[1]:6'hz;
	assign r_y = (!cs&&!w_r)?array_reg[2]:6'hz;
	
	always@(posedge clk)
		if(!cs&&w_r)
			array_reg[addr] <= w_data;
endmodule