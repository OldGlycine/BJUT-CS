module pc(clk, pcwr, pcin, pcout);
  input clk, pcwr;
  input [31:0] pcin;
  output reg [31:0] pcout;
  
  always@(posedge clk)
  if(pcwr)
    pcout <= pcin;
endmodule