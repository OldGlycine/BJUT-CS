module dm_1k( addr, din, we, clk, dout, lh) ;
    input   [9:0]   addr ;  // address bus
    input   [31:0]  din ;   // 32-bit input data
    input           we ;    // memory write enable
    input           clk ;   // clock
    output  [31:0]  dout ;  // 32-bit memory output
    reg     [7:0]   dm[1023:0] ;
    input lh;
    wire [31:0] temp4lh;
    wire [15:0] word;
    
    assign word = {dm[addr+1], dm[addr]};
    assign temp4lh = {{16{word[15]}}, word};
    assign dout = (lh == 1'b1) ? temp4lh : {dm[addr+3], dm[addr+2], dm[addr+1], dm[addr]};
  
    // dm initial = 0
    integer i;
    initial 
    begin
      for(i = 0; i < 1024; i = i+1)
          dm[i] <= 0;
    end
  
    always @(posedge clk)
      if(we)  begin
        $display("Hello world!");
        {dm[addr+3], dm[addr+2], dm[addr+1], dm[addr]} <= {din[31:24], din[23:16], din[15:8], din[7:0]};
    end
    
      else  begin
        $display("No right to hello.");
    end
        
endmodule