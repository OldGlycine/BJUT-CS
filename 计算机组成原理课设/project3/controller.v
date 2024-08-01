module controller(clk, opcode, funct, aluop, gprsel, gprwr, extop, dmwr,
                   wdsel, npcop, bsel, overflow, rst, pcwr, irwr, zero,islb,issb,
                   MF,IntReq, cp0_wen, bridge_wen, EXLSet, EXLClr, IntPc);
  input clk;
  input [5:0] opcode, funct;
  output [2:0] aluop, wdsel;
  output [1:0] gprsel;
  output gprwr;
  output [1:0] extop, npcop;
  output dmwr, bsel;
  input overflow;
  input rst;
  output pcwr, irwr;
  input zero;
  output islb, issb;
  input [4:0] MF;
  input IntReq;
  // EXLSet:save epcf;   EXLClr:pc<-epc clr exl;  IntPc:pc <- int's pc
  output cp0_wen, bridge_wen, EXLSet, EXLClr, IntPc;
  
  // states params
  parameter [3:0] S0 = 4'b0000;
  parameter [3:0] S1 = 4'b0001;
  parameter [3:0] S2 = 4'b0010;
  parameter [3:0] S3 = 4'b0011;
  parameter [3:0] S4 = 4'b0100;
  parameter [3:0] S5 = 4'b0101;
  parameter [3:0] S6 = 4'b0110;
  parameter [3:0] S7 = 4'b0111;
  parameter [3:0] S8 = 4'b1000;
  parameter [3:0] S9 = 4'b1001;
  parameter [3:0] S10 = 4'b1010;
  /*
  aluop:
      000:add
      001:sub
      010:or
      011:operation slt
      100:+imm16(for addi)
  gprsel:
      00:rt
      01:rd
      10:$31
      11:$30
  wdsel:
      00:alu
      01:dm
      10:pc+4
  extop:
      00: unsigned extend
      01: signed extend
      10: lui operation
    */
  
  
  // translation section
  wire addu = (opcode == 6'b0) && (funct == 6'b100001);
  wire subu = (opcode == 6'b0) && (funct == 6'b100011);
  wire ori = (opcode == 6'b001101);
  wire addi = (opcode == 6'b001000);
  wire addiu = (opcode == 6'b001001);
  wire slt = (opcode == 6'b0) && (funct == 6'b101010);
  wire lui = (opcode == 6'b001111);
  wire j = (opcode == 6'b000010); 
  wire jal = (opcode == 6'b000011);
  wire beq = (opcode == 6'b000100);
  wire jr = (opcode == 6'b0) && (funct == 6'b001000);
  wire lw = (opcode == 6'b100011);
  wire lb = (opcode == 6'b100000);
  wire sw = (opcode == 6'b101011);
  wire sb = (opcode == 6'b101000);
  
  wire eret = (opcode == 6'b010000) && (funct == 6'b011000);
  wire mtc0 = (opcode == 6'b010000) && (MF == 5'b00100);
  wire mfc0 = (opcode == 6'b010000) && (MF == 5'b00000);
  
  reg [3:0] cur_state, next_state;
  // states machine section
    // push states
  always@(posedge clk, posedge rst)
    if(rst)
      cur_state <= S0;
    else
      cur_state <= next_state;
  
    // judge which state to push
  always@(*)
    case(cur_state)
      S0: next_state = S1;
      S1: begin
        // changed for mtc & mfc
        if(lb | lw | sb | sw | mtc0 | mfc0) next_state = S2;  
        else if(addu | subu | ori | addi | addiu | lui | slt) next_state = S6;
        else if(beq) next_state = S8;
        // eret is similat to j type command
        else if(j | jal | jr | eret) next_state = S9;
        else  next_state = S0;
      end
      S2: begin
        // load type : mfc0
        if(lw | lb | mfc0)  next_state = S3;  
        // save type : mtc0
        else if(sw | sb | mtc0)  next_state = S5;
        else  next_state = S0;
      end
      // add int to each states
      S3: if(!IntReq) next_state = S4; else next_state = S10;
      S4: if(!IntReq) next_state = S0; else next_state = S10;
      S5: if(!IntReq) next_state = S0; else next_state = S10;
      S6: next_state = S7;
      S7: if(!IntReq) next_state = S0; else next_state = S10;
      S8: if(!IntReq) next_state = S0; else next_state = S10;
      S9: if(!IntReq) next_state = S0; else next_state = S10;
      S10:next_state = S0;
      default: next_state = S0;
    endcase
    
  wire s0 = (cur_state == 4'd0);
  wire s1 = (cur_state == 4'd1);
  wire s2 = (cur_state == 4'd2);
  wire s3 = (cur_state == 4'd3);
  wire s4 = (cur_state == 4'd4);
  wire s5 = (cur_state == 4'd5);
  wire s6 = (cur_state == 4'd6);
  wire s7 = (cur_state == 4'd7);
  wire s8 = (cur_state == 4'd8);
  wire s9 = (cur_state == 4'd9);
  wire s10 = (cur_state == 4'd10);
  
  /*wire addu = (opcode == 6'b0) && (funct == 6'b100001);
  wire subu = (opcode == 6'b0) && (funct == 6'b100011);
  wire ori = (opcode == 6'b001101);
  wire addi = (opcode == 6'b001000);
  wire addiu = (opcode == 6'b001001);
  wire slt = (opcode == 6'b0) && (funct == 6'b101010);
  wire lui = (opcode == 6'b001111);
  wire j = (opcode == 6'b000010); 
  wire jal = (opcode == 6'b000011);
  wire beq = (opcode == 6'b000100);
  wire jr = (opcode == 6'b0) && (funct == 6'b001000);
  wire lw = (opcode == 6'b100011);
  wire lb = (opcode == 6'b100000);
  wire sw = (opcode == 6'b101011);
  wire sb = (opcode == 6'b101000);*/
  
  // control signals
    // non time sequence
  assign aluop[2] = addi;
  assign aluop[1] = (ori | slt);
  assign aluop[0] = (subu | beq | slt);
  assign gprsel[1] = (jal | (overflow & addi));
  assign gprsel[0] = (addu | subu | slt | (overflow & addi));
  assign extop[1] = lui;
  assign extop[0] = (lw | sw | lb | sb | addi | addiu);
  assign bsel =  (ori | lw | sw | lui | addi | addiu | lb | sb) ;
  assign wdsel[2] = mfc0;
  assign wdsel[1] = ((overflow & addi) | jal);
  assign wdsel[0] = ((lb | lw) | (overflow & addi));
    // time sequence
  assign dmwr = ((sw | sb) & s5);
  // changed for mfc0
  assign gprwr = ((lb | lw | mfc0) & s4) | (jal & s9) | ((addu | subu | ori | addi | addiu | lui | slt) & s7);
  assign npcop[1] = (j | jal | jr) & (~s0);
  assign npcop[0] = (beq | jr) & (~s0);
  // changed for int
  assign pcwr = (s0 | ((beq & zero) & s8) | ((jal | j | jr) & s9) | s10 | (eret & s9));
  assign irwr = s0;
  assign islb = lb;
  assign issb = sb;
  
  assign cp0_wen = mtc0 & s5;
  assign bridge_wen = (sw | sb) & s5; // ?
  assign EXLSet = s10;
  assign EXLClr = eret;
  assign IntPc = IntReq & s10;
  /*
            if(!overflow)
              gprsel=2'b00;
              wdsel=0; 
               
            // overflow
            else  begin
              gprsel=2'b11; 
              wdsel=2'b11; 
           */
      
  
endmodule