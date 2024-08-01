library verilog;
use verilog.vl_types.all;
entity dr is
    port(
        clk             : in     vl_logic;
        dmout           : in     vl_logic_vector(31 downto 0);
        drout           : out    vl_logic_vector(31 downto 0);
        islb            : in     vl_logic
    );
end dr;
