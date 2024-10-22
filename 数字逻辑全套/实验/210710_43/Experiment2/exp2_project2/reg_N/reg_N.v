module reg_N
		 #(parameter N=4)
		 (
		   input clk,
			input reset,
			input[N-1:0] data,
			input cs,
			input w_r,
			output reg[N-1:0] q
		  );
always @(posedge clk,posedge reset)
begin
  if(reset)
    q<=0;
  else if(!cs&&w_r)
    q<=data;
end
endmodule