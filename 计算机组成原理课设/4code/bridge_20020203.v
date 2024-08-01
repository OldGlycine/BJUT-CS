module bridge(praddr, prwd, dev0_rd, dev1_rd, dev2_rd, wecpu, IRQ, prrd, dev_wd, dev_addr, wedev0, wedev2, HWInt);
  input [31:0] praddr, prwd, dev0_rd, dev1_rd, dev2_rd;
  input wecpu, IRQ;
  output [31:0] prrd, dev_wd;
  output [31:0] dev_addr;
  output wedev0, wedev2;  // 0 timer   2 dataOut
  output [5:0] HWInt;
  
  wire HitDev0, HitDev1, HitDev2;  // 0 timer   2 dataOut
  
  assign HitDev0 = (praddr == 32'h0000_7F00 || praddr == 32'h0000_7F04 || praddr == 32'h0000_7F08) ? 1 : 0;
  assign HitDev1 = (praddr == 32'h0000_7F0C) ? 1 : 0;
  assign HitDev2 = (praddr == 32'h0000_7F10 || praddr == 32'h0000_7F14) ? 1 : 0;
  
  assign wedev0 = wecpu & HitDev0;
  assign wedev2 = wecpu & HitDev2;
  assign prrd = (HitDev0) ? dev0_rd : (HitDev1) ? dev1_rd : (HitDev2) ? dev2_rd : dev0_rd;
  assign dev_addr = praddr;
  assign dev_wd = prwd;
  assign HWInt = {5'b0, IRQ};
  
endmodule
