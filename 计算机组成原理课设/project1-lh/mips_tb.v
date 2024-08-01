module mips_tb; 
  reg           clk ;
  reg           rst ;
  
  mips mips_1(clk, rst);
  
  initial
    begin
      clk = 0;
      rst = 1;
      #20 rst = 0;
    end
    
    
  always
    #10
    clk = ~clk;
  
endmodule