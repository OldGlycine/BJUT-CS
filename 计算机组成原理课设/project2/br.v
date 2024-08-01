module br(clk, brin, brout);
  input clk;
  input [31:0] brin;
  output reg [31:0] brout;
  
  always@(posedge clk)
    brout <= brin;
  
endmodule



