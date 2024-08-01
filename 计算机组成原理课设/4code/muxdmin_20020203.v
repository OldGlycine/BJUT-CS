module muxdmin(bReg_out, dmout_data, issb, dm_datain);
  input [31:0] bReg_out;
  input [31:0] dmout_data;
  input issb;
  output reg [31:0] dm_datain;
  
  always@(*)
  begin
    if(issb == 1)
      begin
        dm_datain = {{24{dmout_data[31:8]}}, bReg_out[7:0]};
      end
    else
      begin
        dm_datain = bReg_out;
      end
  end
  
endmodule
