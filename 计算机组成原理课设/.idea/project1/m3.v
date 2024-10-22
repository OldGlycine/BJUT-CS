module m3(bsel, bo, imm32, m3out);
  input bsel;
  input [31:0] bo, imm32;
  output reg [31:0] m3out;
  
  always@(bsel, bo, imm32)
    case(bsel)
      1'b0:
        m3out = bo;
      1'b1:
        m3out = imm32;
      default:
        m3out = 32'b0;
    endcase
endmodule
