module m2(wdsel, aluo, dmout, pc_4, m2out);
  input [1:0] wdsel;
  input [31:0] aluo, dmout, pc_4;
  output reg [31:0] m2out;
  
  always@(wdsel, aluo, dmout, pc_4)
    case(wdsel)
        2'b00:
          m2out = aluo;
        2'b01:
          m2out = dmout;
        2'b10:
          m2out = pc_4;
        2'b11:
          m2out = 32'b1;
        default:  $display("");
    endcase
endmodule