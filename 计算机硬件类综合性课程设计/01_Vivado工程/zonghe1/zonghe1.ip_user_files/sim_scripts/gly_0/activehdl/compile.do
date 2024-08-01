vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
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
vlib activehdl/fifo_generator_v13_2_3

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
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
vmap fifo_generator_v13_2_3 activehdl/fifo_generator_v13_2_3

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

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../zonghe1.srcs/sources_1/ip/gly_0/drivers/gly_v1_0/src" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/ProgramFiles/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_9 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_5 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_5 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_12 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cordic_v6_0_14 -93 \
"../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/cordic_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../zonghe1.srcs/sources_1/ip/gly_0/src/cordic_ip_1/sim/cordic_ip.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/ip/gly_0/drivers/gly_v1_0/src" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../ipstatic/ip/gly_0/src/fifo_ip_1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../ipstatic/ip/gly_0/src/fifo_ip_1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/ip/gly_0/drivers/gly_v1_0/src" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../ipstatic/ip/gly_0/src/fifo_ip_1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../zonghe1.srcs/sources_1/ip/gly_0/drivers/gly_v1_0/src" "+incdir+D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
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

