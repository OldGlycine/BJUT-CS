module npc(rst, pcin, pc_ori, npc_sel, zero, imm32, pcout, ERET, EPC, intreq);
  
  input rst;
  input zero;
  input [1:0] npc_sel;
  input [31:0] pcin, pc_ori,imm32;  //  pcin is gpr[rs]   pc_ori is original pc   imm32 is the current ins
  input ERET, intreq;
  input [31:0] EPC;
  output [31:0] pcout;
  
  
  wire [31:0] tempnew;
  wire [15:0] imm;
  wire [31:0] temp, extout, j_addr;
  reg [31:0] pcnew;
  reg [31:0] pcout;
  
  
  assign imm = imm32[15:0];
  assign temp = {{16{imm[15]}}, imm};
  assign extout = temp << 2;
  assign j_addr = {pcout[31:28], imm32[25:0], 2'b00};
  assign tempnew = (ERET == 1) ? EPC : pcnew;
  
  initial
    begin
      pcout <= 32'h0000_3000;
    end
  
  always@(pcnew, rst)
  begin
    if(rst)
      begin
        pcout = 32'h0000_3000;
      end
    else
      begin
        if(ERET == 1)
          pcout = EPC;
        else
          pcout = pcnew;
      end
  end
  
  always@(*)
  begin
    if(intreq)
      begin
        pcnew = 32'h0000_4180;
      end
    else
      begin
    case(npc_sel) //00:gpr[rs] 01:beq  10:j jal  11:jr
      2'b00: 
        begin
          pcnew = pc_ori + 4;
        end
        
      2'b01: 
        begin
          if(zero)
            begin
              pcnew = pc_ori + extout;
            end
          else
            begin
              pcnew = pc_ori + 4;
            end
        end
        
      2'b10:
        begin
          pcnew = j_addr;
        end
        
      2'b11:
        begin
          pcnew = pcin;
        end
        
      default: pcnew = pc_ori + 4;
    endcase
    end
  end

  
  
endmodule
