module im_1k( addr, dout ) ;
    input   [12:0]   addr ;  // address bus
    output  [31:0]  dout ;  // 32-bit memory output
    reg     [7:0]   im[8192:0] ;
    
    initial 
    begin
        // change files' name, done!
        $readmemh("p3-main.txt", im, 'h1000);
        $readmemh("p3-2.txt", im, 'h0180);
    end
  
    assign dout = {im[addr], im[addr+1], im[addr+2], im[addr+3]};
  
endmodule