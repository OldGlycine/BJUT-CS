library verilog;
use verilog.vl_types.all;
entity top_vlg_sample_tst is
    port(
        addr            : in     vl_logic;
        clk_50mhz       : in     vl_logic;
        cs              : in     vl_logic;
        key             : in     vl_logic;
        reset           : in     vl_logic;
        rules           : in     vl_logic_vector(1 downto 0);
        stop            : in     vl_logic;
        w_r             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end top_vlg_sample_tst;
