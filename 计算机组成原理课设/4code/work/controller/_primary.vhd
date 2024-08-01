library verilog;
use verilog.vl_types.all;
entity controller is
    generic(
        S0              : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi0, Hi0);
        S1              : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi0, Hi1);
        S2              : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi1, Hi0);
        S3              : vl_logic_vector(3 downto 0) := (Hi0, Hi0, Hi1, Hi1);
        S4              : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi0, Hi0);
        S5              : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi0, Hi1);
        S6              : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi1, Hi0);
        S7              : vl_logic_vector(3 downto 0) := (Hi0, Hi1, Hi1, Hi1);
        S8              : vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi0, Hi0);
        S9              : vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi0, Hi1);
        S10             : vl_logic_vector(3 downto 0) := (Hi1, Hi0, Hi1, Hi0)
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        opcode          : in     vl_logic_vector(5 downto 0);
        funct           : in     vl_logic_vector(5 downto 0);
        zero            : in     vl_logic;
        RegDst          : out    vl_logic_vector(1 downto 0);
        RegWrite        : out    vl_logic;
        ALUSrc          : out    vl_logic;
        MemToReg        : out    vl_logic_vector(1 downto 0);
        MemWrite        : out    vl_logic;
        npc_sel         : out    vl_logic_vector(1 downto 0);
        ALUOp           : out    vl_logic_vector(1 downto 0);
        ExtOp           : out    vl_logic_vector(1 downto 0);
        write_30        : out    vl_logic;
        pcwr            : out    vl_logic;
        irwr            : out    vl_logic;
        islb            : out    vl_logic;
        issb            : out    vl_logic;
        intreq          : in     vl_logic;
        cp0_wen         : out    vl_logic;
        bridge_wen      : out    vl_logic;
        M               : in     vl_logic_vector(4 downto 0);
        exlset          : out    vl_logic;
        exlclr          : out    vl_logic;
        intpc           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of S0 : constant is 2;
    attribute mti_svvh_generic_type of S1 : constant is 2;
    attribute mti_svvh_generic_type of S2 : constant is 2;
    attribute mti_svvh_generic_type of S3 : constant is 2;
    attribute mti_svvh_generic_type of S4 : constant is 2;
    attribute mti_svvh_generic_type of S5 : constant is 2;
    attribute mti_svvh_generic_type of S6 : constant is 2;
    attribute mti_svvh_generic_type of S7 : constant is 2;
    attribute mti_svvh_generic_type of S8 : constant is 2;
    attribute mti_svvh_generic_type of S9 : constant is 2;
    attribute mti_svvh_generic_type of S10 : constant is 2;
end controller;
