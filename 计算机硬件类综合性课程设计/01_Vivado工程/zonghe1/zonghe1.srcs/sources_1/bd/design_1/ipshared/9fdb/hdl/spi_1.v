`timescale 1ns / 1ps
module spi_1
(
    input               clk		, 			// 全局时钟
    input               rst_n	, 			// 复位信号，低电平有效
    input        [7:0]  data_send   , 			// 要发送的数据
    input               input_dc     ,
    input               spi_start   ,
    output              spi_dc,
    output              spi_rst,
    output  reg         spi_clk	, 			// SPI时钟
    output  reg         spi_cs    	, 			// SPI片选信号,低电平有效
    output  reg         spi_mosi				// SPI输出，用来给从机发送数据
        
);
 
reg	[3:0]	div_cnt;								//分频计数器
reg	[3:0]	send_count;						//发送计数器
//reg[7:0] data_send=8'b11001011;
assign spi_dc=input_dc;
assign spi_rst=rst_n;
wire div_end;
reg start0;//前面
reg start1;//后面
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
assign pos_start=(start0==1'b0)&&(start1==1'b1);//start上升沿判断

//16分频计数器
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
assign div_end=(div_cnt==15);//16是分频因子
// 生成spi_clk时钟
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		spi_clk <= 1'b0;			//模式0默认为低电平					
	else if(spi_cs==1'b0)begin			//在SPI传输过程中
		if(div_cnt == 10'd15 )
			spi_clk <= 1'b0;
		else if (div_cnt == 10'd7)
			spi_clk <= 1'b1;
		else 
			spi_clk <= spi_clk;	
	end
	else 
		spi_clk <= 1'b0;			//模式0默认为低电平		
end

// 生成片选信号spi_cs
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)
		spi_cs <= 1'b1;				//默认为高电平						
	else if(pos_start==1'b1)			//开始SPI准备传输，拉低片选信号
	begin
		spi_cs <= 1'b0;
	end
	//收到了SPI结束信号
	else if(div_end && send_count == 4'd8)//传输完毕
	begin
		spi_cs <= 1'b1;				//拉高片选信号，结束SPI传输
	end
end

 
// 发送数据
always @(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		spi_mosi <= 1'b0;						//模式0空闲
		send_count <= 4'd0;
	end
    else if(div_end && send_count == 4'd8)begin						//非传输时间段,传输完毕
		  spi_mosi <= 1'bz;						//模式0空闲
		  send_count <= 4'd0;
	end
	else if(div_cnt == 10'd0 && !spi_cs && send_count==0)begin		
		spi_mosi <= data_send[7];	//发送最高位
		send_count <= send_count + 1'b1;	
	end
	else if(send_count!=0 && send_count<8 && div_cnt == 10'd15 && !spi_cs)begin		
        spi_mosi <= data_send[7-send_count];    //发送数据移位
        send_count <= send_count + 1'b1;    
    end
	else begin
		spi_mosi <= spi_mosi;
		send_count <= send_count;
	end
end

endmodule
