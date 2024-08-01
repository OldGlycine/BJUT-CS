library verilog;
use verilog.vl_types.all;
entity frequency_divider is
    port(
        clk_50mhz       : in     vl_logic;
        rst             : in     vl_logic;
        clk_1hz         : out    vl_logic
    );
end frequency_divider;
