library verilog;
use verilog.vl_types.all;
entity reg_files_vlg_sample_tst is
    port(
        addr            : in     vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        reset           : in     vl_logic;
        w_r             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end reg_files_vlg_sample_tst;
