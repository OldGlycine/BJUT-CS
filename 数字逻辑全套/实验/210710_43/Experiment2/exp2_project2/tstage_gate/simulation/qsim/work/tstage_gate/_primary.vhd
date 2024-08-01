library verilog;
use verilog.vl_types.all;
entity tstage_gate is
    port(
        \in\            : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0);
        w_r             : in     vl_logic
    );
end tstage_gate;
