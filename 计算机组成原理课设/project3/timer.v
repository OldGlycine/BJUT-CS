module timer(CLK_I, RST_I, ADD_I, WE_I, DAT_I, DAT_O, IRQ);
  reg [31:0] CTRL, PRESET, COUNT;
  
  // addr[3:0]
  // 0000-0011  0100-0111  1000-1011
  input CLK_I, RST_I, WE_I;
  input [3:2] ADD_I;  //addr[3:2]
  input [31:0] DAT_I; //datain
  output [31:0] DAT_O;  //dataout
  output IRQ;  //int request
  
  wire im;
  wire [2:1] mode;
  wire enable;
  
  assign im = CTRL[3];      // 0:int x 1:int ?
  assign mode = CTRL[2:1];  // mode selection
  assign enable = CTRL[0];  // 0:count stop  1:count continue
  
  assign IRQ = ((COUNT == 32'b0) & im & (mode == 2'b00)) ? 1 : 0;
  
  initial begin
    CTRL = 0; PRESET = 0; COUNT = 0;
  end
  
  always@(posedge CLK_I)  begin
    if(RST_I) begin CTRL = 0; PRESET = 0; COUNT = 0; end
    else if(WE_I)
      case(ADD_I)
        2'b00:  CTRL <= DAT_I;
        2'b01:  begin PRESET <= DAT_I; COUNT <= DAT_I;  end
        2'b10:  COUNT <= DAT_I;
        default: $display("Illegal reg");
      endcase
    else if(enable) begin
      if(COUNT > 0)
        COUNT <= COUNT - 1;
      else if(COUNT == 0)
        case(mode)
          2'b00:
            $display("Stop counting");
          2'b01:
            COUNT <= PRESET;
          default:
            $display("Illegal mode");
        endcase
    end
  end
  
endmodule