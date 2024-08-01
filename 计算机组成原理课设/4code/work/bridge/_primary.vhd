library verilog;
use verilog.vl_types.all;
entity bridge is
    port(
        praddr          : in     vl_logic_vector(31 downto 0);
        prwd            : in     vl_logic_vector(31 downto 0);
        dev0_rd         : in     vl_logic_vector(31 downto 0);
        dev1_rd         : in     vl_logic_vector(31 downto 0);
        dev2_rd         : in     vl_logic_vector(31 downto 0);
        wecpu           : in     vl_logic;
        IRQ             : in     vl_logic;
        prrd            : out    vl_logic_vector(31 downto 0);
        dev_wd          : out    vl_logic_vector(31 downto 0);
        dev_addr        : out    vl_logic_vector(31 downto 0);
        wedev0          : out    vl_logic;
        wedev2          : out    vl_logic;
        HWInt           : out    vl_logic_vector(5 downto 0)
    );
end bridge;
