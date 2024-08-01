library verilog;
use verilog.vl_types.all;
entity npc is
    port(
        pcin            : in     vl_logic_vector(31 downto 0);
        rd1             : in     vl_logic_vector(31 downto 0);
        npcop           : in     vl_logic_vector(1 downto 0);
        zero            : in     vl_logic;
        imm             : in     vl_logic_vector(25 downto 0);
        nextpc          : out    vl_logic_vector(31 downto 0);
        pc_4            : out    vl_logic_vector(31 downto 0);
        rst             : in     vl_logic
    );
end npc;
