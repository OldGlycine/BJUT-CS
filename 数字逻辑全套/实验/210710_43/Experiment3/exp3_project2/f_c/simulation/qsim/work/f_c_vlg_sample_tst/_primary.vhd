library verilog;
use verilog.vl_types.all;
entity f_c_vlg_sample_tst is
    port(
        clk_50mhz       : in     vl_logic;
        clrn            : in     vl_logic;
        data_in         : in     vl_logic_vector(3 downto 0);
        enp             : in     vl_logic;
        ent             : in     vl_logic;
        ldn             : in     vl_logic;
        n_en            : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end f_c_vlg_sample_tst;
