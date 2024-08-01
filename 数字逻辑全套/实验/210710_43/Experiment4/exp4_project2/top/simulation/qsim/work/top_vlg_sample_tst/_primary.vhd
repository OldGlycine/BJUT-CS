library verilog;
use verilog.vl_types.all;
entity top_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        reset           : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end top_vlg_sample_tst;
