library verilog;
use verilog.vl_types.all;
entity buzz_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clk_fast        : in     vl_logic;
        clk_slow        : in     vl_logic;
        ring            : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end buzz_vlg_sample_tst;
