module ar(clk, arin, arout);
  input clk;
  input [31:0] arin;
  output reg [31:0] arout;
  
  always@(posedge clk)
    arout <= arin;
  
endmodule

