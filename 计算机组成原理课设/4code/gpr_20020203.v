module gpr(clk, rst, gprwr, MemToReg, RegDst, rs, rt, rd, write_30, pc_p4, aluReg_out, dmReg_out, overflow, dataOut_1, dataOut_2, cp0in);
  input clk, rst, gprwr, write_30, overflow;
  input [1:0] MemToReg, RegDst;
  input [4:0] rs, rt, rd;
  input [31:0] pc_p4, aluReg_out, dmReg_out;
  input [31:0] cp0in;
  output [31:0] dataOut_1, dataOut_2;
  reg [31:0] regFile[31:0];
  reg [4:0] writeAddr;
  reg [31:0] writeData;
  reg [31:0] writeData_pre;
  
  // dataOut_1 dataOut_2
  assign dataOut_1 = regFile[rs];
  assign dataOut_2 = regFile[rt];

  
  integer i;
  initial
  begin
    for(i=0; i<32; i=i+1) regFile[i] <= 0;
  end
  //  choose: writeAddr 00rt 01rd 10 no.31
  always@(*)
  begin
    case(RegDst)
      2'b00:
        begin
          writeAddr = rt;
        end
        
      2'b01:
        begin
          writeAddr = rd;
        end
        
      2'b10:
        begin
          writeAddr = 5'd31;
        end
        
      default:
        begin
          writeAddr = rt;
        end
    endcase
  end
  
  //  choose: writeData
  always@(*)
  begin
    case(MemToReg)
      2'b00:
        begin
          writeData = aluReg_out;
        end
      2'b01:
        begin
          writeData = dmReg_out;
        end
      2'b10:
        begin
          writeData = pc_p4;
        end
      2'b11:
        begin
          writeData = cp0in;
        end
      default:
        begin
          writeData = aluReg_out;
        end
    endcase
  end
  
  // write regFile
  always@(posedge clk, posedge rst)
  begin
    if(rst)
      begin
          for(i=0;i<32;i=i+1) regFile[i] <= 0;
      end
    else if(gprwr == 1)
      begin
        regFile[writeAddr] <= writeData;
        regFile[0] <= 32'd0;
      end
    
  end
  
  // write overflow to regFile[30]
  always@(posedge clk, posedge rst)
  begin
    if(gprwr == 1 && write_30 == 1 && overflow == 1)
      begin
        regFile[30] = 32'd1;
      end
  end
  
  always@(posedge clk, posedge rst)
  begin
    if(write_30 == 0)
      begin
        regFile[30] <= 32'd0;
      end
  end

endmodule

