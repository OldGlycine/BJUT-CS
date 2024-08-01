library verilog;
use verilog.vl_types.all;
entity aReg is
    port(
        clk             : in     vl_logic;
        alu_dataOut_1   : in     vl_logic_vector(31 downto 0);
        aReg_out        : out    vl_logic_vector(31 downto 0)
    );
end aReg;
