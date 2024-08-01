`timescale 1ns / 1ps
module spi_1
(
    input               clk		, 			// ȫ��ʱ��
    input               rst_n	, 			// ��λ�źţ��͵�ƽ��Ч
    input        [7:0]  data_send   , 			// Ҫ���͵�����
    input               input_dc     ,
    input               spi_start   ,
    output              spi_dc,
    output              spi_rst,
    output  reg         spi_clk	, 			// SPIʱ��
    output  reg         spi_cs    	, 			// SPIƬѡ�ź�,�͵�ƽ��Ч
    output  reg         spi_mosi				// SPI������������ӻ���������
        
);
 
reg	[3:0]	div_cnt;								//��Ƶ������
reg	[3:0]	send_count;						//���ͼ�����
//reg[7:0] data_send=8'b11001011;
assign spi_dc=input_dc;
assign spi_rst=rst_n;
wire div_end;
reg start0;//ǰ��
reg start1;//����
always@(negedge rst_n or posedge clk)begin
    if(!rst_n)begin
        start0<=1'b0;
        start1<=1'b0;
    end
    else begin
        start0<=start1;
        start1<=spi_start;
    end
end
assign pos_start=(start0==1'b0)&&(start1==1'b1);//start�������ж�

//16��Ƶ������
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		div_cnt <= 10'd0;						
	else if(spi_cs==1'b0)begin
		if(!div_end)
			div_cnt <= div_cnt + 1'b1;
		else
		    div_cnt <= 10'd0;		
	end
	else 
		div_cnt <= 10'd0;	
end
assign div_end=(div_cnt==15);//16�Ƿ�Ƶ����
// ����spi_clkʱ��
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		spi_clk <= 1'b0;			//ģʽ0Ĭ��Ϊ�͵�ƽ					
	else if(spi_cs==1'b0)begin			//��SPI���������
		if(div_cnt == 10'd15 )
			spi_clk <= 1'b0;
		else if (div_cnt == 10'd7)
			spi_clk <= 1'b1;
		else 
			spi_clk <= spi_clk;	
	end
	else 
		spi_clk <= 1'b0;			//ģʽ0Ĭ��Ϊ�͵�ƽ		
end

// ����Ƭѡ�ź�spi_cs
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		spi_cs <= 1'b1;				//Ĭ��Ϊ�ߵ�ƽ						
	else if(pos_start==1'b1)			//��ʼSPI׼�����䣬����Ƭѡ�ź�
	begin
		spi_cs <= 1'b0;
	end
	//�յ���SPI�����ź�
	else if(div_end && send_count == 4'd8)//�������
	begin
		spi_cs <= 1'b1;				//����Ƭѡ�źţ�����SPI����
	end
end

 
// ��������
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		spi_mosi <= 1'b0;						//ģʽ0����
		send_count <= 4'd0;
	end
    else if(div_end && send_count == 4'd8)begin						//�Ǵ���ʱ���,�������
		  spi_mosi <= 1'bz;						//ģʽ0����
		  send_count <= 4'd0;
	end
	else if(div_cnt == 10'd0 && !spi_cs && send_count==0)begin		
		spi_mosi <= data_send[7];	//�������λ
		send_count <= send_count + 1'b1;	
	end
	else if(send_count!=0 && send_count<8 && div_cnt == 10'd15 && !spi_cs)begin		
        spi_mosi <= data_send[7-send_count];    //����������λ
        send_count <= send_count + 1'b1;    
    end
	else begin
		spi_mosi <= spi_mosi;
		send_count <= send_count;
	end
end

endmodule
