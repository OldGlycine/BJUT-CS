module npc_tb;
  reg [25:0] imm;
  reg [31:0] pcin; // from pc
  reg [31:0] dmin; // pc for jr command, from dm
  reg zero, rst;
  reg [1:0] npcop;
  wire [31:0] nextpc;
  wire [31:0] pc_4; // pc+4
  
  npc nn(pcin, dmin, npcop, zero, imm, nextpc, pc_4, rst);
  
  initial
  begin
    pcin = 32'h 0000_0000;
    dmin = 32'h 0000_3010;
    zero = 1;
    npcop = 2'b00;
    rst = 1;
    #30
    pcin = nextpc;
    #30
    rst  = 0;
    pcin = nextpc;
    #30
    pcin = nextpc;
    #30
    imm = 26'b10;
    npcop = 2'b01;
    pcin = nextpc;
    #30
    imm = 26'b00_0000_0000_0000_1100_0000_0001;
    npcop = 2'b10;
    pcin = nextpc;
    #30
    imm = 26'b00_0000_0000_0000_1100_0000_0001;
    npcop = 2'b11;
  	 pcin = nextpc;
  	 #30
  	 imm = 26'b00_0000_0000_0000_1100_0000_0001;
  	 npcop = 0;
  	 pcin = nextpc;
  	 #30
  	 pcin = nextpc;
  	 #30
  	 rst = 1;
  	 pcin = 32'h 0000_3020;
    dmin = 32'h 0000_3010;
    zero = 1;
    npcop = 2'b00;
  	 #30
    pcin = nextpc;
    
  end
endmodule