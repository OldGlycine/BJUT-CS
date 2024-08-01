module alu(A, B, aluctr, zero, overflow, out);
  input [31:0] A, B;
  input [2:0] aluctr;
  output zero;
  output overflow;
  output [31:0] out;
  
  /*
    PS:overflow : detect addi's overflow, and write it into $30[0]
    aluctr:
      000:add
      001:sub
      010:or
      011:operation slt
      100:+imm16(for addi)
  */
  
  reg [31:0] dout;
  
  // use to judge overflow
  wire [32:0] temp;
  assign temp = {A[31], A} + B;
  assign overflow = (aluctr == 3'b100) ? ((temp[32] != temp[31]) ? 1 : 0 ): 0;
  
  always@(*)  begin
    case(aluctr)
      
      3'b000: 
        dout = A + B;

      3'b001:
        dout = A - B;
        
      3'b010:
        dout = A | B;
        
      3'b011:
        dout = ($signed(A) < $signed(B)) ? 32'b1 : 32'b0;
      
      3'b100:
        dout = A + B;
        
      default:
        dout = 32'b0;
      
    endcase
  end
  
  assign out = dout;
  assign zero = ($signed(A) == $signed(B)) ? 1 : 0;
  
endmodule