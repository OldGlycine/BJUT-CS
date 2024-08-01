`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/30 21:53:27
// Design Name: 
// Module Name: rgb2gray
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


module rgb2gray(
    // basic input
    input               clk,
    input               rst_n,
    
    // RGB in
    input   [11:0]      RGB444_in,      // 如果输入是RGB888，那么这里的位宽需要改，然后下面RGB888的wire变量可以删，也可以直接赋值
    input               RGB_data_en,   // 0 - read forbiden, 1 - allow read and convert
    
    // output
    output  [7:0]      gray_out,
    output  reg       gray_out_en
 );
 
 reg RGB_data_en_temp;
 reg [15:0] gray_temp;
 reg [14:0] r, b;
 reg [15:0] g;
 wire [23:0] RGB888; 
 assign RGB888 = {
    RGB444_in[11:8], 4'b1111, RGB444_in[7:4], 4'b1111, RGB444_in[3:0], 4'b1111};
 
 // Step1.get RGB
 always@(posedge clk or negedge rst_n)
    if(!rst_n)  begin
        r <= 15'd0;
        g <= 16'd0;
        b <= 15'd0;
    end
    else if(RGB_data_en)  begin
        r <= RGB888[23:16] * 8'd76;
        g <= RGB888[15:8] * 8'd150;
        b <= RGB888[7:0] * 8'd30;
    end
    
// Step2-1.get sum of RGB
always@(posedge clk or negedge rst_n)
    if(!rst_n)
        gray_temp <= 8'd0;
    else
        gray_temp <= r + g + b;

// getting sum of RGB and getting gray need 2 clk posedge total,thus gray_out_en need it too
always@(posedge clk or negedge rst_n)
    if(!rst_n)  begin
        RGB_data_en_temp <= 1'b0;
        gray_out_en <= 1'b0;
    end
    else begin  // else 替换else if(distance_en)
        RGB_data_en_temp <= RGB_data_en;
        gray_out_en <= RGB_data_en_temp;
    end
    
// Step2-2.get gray
assign gray_out = gray_temp[15:8];

endmodule
