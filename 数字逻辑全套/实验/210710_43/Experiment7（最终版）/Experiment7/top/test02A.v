module test02A (sel,out, x, a, b);
	input [1:0] sel;
	output [3:0] out;
	input [5:0] x;
	reg [3:0] out;
	output [3:0] a;
	output [3:0] b;

	assign a=x/10;
	assign b=x%10;

always @ (sel)
	begin
		case(sel)
			2'b00 : out = b;
			2'b01 : out = a;
		endcase
	end
endmodule