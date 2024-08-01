module m4(drout, prrd, m4out, addr);
  input [31:0] drout, prrd, addr;
  output [31:0] m4out;
  
  assign m4out = (addr[15:8] == 8'h7f) ? prrd : drout;
endmodule
