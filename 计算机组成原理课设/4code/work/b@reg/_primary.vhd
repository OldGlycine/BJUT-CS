library verilog;
use verilog.vl_types.all;
entity bReg is
    port(
        clk             : in     vl_logic;
        alu_dataOut_2   : in     vl_logic_vector(31 downto 0);
        bReg_out        : out    vl_logic_vector(31 downto 0)
    );
end bReg;
