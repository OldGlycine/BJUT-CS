module im_tb;
  reg [9:0] addr;
  wire [31:0] out;
  
  im_1k im1(addr, out);
  
  initial begin
    addr = 10'b0;  
  end
  
  always
    #30 addr <= addr + 4;
    
endmodule
