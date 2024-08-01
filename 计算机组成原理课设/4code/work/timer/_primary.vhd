library verilog;
use verilog.vl_types.all;
entity timer is
    port(
        CLK_I           : in     vl_logic;
        RST_I           : in     vl_logic;
        ADDR_I          : in     vl_logic_vector(3 downto 2);
        WE_I            : in     vl_logic;
        DAT_I           : in     vl_logic_vector(31 downto 0);
        DAT_O           : out    vl_logic_vector(31 downto 0);
        IRQ             : out    vl_logic
    );
end timer;
