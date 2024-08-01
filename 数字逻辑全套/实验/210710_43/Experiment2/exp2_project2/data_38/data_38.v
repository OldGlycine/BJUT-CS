module data_38(in1,in2,in3,in4,in5,in6,in7,in8, outdata, addr);
	input [2:0] addr;
	input [3:0] in1,in2,in3,in4,in5,in6,in7,in8;
	output [3:0] outdata;
	reg [3:0] outdata;
	always@(addr)
		begin
			case(addr)
				3'b000:outdata = in1;
				3'b001:outdata = in2;
				3'b010:outdata = in3;
				3'b011:outdata = in4;
				3'b100:outdata = in5;
				3'b101:outdata = in6;
				3'b110:outdata = in7;
				3'b111:outdata = in8;
				default:outdata = 4'b0000;
			endcase
		end
endmodule