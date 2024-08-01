library verilog;
use verilog.vl_types.all;
entity top_vlg_check_tst is
    port(
        LEWG            : in     vl_logic;
        LEWR            : in     vl_logic;
        LEWY            : in     vl_logic;
        LSNG            : in     vl_logic;
        LSNR            : in     vl_logic;
        LSNY            : in     vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        array_reg1      : in     vl_logic_vector(5 downto 0);
        array_reg2      : in     vl_logic_vector(5 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        beep            : in     vl_logic;
        beep_r          : in     vl_logic;
        condition       : in     vl_logic_vector(31 downto 0);
        ds              : in     vl_logic_vector(1 downto 0);
        dsa             : in     vl_logic_vector(1 downto 0);
        led             : in     vl_logic_vector(6 downto 0);
        leda            : in     vl_logic_vector(6 downto 0);
        left            : in     vl_logic;
        \out\           : in     vl_logic_vector(3 downto 0);
        r_count         : in     vl_logic_vector(5 downto 0);
        ring            : in     vl_logic_vector(1 downto 0);
        turn_out        : in     vl_logic_vector(1 downto 0);
        w_data          : in     vl_logic_vector(5 downto 0);
        y_count         : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end top_vlg_check_tst;
