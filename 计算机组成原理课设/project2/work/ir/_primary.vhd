library verilog;
use verilog.vl_types.all;
entity ir is
    port(
        irwr            : in     vl_logic;
        irin            : in     vl_logic_vector(31 downto 0);
        irout           : out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic
    );
end ir;
