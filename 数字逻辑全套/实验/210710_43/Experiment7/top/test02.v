module test02 (sel,en,out,x,y,z,a,b);
	input en;
	input [1:0] sel;
	output [3:0] out;
	input [5:0] x,y,z;
	reg [3:0] out;
	output reg [3:0] a;
	output reg [3:0] b;
	
always@(x)
if(x > 0)
begin
	a=x/10;
	b=x%10;
end
else if(y>0)
begin
 a=y/10;
 b=y%10;
end
else
begin
 a=0;
 b=z;
end

always @ (sel)
	begin
		if(en)
			case(sel)
			  2'b00 : out = b;
			  2'b01 : out = a;
			endcase
		else 
			out = 4'b0000;
	end
endmodule