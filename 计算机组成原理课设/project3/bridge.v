module bridge(praddr, prwd, prrd, dev0_rd, dev1_rd, dev2_rd, 
            dev_wd, dev_addr, wen, dev0_we, dev2_we, hwint, irq);
  input [31:0] praddr, prwd, dev0_rd, dev1_rd, dev2_rd;
  input wen, irq;
  output [31:0] prrd, dev_wd;
  output [31:0] dev_addr;
  output dev0_we, dev2_we; // 0 - timer; 2 - dataout
  output [5:0] hwint;
  
  wire hitdev0, hitdev1, hitdev2;
  
  // 6 hardwares int, including timer(3), input(1), output(2)
  assign hitdev0 = ((praddr == 32'h0000_7f00) |
                   (praddr == 32'h0000_7f04) |
                   (praddr == 32'h0000_7f08)) ? 1 : 0;
  assign hitdev1 = (praddr == 32'h0000_7f0c) ? 1 : 0;
  assign hitdev2 = (praddr == 32'h0000_7f10) |
                   (praddr == 32'h0000_7f14) ? 1 : 0;
                
  assign dev0_we = hitdev0 & wen;
  assign dev2_we = hitdev2 & wen;
  assign prrd = hitdev0 ? dev0_rd : (hitdev1 ? dev1_rd : (hitdev2 ? dev2_rd : 32'bz));
  assign dev_wd = prwd;
  assign dev_addr = praddr;
  assign hwint = {5'b0, irq};
endmodule
  