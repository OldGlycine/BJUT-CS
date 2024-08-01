module aluReg(clk, alu_res, aluReg_out, overflow, overflowReg);
  input clk;
  input [31:0] alu_res;
  input overflow;
  output reg [31:0] aluReg_out;
  output reg overflowReg;
  
  always@(posedge clk)
  begin
    aluReg_out <= alu_res;
    overflowReg <= overflow;
  end
  
endmodule
