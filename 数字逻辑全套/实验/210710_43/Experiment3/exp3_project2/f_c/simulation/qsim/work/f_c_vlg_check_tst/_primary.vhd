library verilog;
use verilog.vl_types.all;
entity f_c_vlg_check_tst is
    port(
        clk_1khz        : in     vl_logic;
        clk_10hz        : in     vl_logic;
        clk_100hz       : in     vl_logic;
        q_out           : in     vl_logic_vector(3 downto 0);
        rco             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end f_c_vlg_check_tst;
