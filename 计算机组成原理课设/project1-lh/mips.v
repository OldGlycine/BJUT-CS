module mips(clk, rst) ; 
  input           clk ;   // clock
  input           rst ;   // reset
  // This is project1's top
  
  wire [31:0] pcout;
  
  wire [1:0] npcop;
  wire zero;
  wire [31:0] nextpc;
  wire [31:0] pc_4;
  
  wire [31:0] command;
  
  wire [1:0] gprsel;
  wire [4:0] m1out;
  
  wire [1:0] wdsel;
  wire [31:0] aluo, dmout, m2out;
  
  wire bsel;
  wire [31:0] bo, imm32, m3out;
  
  wire gprwr;
  wire [31:0] busa, busb;
  
  wire dmwr;
  
  wire [1:0] extop;
  wire [31:0] extout;
  
  wire [2:0] aluop;
  wire overflow;
  
  wire [5:0] opcode, funct;
  wire j;
  wire lh;
  /*
  module pc(clk, pcin, pcout);
  module npc(pcin, rd1, npc_sel, zero, imm, nextpc, pc_4, rst);
  module im_1k( addr, dout ) ;
  module m1(gprsel, rt, rd, m1out);
  module m2(wdsel, aluo, dmout, pc_4, m2out);
  module m3(bsel, bo, imm32, m3out);
  module gpr(clk, reset, regwrite,m1out, m2out, rs, rt, busa, busb);
  module dm_1k( addr, din, we, clk, dout ) ;
  module ext(imm16, extop, out);
  module alu(A, B, aluctr, zero, overflow, out);
  module controller(opcode, funct, j, aluop, gprsel, gprwr, extop, dmwr,
                   wdsel, npcop, bsel, overflow, lh);
  */
  
pc pc_21071003(clk, nextpc, pcout);
  
npc npc_21071003(pcout, busa, npcop, zero, command[25:0], nextpc, pc_4, rst);
  
im_1k im_1k_21071003(pcout[9:0], command);
  
m1 m1_21071003(gprsel, command[20:16], command[15:11], m1out);
  
m2 m2_21071003(wdsel, aluo, dmout, pc_4, m2out);
  
m3 m3_21071003(bsel, busb, extout, m3out);
  
gpr gpr_21071003(clk, rst, gprwr, m1out, m2out, command[25:21], command[20:16], busa, busb);
  
dm_1k dm_1k_21071003(aluo[9:0], busb, dmwr, clk, dmout, lh);
  
ext ext_21071003(command[15:0], extop, extout);
  
alu alu_21071003(busa, m3out, aluop, zero, overflow, aluo);
controller c_21071003(command[31:26], command[5:0], j, aluop, gprsel, gprwr, extop, dmwr,
                        wdsel, npcop, bsel, overflow, lh);  
  
endmodule
  
    