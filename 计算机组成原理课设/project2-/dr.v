module dr(clk, drin, drout);
  input clk;
  input [31:0] drin;
  output reg [31:0] drout;
  
  always@(posedge clk)
    drout <= drin;
    
endmodule
