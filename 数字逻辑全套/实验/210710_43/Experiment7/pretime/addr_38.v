module addr_24(addr, out);
	input [1:0] addr;
	output reg [3:0] out
	always@(addr)
		begin
			case(addr)
				2'b00:out = 4'b0111;
				2'b01:out = 4'b1011;
				2'b10:out = 4'b1101;
				2'b11:out = 4'b1110;
				default:out = 4'b1111;
			endcase
		end
endmodule