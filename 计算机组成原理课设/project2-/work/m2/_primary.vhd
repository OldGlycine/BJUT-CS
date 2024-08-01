library verilog;
use verilog.vl_types.all;
entity m2 is
    port(
        wdsel           : in     vl_logic_vector(1 downto 0);
        aluo            : in     vl_logic_vector(31 downto 0);
        dmout           : in     vl_logic_vector(31 downto 0);
        pc_4            : in     vl_logic_vector(31 downto 0);
        m2out           : out    vl_logic_vector(31 downto 0)
    );
end m2;
