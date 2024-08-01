module mips_tb;
  reg clk;
  reg rst;
  
  mips mm(clk, rst);
  
  initial
    begin
      rst=0;
		  clk=1;
		  #50 clk=0;
		  #50 rst=1;
		  #150 rst=0;
    end
    
  always  begin
    #50
    clk = ~clk;
  end
endmodule
