module pc(clk, pcin, pcout);
  input [31:0] pcin;
  input clk;
  output reg [31:0] pcout;
  
  always@(posedge clk)
    pcout <= pcin;

endmodule  
