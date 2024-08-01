module tstage_gate(in, out, w_r);
	input w_r;
	input [3:0] in;
	output [3:0] out;
	reg [3:0] out;
	always@(out)
		if(!w_r)
			out = in;
		else
			out = 4'b0000;
endmodule