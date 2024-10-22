module m2(wdsel, aluo, dmout, pc_4, m2out, cp0out);
  input [2:0] wdsel;
  input [31:0] aluo, dmout, pc_4, cp0out;
  output reg [31:0] m2out;
  
  always@(wdsel, aluo, dmout, pc_4)
    case(wdsel)
        3'b00:
          m2out = aluo;
        3'b01:
          m2out = dmout;
        3'b10:
          m2out = pc_4;
        3'b11:
          m2out = 32'b1;
        3'b100:
          m2out = cp0out;
        default:  $display("");
    endcase
endmodule