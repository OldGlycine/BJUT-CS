module gpr_tb;
  reg clk, reset, regwrite;
  reg [31:0] m2out;
  reg [4:0] rs, rt, m1out;
  wire [31:0] busa, busb;
  
  gpr gpr1(clk, reset, regwrite, m1out, m2out, rs, rt, busa, busb);
  
  initial begin
    clk = 1; reset = 0; regwrite = 0; m2out = 32'habcd_ef12; rs = 5'b0; rt = 5'b1; m1out = 5'b00000;
    #5 reset = 1;
    #5 reset = 0;
    #20 regwrite = 1;
    #60 regwrite = 0;
  end
  
  always  
    #30 clk = ~clk;
  
endmodule
