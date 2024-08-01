library verilog;
use verilog.vl_types.all;
entity seqdet is
    port(
        clk             : in     vl_logic;
        x               : in     vl_logic;
        reset           : in     vl_logic;
        z               : out    vl_logic;
        c_state         : out    vl_logic_vector(3 downto 0);
        n_state         : out    vl_logic_vector(3 downto 0)
    );
end seqdet;
