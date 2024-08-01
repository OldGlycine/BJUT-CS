module alu_tb;
  reg [31:0] A, B;
  reg [2:0] aluctr;
  wire zero;
  wire overflow;
  wire [31:0] out;
  
  alu alu1(A, B, aluctr, zero, overflow, out);
  
  initial begin
    A = 32'hffffffff;
    B = 32'b1;
    aluctr = 3'b000;
  end
  
  always
  #30 aluctr = aluctr + 3'b001;
  
endmodule