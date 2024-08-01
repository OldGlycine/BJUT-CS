module m1(gprsel, rt, rd, m1out);
  input [1:0] gprsel;
  input [4:0] rt, rd;
  output reg  [4:0] m1out;
  
  always@(gprsel, rt, rd)
    case(gprsel)
        2'b00:
          m1out = rt;
        2'b01:
          m1out = rd;
        2'b10:
          m1out = 5'b11111;
        2'b11:
          m1out = 5'b11110;
        default:  $display("");
  endcase
endmodule
