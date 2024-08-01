library verilog;
use verilog.vl_types.all;
entity flowing_water_light is
    port(
        reset           : in     vl_logic;
        \out\           : out    vl_logic_vector(15 downto 0);
        clk             : in     vl_logic
    );
end flowing_water_light;
