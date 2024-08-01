library verilog;
use verilog.vl_types.all;
entity reg_files is
    port(
        output          : out    vl_logic_vector(3 downto 0);
        w_r             : in     vl_logic;
        addr            : in     vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0)
    );
end reg_files;
