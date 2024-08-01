module button(swc, swr0, swr1,swr2,swr3, clk ,key1, key2, num_sel);
	input clk, num_sel;
	input [3:0] swc;
	output reg swr0, swr1, swr2, swr3;
	output reg [3:0] key1, key2;
	reg [3:0] key;
	
	always@(posedge clk)
		case({swr0, swr1, swr2, swr3})
			4'b0111:{swr0, swr1, swr2, swr3} <= 4'b1011;
			4'b1011:{swr0, swr1, swr2, swr3} <= 4'b1101;
			4'b1101:{swr0, swr1, swr2, swr3} <= 4'b1110;
			4'b1110:{swr0, swr1, swr2, swr3} <= 4'b0111;
			default:{swr0, swr1, swr2, swr3} <= 4'b0111;
		endcase
	
	always@(posedge clk)
	begin
		if(swr3==0)
			case(swc)
				4'b0111:key <= 4'b1111;
				4'b1011:key <= 4'b1110;
				4'b1101:key <= 4'b1101;
				4'b1110:key <= 4'b1100; 
				default:key <= key; 
			endcase
		else if(swr2==0)
			case(swc)
				4'b0111:key <= 4'b1011;
				4'b1011:key <= 4'b1010;
				4'b1101:key <= 4'b1001;
				4'b1110:key <= 4'b1000;
				default:key <= key;
			endcase
		else if(swr1==0)
			case(swc)
				4'b0111:key <= 4'b0111;
				4'b1011:key <= 4'b0110;
				4'b1101:key <= 4'b0101;
				4'b1110:key <= 4'b0100;
				default:key <= key;
			endcase
		else if(swr0==0)
			case(swc)
				4'b0111:key <= 4'b0011;
				4'b1011:key <= 4'b0010;
				4'b1101:key <= 4'b0001;
				4'b1110:key <= 4'b0000;
				default:key <= key;
			endcase
	end
	
	always @ (posedge clk)
	// 给key1赋值
		if(num_sel == 0)
			begin
				key1 <= key;
				key2 <= key2;
			end
	// 给key2赋值
		else
			begin
				key1 <= key1;
				key2 <= key;
			end
			
endmodule