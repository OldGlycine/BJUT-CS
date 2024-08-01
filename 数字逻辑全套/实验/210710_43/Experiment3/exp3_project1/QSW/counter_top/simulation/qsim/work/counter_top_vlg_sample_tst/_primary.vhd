library verilog;
use verilog.vl_types.all;
entity counter_top_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clrn            : in     vl_logic;
        data_in         : in     vl_logic_vector(3 downto 0);
        enp             : in     vl_logic;
        ent             : in     vl_logic;
        ldn             : in     vl_logic;
        n_en            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end counter_top_vlg_sample_tst;
