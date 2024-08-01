module dm_tb;
  reg   [9:0]   addr ;  // address bus
  reg   [31:0]  din ;   // 32-bit input data
  reg           we ;    // memory write enable
  reg           clk ;   // clock
  wire  [31:0]  dout ;  // 32-bit memory output
  
  dm_1k dm1(addr, din, we, clk, dout);
  
  initial   begin
    clk = 1; din = 32'b1011_1111_1010;  we = 0; addr = 10'b0;
    #20 we = 1;
    #120 we = 0;
  end
  
  always
    #30 clk = ~clk;
  
endmodule
