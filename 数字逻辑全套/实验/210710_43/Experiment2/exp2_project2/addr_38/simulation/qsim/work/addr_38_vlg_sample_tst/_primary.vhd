library verilog;
use verilog.vl_types.all;
entity addr_38_vlg_sample_tst is
    port(
        addr            : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end addr_38_vlg_sample_tst;
