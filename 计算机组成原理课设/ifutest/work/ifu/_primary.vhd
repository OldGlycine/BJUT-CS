library verilog;
use verilog.vl_types.all;
entity ifu is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        npc_sel         : in     vl_logic;
        zero            : in     vl_logic;
        insout          : out    vl_logic_vector(31 downto 0)
    );
end ifu;
