module data_generate (clk,clr,dout);
input clk,clr; 
output dout; 
reg [7:0] data; 
reg dout; 
always@(posedge clk) 
  begin
  if(!clr) 
    begin 
    dout<=0; 
    data<=8'b00010100; 
    end 
  else 
    begin 
    dout<=data[7]; 
    data<={data[6:0],data[7]}; 
    end 
  end 
endmodule