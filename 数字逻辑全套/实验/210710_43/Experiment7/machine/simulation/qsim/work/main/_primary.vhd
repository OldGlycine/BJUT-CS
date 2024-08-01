library verilog;
use verilog.vl_types.all;
entity main is
    port(
        start           : in     vl_logic;
        stop            : in     vl_logic;
        clk             : in     vl_logic;
        r               : in     vl_logic_vector(5 downto 0);
        y               : in     vl_logic_vector(5 downto 0);
        LSNG            : out    vl_logic;
        LSNY            : out    vl_logic;
        c_state         : out    vl_logic_vector(2 downto 0);
        n_state         : out    vl_logic_vector(2 downto 0);
        LSNR            : out    vl_logic;
        LEWG            : out    vl_logic;
        LEWY            : out    vl_logic;
        LEWR            : out    vl_logic;
        rules           : in     vl_logic_vector(1 downto 0);
        turn_out        : out    vl_logic_vector(1 downto 0);
        left            : out    vl_logic;
        ring            : out    vl_logic_vector(1 downto 0);
        r_count         : out    vl_logic_vector(5 downto 0);
        y_count         : out    vl_logic_vector(5 downto 0);
        condition       : out    vl_logic_vector(31 downto 0)
    );
end main;
