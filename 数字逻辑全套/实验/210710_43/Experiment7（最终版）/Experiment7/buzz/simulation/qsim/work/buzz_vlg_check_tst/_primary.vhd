library verilog;
use verilog.vl_types.all;
entity buzz_vlg_check_tst is
    port(
        beep            : in     vl_logic;
        beep_r          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end buzz_vlg_check_tst;
