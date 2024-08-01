library verilog;
use verilog.vl_types.all;
entity top is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        reset           : in     vl_logic;
        rst             : in     vl_logic;
        z               : out    vl_logic;
        c_state         : out    vl_logic_vector(3 downto 0);
        n_state         : out    vl_logic_vector(3 downto 0)
    );
end top;
