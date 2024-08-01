module bReg(clk, alu_dataOut_2, bReg_out);
  input clk;
  input [31:0] alu_dataOut_2;
  output reg [31:0] bReg_out;
  
  always@(posedge clk)
  begin
    bReg_out <= alu_dataOut_2;
  end
  
endmodule


