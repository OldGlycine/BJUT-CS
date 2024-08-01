module ifu_testbench;
  reg clk, reset, npc_sel, zero;
  wire [31:0] insout;
  ifu ifu1(clk, reset, npc_sel, zero, insout);
    
  // ??
  initial 
  begin 
    clk = 1;  reset = 0; npc_sel = 0; zero = 0;
    // ????
    // ??5??
    # 5 reset = 1;
    # 5 reset = 0;
    // ????
    $readmemh("123.txt", ifu1.im);  
  end
  
  // ????
  always
    # 30 clk = ~clk;

endmodule