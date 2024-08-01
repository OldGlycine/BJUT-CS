module debouncer(input clk,key,output reg keyout);
  reg[3:0] cta,ctb;
  always@(posedge clk)
    begin
    if(key==0)
      begin 
		  cta<=cta+1 ;
        ctb<=4'b0000; 
      end

      if(cta>=500)
        begin
          cta<=0;
          keyout<=0;
        end
		  
    else if(key==1)
      begin
        ctb<=ctb+1;
        cta<=4'b0000; 
      end
		
      if(ctb>=500)
        begin
          ctb<=0;
          keyout<=1;
        end

end
endmodule
