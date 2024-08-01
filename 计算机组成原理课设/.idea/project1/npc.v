module npc(pcin, rd1, npcop, zero, imm, nextpc, pc_4, rst);
  input [25:0] imm;
  input [31:0] pcin; // from pc
  input [31:0] rd1; // pc for jr command, from dm
  input zero, rst;
  input [1:0] npcop;
  output reg [31:0] nextpc;
  output [31:0] pc_4; // pc+4
  
  wire [15:0] imm16;
  wire [31:0] temp, extout, j_addr;
  reg [31:0] pcnew;
  
  assign pc_4 = pcin + 4;
  assign imm16 = imm[15:0];
  assign temp = {{16{imm16[15]}}, imm16}; // signed extened imm16
  assign extout = temp << 2;  // for beq command
  assign j_addr = {pc_4[31:28], imm[25:0], 2'b00};
  
  initial
    begin
      nextpc = 32'h0000_3000;
    end
  
  always@(pcnew, rst)
    if(rst)
      nextpc = 32'h0000_3000;
    else
      nextpc = pcnew;
  
  always@(*)
  begin
    case(npcop) //00:pc+4 01:beq  10:j jal  11:jr
      2'b00: 
        begin
          pcnew = pcin + 4;
        end
        
      2'b01: 
        begin
          if(zero)
            begin
              pcnew = pcin + 4 + extout;
            end
          else
            begin
              pcnew = pcin + 4;
            end
        end
        
      2'b10:
        begin
          pcnew = j_addr;
        end
        
      2'b11:
        begin
          pcnew = rd1;
        end
        
      default: pcnew = pcin + 4;
    endcase
  end

  
  
endmodule

