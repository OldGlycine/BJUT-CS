`timescale 1ns / 1ps

module i2c_master(
    input        clk,         // ʱ��
	input        rst_n,       // ��λ�źţ�����Ч
	input        en,          // ʹ���ź�
	
	input        wr_rd,       // ��дλ��0д1��
	input  [6:0] slave_addr,  // �ӻ���ַ
	input  [7:0] reg_addr,    // �Ĵ�����ַ
	input  [7:0] data_wr,     // ��д������
	output [7:0] data_rd,     // ��ȡ����
	
	output [7:0] state,
	
	output       scl,
	inout        sda
);


// ״̬state
parameter s_idle           = 8'd0;  // ����
parameter s_start          = 8'd1;  // ��ʼ
parameter s_send_slaveAddr = 8'd2;  // ���ʹӻ���ַ�Լ���дλ
parameter s_receive_ack    = 8'd3;  // ����ack
parameter s_send_regAddr   = 8'd4;  // ���ͼĴ�����ַ
parameter s_send_data      = 8'd5;  // ��������
parameter s_receive_data   = 8'd6;  // ��������
parameter s_send_ack       = 8'd7;  // ����ack
parameter s_stop           = 8'd8;  // ֹͣ
parameter write            = 8'd9;  // д

reg       scl;
reg       sda_reg;

reg [7:0] data_rd;
reg [7:0] state;      // ��ǰ����״̬
reg [7:0] state_pre;  // ��¼����д״̬�����������յ���ack
reg [7:0] shift_data;
reg [3:0] bit_cnt;    // ���ͻ���յ�λ��
reg [3:0] cnt;        // ����
reg       flag;       // �Ƿ�����������sda   
reg       state_already;  //ָ��״̬�����ת�Ʋ�����clk������(����һ��clk�������ȶ�״̬)
reg       cnt_state;  // ��¼��ǰ״̬�Ƿ���һ��clk
reg       once;       // ȷ��ִֻ��һ�Σ������ظ���д��ʹ�ܸ�Ϊ0�ٸ�Ϊ1ʱ�ٴ�ִ�У�


// assign sda = sda_reg;
// assign flag = (state == s_start || state == write || state == s_send_ack || state == s_stop) ? 1'b1 : 1'b0;
assign sda = (flag) ? sda_reg : 1'bz;  // ��̬��


always @ (posedge clk, negedge rst_n)
begin
	// ��λ
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
			// ����
			s_idle:
			begin
				// ͬrst
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
			// ��ʼ
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
					// ʱ���ߺ�����������
					4'd2:
					begin
						scl     <= 1'b1;
						sda_reg <= 1'b1;
						cnt     <= cnt + 1'b1;
					end
					// ʱ����ά�ָߵ�ƽ�����������ͣ���ʾ��ʼ�ź�
					4'd3:
					begin
						scl         <= 1'b1;
						sda_reg     <= 1'b0;
						state       <= write;  // ?
						// flag        <= 1'b1;
						// ����Ƕ���������ʱrestart���������뷢�ʹӻ���ַ����
						if(state_pre == s_receive_ack)
						begin
							// state      <= s_receive_data; ��
							state_pre  <= s_start;  // ?
							shift_data <= {slave_addr[6:0], 1'b1};
						end
						// д
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
			// ����д����
			// s_send_slaveAddr:
			// s_send_regAddr:
			// s_send_data:
			write:
			begin
				case(cnt)
					// ʱ�����ͣ�׼���޸�sda_regֵ
					4'd0:
					begin
						scl <= 1'b0;
						cnt <= cnt + 1'b1;
					end
					// ʱ�����ͣ��޸�sda_regֵ���Ӹ�λ��ʼ����
					4'd1:
					begin
						scl     <= 1'b0;
						sda_reg <= shift_data[7 - bit_cnt];
						flag    <= 1'b1;
						bit_cnt <= bit_cnt + 1;
						cnt     <= cnt + 1'b1;
					end
					// ʱ�����ߣ�sda_reg��Ч
					4'd2:
					begin
						scl     <= 1'b1;
						cnt     <= cnt + 1'b1;
					end
					4'd3:
					begin
						scl <= 1'b1;
						cnt <= 4'd0;
						// 8λ�������
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
			// ����ack
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
								// д
								if(!wr_rd)
								begin
									state      <= write;
									// flag       <= 1'b1;
									state_pre  <= s_send_data;
									shift_data <= data_wr;
								end
								// ��
								else if(wr_rd)
									state     <= s_start;
									// flag      <= 1'b1;
									state_pre <= s_receive_ack;
							end
							else if(state_pre == s_send_data)
							begin
								// ֻ��дһ���ֽ� ?
								state <= s_stop;
								// flag  <= 1'b1;
							end
							// ������
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
			// ��������
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
			// ����nack ?
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
			// ֹͣ
			s_stop:
			begin
				case(cnt)
					4'd0:
					begin
						scl     <= 1'b0;
						sda_reg <= 1'b1;
						cnt     <= cnt + 1'b1;
					end
					// ʱ���ߺ�����������
					4'd1:
					begin
						scl     <= 1'b0;
						sda_reg <= 1'b0;
						flag    <= 1'b1;
						cnt     <= cnt + 1'b1;
					end
					// ʱ��������
					4'd2:
					begin
						scl     <= 1'b1;
						sda_reg <= 1'b0;
						cnt     <= cnt + 1'b1;
					end
					// ʱ����ά�ָߵ�ƽ�����������ߣ���ʾֹͣ�ź�
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
