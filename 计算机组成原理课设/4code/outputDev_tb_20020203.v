module test_OPD;
  
  reg clk, en;
  reg [3:2] addr;
  reg [31:0] din;
  wire [31:0] dout;
  
  outputDev OPD_wsz(clk, en, addr, din, dout);
  
  initial
  begin
    #0
    clk = 0;
    en = 0;
    addr = 2'b00;
    din = 32'h1234_5678;
    #50
    en = 1;
    #50
    en = 0;
    #150
    en = 1;
    addr = 2'b01;
    din = 32'h8765_4321;
    #50
    en = 1;
    din = 32'b0;
    addr = 2'b00;
    #50
    en = 0;
    
  end
  
  always
    #50 clk = ~clk;
    
  
endmodule
