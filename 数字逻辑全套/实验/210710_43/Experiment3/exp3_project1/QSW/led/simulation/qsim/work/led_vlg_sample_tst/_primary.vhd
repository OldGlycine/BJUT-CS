library verilog;
use verilog.vl_types.all;
entity led_vlg_sample_tst is
    port(
        \in\            : in     vl_logic_vector(3 downto 0);
        n_en            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end led_vlg_sample_tst;
