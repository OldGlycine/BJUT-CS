library verilog;
use verilog.vl_types.all;
entity ext is
    port(
        imm16           : in     vl_logic_vector(15 downto 0);
        extop           : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end ext;
