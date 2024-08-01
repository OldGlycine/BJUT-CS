module outputDev(clk, en, addr, din, dout);
  input clk, en;
  input [3:2] addr;
  input [31:0] din;
  output [31:0] dout;
  
  reg [31:0] preData, curData;
  
  initial
  begin
    preData = 32'b0;
    curData = 32'b0;
  end
  
  always@(posedge clk)
  begin
    if(en)
      begin
        case(addr)
          2'b00:
            begin
              preData <= din;
            end
          2'b01:
            begin
              curData <= din;
            end
          default:
            begin
              $display("illegal address to write the outputDev!");
            end
        endcase
      end
  end
  
  assign dout = (addr == 2'b00) ? preData : (addr == 2'b01) ? curData : 32'b0;
  //assign dout = curData;
  
endmodule
