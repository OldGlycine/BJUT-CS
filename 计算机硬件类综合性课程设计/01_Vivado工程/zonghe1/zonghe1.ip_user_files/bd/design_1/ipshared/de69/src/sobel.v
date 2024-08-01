`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/02 09:40:33
// Design Name: 
// Module Name: sobel
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


module sobel(
    input               clk,
    input               rst_n,
    input   [7:0]       mat_r1,
    input   [7:0]       mat_r2,
    input   [7:0]       mat_r3,
    input               mat_en,
    output  reg        img_edge,
    output  reg        img_en
    );

wire                    DIM_VALID;
reg [7:0]   p11, p12, p13, p21, p22, p23, p31, p32, p33;
reg [9:0]   Gx_t1, Gx_t2, Gx_data;
reg [9:0]   Gy_t1, Gy_t2, Gy_data;
wire [23:0]  Gxy_sq;
wire [15:0] DIM;
parameter sobel_thresh = 50;

always@(posedge clk or negedge rst_n)
    if(!rst_n)  img_en <= 1'b0;
    else if(mat_en)       img_en <= DIM_VALID;
    
always@(posedge clk or negedge rst_n)
    if(!rst_n)  begin
        p11 <= 8'd0;    p12 <= 8'd0;    p13 <= 8'd0;
        p21 <= 8'd0;    p22 <= 8'd0;    p23 <= 8'd0;
        p31 <= 8'd0;    p32 <= 8'd0;    p33 <= 8'd0;
    end
    else if(mat_en) begin
        p11 <= p12;    p12 <= p13;    p13 <= mat_r1;
        p21 <= p22;    p22 <= p23;    p23 <= mat_r2;
        p31 <= p32;    p32 <= p33;    p33 <= mat_r3;
    end
    
always@(posedge clk or negedge rst_n)   begin
    if(!rst_n)  begin
        Gx_t1 <= 10'd0; Gx_t2 <= 10'd0;
        Gx_data <= 10'd0;
    end
    else begin
        Gx_t1 <= p13 + (p21 << 1) + p33;
        Gx_t2 <= p11 + (p21 << 1) + p31;
        Gx_data <= (Gx_t1 >= Gx_t2) ? (Gx_t1 - Gx_t2) : (Gx_t2 - Gx_t1);
    end
end

always@(posedge clk or negedge rst_n)   begin
    if(!rst_n)  begin
        Gy_t1 <= 10'd0; Gy_t2 <= 10'd0;
        Gy_data <= 10'd0;
    end
    else begin
        Gy_t1 <= p11 + (p12 << 1) + p13;
        Gy_t2 <= p31 + (p32 << 1) + p33;
        Gy_data <= (Gy_t1 >= Gy_t2) ? (Gy_t1 - Gy_t2) : (Gy_t2 - Gy_t1);
    end
end

assign Gxy_sq = Gx_data * Gx_data + Gy_data * Gy_data;

cordic_ip genSq(
    .aclk(clk),
    .aresetn(rst_n),
    .s_axis_cartesian_tvalid(mat_en),
    .s_axis_cartesian_tdata(Gxy_sq),
    .m_axis_dout_tvalid(DIM_VALID),
    .m_axis_dout_tdata(DIM)
);
reg [1:0] i = 0;
always@(posedge clk or negedge rst_n)   begin
    if(!rst_n)                  img_edge <= 1'b0;
    else if(DIM_VALID)  begin
        if(DIM > sobel_thresh)  img_edge <= 1'b1;
        else                    img_edge <= 1'b0;   
        end
end
endmodule
