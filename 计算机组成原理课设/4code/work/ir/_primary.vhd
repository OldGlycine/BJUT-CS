library verilog;
use verilog.vl_types.all;
entity ir is
    port(
        clk             : in     vl_logic;
        irwr            : in     vl_logic;
        imin            : in     vl_logic_vector(31 downto 0);
        irout           : out    vl_logic_vector(31 downto 0)
    );
end ir;
