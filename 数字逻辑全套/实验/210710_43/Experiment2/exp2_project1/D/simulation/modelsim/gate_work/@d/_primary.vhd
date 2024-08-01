library verilog;
use verilog.vl_types.all;
entity D is
    port(
        LED1            : out    vl_logic;
        D               : in     vl_logic;
        Clk             : in     vl_logic;
        LED2            : out    vl_logic;
        EN              : in     vl_logic
    );
end D;
