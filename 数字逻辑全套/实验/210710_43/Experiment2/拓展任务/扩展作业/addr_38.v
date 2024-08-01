module addr_38(addr, o1,o2,o3,o4,o5,o6,o7,o8);
	input [2:0] addr;
	output o1,o2,o3,o4,o5,o6,o7,o8;
	reg o1,o2,o3,o4,o5,o6,o7,o8;
	always@(addr)
		begin
			case(addr)
				3'b000:{o1,o2,o3,o4,o5,o6,o7,o8} = 8'b0111_1111;
				3'b001:{o1,o2,o3,o4,o5,o6,o7,o8} = 8'b1011_1111;
				3'b010:{o1,o2,o3,o4,o5,o6,o7,o8} = 8'b1101_1111;
				3'b011:{o1,o2,o3,o4,o5,o6,o7,o8} = 8'b1110_1111;
				3'b100:{o1,o2,o3,o4,o5,o6,o7,o8} = 8'b1111_0111;
				3'b101:{o1,o2,o3,o4,o5,o6,o7,o8} = 8'b1111_1011;
				3'b110:{o1,o2,o3,o4,o5,o6,o7,o8} = 8'b1111_1101;
				3'b111:{o1,o2,o3,o4,o5,o6,o7,o8} = 8'b1111_1110;
				default:{o1,o2,o3,o4,o5,o6,o7,o8} = 8'b1111_1111;
			endcase
		end
endmodule