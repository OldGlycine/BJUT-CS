module controller_tb;
  reg [5:0] opcode, funct;
  wire j;
  wire [2:0] aluop;
  wire [1:0] gprsel;
  wire gprwr;
  wire [1:0] extop, wdsel, npcop;
  wire dmwr, bsel;
  reg overflow;
  
controller ctrl1(opcode, funct, j, aluop, gprsel, gprwr, extop, dmwr,
                   wdsel, npcop, bsel, overflow);
  initial
  begin
    opcode = 6'b000000;
    funct = 6'b101010;
    overflow = 0;
    #30
    overflow = 1;
    
    #30
    opcode = 6'b000000;
    funct = 6'b100011;
    #30
    opcode = 6'b001101;
    #30
    opcode = 6'b100011;
    #30
    opcode = 6'b101011;
    #30
    opcode = 6'b000100;
    #30
    opcode = 6'b001111;
    #30
    opcode = 6'b000010;
    
  end
endmodule
  