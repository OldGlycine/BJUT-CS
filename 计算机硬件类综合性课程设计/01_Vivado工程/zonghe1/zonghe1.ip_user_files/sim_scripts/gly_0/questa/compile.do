vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xbip_utils_v3_0_9
vlib questa_lib/msim/c_reg_fd_v12_0_5
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_pipe_v3_0_5
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_5
vlib questa_lib/msim/xbip_addsub_v3_0_5
vlib questa_lib/msim/c_addsub_v12_0_12
vlib questa_lib/msim/xbip_bram18k_v3_0_5
vlib questa_lib/msim/mult_gen_v12_0_14
vlib questa_lib/msim/axi_utils_v2_0_5
vlib questa_lib/msim/cordic_v6_0_14
vlib questa_lib/msim/fifo_generator_v13_2_3

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap xbip_utils_v3_0_9 questa_lib/msim/xbip_utils_v3_0_9
vmap c_reg_fd_v12_0_5 questa_lib/msim/c_reg_fd_v12_0_5
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_5 questa_lib/msim/xbip_pipe_v3_0_5
vmap xbip_dsp48_addsub_v3_0_5 questa_lib/msim/xbip_dsp48_addsub_v3_0_5
vmap xbip_addsub_v3_0_5 questa_lib/msim/xbip_addsub_v3_0_5
vmap c_addsub_v12_0_12 questa_lib/msim/c_addsub_v12_0_12
vmap xbip_bram18k_v3_0_5 questa_lib/msim/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 questa_lib/msim/mult_gen_v12_0_14
vmap axi_utils_v2_0_5 questa_lib/msim/axi_utils_v2_0_5
vmap cordic_v6_0_14 questa_lib/msim/cordic_v6_0_14
vmap fifo_generator_v13_2_3 questa_lib/msim/fifo_generator_v13_2_3

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../zonghe1.srcs/sources_1/ip/gly_0/drivers/gly_v1_0/src" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_9 -64 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_5 -64 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -64 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -64 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_5 -64 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_12 -64 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -64 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -64 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -64 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cordic_v6_0_14 -64 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/cordic_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../zonghe1.srcs/sources_1/ip/gly_0/src/cordic_ip_1/sim/cordic_ip.vhd" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../zonghe1.srcs/sources_1/ip/gly_0/drivers/gly_v1_0/src" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../ipstatic/ip/gly_0/src/fifo_ip_1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../ipstatic/ip/gly_0/src/fifo_ip_1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../zonghe1.srcs/sources_1/ip/gly_0/drivers/gly_v1_0/src" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../ipstatic/ip/gly_0/src/fifo_ip_1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../zonghe1.srcs/sources_1/ip/gly_0/drivers/gly_v1_0/src" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../zonghe1.srcs/sources_1/ip/gly_0/src/fifo_ip_1/sim/fifo_ip.v" \
"../../../../zonghe1.srcs/sources_1/ip/gly_0/src/dout.v" \
"../../../../zonghe1.srcs/sources_1/ip/gly_0/src/genMat.v" \
"../../../../zonghe1.srcs/sources_1/ip/gly_0/hdl/gly_v5_0_S00_AXI.v" \
"../../../../zonghe1.srcs/sources_1/ip/gly_0/src/rgb2gray.v" \
"../../../../zonghe1.srcs/sources_1/ip/gly_0/src/sobel.v" \
"../../../../zonghe1.srcs/sources_1/ip/gly_0/hdl/gly_v5_0.v" \
"../../../../zonghe1.srcs/sources_1/ip/gly_0/sim/gly_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

