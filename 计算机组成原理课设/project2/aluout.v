module aluout(clk, aluoutin, aluoutout);
  input clk;
  input [31:0] aluoutin;
  output reg [31:0] aluoutout;

  always@(posedge clk)  begin
    aluoutout <= aluoutin;

  end
  
endmodule
  