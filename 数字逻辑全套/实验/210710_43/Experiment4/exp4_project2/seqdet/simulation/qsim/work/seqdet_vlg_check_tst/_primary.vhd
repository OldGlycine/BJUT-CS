library verilog;
use verilog.vl_types.all;
entity seqdet_vlg_check_tst is
    port(
        c_state         : in     vl_logic_vector(3 downto 0);
        n_state         : in     vl_logic_vector(3 downto 0);
        z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end seqdet_vlg_check_tst;
