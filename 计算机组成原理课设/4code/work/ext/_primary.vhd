library verilog;
use verilog.vl_types.all;
entity ext is
    port(
        imm16           : in     vl_logic_vector(15 downto 0);
        ExtOp           : in     vl_logic_vector(1 downto 0);
        ext32           : out    vl_logic_vector(31 downto 0)
    );
end ext;
