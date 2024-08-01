library verilog;
use verilog.vl_types.all;
entity reg_N is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        cs              : in     vl_logic;
        w_r             : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end reg_N;
