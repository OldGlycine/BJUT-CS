library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        dataOut_1       : in     vl_logic_vector(31 downto 0);
        dataOut_2       : in     vl_logic_vector(31 downto 0);
        ext32           : in     vl_logic_vector(31 downto 0);
        ALUSrc          : in     vl_logic;
        ALUOp           : in     vl_logic_vector(1 downto 0);
        zero            : out    vl_logic;
        overflow        : out    vl_logic;
        alu_res         : out    vl_logic_vector(31 downto 0);
        write_30        : in     vl_logic
    );
end alu;
