module controller(clk, opcode, funct, aluop, gprsel, gprwr, extop, dmwr,
                   wdsel, npcop, bsel, overflow, rst, pcwr, irwr, zero,islb,issb, isjalr);
  input clk;
  input [5:0] opcode, funct;
  output [2:0] aluop;
  output [1:0] gprsel;
  output gprwr;
  output [1:0] extop, wdsel, npcop;
  output dmwr, bsel;
  input overflow;
  input rst;
  output pcwr, irwr;
  input zero;
  output islb, issb;
  output isjalr;
  
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
  wire jalr = (opcode == 6'b000000) && (funct == 6'b001001);
  
  assign isjalr = jalr;
  
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
        if(lb | lw | sb | sw) next_state = S2;  
        else if(addu | subu | ori | addi | addiu | lui | slt) next_state = S6;
        else if(beq) next_state = S8;
        else if(j | jal | jr | jalr) next_state = S9; ///
        else  next_state = S0;
      end
      S2: begin
        if(lw | lb)  next_state = S3;  
        else if(sw | sb)  next_state = S5;
        else  next_state = S0;
      end
      S3: next_state = S4;
      S4: next_state = S0;
      S5: next_state = S0;
      S6: next_state = S7;
      S7: next_state = S0;
      S8: next_state = S0;
      S9: next_state = S0;
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
  assign gprsel[0] = (addu | subu | slt | (overflow & addi) | jalr);
  assign extop[1] = lui;
  assign extop[0] = (lw | sw | lb | sb | addi | addiu);
  assign bsel =  (ori | lw | sw | lui | addi | addiu | lb | sb) ;
  assign wdsel[1] = ((overflow & addi) | jal | jalr);
  assign wdsel[0] = ((lb | lw) | (overflow & addi));
    // time sequence
  assign dmwr = ((sw | sb) & s5);
  assign gprwr = ((lb | lw) & s4) | ((jal | jalr) & s9) | ((addu | subu | ori | addi | addiu | lui | slt) & s7);
  assign npcop[1] = (j | jal | jr | jalr) & (~s0);
  assign npcop[0] = (beq | jr | jalr) & (~s0);
  assign pcwr = (s0 | ((beq & zero) & s8) | ((jalr | jal | j | jr) & s9));
  assign irwr = s0;
  assign islb = lb;
  assign issb = sb;
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