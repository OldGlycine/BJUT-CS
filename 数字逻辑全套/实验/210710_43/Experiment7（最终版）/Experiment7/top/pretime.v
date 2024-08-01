module pretime
	(
	input clk,
	input cs,
	input w_r,
	input addr,
	input button,
	output reg [6 - 1:0] w_data,
	output reg [6 - 1:0] array_reg1,
	output reg [6 - 1:0] array_reg2
	);
	
	
	always@(posedge clk)
	begin
		if(cs&&!w_r)
			begin
			case(addr)
				0:array_reg1 <= w_data;
				1:array_reg2 <= w_data;
				default:begin array_reg1 <= array_reg1; array_reg2 <= array_reg2; end
			endcase
			end
		else
			begin
			array_reg1 <= array_reg1;
			array_reg2 <= array_reg2;
			end
	end
	
	always@(negedge button)
		if(w_data < 20)
			w_data <= w_data + 1;
		else
			w_data <= 0;

endmodule