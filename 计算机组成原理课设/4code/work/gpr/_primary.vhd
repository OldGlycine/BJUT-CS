library verilog;
use verilog.vl_types.all;
entity gpr is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        gprwr           : in     vl_logic;
        MemToReg        : in     vl_logic_vector(1 downto 0);
        RegDst          : in     vl_logic_vector(1 downto 0);
        rs              : in     vl_logic_vector(4 downto 0);
        rt              : in     vl_logic_vector(4 downto 0);
        rd              : in     vl_logic_vector(4 downto 0);
        write_30        : in     vl_logic;
        pc_p4           : in     vl_logic_vector(31 downto 0);
        aluReg_out      : in     vl_logic_vector(31 downto 0);
        dmReg_out       : in     vl_logic_vector(31 downto 0);
        overflow        : in     vl_logic;
        dataOut_1       : out    vl_logic_vector(31 downto 0);
        dataOut_2       : out    vl_logic_vector(31 downto 0);
        cp0in           : in     vl_logic_vector(31 downto 0)
    );
end gpr;
