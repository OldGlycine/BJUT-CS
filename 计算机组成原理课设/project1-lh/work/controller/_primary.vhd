library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        opcode          : in     vl_logic_vector(5 downto 0);
        funct           : in     vl_logic_vector(5 downto 0);
        j               : out    vl_logic;
        aluop           : out    vl_logic_vector(2 downto 0);
        gprsel          : out    vl_logic_vector(1 downto 0);
        gprwr           : out    vl_logic;
        extop           : out    vl_logic_vector(1 downto 0);
        dmwr            : out    vl_logic;
        wdsel           : out    vl_logic_vector(1 downto 0);
        npcop           : out    vl_logic_vector(1 downto 0);
        bsel            : out    vl_logic;
        overflow        : in     vl_logic;
        lh              : out    vl_logic
    );
end controller;
