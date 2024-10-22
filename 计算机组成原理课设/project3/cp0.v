module cp0(PC, DIn, HWInt, Sel, Wen, EXLSet, EXLClr, clk, rst, IntReq, epc, DOut);
  input [31:0] PC;       // use to save pc (similar to pc+4)
  input [31:0] DIn;      // for mtc0,data from gpr[rt]
  input [5:0] HWInt;     // int information of 6 hardwares from bridge module
  input [4:0] Sel;       // (rd)generated when processing mfc0/mtc0
  // Wen : generated when processing mtc0. rf_cp0's wr
  // EXLSel : generated when CPU in int response state to set SR
  // EXLClr : generated when provessing ERET to clear SR
  input Wen, EXLSet, EXLClr, clk, rst;
  // IntReq int response sending to CPU is function of HWInt/im/exl/im
  output IntReq;
  // epc send pc to npc
  output [31:0] epc;
  // dataout for mfc0 writing into gpt[rt]
  output [31:0] DOut; 
  
 
  
  parameter [4:0] SR = 5'd12;
  parameter [4:0] CAUSE = 5'd13;
  parameter [4:0] EPC = 5'd14;
  parameter [4:0] PRID = 5'd15;
  
  // regfiles
  reg [31:0] rf_cp0 [31:0];
  
  //SR
    // im -> int allowance of 6 hardwares
  wire [15:10] im;
    // exl -> global int 1:allow global int 0:illegal ~
    // ie -> flag when enter an int in order to provide it enter again
  wire exl, ie;
    // SR  = {16'b0, im, 8'b0, exl, ie}
    
  // CAUSE = {16'b0, hwint, 10'b0}
    // all we have to do is continuous latch HWInt[5:0]
  
  assign exl = rf_cp0[SR][1];
  assign ie = rf_cp0[SR][0];
  assign im = rf_cp0[SR][15:10];
  assign epc = rf_cp0[EPC]; // loading pcout of epc
  assign DOut = rf_cp0[Sel];  // dataout for mfc0
  
  assign IntReq = | (HWInt & im) & ie & (~exl);
  
  integer i;
  initial begin
    for(i=0; i<32; i=i+1) rf_cp0[i]=0;
    rf_cp0[SR][15:10] = 6'b000001;  // im
    rf_cp0[SR][0] = 1'b1;           // ie
    rf_cp0[CAUSE][15:10] = 6'b000001;
    rf_cp0[PRID] = 32'h2107_1003;
  end
  
  always@(posedge clk) begin
    if(rst) begin
      for(i=0; i<32; i=i+1) rf_cp0[i]=0;
      rf_cp0[SR][15:10] = 6'b000001;  // im
      rf_cp0[SR][0] = 1'b1;           // ie
      rf_cp0[CAUSE][15:10] = 6'b000001;
      rf_cp0[PRID] = 32'h2107_1003;
    end
  end
  
  always@(posedge clk)  begin
    // CAUSE is read only
    if(Wen & (Sel != CAUSE))
      rf_cp0[Sel] <= DIn;
    else if(EXLSet) begin // int begin
      rf_cp0[SR][1] <= 1'b1;
      rf_cp0[EPC] <= PC;  // pc+4 put into epc waiting for pushing to npc
    end
    else if(EXLClr) begin // end of int
      rf_cp0[SR][1:0] = 2'b01;    
    end 
    else
      rf_cp0[CAUSE] <= {16'b0, HWInt, 10'b0}; //latch
  end
  
  // CAUSE latch
  always@(posedge clk)
    rf_cp0[CAUSE] <= {16'b0, HWInt, 10'b0};

//{im, exl, ie} <= {DIn[15:10], DIn[1], DIn[0]}

endmodule