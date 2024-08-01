library verilog;
use verilog.vl_types.all;
entity muxlw is
    port(
        addr            : in     vl_logic_vector(31 downto 0);
        drData          : in     vl_logic_vector(31 downto 0);
        bridgeData      : in     vl_logic_vector(31 downto 0);
        muxlwOut        : out    vl_logic_vector(31 downto 0)
    );
end muxlw;
