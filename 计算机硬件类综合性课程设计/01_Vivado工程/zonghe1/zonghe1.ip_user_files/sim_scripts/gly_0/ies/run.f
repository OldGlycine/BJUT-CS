-makelib ies_lib/xilinx_vip -sv \
  "D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/ProgramFiles/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "D:/ProgramFiles/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/ProgramFiles/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/ProgramFiles/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xbip_utils_v3_0_9 \
  "../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/c_reg_fd_v12_0_5 \
  "../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_pipe_v3_0_5 \
  "../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_addsub_v3_0_5 \
  "../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_addsub_v3_0_5 \
  "../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/c_addsub_v12_0_12 \
  "../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/c_addsub_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_bram18k_v3_0_5 \
  "../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mult_gen_v12_0_14 \
  "../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_utils_v2_0_5 \
  "../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/cordic_v6_0_14 \
  "../../../ipstatic/ip/gly_0/src/cordic_ip_1/hdl/cordic_v6_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../zonghe1.srcs/sources_1/ip/gly_0/src/cordic_ip_1/sim/cordic_ip.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../ipstatic/ip/gly_0/src/fifo_ip_1/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../ipstatic/ip/gly_0/src/fifo_ip_1/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../ipstatic/ip/gly_0/src/fifo_ip_1/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../zonghe1.srcs/sources_1/ip/gly_0/src/fifo_ip_1/sim/fifo_ip.v" \
  "../../../../zonghe1.srcs/sources_1/ip/gly_0/src/dout.v" \
  "../../../../zonghe1.srcs/sources_1/ip/gly_0/src/genMat.v" \
  "../../../../zonghe1.srcs/sources_1/ip/gly_0/hdl/gly_v5_0_S00_AXI.v" \
  "../../../../zonghe1.srcs/sources_1/ip/gly_0/src/rgb2gray.v" \
  "../../../../zonghe1.srcs/sources_1/ip/gly_0/src/sobel.v" \
  "../../../../zonghe1.srcs/sources_1/ip/gly_0/hdl/gly_v5_0.v" \
  "../../../../zonghe1.srcs/sources_1/ip/gly_0/sim/gly_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

