library verilog;
use verilog.vl_types.all;
entity expand_task_vlg_check_tst is
    port(
        I_COL           : in     vl_logic_vector(3 downto 0);
        I_ROW           : in     vl_logic_vector(15 downto 0);
        \out\           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end expand_task_vlg_check_tst;
