module cp0(clk, rst, wen, exlset, exlclr, sel, HWInt, din, pc_p4, pcout, dout, intreq);
  input clk, rst, wen, exlset, exlclr;
  input [4:0] sel;
  input [5:0] HWInt;
  input [31:0] din, pc_p4;
  output [31:0] pcout, dout;
  output intreq;
  
  reg [31:0] regFile_cp0[31:0];
  
  wire exl, ie;
  wire [15:10] im;
  
  parameter [4:0] SR = 5'd12;
  parameter [4:0] CAUSE = 5'd13;
  parameter [4:0] EPC = 5'd14;
  parameter [4:0] PRID = 5'd15;
  
  assign exl = regFile_cp0[SR][1];
  assign ie = regFile_cp0[SR][0];
  assign im = regFile_cp0[SR][15:10];
  
  assign pcout = regFile_cp0[EPC];
  assign dout = regFile_cp0[sel];
  assign intreq = | (HWInt & im) & ie & (~exl);
  
  
  integer i;
  initial
  begin
    for(i=0; i<32; i=i+1) regFile_cp0[i] = 0;
    regFile_cp0[SR][15:10] = 6'b000001;  // im
    regFile_cp0[SR][0] = 1'b1;    // 1: int legal   0: int illegal
    regFile_cp0[CAUSE][15:10] = 6'b000001;  // ???  6'b000001  ???
    regFile_cp0[PRID] = 32'h2002_0203;
  end
  
  always@(posedge clk)
  begin
    if(rst)
      begin
        for(i=0; i<32; i=i+1) regFile_cp0[i] = 0;
        regFile_cp0[SR][15:10] = 6'b000001;  // im
        regFile_cp0[SR][0] = 1'b1;    // 1: int legal   0: int illegal
        regFile_cp0[CAUSE][15:10] = 6'b000001;  // ???  6'b000001  ???
        regFile_cp0[PRID] = 32'h2002_0203;
      end
  end
  
  always@(posedge clk)
  begin
    if(wen && (sel!= CAUSE))
      begin
        regFile_cp0[sel] <= din;
      end
    else if(exlset) //int begin
      begin
        regFile_cp0[EPC] <= pc_p4;
        regFile_cp0[SR][1] <= 1'b1; // add or not ? regFile_cp0[SR][0] <= 1'b0 (no add now!!!)
      end
    else if(exlclr) // int end
      begin
        regFile_cp0[SR][1] <= 1'b0;
        regFile_cp0[SR][0] <= 1'b1;   //  Is it necessary?
      end
    else 
      begin
        regFile_cp0[CAUSE] <= {16'b0, HWInt, 10'b0};
      end
  end
  
  always@(posedge clk)
  begin
    regFile_cp0[CAUSE] <= {16'b0, HWInt, 10'b0};
  end
  
endmodule
