module dm_1k(addr, din, we, clk, dout);
  input [13:0] addr;
  input [31:0] din;
  input we;
  input clk;
  output [31:0] dout;

  reg [7:0] dm[12287:0];
  
  assign dout = {dm[addr+3], dm[addr+2], dm[addr+1], dm[addr]};
  
  integer i;
  initial
    begin
      for(i=0; i<12288; i=i+1) dm[i]<=0;
    end
  
  always@(posedge clk)
  begin
    if(we)
      begin
        {dm[addr+3], dm[addr+2], dm[addr+1], dm[addr]} <= {din[31:24], din[23:16], din[15:8], din[7:0]};
      end
  end

endmodule

