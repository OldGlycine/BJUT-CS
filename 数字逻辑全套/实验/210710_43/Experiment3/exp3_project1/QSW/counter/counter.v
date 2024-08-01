module counter(clrn, clk, enp, ent, ldn, data_in, q_out, rco);
	input clrn, clk, ent, enp, ldn;
	input [3:0] data_in;
	output [3:0] q_out;
	output rco;
	reg [3:0] q_out;
	always@(posedge clk)
		begin
			if(~clrn)
				q_out <= 0;
			else if(!ldn)
				q_out <= data_in;
			else if(enp && ent==1)
				q_out <= q_out + 1;
			else
				q_out <= q_out;
		end
	assign rco = (q_out==4'b1111 && ent) ? 1:0;
endmodule