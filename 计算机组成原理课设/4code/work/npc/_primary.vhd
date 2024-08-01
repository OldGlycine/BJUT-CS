library verilog;
use verilog.vl_types.all;
entity npc is
    port(
        rst             : in     vl_logic;
        pcin            : in     vl_logic_vector(31 downto 0);
        pc_ori          : in     vl_logic_vector(31 downto 0);
        npc_sel         : in     vl_logic_vector(1 downto 0);
        zero            : in     vl_logic;
        imm32           : in     vl_logic_vector(31 downto 0);
        pcout           : out    vl_logic_vector(31 downto 0);
        ERET            : in     vl_logic;
        EPC             : in     vl_logic_vector(31 downto 0);
        intreq          : in     vl_logic
    );
end npc;
