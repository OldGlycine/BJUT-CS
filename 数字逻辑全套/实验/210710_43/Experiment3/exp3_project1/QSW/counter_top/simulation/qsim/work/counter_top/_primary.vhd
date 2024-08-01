library verilog;
use verilog.vl_types.all;
entity counter_top is
    port(
        clrn            : in     vl_logic;
        clk             : in     vl_logic;
        enp             : in     vl_logic;
        ent             : in     vl_logic;
        ldn             : in     vl_logic;
        data_in         : in     vl_logic_vector(3 downto 0);
        rco             : out    vl_logic;
        a               : out    vl_logic;
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic;
        e               : out    vl_logic;
        f               : out    vl_logic;
        g               : out    vl_logic;
        sel             : out    vl_logic;
        n_en            : in     vl_logic
    );
end counter_top;
