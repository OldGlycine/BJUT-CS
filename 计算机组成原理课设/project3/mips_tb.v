module mips_tb;
  
  reg clk,rst;
  reg [31:0] dev1_rd;
  
  mips m(clk, rst, dev1_rd);
  
  initial
  begin
    dev1_rd = 32'h1234_5678;
    rst=0;
		clk=0;
		#50 rst=1;
		#70 rst=0;
		#2000 dev1_rd = 32'd66;
		#3960 dev1_rd=32'd50;
  end
  
  
  always
  begin
    #100 clk = ~clk;
  end
  
endmodule


