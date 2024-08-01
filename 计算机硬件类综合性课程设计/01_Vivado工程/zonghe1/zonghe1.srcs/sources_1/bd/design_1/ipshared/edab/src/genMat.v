`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/17 15:04:27
// Design Name: 
// Module Name: genMat
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module genMat(
    // basic input
    input               clk,
    input               rst_n,
    
    // Images
    input   [7:0]       img,
    input               gray_out_en,
    input   [10:0]       IMG_HEIGHT,     // 1024
    input   [10:0]       IMG_WEIGHT,     // 768
    
    // Outputs - Mat 3x3
    output  [7:0]       mat_r1,
    output  [7:0]       mat_r2,
    output  [7:0]       mat_r3,
    output              mat_en
    );

// wire & reg
reg     [10:0]  col_cnt; // 1024
reg     [10:0]  row_cnt; // 768
wire            wr_en2;
wire            wr_en3;
wire            rd_en1;
wire            rd_en2;
wire    [7:0]   fifo_rd_data1;
wire    [7:0]   fifo_rd_data2;
wire    [7:0]   fifo_rd_data3;
wire    [10:0]   COL_NUM;
wire    [10:0]   ROW_NUM;

reg gray_en_temp;

always@(posedge clk or negedge rst_n)   begin
    if(!rst_n)   gray_en_temp <= 0;  
    else    
        gray_en_temp <= gray_out_en;
end

// main code
assign COL_NUM = IMG_HEIGHT;
assign ROW_NUM = IMG_WEIGHT;
assign wr_en2 = row_cnt >= 11'd1 ? gray_en_temp : 11'b0;
assign rd_en1 = wr_en2;
assign wr_en3 = row_cnt >= 11'd2 ? gray_en_temp : 11'b0;
assign rd_en2 = wr_en3;
assign mat_en = row_cnt >= 11'd3 ? gray_en_temp : 11'b0;
assign mat_r1 = fifo_rd_data1;
//assign mat_r1 = img;
assign mat_r2 = fifo_rd_data2;
assign mat_r3 = fifo_rd_data3;

always@(posedge clk or negedge rst_n)
    if(!rst_n)                                   // default
        col_cnt <= 11'd0;   
    else if(col_cnt == COL_NUM-1 && gray_en_temp) // next row
        col_cnt <= 11'd0;
    else if(gray_out_en)                         // ++
        col_cnt <= col_cnt + 1'b1;
    else                                         // lock when row++
        col_cnt <= col_cnt;
 
 always@(posedge clk or negedge rst_n)
    if(!rst_n)
        row_cnt <= 11'd0;
    else if(row_cnt == ROW_NUM-1 && col_cnt == COL_NUM-1 && gray_en_temp)
        // next img
        row_cnt <= 11'd0;
    else if(col_cnt == COL_NUM-1 && gray_out_en)
        // row++
        row_cnt <= row_cnt + 1'b1;  

 fifo_ip mat_fifo1(
    .clk(clk),
    .srst(~rst_n),
    .din(img),
    .wr_en(gray_en_temp),
    .rd_en(rd_en1),
    .dout(fifo_rd_data1),
    .full(),
    .empty()
 );
 
 fifo_ip mat_fifo2(
    .clk(clk),
     .srst(~rst_n),
     .din(fifo_rd_data1),
     .wr_en(wr_en2),
     .rd_en(rd_en2),
     .dout(fifo_rd_data2),
     .full(),
     .empty()
 );
 
 fifo_ip mat_fifo3(
    .clk(clk),
     .srst(~rst_n),
     .din(fifo_rd_data2),
     .wr_en(wr_en3),
     .rd_en(mat_en),
     .dout(fifo_rd_data3),
     .full(),
     .empty()
 );
endmodule

