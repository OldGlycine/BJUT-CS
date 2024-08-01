library verilog;
use verilog.vl_types.all;
entity led is
    port(
        \out\           : out    vl_logic_vector(6 downto 0);
        \in\            : in     vl_logic_vector(3 downto 0);
        n_en            : in     vl_logic;
        sel             : out    vl_logic
    );
end led;
