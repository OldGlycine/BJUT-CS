library verilog;
use verilog.vl_types.all;
entity top is
    port(
        clk_50mhz       : in     vl_logic;
        cs              : in     vl_logic;
        w_r             : in     vl_logic;
        addr            : in     vl_logic;
        key             : in     vl_logic;
        dsa             : out    vl_logic_vector(1 downto 0);
        leda            : out    vl_logic_vector(6 downto 0);
        ring            : out    vl_logic_vector(1 downto 0);
        beep            : out    vl_logic;
        reset           : in     vl_logic;
        left            : out    vl_logic;
        stop            : in     vl_logic;
        LSNG            : out    vl_logic;
        LSNY            : out    vl_logic;
        LSNR            : out    vl_logic;
        LEWG            : out    vl_logic;
        LEWY            : out    vl_logic;
        LEWR            : out    vl_logic;
        rules           : in     vl_logic_vector(1 downto 0);
        turn_out        : out    vl_logic_vector(1 downto 0);
        beep_r          : out    vl_logic;
        ds              : out    vl_logic_vector(1 downto 0);
        led             : out    vl_logic_vector(6 downto 0);
        w_data          : out    vl_logic_vector(5 downto 0);
        r_count         : out    vl_logic_vector(5 downto 0);
        y_count         : out    vl_logic_vector(5 downto 0);
        a               : out    vl_logic_vector(3 downto 0);
        b               : out    vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0);
        array_reg1      : out    vl_logic_vector(5 downto 0);
        array_reg2      : out    vl_logic_vector(5 downto 0);
        condition       : out    vl_logic_vector(31 downto 0)
    );
end top;
