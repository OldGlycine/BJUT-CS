library verilog;
use verilog.vl_types.all;
entity reg_N_vlg_check_tst is
    port(
        q               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end reg_N_vlg_check_tst;
