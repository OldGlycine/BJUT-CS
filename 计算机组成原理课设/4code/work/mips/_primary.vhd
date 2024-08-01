library verilog;
use verilog.vl_types.all;
entity mips is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        dev1_rd         : in     vl_logic_vector(31 downto 0)
    );
end mips;
