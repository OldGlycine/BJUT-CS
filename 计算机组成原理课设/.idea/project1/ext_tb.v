module ext_tb;
  reg [15:0] imm16;
  reg [1:0] extop;
  wire [31:0] out;
  
  ext ext1(imm16, extop, out);
  
  initial begin
    imm16 = 16'b 1010_1010_1010_1010;
    
    extop = 2'b0;
    
    #30
    extop = 2'b01;
    
    #30
    extop = 2'b10;
    
    #30
    extop = 2'b11;
  
  end

endmodule