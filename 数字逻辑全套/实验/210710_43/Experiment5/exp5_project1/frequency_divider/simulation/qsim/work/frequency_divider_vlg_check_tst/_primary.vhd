library verilog;
use verilog.vl_types.all;
entity frequency_divider_vlg_check_tst is
    port(
        clk_1hz         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end frequency_divider_vlg_check_tst;
