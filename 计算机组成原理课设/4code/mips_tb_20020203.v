module test_mips;
  
  reg clk,rst;
  reg [31:0] dev1_rd;
  
  mips mips_wsz(clk, rst, dev1_rd);
  
  initial
  begin
    dev1_rd = 32'b0;
    rst=0;
		clk=0;
		#50 rst=1;
		#70 rst=0;
		#2000 dev1_rd = 32'd66;
		#50000 dev1_rd=32'd50;
  end
  
  
  always
  begin
    #100 clk = ~clk;
  end
  
endmodule
