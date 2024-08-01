module ir(clk, irwr, imin, irout);
  
  input clk, irwr;
  input [31:0]imin;
  output reg [31:0] irout;
  
  always@(posedge clk)
  begin
    if(irwr)
      begin
        irout = imin;
      end
  end
  
endmodule
