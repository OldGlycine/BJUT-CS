module muxlw(addr, drData, bridgeData, muxlwOut);
  input  [31:0] addr, drData, bridgeData;
  output [31:0] muxlwOut;
  
  assign muxlwOut = (addr[15:8] == 8'b0111_1111) ? bridgeData : drData; 
  
endmodule

