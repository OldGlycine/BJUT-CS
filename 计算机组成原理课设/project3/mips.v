module mips(clk, rst, dev1_rd);
  input   clk;
  input   rst;
  input [31:0] dev1_rd;
  // wires
  wire [31:0] pcout;
  
  wire [1:0] npcop;
  wire zero;
  wire [31:0] nextpc;
  wire [31:0] pc_4, epc;
  wire eret;
  
  wire [1:0] gprsel;
  wire [4:0] m1out;
  
  wire [2:0] wdsel;
  wire [31:0] aluo, dmout, m2out;
  
  wire bsel;
  wire [31:0] bo, imm32, m3out;
  
  wire[31:0] m4out;
  
  wire gprwr;
  wire [31:0] busa, busb;
  
  wire dmwr;
  
  wire [1:0] extop;
  wire [31:0] extout;
  
  wire [2:0] aluop;
  wire overflow;
  
  wire [5:0] opcode, funct;
  
  wire pcwr, irwr;
  wire [31:0] irin, irout;
  wire [31:0] arout, brout, aluoutout, drout;
  wire islb,issb, IntReq, cp0_wen, EXLSet, EXLClr, IntPc;

  wire [31:0] cp0out;

  wire [31:0] prrd, dev0_rd, dev2_rd, dev_wd, dev_addr;
  wire bridge_wen, IRQ, dev0_we, dev2_we;
  wire [5:0] HWInt;
  /*
  module pc(clk, pcwr, pcin, pcout); 
module npc(pcin, rd1, npcop, zero, imm, nextpc, pc_4, rst, epc, ERET, IntReq); //////////
  module im_1k( addr, dout ) ;
  module ir(irwr, irin, irout, clk);
  module m1(gprsel, rt, rd, m1out);
  module module m2(wdsel, aluo, dmout, pc_4, m2out, cp0out);
  module m3(bsel, bo, imm32, m3out);
  module gpr(clk, reset, regwrite,m1out, m2out, rs, rt, busa, busb);
  module ar(clk, arin, arout);
  module br(clk, brin, brout);
  module dm_1k( addr, din, we, clk, dout , islb, issb) ;
  module dr(clk, drin, drout);
  module ext(imm16, extop, out);
  module alu(A, B, aluctr, zero, overflow, out);
  module aluout(clk, aluoutin, aluoutout);
  module controller(clk, opcode, funct, aluop, gprsel, gprwr, extop, dmwr,
                   wdsel, npcop, bsel, overflow, rst, pcwr, irwr, zero,islb,issb,
                   MF,ismfc0, IntReq, cp0_wen, bridge_wen, EXLSet, EXLClr, IntPc);
  module outputDEV(clk, en, addr, din, dout);
  module timer(CLK_I, RST_I, ADD_I, WE_I, DAT_I, DAT_O, IRQ);
  module m4(drout, prrd, m4out, ismfc0);
  module cp0(PC, DIn, HWInt, Sel, Wen, EXLSet, EXLClr, clk, rst, IntReq, epc, DOut);
  module bridge(praddr, prwd, prrd, dev0_rd, dev1_rd, dev2_rd, 
            dev_wd, dev_addr, wen, dev0_we, dev2_we, hwint, irq);
  
   //////////////////*/
  // modules
  pc pc_21071003(clk, pcwr, nextpc, pcout);
  
  npc npc_21071003(pcout, busa, npcop, zero, irout[25:0], nextpc, pc_4, rst, epc, EXLClr, IntPc);
  
  im_1k im_1k_21071003(pcout[12:0], irin);
  
  ir ir_21071003(irwr, irin, irout, clk);
  
  m1 m1_21071003(gprsel, irout[20:16], irout[15:11], m1out);
  
  m2 m2_21071003(wdsel, aluoutout, m4out, pc_4, m2out, cp0out);
  
  m3 m3_21071003(bsel, brout, extout, m3out);
  
  m4 m4_21071003(drout, prrd, m4out, aluoutout);
  
  gpr gpr_21071003(clk, rst, gprwr, m1out, m2out, irout[25:21], irout[20:16], busa, busb);
  
  ar ar_21071003(clk, busa, arout);
  
  br br_21071003(clk, busb, brout);
  
  dm_1k dm_1k_21071003(aluoutout[13:0], brout, dmwr, clk, dmout, islb, issb);
  
  dr dr_21071003(clk, dmout, drout);
  
  ext ext_21071003(irout[15:0], extop, extout);
  
  alu alu_21071003(arout, m3out, aluop, zero, overflow, aluo);
  
  
  
  
  
  aluout aluout_21071003(clk, aluo, aluoutout);
  
  controller c_21071003(clk, irout[31:26], irout[5:0], aluop, gprsel, gprwr, extop, dmwr,
                        wdsel, npcop, bsel, overflow, rst, pcwr, irwr, zero, islb, issb,
                        irout[25:21], IntReq, cp0_wen, bridge_wen, EXLSet, EXLClr, IntPc);  
  
  outputDEV outputDEV_21071003(clk, dev2_we, dev_addr[3:2], dev_wd, dev2_rd);
  
  timer timer_21071003(clk, rst, dev_addr[3:2], dev0_we, dev_wd, dev0_rd, IRQ);
                                          // rd
  cp0 cp0_21071003(pcout, brout, HWInt, irout[15:11], cp0_wen, EXLSet, EXLClr, clk, rst, IntReq, epc, cp0out);
  
  bridge bridge_21071003 (aluoutout, brout, prrd, dev0_rd, dev1_rd, dev2_rd, 
            dev_wd, dev_addr, bridge_wen, dev0_we, dev2_we, HWInt, IRQ);
endmodule