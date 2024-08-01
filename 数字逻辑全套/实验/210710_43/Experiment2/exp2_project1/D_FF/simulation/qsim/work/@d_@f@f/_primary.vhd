library verilog;
use verilog.vl_types.all;
entity D_FF is
    port(
        D               : in     vl_logic;
        CLK             : in     vl_logic;
        Q               : out    vl_logic;
        QN              : out    vl_logic
    );
end D_FF;
