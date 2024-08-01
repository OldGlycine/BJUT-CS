vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_4
vlib activehdl/processing_system7_vip_v1_0_6
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_uartlite_v2_0_22
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_18
vlib activehdl/fifo_generator_v13_2_3
vlib activehdl/axi_data_fifo_v2_1_17
vlib activehdl/axi_crossbar_v2_1_19
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xbip_utils_v3_0_9
vlib activehdl/c_reg_fd_v12_0_5
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_pipe_v3_0_5
vlib activehdl/xbip_dsp48_addsub_v3_0_5
vlib activehdl/xbip_addsub_v3_0_5
vlib activehdl/c_addsub_v12_0_12
vlib activehdl/xbip_bram18k_v3_0_5
vlib activehdl/mult_gen_v12_0_14
vlib activehdl/axi_utils_v2_0_5
vlib activehdl/cordic_v6_0_14
vlib activehdl/blk_mem_gen_v8_4_2
vlib activehdl/blk_mem_gen_v8_3_6
vlib activehdl/axi_bram_ctrl_v4_1_0
vlib activehdl/axi_protocol_converter_v2_1_18

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 activehdl/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 activehdl/processing_system7_vip_v1_0_6
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_uartlite_v2_0_22 activehdl/axi_uartlite_v2_0_22
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_18 activehdl/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 activehdl/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 activehdl/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 activehdl/axi_crossbar_v2_1_19
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap xbip_utils_v3_0_9 activehdl/xbip_utils_v3_0_9
vmap c_reg_fd_v12_0_5 activehdl/c_reg_fd_v12_0_5
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_5 activehdl/xbip_pipe_v3_0_5
vmap xbip_dsp48_addsub_v3_0_5 activehdl/xbip_dsp48_addsub_v3_0_5
vmap xbip_addsub_v3_0_5 activehdl/xbip_addsub_v3_0_5
vmap c_addsub_v12_0_12 activehdl/c_addsub_v12_0_12
vmap xbip_bram18k_v3_0_5 activehdl/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 activehdl/mult_gen_v12_0_14
vmap axi_utils_v2_0_5 activehdl/axi_utils_v2_0_5
vmap cordic_v6_0_14 activehdl/cordic_v6_0_14
vmap blk_mem_gen_v8_4_2 activehdl/blk_mem_gen_v8_4_2
vmap blk_mem_gen_v8_3_6 activehdl/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_1_0 activehdl/axi_bram_ctrl_v4_1_0
vmap axi_protocol_converter_v2_1_18 activehdl/axi_protocol_converter_v2_1_18

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4  -sv2k12 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6  -sv2k12 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/ipshared/9fdb/hdl/spi_1.v" \
"../../../bd/design_1/ipshared/9fdb/hdl/spi_oled111_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/9fdb/hdl/spi_oled111_v1_0.v" \
"../../../bd/design_1/ip/design_1_spi_oled111_0_0/sim/design_1_spi_oled111_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_22 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/3b4d/src/divider.v" \
"../../../bd/design_1/ipshared/3b4d/src/i2c_master.v" \
"../../../bd/design_1/ipshared/3b4d/hdl/i2c_wyf_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/3b4d/src/top.v" \
"../../../bd/design_1/ipshared/3b4d/hdl/i2c_wyf_v1_0.v" \
"../../../bd/design_1/ip/design_1_i2c_wyf_0_0/sim/design_1_i2c_wyf_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vcom -work xbip_utils_v3_0_9 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_gly_bram_0_0/src/cordic_ip/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_5 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_gly_bram_0_0/src/cordic_ip/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_gly_bram_0_0/src/cordic_ip/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_gly_bram_0_0/src/cordic_ip/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_gly_bram_0_0/src/cordic_ip/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_5 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_gly_bram_0_0/src/cordic_ip/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_12 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_gly_bram_0_0/src/cordic_ip/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_gly_bram_0_0/src/cordic_ip/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_gly_bram_0_0/src/cordic_ip/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_gly_bram_0_0/src/cordic_ip/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cordic_v6_0_14 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_gly_bram_0_0/src/cordic_ip/hdl/cordic_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_gly_bram_0_0/src/cordic_ip/sim/cordic_ip.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_gly_bram_0_0/src/fifo_ip/sim/fifo_ip.v" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_gly_bram_0_0/src/blk_mem_gen_0/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_gly_bram_0_0/src/blk_mem_gen_0/sim/blk_mem_gen_0.v" \
"../../../bd/design_1/ipshared/edab/src/dout.v" \
"../../../bd/design_1/ipshared/edab/src/genMat.v" \
"../../../bd/design_1/ipshared/edab/hdl/gly_bram_v1_5_S00_AXI.v" \
"../../../bd/design_1/ipshared/edab/src/sobel.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/edab/src/bram_top.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/edab/hdl/gly_bram_v1_5.v" \
"../../../bd/design_1/ip/design_1_gly_bram_0_0/sim/design_1_gly_bram_0_0.v" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vlog -work blk_mem_gen_v8_3_6  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_1_0 -93 \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work axi_protocol_converter_v2_1_18  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../zonghe1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_4/sim/design_1_auto_pc_4.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \
"../../../bd/design_1/ip/design_1_auto_pc_3/sim/design_1_auto_pc_3.v" \

vlog -work xil_defaultlib \
"glbl.v"

