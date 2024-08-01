module LEDA (out,in);
	output [6:0] out;
	input [3:0] in;
	reg [6:0] out;
	// en对应machine的start
	always @ (in)
		begin
			case(in)
				4'd0:out = 7'b111_1110;
				4'd1:out = 7'b011_0000;
				4'd2:out = 7'b110_1101;
				4'd3:out = 7'b111_1001;
				4'd4:out = 7'b011_0011;
				4'd5:out = 7'b101_1011;
				4'd6:out = 7'b101_1111;
				4'd7:out = 7'b111_0000;
				4'd8:out = 7'b111_1111;
				4'd9:out = 7'b111_1011;
				default:out = 7'b0000_000;
			endcase
		end
endmodule