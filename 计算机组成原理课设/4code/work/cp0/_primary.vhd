library verilog;
use verilog.vl_types.all;
entity cp0 is
    generic(
        SR              : vl_logic_vector(4 downto 0) := (Hi0, Hi1, Hi1, Hi0, Hi0);
        CAUSE           : vl_logic_vector(4 downto 0) := (Hi0, Hi1, Hi1, Hi0, Hi1);
        EPC             : vl_logic_vector(4 downto 0) := (Hi0, Hi1, Hi1, Hi1, Hi0);
        PRID            : vl_logic_vector(4 downto 0) := (Hi0, Hi1, Hi1, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        wen             : in     vl_logic;
        exlset          : in     vl_logic;
        exlclr          : in     vl_logic;
        sel             : in     vl_logic_vector(4 downto 0);
        HWInt           : in     vl_logic_vector(5 downto 0);
        din             : in     vl_logic_vector(31 downto 0);
        pc_p4           : in     vl_logic_vector(31 downto 0);
        pcout           : out    vl_logic_vector(31 downto 0);
        dout            : out    vl_logic_vector(31 downto 0);
        intreq          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SR : constant is 2;
    attribute mti_svvh_generic_type of CAUSE : constant is 2;
    attribute mti_svvh_generic_type of EPC : constant is 2;
    attribute mti_svvh_generic_type of PRID : constant is 2;
end cp0;
