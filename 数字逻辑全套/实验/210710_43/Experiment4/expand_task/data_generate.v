module data_generate (clk,clr,dout,indata);
input clk,clr; 
input [7:0] indata;
output dout; 
reg [7:0] data; 
reg dout; 
always@(posedge clk) 
  begin
  if(!clr) 
    begin 
    dout<=0; 
    data<=indata; 
    end 
  else 
    begin 
    dout<=data[7]; 
    data<={data[6:0],data[7]}; 
    end 
  end 
endmodule