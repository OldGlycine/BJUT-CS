module controller(opcode, funct, j, aluop, gprsel, gprwr, extop, dmwr,
                   wdsel, npcop, bsel, overflow, lh);
  input [5:0] opcode, funct;
  output reg j;
  output reg [2:0] aluop;
  output reg [1:0] gprsel;
  output reg gprwr;
  output reg [1:0] extop, wdsel, npcop;
  output reg dmwr, bsel;
  input overflow;
  output reg lh;

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
  
  always@(opcode , funct, overflow) begin
    case(opcode)
      6'b000000:
        case(funct)
          // addu
          6'b100001:  begin
            j=0; aluop=3'b000; 
            gprsel=2'b01; gprwr=1;
            extop = 2'b00; 
            dmwr=0; wdsel=0; npcop=0; bsel=0;
            lh=0;
          end  
          
          // subu
          6'b100011:  begin
            j=0; aluop=3'b001; 
            gprsel=2'b01; gprwr=1;
            extop = 2'b00; 
            dmwr=0; wdsel=0; npcop=0; bsel=0;
            lh=0;
          end
          
          // slt
          6'b101010:  begin
            // TODO:
            j=0; aluop=3'b011; 
            gprsel=2'b01; gprwr=1;
            extop = 2'b00; 
            dmwr=0; wdsel=0; npcop=0; bsel=0;
            lh=0;
          end
          
          // jr
          6'b001000:  begin
            j=1; aluop=3'b000; 
            gprsel=2'b10; gprwr=0;
            extop = 2'b00; 
            dmwr=0; wdsel=2'b01; npcop=2'b11; bsel=0;
  	         lh=0;
          end
          
          default:  begin
            j=0; aluop=3'b111; 
            gprsel=2'b0; gprwr=0;
            extop = 2'b00; 
            dmwr=0; wdsel=0; npcop=0; bsel=0;
            lh=0;
          end
          
        endcase
        
        // ori
        6'b001101:   begin
            j=0; aluop=3'b010; 
            gprsel=2'b0; gprwr=1;
            extop = 2'b00; 
            dmwr=0; wdsel=0; npcop=0; bsel=1;
            lh=0;
        end
        
        // lw
        6'b100011:   begin
            j=0; aluop=3'b000; 
            gprsel=2'b0; gprwr=1;
            extop = 2'b01; 
            dmwr=0; wdsel=1; npcop=0; bsel=1;
            lh=0;
        end
        
        // lh
        6'b100001:  begin
           	j=0; aluop=3'b000; 
            gprsel=2'b00; gprwr=1;
            extop = 2'b01; 
            dmwr=0; wdsel=2'b01; npcop=2'b00; bsel=1;
            lh=1;
        end 
        
        // sw
        6'b101011:   begin
            j=0; aluop=3'b000; 
            gprsel=2'b0; gprwr=0;
            extop = 2'b01; 
            dmwr=1; wdsel=0; npcop=0; bsel=1;
            lh=0;
        end
        
        // beq
        6'b000100:   begin
            j=0; aluop=3'b001; 
            gprsel=0; gprwr=0;
            extop = 2'b00; 
            dmwr=0; wdsel=0; npcop=2'b01; bsel=0;
            lh=0;
        end
      
        // lui
        6'b001111:   begin
            j=0; aluop=3'b000; 
            gprsel=0; gprwr=1;
            extop = 2'b10; 
            dmwr=0; wdsel=0; npcop=0; bsel=1;
            lh=0;
        end
      
        // j
        6'b000010:   begin
            j=1; aluop=3'b000; 
            gprsel=0; gprwr=0;
            extop = 2'b00; 
            dmwr=0; wdsel=0; npcop=2'b10; bsel=0;
            lh=0;
        end
        
        // addi
        6'b001000:   begin
            if(!overflow)begin
              j=0; aluop=3'b100;
              gprsel=2'b00; gprwr=1;
              extop = 2'b01; 
              dmwr=0; wdsel=0; npcop=0; bsel=1'b1;
               lh=0;
            end
            // overflow
            else  begin
              j=0; aluop=3'b100;
              gprsel=2'b11; gprwr=1;
              extop = 2'b01; 
              dmwr=0; wdsel=2'b11; npcop=0; bsel=1'b1;
               $display("overflowwwwwwwwwwwwwwwwwwwwwwwww!");
               lh=0;
            end
        end
        
        // addiu
        6'b001001:   begin
            j=0; aluop=3'b100;
            gprsel=2'b00; gprwr=1;
            extop = 2'b01; 
            dmwr=0; wdsel=0; npcop=0; bsel=1'b1;
            lh=0;
        end
        
        // jal
        6'b000011:   begin
            j=1; aluop=3'b000; 
            gprsel=2'b10; gprwr=1;
            extop = 2'b00; 
            dmwr=0; wdsel=2'b10; npcop=2'b10; bsel=0;
            lh=0;
        end
        
        
        default:  begin
            j=0; aluop=3'b111; 
            gprsel=0; gprwr=0;
            extop = 2'b00; 
            dmwr=0; wdsel=0; npcop=0; bsel=0;
            lh=0;
        end
        
      endcase
  end
  
endmodule