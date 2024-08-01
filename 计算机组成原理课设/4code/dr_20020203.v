module dr(clk, dmout, drout, islb);
  input clk;
  input islb;
  input [31:0] dmout;
  output reg [31:0] drout;
  always@(posedge clk)
  begin
    if(islb == 1)
      begin
        drout <= {{24{dmout[7]}},dmout[7:0]};
      end
    else
      begin
        drout <= dmout;
      end
  end
endmodule
