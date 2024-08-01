module seqdet(clk,x,reset,z,c_state,n_state);
input clk,x,reset; 
output reg z;
output reg [3:0] c_state,n_state; 
parameter S0=0,S1=1,S2=2,S3=3,S4=4; 
 
 always @(posedge clk) 
	begin 
		if(c_state==S4) z=1'b1;
			else z=1'b0; 
		
	end  

 
 always @(c_state,x) 
   begin 
    case(c_state) 
		S0:if(x) n_state<=S1; else n_state<=S0; 
		S1:if(x) n_state<=S1; else n_state<=S2; 
		S2:if(x) n_state<=S3; else n_state<=S0; 
		S3:if(!x) n_state<=S4; else n_state<=S1; 
		S4:if(x) n_state<=S1; else n_state<=S0; 
		default: n_state<=S0; 
 endcase 
 end 
 always @(posedge clk) 
if(!reset) c_state<=S0; 
else c_state<=n_state; 
 endmodule