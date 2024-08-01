`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/30 22:13:01
// Design Name: 
// Module Name: dout
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

module dout(
    input clk,
//    input clk_rst, // 新添加的输入，分频为5Hz也就是0.2秒，功能为20秒清空一次bram
    input rst_n,
    input img,
    input img_en,
    input [10:0] h,
    input [10:0] w,
    output reg [31:0] dinb,
    output reg rstb,
    output reg [31:0] addrb,
    output reg enb,
    output reg [3:0] web
    );
    reg [1:0] state;
    reg [6:0] in_cnt;
    reg [31:0] temp_din;
    reg done;
    wire [31:0] load_end;
    parameter [10:0] count_rst = 'd100;
    reg counter_rst;
    assign load_end = 32'h4100_0000 + (h * w) / 8;
    // 生成din
    always@(posedge clk or negedge rst_n)   begin
        if(!rst_n)  begin   
            
            in_cnt <= 'd31; done <= 0;  dinb <= 'd0;     temp_din <= 'd0;    addrb <= 32'h4100_0000; 
            web <= 'd0;     enb <= 0;   rstb <= 1;
        end
        else if(img_en) begin
            temp_din[in_cnt] <= img;
            if(in_cnt <= 'd0)   begin
                dinb <= temp_din;
                in_cnt <= 'd31;
                done <= 1;
                
                if(addrb <= load_end)   begin  
                    addrb <= addrb + 32'd4;
                    web <= 4'b1111;     enb <= 1;     rstb <= 0;
                end
                else if(addrb > load_end) begin    
                    addrb <= addrb;
                    web <= 4'b0000;     enb <= 0;     rstb <= 0;
                end
            end
            else begin
                web <= 4'b0000; enb <= 0; rstb <= 0;    in_cnt <= in_cnt - 1;
            end
        end
        else    begin
            web <= 4'd0;    enb <= 0;   rstb <= 0;
        end
//        // 新添加的逻辑，实现15s重置一次bram和写起始地址
//        if(counter_rst == count_rst)    begin 
//            in_cnt <= 'd31; done <= 0;  dinb <= 'd0;     temp_din <= 'd0;    addrb <= 32'h4100_0000; 
//            web <= 'd0;     enb <= 0;   rstb <= 1;
//        end
//        else rstb <= 0;
    end
//    // 新添加的，实现15秒归零一次
//    always@(posedge clk_rst or negedge rst_n)   begin
//        if(!rst_n) counter_rst <= 'd0;
//        else counter_rst <= counter_rst + 1;
//    end
    // 写数据
//    always@(posedge clk or negedge rst_n)   begin
//        if(!rst_n)  begin
//            web <= 'd0;
//            enb <= 0;
////            addrb <= 32'h4000_0000;
////            state <= 'd0;
//            rstb <= 1;
//        end
//        else    begin
////            case(state) 
////                2'd0 : begin
////                    if(done == 1)   begin
////                        web <= 4'b1111;
////                        enb <= 1;
////                        rstb <= 0;
////                        state <= 'd1;
////                    end    
////                    else begin
////                        web <= web; enb <= enb; rstb <= rstb; state <= state;
////                    end
////                end
////                2'd1 : begin
////                    if(addrb > 32'h4001_7ffc)    begin
//////                        $finish;
////                        state <= 'd2;
////                        web <= 4'b0000;
////                        enb <= 0;
////                        rstb <= 0;
////                    end
////                    else if(addrb <= 32'h4001_7ffc)   begin
//////                        if(done) addrb <= addrb + 32'd4;
////                        web <= 4'b1111;
////                        enb <= 1;
////                        rstb <= 0;
////                        state <= 0;
////                    end
////                end
////                2'd2:   state <= state;
////                endcase
//            if(addrb > 32'h4001_7ffc)   begin
//                web <= 4'b0000;
//                enb <= 0;
//                rstb <= 0;
//            end
//            else if(addrb <= 32'h4001_7ffc) begin
                
//            end 
//        end
//    end
endmodule
