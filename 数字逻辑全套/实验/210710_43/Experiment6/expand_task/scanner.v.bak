module scanner(clk, I_ROW, I_COL);
	input clk;
	output reg [15:0] I_ROW = 16'b0;
	output reg [3:0] I_COL = 4'b0;

	always@(posedge clk)
		if (I_COL < 16)
			I_COL <= I_COL + 1;
		else
			I_COL <= 4'b0;
			
	always@(I_COL)
		case(I_COL)
			0:I_ROW = 16'b0000_0000_0000_0000;
			1:I_ROW = 16'b0000_0000_0000_0100;
			2:I_ROW = 16'b0011_1111_0000_0100;
			3:I_ROW = 16'b0000_0000_1000_0100;
			4:I_ROW = 16'b0000_0000_1111_0100;
			5:I_ROW = 16'b0000_1110_1101_0100;
			6:I_ROW = 16'b0000_1010_1101_0100;
			7:I_ROW = 16'b0000_1010_1101_0100;
			8:I_ROW = 16'b0000_1010_1101_0111;
			9:I_ROW = 16'b0000_1010_1101_0110;
			10:I_ROW = 16'b0000_1010_1101_0100;
			11:I_ROW = 16'b0000_1110_1101_0100;
			12:I_ROW = 16'b0010_0000_1111_0100;
			13:I_ROW = 16'b0010_0000_1000_0100;
			14:I_ROW = 16'b0010_0000_1000_0100;
			15:I_ROW = 16'b0001_1111_0000_0100;
			default:I_ROW = 16'b0;
		endcase
endmodule