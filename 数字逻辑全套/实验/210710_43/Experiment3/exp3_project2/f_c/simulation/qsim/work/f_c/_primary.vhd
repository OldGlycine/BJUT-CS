library verilog;
use verilog.vl_types.all;
entity f_c is
    port(
        clrn            : in     vl_logic;
        enp             : in     vl_logic;
        ent             : in     vl_logic;
        ldn             : in     vl_logic;
        data_in         : in     vl_logic_vector(3 downto 0);
        q_out           : out    vl_logic_vector(3 downto 0);
        rco             : out    vl_logic;
        n_en            : in     vl_logic;
        clk_50mhz       : in     vl_logic;
        rst             : in     vl_logic;
        clk_1khz        : out    vl_logic;
        clk_100hz       : out    vl_logic;
        clk_10hz        : out    vl_logic
    );
end f_c;
