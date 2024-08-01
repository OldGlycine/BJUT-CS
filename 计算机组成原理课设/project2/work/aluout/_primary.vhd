library verilog;
use verilog.vl_types.all;
entity aluout is
    port(
        clk             : in     vl_logic;
        aluoutin        : in     vl_logic_vector(31 downto 0);
        aluoutout       : out    vl_logic_vector(31 downto 0)
    );
end aluout;
