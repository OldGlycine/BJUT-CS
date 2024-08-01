library verilog;
use verilog.vl_types.all;
entity buzz is
    port(
        clk             : in     vl_logic;
        beep_r          : out    vl_logic;
        clk_slow        : in     vl_logic;
        clk_fast        : in     vl_logic;
        ring            : in     vl_logic_vector(1 downto 0);
        beep            : out    vl_logic
    );
end buzz;
