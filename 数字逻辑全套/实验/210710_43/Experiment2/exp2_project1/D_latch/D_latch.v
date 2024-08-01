module D_latch(Q,QN,D,EN);
  output Q,QN;
  input D,EN;
  reg Q;
  assign QN=~Q;
  always @(EN or D)
    if(EN) Q<=D;
endmodule