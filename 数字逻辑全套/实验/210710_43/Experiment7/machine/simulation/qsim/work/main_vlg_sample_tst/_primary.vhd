library verilog;
use verilog.vl_types.all;
entity main_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        r               : in     vl_logic_vector(5 downto 0);
        rules           : in     vl_logic_vector(1 downto 0);
        start           : in     vl_logic;
        stop            : in     vl_logic;
        y               : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end main_vlg_sample_tst;
