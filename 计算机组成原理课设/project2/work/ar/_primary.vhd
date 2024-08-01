library verilog;
use verilog.vl_types.all;
entity ar is
    port(
        clk             : in     vl_logic;
        arin            : in     vl_logic_vector(31 downto 0);
        arout           : out    vl_logic_vector(31 downto 0)
    );
end ar;
