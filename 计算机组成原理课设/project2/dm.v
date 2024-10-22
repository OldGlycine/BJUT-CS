module dm_1k( addr, din, we, clk, dout, islb, issb) ;
    input   [9:0]   addr ;  // address bus
    input   [31:0]  din ;   // 32-bit input data
    input           we ;    // memory write enable
    input           clk ;   // clock
    output  [31:0]  dout ;  // 32-bit memory output
    reg     [7:0]   dm[1023:0] ;
    input islb, issb;
    
    wire [7:0] temp4lb;
    assign temp4lb = dm[addr];
    wire [7:0] temp4sb;
    assign temp4sb = din[7:0];
    assign dout = (islb == 1'b1) ? {{24{temp4lb[7]}}, temp4lb} : {dm[addr+3], dm[addr+2], dm[addr+1], dm[addr]};
  
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
        if(!issb)
          {dm[addr+3], dm[addr+2], dm[addr+1], dm[addr]} <= {din[31:24], din[23:16], din[15:8], din[7:0]};
        else
          dm[addr] <= temp4sb;
    end
    
      else  begin
        $display("No right to hello.");
    end
        
endmodule