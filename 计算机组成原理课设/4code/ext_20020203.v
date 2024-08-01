module ext(imm16, ExtOp, ext32);
  input [15:0] imm16;
  input [1:0] ExtOp;
  output reg [31:0] ext32;
  
  always@(*)
    begin
      case(ExtOp)
        2'b00:
          begin
            ext32 = {16'b0, imm16};
          end
          
        2'b01:
          begin
            ext32 = {{16{imm16[15]}},imm16};
          end
          
        2'b10:
          begin
            ext32 = {imm16, 16'b0};
          end
          
        default:
          begin
            ext32 = 32'b0;
          end
          
      endcase
    
    end

endmodule  
