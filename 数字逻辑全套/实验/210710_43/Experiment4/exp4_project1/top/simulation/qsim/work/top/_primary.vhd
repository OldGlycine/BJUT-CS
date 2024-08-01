library verilog;
use verilog.vl_types.all;
entity top is
    port(
        clk_50mhz       : in     vl_logic;
        rst             : in     vl_logic;
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end top;
