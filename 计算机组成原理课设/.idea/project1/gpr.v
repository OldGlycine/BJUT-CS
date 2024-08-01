module gpr(clk, reset, regwrite,m1out, m2out, rs, rt, busa, busb);
  input clk, reset, regwrite;
  input [31:0] m2out;
  input [4:0] rs, rt, m1out;
  output [31:0] busa, busb;
  reg [31:0] reg_files [31:0];
  
  assign busa = reg_files[rs];
  assign busb = reg_files[rt];
  
  integer i;
  
  initial begin
    for(i = 0; i < 32; i = i + 1)  reg_files[i] <= 0;
  end
  
  always@(posedge clk) begin
    if(reset) begin
      for(i = 0; i < 32; i = i + 1) reg_files[i] <= 0;
    end
    
    else  begin
      if(!regwrite)
        $display("no rights to write on gpr");
      else
        // judge $0
        if(m1out == 5'b00000)
          $display("$0 can't be change");
        else
          reg_files[m1out] <= m2out;
    end
  end
endmodule