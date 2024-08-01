library verilog;
use verilog.vl_types.all;
entity outputDEV is
    port(
        clk             : in     vl_logic;
        en              : in     vl_logic;
        addr            : in     vl_logic_vector(3 downto 2);
        din             : in     vl_logic_vector(31 downto 0);
        dout            : out    vl_logic_vector(31 downto 0)
    );
end outputDEV;
