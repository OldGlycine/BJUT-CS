module expand_task(clk,clr,reset,rst,z,c_state,n_state,indata); 
	input clk,clr,reset,rst; 
	input [7:0] indata;
	output z;
	output [3:0] c_state,n_state;
	wire clk_1hz,dout; 
	
	frequency_divider(.clk_50mhz(clk),.rst(rst),.clk_1hz(clk_1hz)); 
	data_generate(.clk(clk_1hz),.clr(clr),.dout(dout),.indata(indata)); 
	seqdet(.clk(clk_1hz),.x(dout),.reset(reset),.z(z),.c_state(c_state),.n_state(n_state)); 
	
endmodule