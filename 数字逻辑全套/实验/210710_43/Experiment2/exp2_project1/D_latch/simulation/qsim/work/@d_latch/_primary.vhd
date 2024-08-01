library verilog;
use verilog.vl_types.all;
entity D_latch is
    port(
        Q               : out    vl_logic;
        QN              : out    vl_logic;
        D               : in     vl_logic;
        EN              : in     vl_logic
    );
end D_latch;
