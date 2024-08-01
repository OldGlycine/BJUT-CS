module D_FF(D,CLK,Q,QN);
  input D,CLK;
  output Q,QN;
  reg Q,QN;
    always @(posedge CLK)
	   begin
		  Q<=D;
		  QN<=~D;
		end
endmodule