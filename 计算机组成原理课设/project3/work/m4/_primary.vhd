library verilog;
use verilog.vl_types.all;
entity m4 is
    port(
        drout           : in     vl_logic_vector(31 downto 0);
        prrd            : in     vl_logic_vector(31 downto 0);
        m4out           : out    vl_logic_vector(31 downto 0);
        addr            : in     vl_logic_vector(31 downto 0)
    );
end m4;
