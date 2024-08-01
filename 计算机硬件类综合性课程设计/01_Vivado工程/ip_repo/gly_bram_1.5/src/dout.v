`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/10 14:25:57
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
    input rst_n,
    input img,
    input img_en,
    input [10:0] h,
    input [10:0] w,
    output reg [31:0] dinb,
    output clkb,
    output reg rstb,
    output reg [31:0] addrb,
    output reg enb,
    output reg [3:0] web,
    input [31:0] doutb
    );
    assign clkb = clk;
    reg [1:0] state;
    reg [6:0] in_cnt;
    reg [31:0] temp_din;
    reg done;
    wire [31:0] load_end;
    assign load_end = 32'h4300_0000 + (h * w) / 8;
    // 生成din
    always@(posedge clk or negedge rst_n)   begin
        if(!rst_n)  begin   
            in_cnt <= 'd31; done <= 0;  dinb <= 'd0;     temp_din <= 'd0;    addrb <= 32'h4300_0000; 
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
    end
    
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