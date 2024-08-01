module led (out,in,n_en,sel);
	output [6:0] out;
	input [3:0] in;
	input n_en;
	output sel = 1'b0;
	reg [6:0] out;
	always @ (in or n_en)
		begin
		if(!n_en)
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
				4'd10:out = 7'b111_0111;
				4'd11:out = 7'b001_1111;
				4'd12:out = 7'b000_1101;
				4'd13:out = 7'b011_1101;
				4'd14:out = 7'b110_1111;
				4'd15:out = 7'b100_0111;
				default:out = 7'b0000_000;
			endcase
		else out = 7'b0000000;
		end
endmodule