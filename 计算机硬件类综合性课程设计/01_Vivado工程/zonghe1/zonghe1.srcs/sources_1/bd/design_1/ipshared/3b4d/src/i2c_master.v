`timescale 1ns / 1ps

module i2c_master(
    input        clk,         // 时钟
	input        rst_n,       // 复位信号，低有效
	input        en,          // 使能信号
	
	input        wr_rd,       // 读写位，0写1读
	input  [6:0] slave_addr,  // 从机地址
	input  [7:0] reg_addr,    // 寄存器地址
	input  [7:0] data_wr,     // 待写入数据
	output [7:0] data_rd,     // 读取数据
	
	output [7:0] state,
	
	output       scl,
	inout        sda
);


// 状态state
parameter s_idle           = 8'd0;  // 空闲
parameter s_start          = 8'd1;  // 开始
parameter s_send_slaveAddr = 8'd2;  // 发送从机地址以及读写位
parameter s_receive_ack    = 8'd3;  // 接收ack
parameter s_send_regAddr   = 8'd4;  // 发送寄存器地址
parameter s_send_data      = 8'd5;  // 发送数据
parameter s_receive_data   = 8'd6;  // 接收数据
parameter s_send_ack       = 8'd7;  // 发送ack
parameter s_stop           = 8'd8;  // 停止
parameter write            = 8'd9;  // 写

reg       scl;
reg       sda_reg;

reg [7:0] data_rd;
reg [7:0] state;      // 当前所处状态
reg [7:0] state_pre;  // 记录三种写状态，用于区分收到的ack
reg [7:0] shift_data;
reg [3:0] bit_cnt;    // 发送或接收的位数
reg [3:0] cnt;        // 计数
reg       flag;       // 是否由主机控制sda   
reg       state_already;  //指定状态已完成转移并经历clk上升沿(经过一个clk，处于稳定状态)
reg       cnt_state;  // 记录当前状态是否经历一个clk
reg       once;       // 确保只执行一次，不会重复读写（使能改为0再改为1时再次执行）


// assign sda = sda_reg;
// assign flag = (state == s_start || state == write || state == s_send_ack || state == s_stop) ? 1'b1 : 1'b0;
assign sda = (flag) ? sda_reg : 1'bz;  // 三态门


always @ (posedge clk, negedge rst_n)
begin
	// 复位
	if(!rst_n)
	begin
		scl        <= 1'b1;
		sda_reg    <= 1'b1;
		state      <= s_idle;
		state_pre  <= s_idle;
		shift_data <= 8'd0;
		bit_cnt    <= 4'd0;
		cnt        <= 4'd0;
		
		flag       <= 1'b0;
		once       <= 1'b0;
	end
	else
	begin
		case(state)
			// 空闲
			s_idle:
			begin
				// 同rst
				scl        <= 1'b1;
				sda_reg    <= 1'b1;
				state      <= s_idle;
				state_pre  <= s_idle;
				shift_data <= 8'd0;
				bit_cnt    <= 4'd0;
				cnt        <= 4'd0;
				if(en && !once) 
				begin
					state <= s_start;
					flag  <= 1'b1;
					once  <= 1'b1;
				end
				if(!en) 
					once  <= 1'b0;
			end
			// 开始
			s_start:
			begin
				case(cnt)
					4'd0:
					begin
						scl     <= 1'b0;
						sda_reg <= 1'b1;
						cnt     <= cnt + 1'b1;
					end
					4'd1:
					begin
						scl     <= 1'b0;
						sda_reg <= 1'b1;
						flag    <= 1'b1;
						cnt     <= cnt + 1'b1;
					end
					// 时钟线和数据线拉高
					4'd2:
					begin
						scl     <= 1'b1;
						sda_reg <= 1'b1;
						cnt     <= cnt + 1'b1;
					end
					// 时钟线维持高电平，数据线拉低，表示起始信号
					4'd3:
					begin
						scl         <= 1'b1;
						sda_reg     <= 1'b0;
						state       <= write;  // ?
						// flag        <= 1'b1;
						// 如果是读操作，此时restart结束，进入发送从机地址环节
						if(state_pre == s_receive_ack)
						begin
							// state      <= s_receive_data; ？
							state_pre  <= s_start;  // ?
							shift_data <= {slave_addr[6:0], 1'b1};
						end
						// 写
						else
						begin
							state_pre  <= s_send_slaveAddr;
							shift_data <= {slave_addr[6:0], 1'b0};
						end
						cnt         <= 4'd0;
					end
					default: 
					begin
						state <= s_stop;
						// flag  <= 1'b1;
					end
				endcase
			end
			// 三个写操作
			// s_send_slaveAddr:
			// s_send_regAddr:
			// s_send_data:
			write:
			begin
				case(cnt)
					// 时钟拉低，准备修改sda_reg值
					4'd0:
					begin
						scl <= 1'b0;
						cnt <= cnt + 1'b1;
					end
					// 时钟拉低，修改sda_reg值，从高位开始传输
					4'd1:
					begin
						scl     <= 1'b0;
						sda_reg <= shift_data[7 - bit_cnt];
						flag    <= 1'b1;
						bit_cnt <= bit_cnt + 1;
						cnt     <= cnt + 1'b1;
					end
					// 时钟拉高，sda_reg有效
					4'd2:
					begin
						scl     <= 1'b1;
						cnt     <= cnt + 1'b1;
					end
					4'd3:
					begin
						scl <= 1'b1;
						cnt <= 4'd0;
						// 8位传输结束
						if(bit_cnt == 8) 
						begin
							state    <= s_receive_ack;
							// flag     <= 1'b0;
							bit_cnt  <= 4'd0;
						end
					end
					default: 
					begin
						state <= s_stop;
						// flag  <= 1'b1;
					end
				endcase
			end
			// 接收ack
			s_receive_ack:
			begin
				case(cnt)
					4'd0:
					begin
						scl <= 1'b0;
						cnt <= cnt + 1'b1;
					end
					4'd1:
					begin
						scl  <= 1'b0;
						flag <= 1'b0;
						cnt  <= cnt + 1'b1;
					end
					4'd2:
					begin
						scl <= 1'b1;
						cnt <= cnt + 1'b1;
					end
					4'd3:
					begin
						scl <= 1'b1;
						cnt <= 4'd0;
						// ack
						if(sda == 1'b0)
						begin
							if(state_pre == s_send_slaveAddr)
							begin
								state      <= write;
								// flag       <= 1'b1;
								state_pre  <= s_send_regAddr;
								shift_data <= reg_addr;
							end
							else if(state_pre == s_send_regAddr)
							begin
								// 写
								if(!wr_rd)
								begin
									state      <= write;
									// flag       <= 1'b1;
									state_pre  <= s_send_data;
									shift_data <= data_wr;
								end
								// 读
								else if(wr_rd)
									state     <= s_start;
									// flag      <= 1'b1;
									state_pre <= s_receive_ack;
							end
							else if(state_pre == s_send_data)
							begin
								// 只能写一个字节 ?
								state <= s_stop;
								// flag  <= 1'b1;
							end
							// 读操作
							else if(state_pre == s_start)
							begin
								state <= s_receive_data;
								// flag  <= 1'b0;
							end
						end
						// nack
						else 
						begin
							state <= s_stop;
							// flag  <= 1'b1;
						end
					end
				endcase
			end
			// 接收数据
			s_receive_data:
			begin
				case(cnt)
					4'd0:
					begin
						scl <= 1'b0;
						cnt <= cnt + 1'b1;
					end
					4'd1:
					begin
						scl  <= 1'b0;
						flag <= 1'b0;
						cnt  <= cnt + 1'b1;
					end
					4'd2:
					begin
						scl <= 1'b1;
						cnt <= cnt + 1'b1;
					end
					4'd3:
					begin
						scl                  <= 1'b1;
						data_rd[7 - bit_cnt] <= sda;
						bit_cnt              <= bit_cnt + 1;
						cnt                  <= 4'd0;
						// if(bit_cnt == 4'd8) ?
						if(bit_cnt == 4'd7)
						begin
							state   <= s_send_ack;
							bit_cnt <= 4'd0;
							// flag  <= 1'b1;
						end
					end
				endcase
			end
			// 发送nack ?
			s_send_ack:
			begin
				case(cnt)
					4'd0:
					begin
						scl <= 1'b0;
						cnt <= cnt + 1'b1;
					end
					4'd1:
					begin
						scl     <= 1'b0;
						sda_reg <= 1'b1;
						flag    <= 1'b1;
						cnt     <= cnt + 1'b1;
					end
					4'd2:
					begin
						scl <= 1'b1;
						cnt <= cnt + 1'b1;
					end
					4'd3:
					begin
						state <= s_stop;
						// flag  <= 1'b1;
						scl   <= 1'b1;
						cnt   <= 4'd0;
					end
					default: 
					begin
						state <= s_stop;
						// flag  <= 1'b1;
					end
				endcase
			end
			// 停止
			s_stop:
			begin
				case(cnt)
					4'd0:
					begin
						scl     <= 1'b0;
						sda_reg <= 1'b1;
						cnt     <= cnt + 1'b1;
					end
					// 时钟线和数据线拉低
					4'd1:
					begin
						scl     <= 1'b0;
						sda_reg <= 1'b0;
						flag    <= 1'b1;
						cnt     <= cnt + 1'b1;
					end
					// 时钟线拉高
					4'd2:
					begin
						scl     <= 1'b1;
						sda_reg <= 1'b0;
						cnt     <= cnt + 1'b1;
					end
					// 时钟线维持高电平，数据线拉高，表示停止信号
					4'd3:
					begin
						state   <= s_idle;
						// flag    <= 1'b0;
						scl     <= 1'b1;
						sda_reg <= 1'b1;
						cnt     <= 4'd0;
					end
					default: 
					begin
						state <= s_stop;
						// flag  <= 1'b1;
					end
				endcase
			end
		endcase
	end
end

endmodule
