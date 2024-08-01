library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        aluctr          : in     vl_logic_vector(2 downto 0);
        zero            : out    vl_logic;
        overflow        : out    vl_logic;
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end alu;
