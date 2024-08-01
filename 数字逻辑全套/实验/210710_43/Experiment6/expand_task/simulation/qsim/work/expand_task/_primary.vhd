library verilog;
use verilog.vl_types.all;
entity expand_task is
    port(
        clk_50mhz       : in     vl_logic;
        I_COL           : out    vl_logic_vector(3 downto 0);
        I_ROW           : out    vl_logic_vector(15 downto 0);
        \out\           : out    vl_logic
    );
end expand_task;
