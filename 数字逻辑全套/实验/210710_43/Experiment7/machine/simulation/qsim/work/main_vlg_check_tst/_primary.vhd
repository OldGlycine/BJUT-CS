library verilog;
use verilog.vl_types.all;
entity main_vlg_check_tst is
    port(
        LEWG            : in     vl_logic;
        LEWR            : in     vl_logic;
        LEWY            : in     vl_logic;
        LSNG            : in     vl_logic;
        LSNR            : in     vl_logic;
        LSNY            : in     vl_logic;
        c_state         : in     vl_logic_vector(2 downto 0);
        condition       : in     vl_logic_vector(31 downto 0);
        left            : in     vl_logic;
        n_state         : in     vl_logic_vector(2 downto 0);
        r_count         : in     vl_logic_vector(5 downto 0);
        ring            : in     vl_logic_vector(1 downto 0);
        turn_out        : in     vl_logic_vector(1 downto 0);
        y_count         : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end main_vlg_check_tst;
