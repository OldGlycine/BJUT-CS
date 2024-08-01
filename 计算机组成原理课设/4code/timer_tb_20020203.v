module test_timer;
  
  reg CLK_I, RST_I;
  reg [3:2] ADDR_I;
  reg WE_I;
  reg [31:0] DAT_I;
  wire [31:0] DAT_O;
  wire IRQ;
  
  timer timer_wsz(CLK_I, RST_I, ADDR_I, WE_I, DAT_I, DAT_O, IRQ);
  
  initial
  begin
    #0
    CLK_I = 0;
    RST_I = 0;
    ADDR_I = 2'b10;
    WE_I = 0;
    DAT_I = 32'h1234_5678;
    #150
    ADDR_I = 2'b00;
    DAT_I = 32'b1011;
    WE_I = 1;
    #50
    WE_I = 0;
    #5050
    WE_I = 1;
    DAT_I = 32'b1001;
    ADDR_I = 2'b00;
    #150
    DAT_I = 32'h1234_5678;
    WE_I = 0;
    ADDR_I = 2'b10;
  end
  
  always
    #50 CLK_I = ~CLK_I;
    
  
endmodule
