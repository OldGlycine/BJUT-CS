library verilog;
use verilog.vl_types.all;
entity expand_task_vlg_sample_tst is
    port(
        clk_50mhz       : in     vl_logic;
        n_en            : in     vl_logic;
        num_sel         : in     vl_logic;
        swc             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end expand_task_vlg_sample_tst;
