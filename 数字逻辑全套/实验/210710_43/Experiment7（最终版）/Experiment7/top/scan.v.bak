module scan(clk, ds,sel);
	input clk;
	output [7:0] ds;
	output [2:0] sel;
	reg [7:0] ds = 8'b0;
	reg [2:0] sel = 3'b0;
always@(posedge clk)
	begin 
	if(sel == 7)
		sel <= 0;
	else
		sel <= sel +1;
	end
	
always@(sel)
	case(sel)
		0:ds=8'b1111_1110;
		1:ds=8'b1111_1101;
		2:ds=8'b1111_1011;
		3:ds=8'b1111_0111;
		4:ds=8'b1110_1111;
		5:ds=8'b1101_1111;
		6:ds=8'b1011_1111;
		7:ds=8'b0111_1111;
		default:ds=8'b0;
	endcase
endmodule