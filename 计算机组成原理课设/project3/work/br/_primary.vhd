library verilog;
use verilog.vl_types.all;
entity br is
    port(
        clk             : in     vl_logic;
        brin            : in     vl_logic_vector(31 downto 0);
        brout           : out    vl_logic_vector(31 downto 0)
    );
end br;
