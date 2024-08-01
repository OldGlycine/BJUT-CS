create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 65536 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list s00_axi_aclk_IBUF_BUFG]]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/data_rd[0]} {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/data_rd[1]} {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/data_rd[2]} {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/data_rd[3]} {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/data_rd[4]} {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/data_rd[5]} {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/data_rd[6]} {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/data_rd[7]}]]
create_debug_port u_ila_0 probe
set_property port_width 8 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/state[0]} {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/state[1]} {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/state[2]} {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/state[3]} {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/state[4]} {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/state[5]} {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/state[6]} {i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/state[7]}]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/scl]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/sda_IBUF]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list i2c_wyf_v1_0_S00_AXI_inst/top_u/i2c_master_u/sda_OBUF]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets s00_axi_aclk_IBUF_BUFG]
