library verilog;
use verilog.vl_types.all;
entity m3 is
    port(
        bsel            : in     vl_logic;
        bo              : in     vl_logic_vector(31 downto 0);
        imm32           : in     vl_logic_vector(31 downto 0);
        m3out           : out    vl_logic_vector(31 downto 0)
    );
end m3;
