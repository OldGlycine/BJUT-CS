library verilog;
use verilog.vl_types.all;
entity aluReg is
    port(
        clk             : in     vl_logic;
        alu_res         : in     vl_logic_vector(31 downto 0);
        aluReg_out      : out    vl_logic_vector(31 downto 0);
        overflow        : in     vl_logic;
        overflowReg     : out    vl_logic
    );
end aluReg;
