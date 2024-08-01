library verilog;
use verilog.vl_types.all;
entity muxdmin is
    port(
        bReg_out        : in     vl_logic_vector(31 downto 0);
        dmout_data      : in     vl_logic_vector(31 downto 0);
        issb            : in     vl_logic;
        dm_datain       : out    vl_logic_vector(31 downto 0)
    );
end muxdmin;
