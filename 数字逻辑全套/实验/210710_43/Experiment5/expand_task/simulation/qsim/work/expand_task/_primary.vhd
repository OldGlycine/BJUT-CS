library verilog;
use verilog.vl_types.all;
entity expand_task is
    port(
        num_sel         : in     vl_logic;
        n_en            : in     vl_logic;
        clk_50mhz       : in     vl_logic;
        ds              : out    vl_logic_vector(7 downto 0);
        led             : out    vl_logic_vector(6 downto 0);
        swc             : in     vl_logic_vector(3 downto 0)
    );
end expand_task;
