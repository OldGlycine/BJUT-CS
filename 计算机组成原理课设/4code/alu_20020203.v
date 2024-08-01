module alu(dataOut_1, dataOut_2, ext32, ALUSrc, ALUOp, zero, overflow, alu_res, write_30);
  input [31:0] dataOut_1, dataOut_2, ext32;
  input [1:0] ALUOp;
  input ALUSrc;
  input write_30;
  output zero, overflow;
  output reg [31:0] alu_res;
  
  wire [31:0] a,b;
  wire [32:0] tmp;
  wire overflow_0;
  assign a = dataOut_1;
  assign b = (ALUSrc == 1'b0) ? dataOut_2 : ext32;
  assign tmp = {a[31],a} + b;
  assign overflow_0 = (ALUOp == 2'b00) ? ((tmp[32] != tmp[31]) ? 1 : 0) : 0;
  assign zero = (alu_res == 32'b0) ? 1 : 0;
  
  assign overflow = (write_30 == 1) ? overflow_0 : 0;
  /*
  00 +
  01 -
  10 |
  11 slt
  */
  always@(*)
  begin
    case(ALUOp)
      2'b00:
        begin
          alu_res = a + b;
        end
      2'b01:
        begin
          alu_res = a - b;
        end
      2'b10:
        begin
          alu_res = a | b;
        end
      2'b11:
        begin
          alu_res = ($signed(a)<$signed(b))? 32'd1 : 32'd0;
        end
      default:
        begin
          $display("invalid ALUOp!");
        end
    endcase
  end

endmodule
