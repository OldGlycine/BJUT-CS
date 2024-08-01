module scanA(clk,ds,sel);
	input clk;
	output [1:0] ds;
	output [1:0] sel;
	reg [1:0] ds = 2'b0;
	reg [1:0] sel = 2'b0;
always@(posedge clk)
	begin 
	if(sel == 1)
		sel <= 0;
	else
		sel <= sel +1;
	end
	
always@(sel)
	case(sel)
		0:ds=2'b10;
		1:ds=2'b01;
		default:ds=8'b0;
	endcase
endmodule