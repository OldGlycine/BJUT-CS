module im_1k(addr, dout);
  
  input [12:0] addr;
  output [31:0] dout;
  
  reg [7:0] im[8192:0];
  
  initial
  begin
    //$readmemh("p1-test.txt", im, 'h1000);
    //$readmemh("test-lbsb.txt", im);
    //$readmemh("p2-test.txt", im);
    $readmemh("111.txt", im, 'h1000);
    $readmemh("222.txt", im,'h0180);
  end
  
  assign dout = {im[addr], im[addr+1], im[addr+2], im[addr+3]};
  
endmodule
