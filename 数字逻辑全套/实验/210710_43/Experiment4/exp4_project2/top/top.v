module top(clk,clr,reset,rst,z,c_state,n_state); 
	input clk,clr,reset,rst; 
	output z;
	output [3:0] c_state,n_state;
	wire clk_1hz,dout; 
	
	frequency_divider(.clk_50mhz(clk),.rst(rst),.clk_1hz(clk_1hz)); 
	data_generate(.clk(clk_1hz),.clr(clr),.dout(dout)); 
	seqdet(.clk(clk_1hz),.x(dout),.reset(reset),.z(z),.c_state(c_state),.n_state(n_state)); 
	
endmodule