module main(start, stop, clk, r, y, LSNG, LSNY, c_state, n_state, LSNR, LEWG, LEWY, LEWR, rules, turn_out, left, ring, r_count, y_count,condition);
	// start对应w_r的w模式
	input start, stop, clk;
	input [5:0] r, y;
	output reg [2:0] c_state = 3'b000, n_state;
	// 模拟四种左转规则
	input [1:0] rules;
	output reg [1:0] turn_out;
	output reg LSNG, LSNY, LSNR, LEWG, LEWY, LEWR, left;
	
	output reg [5:0] r_count, y_count;
	// 判断状态转移专用
	output reg [31:0] condition;
	// 判断蜂鸣器频率专用——红灯快结束慢响，黄灯快结束快响
	output reg [1:0] ring;
	
	parameter A=3'B001, B=3'B010, C=3'B011, D=3'B100, E=3'B111, F=3'b000;
	
	
	// 红绿灯
	always@(c_state)
	if(start==1'b1 && stop == 0)
		begin
			case(c_state)
			A:begin LSNG = 1'b0; LSNY = 1'b0; LSNR = 1'b1; LEWG = 1'b1; LEWY = 1'b0; LEWR = 1'b0; end
			B:begin LSNG = 1'b0; LSNY = 1'b0; LSNR = 1'b1; LEWG = 1'b0; LEWY = 1'b1; LEWR = 1'b0; end
			C:begin LSNG = 1'b1; LSNY = 1'b0; LSNR = 1'b0; LEWG = 1'b0; LEWY = 1'b0; LEWR = 1'b1; end
			D:begin LSNG = 1'b0; LSNY = 1'b1; LSNR = 1'b0; LEWG = 1'b0; LEWY = 1'b0; LEWR = 1'b1; end
			E:begin LSNG = 1'b0; LSNY = 1'b0; LSNR = 1'b1; LEWG = 1'b0; LEWY = 1'b0; LEWR = 1'b1; end
			F:begin LSNG = 1'b0; LSNY = 1'b0; LSNR = 1'b1; LEWG = 1'b1; LEWY = 1'b0; LEWR = 1'b0; end
			default: begin LSNG = 1'b0; LSNY = 1'b0; LSNR = 1'b0; LEWG = 1'b0; LEWY = 1'b0; LEWR = 1'b0; end 
			endcase
		end
	else
		begin
			LSNG = 1'b0; LSNY = 1'b0; LSNR = 1'b1; LEWG = 1'b0; LEWY = 1'b0; LEWR = 1'b1;
		end
	


	// 模拟四种左转规则 第一位是东西左转第二位是南北左转
	always@(rules)
		case(rules)
			2'b00:begin turn_out = 2'b00; left = 1'b1; end
			2'b01: if(!LEWG & LSNG) begin turn_out = 2'b01; left = 1'b0; end
			2'b10: if(!LSNG & LEWG) begin turn_out = 2'b10; left = 1'b0; end
			2'b11: if(!LEWG & LSNG) begin turn_out = 2'b01; left = 1'b0; end
						else if(!LSNG & LEWG) begin turn_out = 2'b10; left = 1'b0; end
						else begin turn_out = 2'b00; left = 1'b1; end
			default:begin turn_out = 2'b00; left = 1'b1; end
		endcase
	
		
	// 计时模块
	// condition为单数的时候是红灯，是双数的时候为黄灯，0除外
	always@(posedge clk)
	begin		
		// r,y超时置60和10
		if(r_count > 6'd60) r_count <= 60;
		else r_count <= r_count;
		if(y_count > 6'd10) y_count <= 10;
		else y_count <= y_count;
		
		if(start&!stop)
			if(r_count > 0 & y_count > 0)
			begin
				r_count <= r_count - 1;
				condition <= condition + 1;
			end
			else if(r_count == 0 & y_count > 0)
			begin
				y_count <= y_count - 1;
				condition <= condition + 1;
			end
			else //if (r_count == 0 & y_count == 0)
			begin
				// condition重置
				if(condition == (2*r + 2*y) | condition == (2*r + 2*y + 1))
					condition <= 32'b0;
				else
					condition <= condition + 1;
				r_count <= r;
				y_count <= y;
			end
		else
			begin
				r_count <= r;
				y_count <= y;
				condition <= ~(32'd0);
			end
		
		
		// ring判断
		if(start & (!stop))
			if(r_count < 10 & y_count > 0 & r_count > 0)	ring <= 2'b01;
			else if(r_count  == 0 & y_count < 3) 	ring <= 2'b10;
			else 	ring <= 2'b0;
		else	ring <= 2'b0;
		
	end
	
	// 状态转移
	always @(c_state,condition,start,n_state)
		if(start&  (!stop))
		begin 
			case(c_state) 
				A:if(condition == r) n_state=B; else n_state=A; 
				B:if(condition == (r + y)) n_state=C; else n_state=B; 
				C:if(condition == (2*r + y)) n_state=D; else n_state=C; 
				D:if(condition == 0) n_state=A; else n_state=D; 
				E:if(condition == ~(32'd0)) n_state=E; else if(start) n_state = A; else n_state=n_state; 
				default: n_state=n_state;
			endcase 
		end 
		else
			n_state = E;
		
	// 状态更新
	always @(posedge clk) 
			c_state<=n_state;
	
endmodule