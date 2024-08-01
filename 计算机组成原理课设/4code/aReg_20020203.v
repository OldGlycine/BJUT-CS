module aReg(clk, alu_dataOut_1, aReg_out);
  input clk;
  input [31:0] alu_dataOut_1;
  output reg [31:0] aReg_out;
  
  always@(posedge clk)
  begin
    aReg_out <= alu_dataOut_1;
  end
  
endmodule
