library verilog;
use verilog.vl_types.all;
entity led_vlg_check_tst is
    port(
        \out\           : in     vl_logic_vector(6 downto 0);
        sel             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end led_vlg_check_tst;
