`timescale 1ns / 1ps

module top(
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

wire      clk_div;

divider divider_u
(
	.clk(clk),
	.rst_n(rst_n),
	// .rst(1'b0),
	.clk_div(clk_div)
);

i2c_master i2c_master_u
(
	.clk(clk_div),
	.rst_n(rst_n),
	//.rst(1'b0),
	.en(en),
	//.en(1'b1),
	.wr_rd(wr_rd),
	//.wr_rd(1'b0),
	.slave_addr(slave_addr),
	//.slave_addr(7'h29),
	.reg_addr(reg_addr),
	//.reg_addr(8'h5E),
	.data_wr(data_wr),
	//.data_wr(8'b11100001),
	.data_rd(data_rd),
	
	.state(state),
	
	.scl(scl),
	.sda(sda)
);


//ila_0 your_instance_name (
//	.clk(clk), // input wire clk


//	.probe0(scl), // input wire [0:0]  probe0  
//	.probe1(sda), // input wire [0:0]  probe1
//    .probe2(state), // input wire [7:0]  probe2 
//    .probe3(data_rd) // input wire [7:0]  probe3
//);


endmodule
