`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/17 14:59:34
// Design Name: 
// Module Name: bram_top
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


module bram_top(
    input clk,
    input rst_n,
    output [31:0] dinb,
    output clkb,
    output rstb,
    output [31:0] addrb,
    output enb,
    output [3:0] web,
    input [31:0] doutb
);

wire [7:0] mat_r1, mat_r2, mat_r3;
wire mat_en, img, img_en;

//reg [7:0] in [0:1024 * 768 - 1];
reg en;
reg [18:0] addr;
wire [7:0] gray_in;
parameter [10:0] h = 11'd1024, w = 11'd384;
//initial begin
//    $readmemh("D:/study/hardware/pictures/1.txt",in);
//end

blk_mem_gen_0 mem0(
    .clka(clk),
    .addra(addr),
    .douta(gray_in),
    .ena(en)
);

always @(posedge clk or negedge rst_n)  begin
    if(!rst_n)  begin   en <= 0;    addr <= 'd0;    end
    else if(!en) en <= 1;
    else if(en) begin
//        gray_in <= in[addr];
        addr <= addr + 'd1;
        if(addr == h*w-1) 
            addr <= addr;
    end
end

genMat gener(
        .clk(clk),
        .rst_n(rst_n),
        .img(gray_in),
        .gray_out_en(en),
        .IMG_HEIGHT(h),
        .IMG_WEIGHT(w),
        .mat_r1(mat_r1),
        .mat_r2(mat_r2),
        .mat_r3(mat_r3),
        .mat_en(mat_en)
    );
    
    sobel sobel(
        .clk(clk),
        .rst_n(rst_n),
        .mat_r1(mat_r1),
        .mat_r2(mat_r2),
        .mat_r3(mat_r3),
        .mat_en(mat_en),
        .img_edge(img),
        .img_en(img_en)
    );
    
    dout dout(
        .clk(clk),
        .rst_n(rst_n),
        .img(img),
        .img_en(img_en),
        .h(h),
        .w(w),
        .dinb(dinb),
        .clkb(clkb),
        .rstb(rstb),
        .addrb(addrb),
        .enb(enb),
        .web(web),
        .doutb(doutb)
    )    ;

endmodule

