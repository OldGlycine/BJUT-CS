module ifu(clk, reset, npc_sel, zero, insout);
  input clk, reset, npc_sel, zero;
  output [31:0] insout;

  reg [31:0] pc;
  reg [7:0] im[1023:0];

  wire [31:0] pcnew, t0, t1, extout, ext_temp;
  wire [15:0] imm16;
  
  assign insout = {im[pc[9:0]], im[pc[9:0]+1], im[pc[9:0]+2], im[pc[9:0]+3]};
  assign imm16 = insout[15:0];
  assign ext_temp = {{16{imm16[15]}}, imm16};
  assign extout = ext_temp << 2;
   
  always @ (posedge clk, posedge reset)
  begin
    // ????
    if(reset) pc <= 32'h0000_3000;
    else pc <= pcnew;
  end
  
  assign pcnew = (npc_sel && zero) ? t1 : t0;
  assign t0 = pc + 4;
  assign t1 = pc + extout;
  
endmodule