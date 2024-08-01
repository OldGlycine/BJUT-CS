library verilog;
use verilog.vl_types.all;
entity tstage_gate_vlg_sample_tst is
    port(
        \in\            : in     vl_logic_vector(3 downto 0);
        w_r             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end tstage_gate_vlg_sample_tst;
