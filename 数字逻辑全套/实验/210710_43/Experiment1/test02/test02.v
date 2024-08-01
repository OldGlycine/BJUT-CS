module test02 (sel,n_en,out,in1,in2);
	input n_en;
	input [2:0] sel;
	output [3:0] out;
	input [3:0] in1,in2;
	parameter [3:0] in8 = 4'b0010;	//2
	parameter [3:0] in7 = 4'b0001;	//1
	parameter [3:0] in6 = 4'b0000;	//0
	parameter [3:0] in5 = 4'b0111;	//7
	parameter [3:0] in4 = 4'b0001;	//1
	parameter [3:0] in3 = 4'b0000;	//0
	reg [3:0] out;
always @ (sel)
	begin
		if(!n_en)
			case(sel)
			  3'b000 : out = ~in1;
			  3'b001 : out = ~in2;
			  3'b010 : out = ~in3;
			  3'b011 : out = ~in4;
			  3'b100 : out = ~in5;
			  3'b101 : out = ~in6;
			  3'b110 : out = ~in7;
			  3'b111 : out = ~in8;
			endcase
		else 
			out = 4'b0000;
	end
endmodule