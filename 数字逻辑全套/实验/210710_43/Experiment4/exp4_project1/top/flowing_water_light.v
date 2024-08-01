module flowing_water_light(reset,out,clk_1hz);
input reset;
input clk_1hz;
output reg[15:0]out;
reg [4:0]state;
parameter st0=0,st1=1,st2=2,st3=3,st4=4,st5=5,st6=6,st7=7,st8=8 ,st9=9, st10=10, st11=11,st12=12,st13=13,st14=14,st15=15,st16=16;
always @(state) begin
case (state)
    st0:out=16'b1111_1111_1111_1111;
	 st1:out=16'b1111_1111_1111_1110;
	 st2:out=16'b1111_1111_1111_1101;
	 st3:out=16'b1111_1111_1111_1011;
	 st4:out=16'b1111_1111_1111_0111;
	 st5:out=16'b1111_1111_1110_1111;
	 st6:out=16'b1111_1111_1101_1111;
	 st7:out=16'b1111_1111_1011_1111;
	 st8:out=16'b1111_1111_0111_1111;
	 st9:out=16'b1111_1110_1111_1111;
	 st10:out=16'b1111_1101_1111_1111;
	 st11:out=16'b1111_1011_1111_1111;
	 st12:out=16'b1111_0111_1111_1111;
	 st13:out=16'b1110_1111_1111_1111;
	 st14:out=16'b1101_1111_1111_1111;
	 st15:out=16'b1011_1111_1111_1111;
	 st16:out=16'b0111_1111_1111_1111;
	 default: out=16'b1111_1111_1111_1111;
  endcase
end

always @(posedge clk_1hz)  
begin
  if(!reset)
    state=st0;
  else
    case (state)
      st0:state<=st1;
		st1:state<=st2;
		st2:state<=st3;
		st3:state<=st4;
		st4:state<=st5;
		st5:state<=st6;
		st6:state<=st7;
      st7:state<=st8;
		st8:state<=st9;
		st9:state<=st10;
      st10:state<=st11;
      st11:state<=st12;
      st12:state<=st13;
      st13:state<=st14;
		st14:state<=st15;
		st15:state<=st16;
		st16:state<=st0;
		default state<=st0;
    endcase
end  
endmodule