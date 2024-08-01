// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun 12 17:59:27 2024
// Host        : LAPTOP-5EFP5NV3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Study/hardware/zonghe1/zonghe1.srcs/sources_1/ip/gly_0/gly_0_sim_netlist.v
// Design      : gly_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "gly_0,gly_v5_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "gly_v5_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module gly_0
   (clk_img,
    RGB444_in,
    RGB_data_en,
    dinb,
    rstb,
    addrb,
    enb,
    web,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input clk_img;
  input [11:0]RGB444_in;
  input RGB_data_en;
  output [31:0]dinb;
  output rstb;
  output [31:0]addrb;
  output enb;
  output [3:0]web;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire [11:0]RGB444_in;
  wire RGB_data_en;
  wire [31:2]\^addrb ;
  wire clk_img;
  wire [31:0]dinb;
  wire rstb;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [3:3]\^web ;

  assign addrb[31:2] = \^addrb [31:2];
  assign addrb[1] = \<const0> ;
  assign addrb[0] = \<const0> ;
  assign enb = \^web [3];
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign web[3] = \^web [3];
  assign web[2] = \^web [3];
  assign web[1] = \^web [3];
  assign web[0] = \^web [3];
  GND GND
       (.G(\<const0> ));
  gly_0_gly_v5_0 inst
       (.RGB444_in(RGB444_in),
        .RGB_data_en(RGB_data_en),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .addrb(\^addrb ),
        .clk_img(clk_img),
        .dinb(dinb),
        .rstb(rstb),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .web(\^web ));
endmodule

(* CHECK_LICENSE_TYPE = "cordic_ip,cordic_v6_0_14,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cordic_ip" *) 
(* X_CORE_INFO = "cordic_v6_0_14,Vivado 2018.3" *) 
module gly_0_cordic_ip
   (aclk,
    aresetn,
    s_axis_cartesian_tvalid,
    s_axis_cartesian_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_DOUT:S_AXIS_PHASE:S_AXIS_CARTESIAN, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CARTESIAN TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CARTESIAN, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_cartesian_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CARTESIAN TDATA" *) input [23:0]s_axis_cartesian_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [15:0]m_axis_dout_tdata;

  wire aclk;
  wire aresetn;
  wire [10:0]\^m_axis_dout_tdata ;
  wire m_axis_dout_tvalid;
  wire [23:0]s_axis_cartesian_tdata;
  wire s_axis_cartesian_tvalid;
  wire NLW_U0_m_axis_dout_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_cartesian_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [14:10]NLW_U0_m_axis_dout_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_dout_tuser_UNCONNECTED;

  assign m_axis_dout_tdata[15] = \^m_axis_dout_tdata [10];
  assign m_axis_dout_tdata[14] = \^m_axis_dout_tdata [10];
  assign m_axis_dout_tdata[13] = \^m_axis_dout_tdata [10];
  assign m_axis_dout_tdata[12] = \^m_axis_dout_tdata [10];
  assign m_axis_dout_tdata[11] = \^m_axis_dout_tdata [10];
  assign m_axis_dout_tdata[10:0] = \^m_axis_dout_tdata [10:0];
  (* C_HAS_ACLK = "1" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "1" *) 
  (* C_HAS_S_AXIS_CARTESIAN = "1" *) 
  (* C_HAS_S_AXIS_CARTESIAN_TLAST = "0" *) 
  (* C_HAS_S_AXIS_CARTESIAN_TUSER = "0" *) 
  (* C_HAS_S_AXIS_PHASE = "0" *) 
  (* C_HAS_S_AXIS_PHASE_TLAST = "0" *) 
  (* C_HAS_S_AXIS_PHASE_TUSER = "0" *) 
  (* C_M_AXIS_DOUT_TDATA_WIDTH = "16" *) 
  (* C_M_AXIS_DOUT_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_CARTESIAN_TDATA_WIDTH = "24" *) 
  (* C_S_AXIS_CARTESIAN_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_PHASE_TDATA_WIDTH = "24" *) 
  (* C_S_AXIS_PHASE_TUSER_WIDTH = "1" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_architecture = "2" *) 
  (* c_coarse_rotate = "0" *) 
  (* c_cordic_function = "6" *) 
  (* c_data_format = "2" *) 
  (* c_input_width = "21" *) 
  (* c_iterations = "0" *) 
  (* c_output_width = "11" *) 
  (* c_phase_format = "0" *) 
  (* c_pipeline_mode = "-2" *) 
  (* c_precision = "0" *) 
  (* c_round_mode = "0" *) 
  (* c_scale_comp = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  gly_0_cordic_v6_0_14 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(aresetn),
        .m_axis_dout_tdata({\^m_axis_dout_tdata [10],NLW_U0_m_axis_dout_tdata_UNCONNECTED[14:10],\^m_axis_dout_tdata [9:0]}),
        .m_axis_dout_tlast(NLW_U0_m_axis_dout_tlast_UNCONNECTED),
        .m_axis_dout_tready(1'b0),
        .m_axis_dout_tuser(NLW_U0_m_axis_dout_tuser_UNCONNECTED[0]),
        .m_axis_dout_tvalid(m_axis_dout_tvalid),
        .s_axis_cartesian_tdata({1'b0,1'b0,1'b0,s_axis_cartesian_tdata[20:0]}),
        .s_axis_cartesian_tlast(1'b0),
        .s_axis_cartesian_tready(NLW_U0_s_axis_cartesian_tready_UNCONNECTED),
        .s_axis_cartesian_tuser(1'b0),
        .s_axis_cartesian_tvalid(s_axis_cartesian_tvalid),
        .s_axis_phase_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule

(* ORIG_REF_NAME = "dout" *) 
module gly_0_dout
   (\addrb_reg[2]_0 ,
    S,
    \addrb_reg[9]_0 ,
    \addrb_reg[13]_0 ,
    \addrb_reg[17]_0 ,
    \addrb_reg[21]_0 ,
    \addrb_reg[25]_0 ,
    \addrb_reg[29]_0 ,
    addrb,
    rstb,
    web,
    dinb,
    clk_img,
    \dinb_reg[31]_0 ,
    img_en,
    img_edge);
  output \addrb_reg[2]_0 ;
  output [2:0]S;
  output [3:0]\addrb_reg[9]_0 ;
  output [3:0]\addrb_reg[13]_0 ;
  output [3:0]\addrb_reg[17]_0 ;
  output [3:0]\addrb_reg[21]_0 ;
  output [3:0]\addrb_reg[25]_0 ;
  output [3:0]\addrb_reg[29]_0 ;
  output [1:0]addrb;
  output rstb;
  output [0:0]web;
  output [31:0]dinb;
  input clk_img;
  input \dinb_reg[31]_0 ;
  input img_en;
  input img_edge;

  wire [2:0]S;
  wire [1:0]addrb;
  wire \addrb[31]_i_1_n_0 ;
  wire \addrb[5]_i_2_n_0 ;
  wire [3:0]\addrb_reg[13]_0 ;
  wire \addrb_reg[13]_i_1_n_0 ;
  wire \addrb_reg[13]_i_1_n_1 ;
  wire \addrb_reg[13]_i_1_n_2 ;
  wire \addrb_reg[13]_i_1_n_3 ;
  wire \addrb_reg[13]_i_1_n_4 ;
  wire \addrb_reg[13]_i_1_n_5 ;
  wire \addrb_reg[13]_i_1_n_6 ;
  wire \addrb_reg[13]_i_1_n_7 ;
  wire [3:0]\addrb_reg[17]_0 ;
  wire \addrb_reg[17]_i_1_n_0 ;
  wire \addrb_reg[17]_i_1_n_1 ;
  wire \addrb_reg[17]_i_1_n_2 ;
  wire \addrb_reg[17]_i_1_n_3 ;
  wire \addrb_reg[17]_i_1_n_4 ;
  wire \addrb_reg[17]_i_1_n_5 ;
  wire \addrb_reg[17]_i_1_n_6 ;
  wire \addrb_reg[17]_i_1_n_7 ;
  wire [3:0]\addrb_reg[21]_0 ;
  wire \addrb_reg[21]_i_1_n_0 ;
  wire \addrb_reg[21]_i_1_n_1 ;
  wire \addrb_reg[21]_i_1_n_2 ;
  wire \addrb_reg[21]_i_1_n_3 ;
  wire \addrb_reg[21]_i_1_n_4 ;
  wire \addrb_reg[21]_i_1_n_5 ;
  wire \addrb_reg[21]_i_1_n_6 ;
  wire \addrb_reg[21]_i_1_n_7 ;
  wire [3:0]\addrb_reg[25]_0 ;
  wire \addrb_reg[25]_i_1_n_0 ;
  wire \addrb_reg[25]_i_1_n_1 ;
  wire \addrb_reg[25]_i_1_n_2 ;
  wire \addrb_reg[25]_i_1_n_3 ;
  wire \addrb_reg[25]_i_1_n_4 ;
  wire \addrb_reg[25]_i_1_n_5 ;
  wire \addrb_reg[25]_i_1_n_6 ;
  wire \addrb_reg[25]_i_1_n_7 ;
  wire [3:0]\addrb_reg[29]_0 ;
  wire \addrb_reg[29]_i_1_n_0 ;
  wire \addrb_reg[29]_i_1_n_1 ;
  wire \addrb_reg[29]_i_1_n_2 ;
  wire \addrb_reg[29]_i_1_n_3 ;
  wire \addrb_reg[29]_i_1_n_4 ;
  wire \addrb_reg[29]_i_1_n_5 ;
  wire \addrb_reg[29]_i_1_n_6 ;
  wire \addrb_reg[29]_i_1_n_7 ;
  wire \addrb_reg[2]_0 ;
  wire \addrb_reg[31]_i_2_n_3 ;
  wire \addrb_reg[31]_i_2_n_6 ;
  wire \addrb_reg[31]_i_2_n_7 ;
  wire \addrb_reg[5]_i_1_n_0 ;
  wire \addrb_reg[5]_i_1_n_1 ;
  wire \addrb_reg[5]_i_1_n_2 ;
  wire \addrb_reg[5]_i_1_n_3 ;
  wire \addrb_reg[5]_i_1_n_4 ;
  wire \addrb_reg[5]_i_1_n_5 ;
  wire \addrb_reg[5]_i_1_n_6 ;
  wire \addrb_reg[5]_i_1_n_7 ;
  wire [3:0]\addrb_reg[9]_0 ;
  wire \addrb_reg[9]_i_1_n_0 ;
  wire \addrb_reg[9]_i_1_n_1 ;
  wire \addrb_reg[9]_i_1_n_2 ;
  wire \addrb_reg[9]_i_1_n_3 ;
  wire \addrb_reg[9]_i_1_n_4 ;
  wire \addrb_reg[9]_i_1_n_5 ;
  wire \addrb_reg[9]_i_1_n_6 ;
  wire \addrb_reg[9]_i_1_n_7 ;
  wire clk_img;
  wire [31:0]dinb;
  wire \dinb[31]_i_1_n_0 ;
  wire \dinb[31]_i_3_n_0 ;
  wire \dinb_reg[31]_0 ;
  wire img_edge;
  wire img_en;
  wire \in_cnt[1]_i_2_n_0 ;
  wire [6:0]in_cnt_reg__0;
  wire load_end1_n_100;
  wire load_end1_n_101;
  wire load_end1_n_102;
  wire load_end1_n_103;
  wire load_end1_n_104;
  wire load_end1_n_105;
  wire load_end1_n_87;
  wire load_end1_n_88;
  wire load_end1_n_89;
  wire load_end1_n_90;
  wire load_end1_n_91;
  wire load_end1_n_92;
  wire load_end1_n_93;
  wire load_end1_n_94;
  wire load_end1_n_95;
  wire load_end1_n_96;
  wire load_end1_n_97;
  wire load_end1_n_98;
  wire load_end1_n_99;
  wire [6:0]p_0_in__1;
  wire rstb;
  wire [31:0]temp_din;
  wire \temp_din[10]_i_1_n_0 ;
  wire \temp_din[11]_i_1_n_0 ;
  wire \temp_din[11]_i_2_n_0 ;
  wire \temp_din[12]_i_1_n_0 ;
  wire \temp_din[13]_i_1_n_0 ;
  wire \temp_din[14]_i_1_n_0 ;
  wire \temp_din[15]_i_1_n_0 ;
  wire \temp_din[15]_i_2_n_0 ;
  wire \temp_din[16]_i_1_n_0 ;
  wire \temp_din[16]_i_2_n_0 ;
  wire \temp_din[17]_i_1_n_0 ;
  wire \temp_din[17]_i_2_n_0 ;
  wire \temp_din[18]_i_1_n_0 ;
  wire \temp_din[18]_i_2_n_0 ;
  wire \temp_din[19]_i_1_n_0 ;
  wire \temp_din[19]_i_2_n_0 ;
  wire \temp_din[19]_i_3_n_0 ;
  wire \temp_din[1]_i_1_n_0 ;
  wire \temp_din[20]_i_1_n_0 ;
  wire \temp_din[21]_i_1_n_0 ;
  wire \temp_din[22]_i_1_n_0 ;
  wire \temp_din[23]_i_1_n_0 ;
  wire \temp_din[23]_i_2_n_0 ;
  wire \temp_din[24]_i_1_n_0 ;
  wire \temp_din[25]_i_1_n_0 ;
  wire \temp_din[26]_i_1_n_0 ;
  wire \temp_din[27]_i_1_n_0 ;
  wire \temp_din[27]_i_2_n_0 ;
  wire \temp_din[28]_i_1_n_0 ;
  wire \temp_din[29]_i_1_n_0 ;
  wire \temp_din[2]_i_1_n_0 ;
  wire \temp_din[30]_i_1_n_0 ;
  wire \temp_din[31]_i_1_n_0 ;
  wire \temp_din[31]_i_2_n_0 ;
  wire \temp_din[3]_i_1_n_0 ;
  wire \temp_din[4]_i_1_n_0 ;
  wire \temp_din[5]_i_1_n_0 ;
  wire \temp_din[6]_i_1_n_0 ;
  wire \temp_din[7]_i_1_n_0 ;
  wire \temp_din[7]_i_2_n_0 ;
  wire \temp_din[8]_i_1_n_0 ;
  wire \temp_din[9]_i_1_n_0 ;
  wire [0:0]web;
  wire web0_carry__0_i_1_n_0;
  wire web0_carry__0_i_2_n_0;
  wire web0_carry__0_i_3_n_0;
  wire web0_carry__0_i_4_n_0;
  wire web0_carry__0_i_5_n_0;
  wire web0_carry__0_i_6_n_0;
  wire web0_carry__0_i_7_n_0;
  wire web0_carry__0_i_8_n_0;
  wire web0_carry__0_n_0;
  wire web0_carry__0_n_1;
  wire web0_carry__0_n_2;
  wire web0_carry__0_n_3;
  wire web0_carry__1_i_1_n_0;
  wire web0_carry__1_i_2_n_0;
  wire web0_carry__1_i_3_n_0;
  wire web0_carry__1_i_4_n_0;
  wire web0_carry__1_i_5_n_0;
  wire web0_carry__1_i_6_n_0;
  wire web0_carry__1_i_7_n_0;
  wire web0_carry__1_n_0;
  wire web0_carry__1_n_1;
  wire web0_carry__1_n_2;
  wire web0_carry__1_n_3;
  wire web0_carry__2_i_1_n_0;
  wire web0_carry__2_i_2_n_0;
  wire web0_carry__2_i_3_n_0;
  wire web0_carry__2_i_4_n_0;
  wire web0_carry__2_i_5_n_0;
  wire web0_carry__2_n_1;
  wire web0_carry__2_n_2;
  wire web0_carry__2_n_3;
  wire web0_carry_i_1_n_0;
  wire web0_carry_i_2_n_0;
  wire web0_carry_i_3_n_0;
  wire web0_carry_i_4_n_0;
  wire web0_carry_i_5_n_0;
  wire web0_carry_i_6_n_0;
  wire web0_carry_i_7_n_0;
  wire web0_carry_i_8_n_0;
  wire web0_carry_n_0;
  wire web0_carry_n_1;
  wire web0_carry_n_2;
  wire web0_carry_n_3;
  wire [3:1]\NLW_addrb_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_addrb_reg[31]_i_2_O_UNCONNECTED ;
  wire NLW_load_end1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_load_end1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_load_end1_OVERFLOW_UNCONNECTED;
  wire NLW_load_end1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_load_end1_PATTERNDETECT_UNCONNECTED;
  wire NLW_load_end1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_load_end1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_load_end1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_load_end1_CARRYOUT_UNCONNECTED;
  wire [47:19]NLW_load_end1_P_UNCONNECTED;
  wire [47:0]NLW_load_end1_PCOUT_UNCONNECTED;
  wire [3:0]NLW_web0_carry_O_UNCONNECTED;
  wire [3:0]NLW_web0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_web0_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_web0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_web0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \addrb[31]_i_1 
       (.I0(web0_carry__2_n_1),
        .I1(in_cnt_reg__0[3]),
        .I2(in_cnt_reg__0[2]),
        .I3(in_cnt_reg__0[1]),
        .I4(in_cnt_reg__0[0]),
        .I5(\dinb[31]_i_3_n_0 ),
        .O(\addrb[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addrb[5]_i_2 
       (.I0(\addrb_reg[2]_0 ),
        .O(\addrb[5]_i_2_n_0 ));
  FDCE \addrb_reg[10] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[13]_i_1_n_7 ),
        .Q(\addrb_reg[13]_0 [0]));
  FDCE \addrb_reg[11] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[13]_i_1_n_6 ),
        .Q(\addrb_reg[13]_0 [1]));
  FDCE \addrb_reg[12] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[13]_i_1_n_5 ),
        .Q(\addrb_reg[13]_0 [2]));
  FDCE \addrb_reg[13] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[13]_i_1_n_4 ),
        .Q(\addrb_reg[13]_0 [3]));
  CARRY4 \addrb_reg[13]_i_1 
       (.CI(\addrb_reg[9]_i_1_n_0 ),
        .CO({\addrb_reg[13]_i_1_n_0 ,\addrb_reg[13]_i_1_n_1 ,\addrb_reg[13]_i_1_n_2 ,\addrb_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addrb_reg[13]_i_1_n_4 ,\addrb_reg[13]_i_1_n_5 ,\addrb_reg[13]_i_1_n_6 ,\addrb_reg[13]_i_1_n_7 }),
        .S(\addrb_reg[13]_0 ));
  FDCE \addrb_reg[14] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[17]_i_1_n_7 ),
        .Q(\addrb_reg[17]_0 [0]));
  FDCE \addrb_reg[15] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[17]_i_1_n_6 ),
        .Q(\addrb_reg[17]_0 [1]));
  FDCE \addrb_reg[16] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[17]_i_1_n_5 ),
        .Q(\addrb_reg[17]_0 [2]));
  FDCE \addrb_reg[17] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[17]_i_1_n_4 ),
        .Q(\addrb_reg[17]_0 [3]));
  CARRY4 \addrb_reg[17]_i_1 
       (.CI(\addrb_reg[13]_i_1_n_0 ),
        .CO({\addrb_reg[17]_i_1_n_0 ,\addrb_reg[17]_i_1_n_1 ,\addrb_reg[17]_i_1_n_2 ,\addrb_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addrb_reg[17]_i_1_n_4 ,\addrb_reg[17]_i_1_n_5 ,\addrb_reg[17]_i_1_n_6 ,\addrb_reg[17]_i_1_n_7 }),
        .S(\addrb_reg[17]_0 ));
  FDCE \addrb_reg[18] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[21]_i_1_n_7 ),
        .Q(\addrb_reg[21]_0 [0]));
  FDCE \addrb_reg[19] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[21]_i_1_n_6 ),
        .Q(\addrb_reg[21]_0 [1]));
  FDCE \addrb_reg[20] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[21]_i_1_n_5 ),
        .Q(\addrb_reg[21]_0 [2]));
  FDCE \addrb_reg[21] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[21]_i_1_n_4 ),
        .Q(\addrb_reg[21]_0 [3]));
  CARRY4 \addrb_reg[21]_i_1 
       (.CI(\addrb_reg[17]_i_1_n_0 ),
        .CO({\addrb_reg[21]_i_1_n_0 ,\addrb_reg[21]_i_1_n_1 ,\addrb_reg[21]_i_1_n_2 ,\addrb_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addrb_reg[21]_i_1_n_4 ,\addrb_reg[21]_i_1_n_5 ,\addrb_reg[21]_i_1_n_6 ,\addrb_reg[21]_i_1_n_7 }),
        .S(\addrb_reg[21]_0 ));
  FDCE \addrb_reg[22] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[25]_i_1_n_7 ),
        .Q(\addrb_reg[25]_0 [0]));
  FDCE \addrb_reg[23] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[25]_i_1_n_6 ),
        .Q(\addrb_reg[25]_0 [1]));
  FDPE \addrb_reg[24] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .D(\addrb_reg[25]_i_1_n_5 ),
        .PRE(\dinb_reg[31]_0 ),
        .Q(\addrb_reg[25]_0 [2]));
  FDCE \addrb_reg[25] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[25]_i_1_n_4 ),
        .Q(\addrb_reg[25]_0 [3]));
  CARRY4 \addrb_reg[25]_i_1 
       (.CI(\addrb_reg[21]_i_1_n_0 ),
        .CO({\addrb_reg[25]_i_1_n_0 ,\addrb_reg[25]_i_1_n_1 ,\addrb_reg[25]_i_1_n_2 ,\addrb_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addrb_reg[25]_i_1_n_4 ,\addrb_reg[25]_i_1_n_5 ,\addrb_reg[25]_i_1_n_6 ,\addrb_reg[25]_i_1_n_7 }),
        .S(\addrb_reg[25]_0 ));
  FDCE \addrb_reg[26] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[29]_i_1_n_7 ),
        .Q(\addrb_reg[29]_0 [0]));
  FDCE \addrb_reg[27] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[29]_i_1_n_6 ),
        .Q(\addrb_reg[29]_0 [1]));
  FDCE \addrb_reg[28] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[29]_i_1_n_5 ),
        .Q(\addrb_reg[29]_0 [2]));
  FDCE \addrb_reg[29] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[29]_i_1_n_4 ),
        .Q(\addrb_reg[29]_0 [3]));
  CARRY4 \addrb_reg[29]_i_1 
       (.CI(\addrb_reg[25]_i_1_n_0 ),
        .CO({\addrb_reg[29]_i_1_n_0 ,\addrb_reg[29]_i_1_n_1 ,\addrb_reg[29]_i_1_n_2 ,\addrb_reg[29]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addrb_reg[29]_i_1_n_4 ,\addrb_reg[29]_i_1_n_5 ,\addrb_reg[29]_i_1_n_6 ,\addrb_reg[29]_i_1_n_7 }),
        .S(\addrb_reg[29]_0 ));
  FDCE \addrb_reg[2] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[5]_i_1_n_7 ),
        .Q(\addrb_reg[2]_0 ));
  FDPE \addrb_reg[30] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .D(\addrb_reg[31]_i_2_n_7 ),
        .PRE(\dinb_reg[31]_0 ),
        .Q(addrb[0]));
  FDCE \addrb_reg[31] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[31]_i_2_n_6 ),
        .Q(addrb[1]));
  CARRY4 \addrb_reg[31]_i_2 
       (.CI(\addrb_reg[29]_i_1_n_0 ),
        .CO({\NLW_addrb_reg[31]_i_2_CO_UNCONNECTED [3:1],\addrb_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addrb_reg[31]_i_2_O_UNCONNECTED [3:2],\addrb_reg[31]_i_2_n_6 ,\addrb_reg[31]_i_2_n_7 }),
        .S({1'b0,1'b0,addrb}));
  FDCE \addrb_reg[3] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[5]_i_1_n_6 ),
        .Q(S[0]));
  FDCE \addrb_reg[4] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[5]_i_1_n_5 ),
        .Q(S[1]));
  FDCE \addrb_reg[5] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[5]_i_1_n_4 ),
        .Q(S[2]));
  CARRY4 \addrb_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\addrb_reg[5]_i_1_n_0 ,\addrb_reg[5]_i_1_n_1 ,\addrb_reg[5]_i_1_n_2 ,\addrb_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\addrb_reg[5]_i_1_n_4 ,\addrb_reg[5]_i_1_n_5 ,\addrb_reg[5]_i_1_n_6 ,\addrb_reg[5]_i_1_n_7 }),
        .S({S,\addrb[5]_i_2_n_0 }));
  FDCE \addrb_reg[6] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[9]_i_1_n_7 ),
        .Q(\addrb_reg[9]_0 [0]));
  FDCE \addrb_reg[7] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[9]_i_1_n_6 ),
        .Q(\addrb_reg[9]_0 [1]));
  FDCE \addrb_reg[8] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[9]_i_1_n_5 ),
        .Q(\addrb_reg[9]_0 [2]));
  FDCE \addrb_reg[9] 
       (.C(clk_img),
        .CE(\addrb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb_reg[9]_i_1_n_4 ),
        .Q(\addrb_reg[9]_0 [3]));
  CARRY4 \addrb_reg[9]_i_1 
       (.CI(\addrb_reg[5]_i_1_n_0 ),
        .CO({\addrb_reg[9]_i_1_n_0 ,\addrb_reg[9]_i_1_n_1 ,\addrb_reg[9]_i_1_n_2 ,\addrb_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addrb_reg[9]_i_1_n_4 ,\addrb_reg[9]_i_1_n_5 ,\addrb_reg[9]_i_1_n_6 ,\addrb_reg[9]_i_1_n_7 }),
        .S(\addrb_reg[9]_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \dinb[31]_i_1 
       (.I0(\dinb[31]_i_3_n_0 ),
        .I1(in_cnt_reg__0[0]),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[2]),
        .I4(in_cnt_reg__0[3]),
        .O(\dinb[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \dinb[31]_i_3 
       (.I0(in_cnt_reg__0[5]),
        .I1(in_cnt_reg__0[6]),
        .I2(img_en),
        .I3(in_cnt_reg__0[4]),
        .O(\dinb[31]_i_3_n_0 ));
  FDCE \dinb_reg[0] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[0]),
        .Q(dinb[0]));
  FDCE \dinb_reg[10] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[10]),
        .Q(dinb[10]));
  FDCE \dinb_reg[11] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[11]),
        .Q(dinb[11]));
  FDCE \dinb_reg[12] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[12]),
        .Q(dinb[12]));
  FDCE \dinb_reg[13] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[13]),
        .Q(dinb[13]));
  FDCE \dinb_reg[14] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[14]),
        .Q(dinb[14]));
  FDCE \dinb_reg[15] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[15]),
        .Q(dinb[15]));
  FDCE \dinb_reg[16] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[16]),
        .Q(dinb[16]));
  FDCE \dinb_reg[17] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[17]),
        .Q(dinb[17]));
  FDCE \dinb_reg[18] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[18]),
        .Q(dinb[18]));
  FDCE \dinb_reg[19] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[19]),
        .Q(dinb[19]));
  FDCE \dinb_reg[1] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[1]),
        .Q(dinb[1]));
  FDCE \dinb_reg[20] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[20]),
        .Q(dinb[20]));
  FDCE \dinb_reg[21] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[21]),
        .Q(dinb[21]));
  FDCE \dinb_reg[22] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[22]),
        .Q(dinb[22]));
  FDCE \dinb_reg[23] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[23]),
        .Q(dinb[23]));
  FDCE \dinb_reg[24] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[24]),
        .Q(dinb[24]));
  FDCE \dinb_reg[25] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[25]),
        .Q(dinb[25]));
  FDCE \dinb_reg[26] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[26]),
        .Q(dinb[26]));
  FDCE \dinb_reg[27] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[27]),
        .Q(dinb[27]));
  FDCE \dinb_reg[28] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[28]),
        .Q(dinb[28]));
  FDCE \dinb_reg[29] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[29]),
        .Q(dinb[29]));
  FDCE \dinb_reg[2] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[2]),
        .Q(dinb[2]));
  FDCE \dinb_reg[30] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[30]),
        .Q(dinb[30]));
  FDCE \dinb_reg[31] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[31]),
        .Q(dinb[31]));
  FDCE \dinb_reg[3] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[3]),
        .Q(dinb[3]));
  FDCE \dinb_reg[4] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[4]),
        .Q(dinb[4]));
  FDCE \dinb_reg[5] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[5]),
        .Q(dinb[5]));
  FDCE \dinb_reg[6] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[6]),
        .Q(dinb[6]));
  FDCE \dinb_reg[7] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[7]),
        .Q(dinb[7]));
  FDCE \dinb_reg[8] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[8]),
        .Q(dinb[8]));
  FDCE \dinb_reg[9] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(temp_din[9]),
        .Q(dinb[9]));
  FDCE enb_reg
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\addrb[31]_i_1_n_0 ),
        .Q(web));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \in_cnt[0]_i_1 
       (.I0(in_cnt_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \in_cnt[1]_i_1 
       (.I0(\in_cnt[1]_i_2_n_0 ),
        .I1(in_cnt_reg__0[1]),
        .I2(in_cnt_reg__0[0]),
        .O(p_0_in__1[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \in_cnt[1]_i_2 
       (.I0(in_cnt_reg__0[4]),
        .I1(in_cnt_reg__0[3]),
        .I2(in_cnt_reg__0[2]),
        .I3(\temp_din[16]_i_2_n_0 ),
        .I4(in_cnt_reg__0[6]),
        .I5(in_cnt_reg__0[5]),
        .O(\in_cnt[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \in_cnt[2]_i_1 
       (.I0(in_cnt_reg__0[2]),
        .I1(\temp_din[16]_i_2_n_0 ),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \in_cnt[3]_i_1 
       (.I0(in_cnt_reg__0[3]),
        .I1(\temp_din[16]_i_2_n_0 ),
        .I2(in_cnt_reg__0[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \in_cnt[4]_i_1 
       (.I0(in_cnt_reg__0[4]),
        .I1(in_cnt_reg__0[3]),
        .I2(in_cnt_reg__0[2]),
        .I3(\temp_din[16]_i_2_n_0 ),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCC2)) 
    \in_cnt[5]_i_1 
       (.I0(in_cnt_reg__0[6]),
        .I1(in_cnt_reg__0[5]),
        .I2(\temp_din[16]_i_2_n_0 ),
        .I3(in_cnt_reg__0[2]),
        .I4(in_cnt_reg__0[3]),
        .I5(in_cnt_reg__0[4]),
        .O(p_0_in__1[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \in_cnt[6]_i_1 
       (.I0(in_cnt_reg__0[6]),
        .I1(in_cnt_reg__0[4]),
        .I2(in_cnt_reg__0[3]),
        .I3(in_cnt_reg__0[2]),
        .I4(\temp_din[16]_i_2_n_0 ),
        .I5(in_cnt_reg__0[5]),
        .O(p_0_in__1[6]));
  FDPE \in_cnt_reg[0] 
       (.C(clk_img),
        .CE(img_en),
        .D(p_0_in__1[0]),
        .PRE(\dinb_reg[31]_0 ),
        .Q(in_cnt_reg__0[0]));
  FDPE \in_cnt_reg[1] 
       (.C(clk_img),
        .CE(img_en),
        .D(p_0_in__1[1]),
        .PRE(\dinb_reg[31]_0 ),
        .Q(in_cnt_reg__0[1]));
  FDPE \in_cnt_reg[2] 
       (.C(clk_img),
        .CE(img_en),
        .D(p_0_in__1[2]),
        .PRE(\dinb_reg[31]_0 ),
        .Q(in_cnt_reg__0[2]));
  FDPE \in_cnt_reg[3] 
       (.C(clk_img),
        .CE(img_en),
        .D(p_0_in__1[3]),
        .PRE(\dinb_reg[31]_0 ),
        .Q(in_cnt_reg__0[3]));
  FDPE \in_cnt_reg[4] 
       (.C(clk_img),
        .CE(img_en),
        .D(p_0_in__1[4]),
        .PRE(\dinb_reg[31]_0 ),
        .Q(in_cnt_reg__0[4]));
  FDCE \in_cnt_reg[5] 
       (.C(clk_img),
        .CE(img_en),
        .CLR(\dinb_reg[31]_0 ),
        .D(p_0_in__1[5]),
        .Q(in_cnt_reg__0[5]));
  FDCE \in_cnt_reg[6] 
       (.C(clk_img),
        .CE(img_en),
        .CLR(\dinb_reg[31]_0 ),
        .D(p_0_in__1[6]),
        .Q(in_cnt_reg__0[6]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    load_end1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_load_end1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_load_end1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_load_end1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_load_end1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_load_end1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_load_end1_OVERFLOW_UNCONNECTED),
        .P({NLW_load_end1_P_UNCONNECTED[47:19],load_end1_n_87,load_end1_n_88,load_end1_n_89,load_end1_n_90,load_end1_n_91,load_end1_n_92,load_end1_n_93,load_end1_n_94,load_end1_n_95,load_end1_n_96,load_end1_n_97,load_end1_n_98,load_end1_n_99,load_end1_n_100,load_end1_n_101,load_end1_n_102,load_end1_n_103,load_end1_n_104,load_end1_n_105}),
        .PATTERNBDETECT(NLW_load_end1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_load_end1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_load_end1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_load_end1_UNDERFLOW_UNCONNECTED));
  FDPE rstb_reg
       (.C(clk_img),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\dinb_reg[31]_0 ),
        .Q(rstb));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \temp_din[10]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[11]_i_2_n_0 ),
        .I2(in_cnt_reg__0[0]),
        .I3(in_cnt_reg__0[1]),
        .I4(temp_din[10]),
        .O(\temp_din[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \temp_din[11]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[11]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[11]),
        .O(\temp_din[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \temp_din[11]_i_2 
       (.I0(in_cnt_reg__0[2]),
        .I1(in_cnt_reg__0[3]),
        .I2(in_cnt_reg__0[4]),
        .I3(img_en),
        .I4(in_cnt_reg__0[6]),
        .I5(in_cnt_reg__0[5]),
        .O(\temp_din[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \temp_din[12]_i_1 
       (.I0(img_edge),
        .I1(\dinb[31]_i_3_n_0 ),
        .I2(in_cnt_reg__0[2]),
        .I3(in_cnt_reg__0[3]),
        .I4(\temp_din[16]_i_2_n_0 ),
        .I5(temp_din[12]),
        .O(\temp_din[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \temp_din[13]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[15]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[13]),
        .O(\temp_din[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \temp_din[14]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[15]_i_2_n_0 ),
        .I2(in_cnt_reg__0[0]),
        .I3(in_cnt_reg__0[1]),
        .I4(temp_din[14]),
        .O(\temp_din[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \temp_din[15]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[15]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[15]),
        .O(\temp_din[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \temp_din[15]_i_2 
       (.I0(in_cnt_reg__0[3]),
        .I1(in_cnt_reg__0[2]),
        .I2(in_cnt_reg__0[4]),
        .I3(img_en),
        .I4(in_cnt_reg__0[6]),
        .I5(in_cnt_reg__0[5]),
        .O(\temp_din[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \temp_din[16]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[19]_i_3_n_0 ),
        .I2(\temp_din[16]_i_2_n_0 ),
        .I3(in_cnt_reg__0[2]),
        .I4(in_cnt_reg__0[3]),
        .I5(temp_din[16]),
        .O(\temp_din[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \temp_din[16]_i_2 
       (.I0(in_cnt_reg__0[0]),
        .I1(in_cnt_reg__0[1]),
        .O(\temp_din[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \temp_din[17]_i_1 
       (.I0(img_edge),
        .I1(in_cnt_reg__0[2]),
        .I2(in_cnt_reg__0[3]),
        .I3(\temp_din[17]_i_2_n_0 ),
        .I4(\temp_din[19]_i_3_n_0 ),
        .I5(temp_din[17]),
        .O(\temp_din[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_din[17]_i_2 
       (.I0(in_cnt_reg__0[0]),
        .I1(in_cnt_reg__0[1]),
        .O(\temp_din[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \temp_din[18]_i_1 
       (.I0(img_edge),
        .I1(in_cnt_reg__0[2]),
        .I2(in_cnt_reg__0[3]),
        .I3(\temp_din[18]_i_2_n_0 ),
        .I4(\temp_din[19]_i_3_n_0 ),
        .I5(temp_din[18]),
        .O(\temp_din[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \temp_din[18]_i_2 
       (.I0(in_cnt_reg__0[1]),
        .I1(in_cnt_reg__0[0]),
        .O(\temp_din[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \temp_din[19]_i_1 
       (.I0(img_edge),
        .I1(in_cnt_reg__0[2]),
        .I2(in_cnt_reg__0[3]),
        .I3(\temp_din[19]_i_2_n_0 ),
        .I4(\temp_din[19]_i_3_n_0 ),
        .I5(temp_din[19]),
        .O(\temp_din[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \temp_din[19]_i_2 
       (.I0(in_cnt_reg__0[0]),
        .I1(in_cnt_reg__0[1]),
        .O(\temp_din[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \temp_din[19]_i_3 
       (.I0(in_cnt_reg__0[5]),
        .I1(in_cnt_reg__0[6]),
        .I2(img_en),
        .I3(in_cnt_reg__0[4]),
        .O(\temp_din[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \temp_din[1]_i_1 
       (.I0(img_edge),
        .I1(in_cnt_reg__0[2]),
        .I2(in_cnt_reg__0[3]),
        .I3(\temp_din[17]_i_2_n_0 ),
        .I4(\dinb[31]_i_3_n_0 ),
        .I5(temp_din[1]),
        .O(\temp_din[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \temp_din[20]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[23]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[20]),
        .O(\temp_din[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \temp_din[21]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[23]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[21]),
        .O(\temp_din[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \temp_din[22]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[23]_i_2_n_0 ),
        .I2(in_cnt_reg__0[0]),
        .I3(in_cnt_reg__0[1]),
        .I4(temp_din[22]),
        .O(\temp_din[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \temp_din[23]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[23]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[23]),
        .O(\temp_din[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \temp_din[23]_i_2 
       (.I0(in_cnt_reg__0[3]),
        .I1(in_cnt_reg__0[2]),
        .I2(in_cnt_reg__0[4]),
        .I3(img_en),
        .I4(in_cnt_reg__0[6]),
        .I5(in_cnt_reg__0[5]),
        .O(\temp_din[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \temp_din[24]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[27]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[24]),
        .O(\temp_din[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \temp_din[25]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[27]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[25]),
        .O(\temp_din[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \temp_din[26]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[27]_i_2_n_0 ),
        .I2(in_cnt_reg__0[0]),
        .I3(in_cnt_reg__0[1]),
        .I4(temp_din[26]),
        .O(\temp_din[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \temp_din[27]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[27]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[27]),
        .O(\temp_din[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \temp_din[27]_i_2 
       (.I0(in_cnt_reg__0[2]),
        .I1(in_cnt_reg__0[3]),
        .I2(in_cnt_reg__0[4]),
        .I3(img_en),
        .I4(in_cnt_reg__0[6]),
        .I5(in_cnt_reg__0[5]),
        .O(\temp_din[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \temp_din[28]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[31]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[28]),
        .O(\temp_din[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \temp_din[29]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[31]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[29]),
        .O(\temp_din[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \temp_din[2]_i_1 
       (.I0(img_edge),
        .I1(in_cnt_reg__0[2]),
        .I2(in_cnt_reg__0[3]),
        .I3(\temp_din[18]_i_2_n_0 ),
        .I4(\dinb[31]_i_3_n_0 ),
        .I5(temp_din[2]),
        .O(\temp_din[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \temp_din[30]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[31]_i_2_n_0 ),
        .I2(in_cnt_reg__0[0]),
        .I3(in_cnt_reg__0[1]),
        .I4(temp_din[30]),
        .O(\temp_din[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \temp_din[31]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[31]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[31]),
        .O(\temp_din[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \temp_din[31]_i_2 
       (.I0(in_cnt_reg__0[3]),
        .I1(in_cnt_reg__0[2]),
        .I2(in_cnt_reg__0[4]),
        .I3(img_en),
        .I4(in_cnt_reg__0[6]),
        .I5(in_cnt_reg__0[5]),
        .O(\temp_din[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \temp_din[3]_i_1 
       (.I0(img_edge),
        .I1(in_cnt_reg__0[2]),
        .I2(in_cnt_reg__0[3]),
        .I3(\temp_din[19]_i_2_n_0 ),
        .I4(\dinb[31]_i_3_n_0 ),
        .I5(temp_din[3]),
        .O(\temp_din[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \temp_din[4]_i_1 
       (.I0(img_edge),
        .I1(\dinb[31]_i_3_n_0 ),
        .I2(in_cnt_reg__0[2]),
        .I3(in_cnt_reg__0[3]),
        .I4(\temp_din[16]_i_2_n_0 ),
        .I5(temp_din[4]),
        .O(\temp_din[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \temp_din[5]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[7]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[5]),
        .O(\temp_din[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \temp_din[6]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[7]_i_2_n_0 ),
        .I2(in_cnt_reg__0[0]),
        .I3(in_cnt_reg__0[1]),
        .I4(temp_din[6]),
        .O(\temp_din[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \temp_din[7]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[7]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[7]),
        .O(\temp_din[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \temp_din[7]_i_2 
       (.I0(in_cnt_reg__0[3]),
        .I1(in_cnt_reg__0[2]),
        .I2(in_cnt_reg__0[4]),
        .I3(img_en),
        .I4(in_cnt_reg__0[6]),
        .I5(in_cnt_reg__0[5]),
        .O(\temp_din[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \temp_din[8]_i_1 
       (.I0(img_edge),
        .I1(\dinb[31]_i_3_n_0 ),
        .I2(in_cnt_reg__0[3]),
        .I3(in_cnt_reg__0[2]),
        .I4(\temp_din[16]_i_2_n_0 ),
        .I5(temp_din[8]),
        .O(\temp_din[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \temp_din[9]_i_1 
       (.I0(img_edge),
        .I1(\temp_din[11]_i_2_n_0 ),
        .I2(in_cnt_reg__0[1]),
        .I3(in_cnt_reg__0[0]),
        .I4(temp_din[9]),
        .O(\temp_din[9]_i_1_n_0 ));
  FDCE \temp_din_reg[0] 
       (.C(clk_img),
        .CE(\dinb[31]_i_1_n_0 ),
        .CLR(\dinb_reg[31]_0 ),
        .D(img_edge),
        .Q(temp_din[0]));
  FDCE \temp_din_reg[10] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[10]_i_1_n_0 ),
        .Q(temp_din[10]));
  FDCE \temp_din_reg[11] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[11]_i_1_n_0 ),
        .Q(temp_din[11]));
  FDCE \temp_din_reg[12] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[12]_i_1_n_0 ),
        .Q(temp_din[12]));
  FDCE \temp_din_reg[13] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[13]_i_1_n_0 ),
        .Q(temp_din[13]));
  FDCE \temp_din_reg[14] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[14]_i_1_n_0 ),
        .Q(temp_din[14]));
  FDCE \temp_din_reg[15] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[15]_i_1_n_0 ),
        .Q(temp_din[15]));
  FDCE \temp_din_reg[16] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[16]_i_1_n_0 ),
        .Q(temp_din[16]));
  FDCE \temp_din_reg[17] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[17]_i_1_n_0 ),
        .Q(temp_din[17]));
  FDCE \temp_din_reg[18] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[18]_i_1_n_0 ),
        .Q(temp_din[18]));
  FDCE \temp_din_reg[19] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[19]_i_1_n_0 ),
        .Q(temp_din[19]));
  FDCE \temp_din_reg[1] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[1]_i_1_n_0 ),
        .Q(temp_din[1]));
  FDCE \temp_din_reg[20] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[20]_i_1_n_0 ),
        .Q(temp_din[20]));
  FDCE \temp_din_reg[21] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[21]_i_1_n_0 ),
        .Q(temp_din[21]));
  FDCE \temp_din_reg[22] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[22]_i_1_n_0 ),
        .Q(temp_din[22]));
  FDCE \temp_din_reg[23] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[23]_i_1_n_0 ),
        .Q(temp_din[23]));
  FDCE \temp_din_reg[24] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[24]_i_1_n_0 ),
        .Q(temp_din[24]));
  FDCE \temp_din_reg[25] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[25]_i_1_n_0 ),
        .Q(temp_din[25]));
  FDCE \temp_din_reg[26] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[26]_i_1_n_0 ),
        .Q(temp_din[26]));
  FDCE \temp_din_reg[27] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[27]_i_1_n_0 ),
        .Q(temp_din[27]));
  FDCE \temp_din_reg[28] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[28]_i_1_n_0 ),
        .Q(temp_din[28]));
  FDCE \temp_din_reg[29] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[29]_i_1_n_0 ),
        .Q(temp_din[29]));
  FDCE \temp_din_reg[2] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[2]_i_1_n_0 ),
        .Q(temp_din[2]));
  FDCE \temp_din_reg[30] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[30]_i_1_n_0 ),
        .Q(temp_din[30]));
  FDCE \temp_din_reg[31] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[31]_i_1_n_0 ),
        .Q(temp_din[31]));
  FDCE \temp_din_reg[3] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[3]_i_1_n_0 ),
        .Q(temp_din[3]));
  FDCE \temp_din_reg[4] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[4]_i_1_n_0 ),
        .Q(temp_din[4]));
  FDCE \temp_din_reg[5] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[5]_i_1_n_0 ),
        .Q(temp_din[5]));
  FDCE \temp_din_reg[6] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[6]_i_1_n_0 ),
        .Q(temp_din[6]));
  FDCE \temp_din_reg[7] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[7]_i_1_n_0 ),
        .Q(temp_din[7]));
  FDCE \temp_din_reg[8] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[8]_i_1_n_0 ),
        .Q(temp_din[8]));
  FDCE \temp_din_reg[9] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\dinb_reg[31]_0 ),
        .D(\temp_din[9]_i_1_n_0 ),
        .Q(temp_din[9]));
  CARRY4 web0_carry
       (.CI(1'b0),
        .CO({web0_carry_n_0,web0_carry_n_1,web0_carry_n_2,web0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({web0_carry_i_1_n_0,web0_carry_i_2_n_0,web0_carry_i_3_n_0,web0_carry_i_4_n_0}),
        .O(NLW_web0_carry_O_UNCONNECTED[3:0]),
        .S({web0_carry_i_5_n_0,web0_carry_i_6_n_0,web0_carry_i_7_n_0,web0_carry_i_8_n_0}));
  CARRY4 web0_carry__0
       (.CI(web0_carry_n_0),
        .CO({web0_carry__0_n_0,web0_carry__0_n_1,web0_carry__0_n_2,web0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({web0_carry__0_i_1_n_0,web0_carry__0_i_2_n_0,web0_carry__0_i_3_n_0,web0_carry__0_i_4_n_0}),
        .O(NLW_web0_carry__0_O_UNCONNECTED[3:0]),
        .S({web0_carry__0_i_5_n_0,web0_carry__0_i_6_n_0,web0_carry__0_i_7_n_0,web0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    web0_carry__0_i_1
       (.I0(\addrb_reg[17]_0 [2]),
        .I1(\addrb_reg[17]_0 [3]),
        .O(web0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    web0_carry__0_i_2
       (.I0(\addrb_reg[17]_0 [1]),
        .I1(load_end1_n_87),
        .I2(\addrb_reg[17]_0 [0]),
        .I3(load_end1_n_88),
        .O(web0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    web0_carry__0_i_3
       (.I0(\addrb_reg[13]_0 [3]),
        .I1(load_end1_n_89),
        .I2(\addrb_reg[13]_0 [2]),
        .I3(load_end1_n_90),
        .O(web0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    web0_carry__0_i_4
       (.I0(\addrb_reg[13]_0 [1]),
        .I1(load_end1_n_91),
        .I2(\addrb_reg[13]_0 [0]),
        .I3(load_end1_n_92),
        .O(web0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    web0_carry__0_i_5
       (.I0(\addrb_reg[17]_0 [3]),
        .I1(\addrb_reg[17]_0 [2]),
        .O(web0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    web0_carry__0_i_6
       (.I0(load_end1_n_87),
        .I1(\addrb_reg[17]_0 [1]),
        .I2(load_end1_n_88),
        .I3(\addrb_reg[17]_0 [0]),
        .O(web0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    web0_carry__0_i_7
       (.I0(load_end1_n_89),
        .I1(\addrb_reg[13]_0 [3]),
        .I2(load_end1_n_90),
        .I3(\addrb_reg[13]_0 [2]),
        .O(web0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    web0_carry__0_i_8
       (.I0(load_end1_n_91),
        .I1(\addrb_reg[13]_0 [1]),
        .I2(load_end1_n_92),
        .I3(\addrb_reg[13]_0 [0]),
        .O(web0_carry__0_i_8_n_0));
  CARRY4 web0_carry__1
       (.CI(web0_carry__0_n_0),
        .CO({web0_carry__1_n_0,web0_carry__1_n_1,web0_carry__1_n_2,web0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\addrb_reg[25]_0 [3],web0_carry__1_i_1_n_0,web0_carry__1_i_2_n_0,web0_carry__1_i_3_n_0}),
        .O(NLW_web0_carry__1_O_UNCONNECTED[3:0]),
        .S({web0_carry__1_i_4_n_0,web0_carry__1_i_5_n_0,web0_carry__1_i_6_n_0,web0_carry__1_i_7_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    web0_carry__1_i_1
       (.I0(\addrb_reg[25]_0 [0]),
        .I1(\addrb_reg[25]_0 [1]),
        .O(web0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    web0_carry__1_i_2
       (.I0(\addrb_reg[21]_0 [2]),
        .I1(\addrb_reg[21]_0 [3]),
        .O(web0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    web0_carry__1_i_3
       (.I0(\addrb_reg[21]_0 [0]),
        .I1(\addrb_reg[21]_0 [1]),
        .O(web0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    web0_carry__1_i_4
       (.I0(\addrb_reg[25]_0 [2]),
        .I1(\addrb_reg[25]_0 [3]),
        .O(web0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    web0_carry__1_i_5
       (.I0(\addrb_reg[25]_0 [1]),
        .I1(\addrb_reg[25]_0 [0]),
        .O(web0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    web0_carry__1_i_6
       (.I0(\addrb_reg[21]_0 [3]),
        .I1(\addrb_reg[21]_0 [2]),
        .O(web0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    web0_carry__1_i_7
       (.I0(\addrb_reg[21]_0 [1]),
        .I1(\addrb_reg[21]_0 [0]),
        .O(web0_carry__1_i_7_n_0));
  CARRY4 web0_carry__2
       (.CI(web0_carry__1_n_0),
        .CO({NLW_web0_carry__2_CO_UNCONNECTED[3],web0_carry__2_n_1,web0_carry__2_n_2,web0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,addrb[1],web0_carry__2_i_1_n_0,web0_carry__2_i_2_n_0}),
        .O(NLW_web0_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,web0_carry__2_i_3_n_0,web0_carry__2_i_4_n_0,web0_carry__2_i_5_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    web0_carry__2_i_1
       (.I0(\addrb_reg[29]_0 [2]),
        .I1(\addrb_reg[29]_0 [3]),
        .O(web0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    web0_carry__2_i_2
       (.I0(\addrb_reg[29]_0 [0]),
        .I1(\addrb_reg[29]_0 [1]),
        .O(web0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    web0_carry__2_i_3
       (.I0(addrb[0]),
        .I1(addrb[1]),
        .O(web0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    web0_carry__2_i_4
       (.I0(\addrb_reg[29]_0 [3]),
        .I1(\addrb_reg[29]_0 [2]),
        .O(web0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    web0_carry__2_i_5
       (.I0(\addrb_reg[29]_0 [1]),
        .I1(\addrb_reg[29]_0 [0]),
        .O(web0_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    web0_carry_i_1
       (.I0(\addrb_reg[9]_0 [3]),
        .I1(load_end1_n_93),
        .I2(\addrb_reg[9]_0 [2]),
        .I3(load_end1_n_94),
        .O(web0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    web0_carry_i_2
       (.I0(\addrb_reg[9]_0 [1]),
        .I1(load_end1_n_95),
        .I2(\addrb_reg[9]_0 [0]),
        .I3(load_end1_n_96),
        .O(web0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    web0_carry_i_3
       (.I0(S[2]),
        .I1(load_end1_n_97),
        .I2(S[1]),
        .I3(load_end1_n_98),
        .O(web0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    web0_carry_i_4
       (.I0(S[0]),
        .I1(load_end1_n_99),
        .I2(\addrb_reg[2]_0 ),
        .I3(load_end1_n_100),
        .O(web0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    web0_carry_i_5
       (.I0(load_end1_n_93),
        .I1(\addrb_reg[9]_0 [3]),
        .I2(load_end1_n_94),
        .I3(\addrb_reg[9]_0 [2]),
        .O(web0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    web0_carry_i_6
       (.I0(load_end1_n_95),
        .I1(\addrb_reg[9]_0 [1]),
        .I2(load_end1_n_96),
        .I3(\addrb_reg[9]_0 [0]),
        .O(web0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    web0_carry_i_7
       (.I0(load_end1_n_97),
        .I1(S[2]),
        .I2(load_end1_n_98),
        .I3(S[1]),
        .O(web0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    web0_carry_i_8
       (.I0(load_end1_n_99),
        .I1(S[0]),
        .I2(load_end1_n_100),
        .I3(\addrb_reg[2]_0 ),
        .O(web0_carry_i_8_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_ip,fifo_generator_v13_2_3,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_ip" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_3,Vivado 2018.3" *) 
module gly_0_fifo_ip
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input srst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  gly_0_fifo_generator_v13_2_3 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_ip,fifo_generator_v13_2_3,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_ip" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_3,Vivado 2018.3" *) 
module gly_0_fifo_ip__xdcDup__1
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input srst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  gly_0_fifo_generator_v13_2_3__3 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_ip,fifo_generator_v13_2_3,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_ip" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_3,Vivado 2018.3" *) 
module gly_0_fifo_ip__xdcDup__2
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input srst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  gly_0_fifo_generator_v13_2_3__4 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "genMat" *) 
module gly_0_genMat
   (D,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ,
    E,
    clk_img,
    \row_cnt_reg[0]_0 ,
    Q,
    gray_out_en);
  output [7:0]D;
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  output [0:0]E;
  input clk_img;
  input \row_cnt_reg[0]_0 ;
  input [7:0]Q;
  input gray_out_en;

  wire [7:0]D;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  wire [0:0]E;
  wire [7:0]Q;
  wire clk_img;
  wire col_cnt2;
  wire col_cnt2_carry_i_1_n_0;
  wire col_cnt2_carry_i_2_n_0;
  wire col_cnt2_carry_i_3_n_0;
  wire col_cnt2_carry_i_4_n_0;
  wire col_cnt2_carry_n_1;
  wire col_cnt2_carry_n_2;
  wire col_cnt2_carry_n_3;
  wire \col_cnt[10]_i_1_n_0 ;
  wire \col_cnt[10]_i_3_n_0 ;
  wire \col_cnt[10]_i_4_n_0 ;
  wire \col_cnt[5]_i_2_n_0 ;
  wire \col_cnt[6]_i_2_n_0 ;
  wire [10:0]col_cnt_reg__0;
  wire gray_en_temp;
  wire gray_out_en;
  wire mat_fifo1_i_2_n_0;
  wire mat_fifo1_i_3_n_0;
  wire [10:0]p_0_in__0;
  wire [10:0]row_cnt;
  wire [10:10]row_cnt0;
  wire row_cnt3;
  wire row_cnt3_carry_i_1_n_0;
  wire row_cnt3_carry_i_2_n_0;
  wire row_cnt3_carry_i_3_n_0;
  wire row_cnt3_carry_i_4_n_0;
  wire row_cnt3_carry_n_1;
  wire row_cnt3_carry_n_2;
  wire row_cnt3_carry_n_3;
  wire \row_cnt[0]_i_1_n_0 ;
  wire \row_cnt[10]_i_1_n_0 ;
  wire \row_cnt[10]_i_2_n_0 ;
  wire \row_cnt[1]_i_1_n_0 ;
  wire \row_cnt[2]_i_1_n_0 ;
  wire \row_cnt[3]_i_1_n_0 ;
  wire \row_cnt[4]_i_1_n_0 ;
  wire \row_cnt[4]_i_2_n_0 ;
  wire \row_cnt[5]_i_1_n_0 ;
  wire \row_cnt[5]_i_2_n_0 ;
  wire \row_cnt[6]_i_1_n_0 ;
  wire \row_cnt[7]_i_1_n_0 ;
  wire \row_cnt[8]_i_1_n_0 ;
  wire \row_cnt[9]_i_1_n_0 ;
  wire \row_cnt[9]_i_2_n_0 ;
  wire \row_cnt[9]_i_3_n_0 ;
  wire \row_cnt_reg[0]_0 ;
  wire wr_en2;
  wire wr_en3;
  wire [3:0]NLW_col_cnt2_carry_O_UNCONNECTED;
  wire NLW_mat_fifo1_empty_UNCONNECTED;
  wire NLW_mat_fifo1_full_UNCONNECTED;
  wire NLW_mat_fifo2_empty_UNCONNECTED;
  wire NLW_mat_fifo2_full_UNCONNECTED;
  wire NLW_mat_fifo3_empty_UNCONNECTED;
  wire NLW_mat_fifo3_full_UNCONNECTED;
  wire [3:0]NLW_row_cnt3_carry_O_UNCONNECTED;

  CARRY4 col_cnt2_carry
       (.CI(1'b0),
        .CO({col_cnt2,col_cnt2_carry_n_1,col_cnt2_carry_n_2,col_cnt2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_col_cnt2_carry_O_UNCONNECTED[3:0]),
        .S({col_cnt2_carry_i_1_n_0,col_cnt2_carry_i_2_n_0,col_cnt2_carry_i_3_n_0,col_cnt2_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    col_cnt2_carry_i_1
       (.I0(col_cnt_reg__0[9]),
        .I1(col_cnt_reg__0[10]),
        .O(col_cnt2_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    col_cnt2_carry_i_2
       (.I0(col_cnt_reg__0[8]),
        .I1(col_cnt_reg__0[7]),
        .I2(col_cnt_reg__0[6]),
        .O(col_cnt2_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    col_cnt2_carry_i_3
       (.I0(col_cnt_reg__0[4]),
        .I1(col_cnt_reg__0[3]),
        .I2(col_cnt_reg__0[5]),
        .O(col_cnt2_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    col_cnt2_carry_i_4
       (.I0(col_cnt_reg__0[1]),
        .I1(col_cnt_reg__0[0]),
        .I2(col_cnt_reg__0[2]),
        .O(col_cnt2_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \col_cnt[0]_i_1 
       (.I0(gray_en_temp),
        .I1(col_cnt2),
        .I2(col_cnt_reg__0[0]),
        .O(p_0_in__0[0]));
  LUT3 #(
    .INIT(8'hEA)) 
    \col_cnt[10]_i_1 
       (.I0(gray_out_en),
        .I1(gray_en_temp),
        .I2(col_cnt2),
        .O(\col_cnt[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h07707070)) 
    \col_cnt[10]_i_2 
       (.I0(gray_en_temp),
        .I1(col_cnt2),
        .I2(col_cnt_reg__0[10]),
        .I3(\col_cnt[10]_i_3_n_0 ),
        .I4(\col_cnt[10]_i_4_n_0 ),
        .O(p_0_in__0[10]));
  LUT3 #(
    .INIT(8'h80)) 
    \col_cnt[10]_i_3 
       (.I0(col_cnt_reg__0[9]),
        .I1(col_cnt_reg__0[8]),
        .I2(col_cnt_reg__0[7]),
        .O(\col_cnt[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \col_cnt[10]_i_4 
       (.I0(\col_cnt[5]_i_2_n_0 ),
        .I1(col_cnt_reg__0[4]),
        .I2(col_cnt_reg__0[3]),
        .I3(col_cnt_reg__0[5]),
        .I4(col_cnt_reg__0[6]),
        .O(\col_cnt[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \col_cnt[1]_i_1 
       (.I0(gray_en_temp),
        .I1(col_cnt2),
        .I2(col_cnt_reg__0[1]),
        .I3(col_cnt_reg__0[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h07707070)) 
    \col_cnt[2]_i_1 
       (.I0(gray_en_temp),
        .I1(col_cnt2),
        .I2(col_cnt_reg__0[2]),
        .I3(col_cnt_reg__0[0]),
        .I4(col_cnt_reg__0[1]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h0770707070707070)) 
    \col_cnt[3]_i_1 
       (.I0(gray_en_temp),
        .I1(col_cnt2),
        .I2(col_cnt_reg__0[3]),
        .I3(col_cnt_reg__0[1]),
        .I4(col_cnt_reg__0[0]),
        .I5(col_cnt_reg__0[2]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'h07707070)) 
    \col_cnt[4]_i_1 
       (.I0(gray_en_temp),
        .I1(col_cnt2),
        .I2(col_cnt_reg__0[4]),
        .I3(\col_cnt[5]_i_2_n_0 ),
        .I4(col_cnt_reg__0[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h0770707070707070)) 
    \col_cnt[5]_i_1 
       (.I0(gray_en_temp),
        .I1(col_cnt2),
        .I2(col_cnt_reg__0[5]),
        .I3(col_cnt_reg__0[4]),
        .I4(col_cnt_reg__0[3]),
        .I5(\col_cnt[5]_i_2_n_0 ),
        .O(p_0_in__0[5]));
  LUT3 #(
    .INIT(8'h80)) 
    \col_cnt[5]_i_2 
       (.I0(col_cnt_reg__0[1]),
        .I1(col_cnt_reg__0[0]),
        .I2(col_cnt_reg__0[2]),
        .O(\col_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \col_cnt[6]_i_1 
       (.I0(gray_en_temp),
        .I1(col_cnt2),
        .I2(col_cnt_reg__0[6]),
        .I3(\col_cnt[6]_i_2_n_0 ),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \col_cnt[6]_i_2 
       (.I0(col_cnt_reg__0[5]),
        .I1(col_cnt_reg__0[3]),
        .I2(col_cnt_reg__0[4]),
        .I3(col_cnt_reg__0[2]),
        .I4(col_cnt_reg__0[0]),
        .I5(col_cnt_reg__0[1]),
        .O(\col_cnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \col_cnt[7]_i_1 
       (.I0(gray_en_temp),
        .I1(col_cnt2),
        .I2(col_cnt_reg__0[7]),
        .I3(\col_cnt[10]_i_4_n_0 ),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h07707070)) 
    \col_cnt[8]_i_1 
       (.I0(gray_en_temp),
        .I1(col_cnt2),
        .I2(col_cnt_reg__0[8]),
        .I3(\col_cnt[10]_i_4_n_0 ),
        .I4(col_cnt_reg__0[7]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h0770707070707070)) 
    \col_cnt[9]_i_1 
       (.I0(gray_en_temp),
        .I1(col_cnt2),
        .I2(col_cnt_reg__0[9]),
        .I3(col_cnt_reg__0[8]),
        .I4(col_cnt_reg__0[7]),
        .I5(\col_cnt[10]_i_4_n_0 ),
        .O(p_0_in__0[9]));
  FDCE \col_cnt_reg[0] 
       (.C(clk_img),
        .CE(\col_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(p_0_in__0[0]),
        .Q(col_cnt_reg__0[0]));
  FDCE \col_cnt_reg[10] 
       (.C(clk_img),
        .CE(\col_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(p_0_in__0[10]),
        .Q(col_cnt_reg__0[10]));
  FDCE \col_cnt_reg[1] 
       (.C(clk_img),
        .CE(\col_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(p_0_in__0[1]),
        .Q(col_cnt_reg__0[1]));
  FDCE \col_cnt_reg[2] 
       (.C(clk_img),
        .CE(\col_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(p_0_in__0[2]),
        .Q(col_cnt_reg__0[2]));
  FDCE \col_cnt_reg[3] 
       (.C(clk_img),
        .CE(\col_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(p_0_in__0[3]),
        .Q(col_cnt_reg__0[3]));
  FDCE \col_cnt_reg[4] 
       (.C(clk_img),
        .CE(\col_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(p_0_in__0[4]),
        .Q(col_cnt_reg__0[4]));
  FDCE \col_cnt_reg[5] 
       (.C(clk_img),
        .CE(\col_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(p_0_in__0[5]),
        .Q(col_cnt_reg__0[5]));
  FDCE \col_cnt_reg[6] 
       (.C(clk_img),
        .CE(\col_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(p_0_in__0[6]),
        .Q(col_cnt_reg__0[6]));
  FDCE \col_cnt_reg[7] 
       (.C(clk_img),
        .CE(\col_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(p_0_in__0[7]),
        .Q(col_cnt_reg__0[7]));
  FDCE \col_cnt_reg[8] 
       (.C(clk_img),
        .CE(\col_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(p_0_in__0[8]),
        .Q(col_cnt_reg__0[8]));
  FDCE \col_cnt_reg[9] 
       (.C(clk_img),
        .CE(\col_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(p_0_in__0[9]),
        .Q(col_cnt_reg__0[9]));
  FDCE gray_en_temp_reg
       (.C(clk_img),
        .CE(1'b1),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(gray_out_en),
        .Q(gray_en_temp));
  (* CHECK_LICENSE_TYPE = "fifo_ip,fifo_generator_v13_2_3,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_3,Vivado 2018.3" *) 
  gly_0_fifo_ip__xdcDup__1 mat_fifo1
       (.clk(clk_img),
        .din(Q),
        .dout(D),
        .empty(NLW_mat_fifo1_empty_UNCONNECTED),
        .full(NLW_mat_fifo1_full_UNCONNECTED),
        .rd_en(wr_en2),
        .srst(\row_cnt_reg[0]_0 ),
        .wr_en(gray_en_temp));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hCCC8)) 
    mat_fifo1_i_1
       (.I0(row_cnt[0]),
        .I1(gray_en_temp),
        .I2(mat_fifo1_i_2_n_0),
        .I3(row_cnt[1]),
        .O(wr_en2));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    mat_fifo1_i_2
       (.I0(mat_fifo1_i_3_n_0),
        .I1(row_cnt[7]),
        .I2(row_cnt[8]),
        .I3(row_cnt[5]),
        .I4(row_cnt[6]),
        .O(mat_fifo1_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    mat_fifo1_i_3
       (.I0(row_cnt[2]),
        .I1(row_cnt[9]),
        .I2(row_cnt[10]),
        .I3(row_cnt[4]),
        .I4(row_cnt[3]),
        .O(mat_fifo1_i_3_n_0));
  (* CHECK_LICENSE_TYPE = "fifo_ip,fifo_generator_v13_2_3,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_3,Vivado 2018.3" *) 
  gly_0_fifo_ip__xdcDup__2 mat_fifo2
       (.clk(clk_img),
        .din(D),
        .dout(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .empty(NLW_mat_fifo2_empty_UNCONNECTED),
        .full(NLW_mat_fifo2_full_UNCONNECTED),
        .rd_en(wr_en3),
        .srst(\row_cnt_reg[0]_0 ),
        .wr_en(wr_en2));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    mat_fifo2_i_1
       (.I0(row_cnt[1]),
        .I1(mat_fifo1_i_2_n_0),
        .I2(gray_en_temp),
        .O(wr_en3));
  (* CHECK_LICENSE_TYPE = "fifo_ip,fifo_generator_v13_2_3,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_3,Vivado 2018.3" *) 
  gly_0_fifo_ip mat_fifo3
       (.clk(clk_img),
        .din(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .dout(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ),
        .empty(NLW_mat_fifo3_empty_UNCONNECTED),
        .full(NLW_mat_fifo3_full_UNCONNECTED),
        .rd_en(E),
        .srst(\row_cnt_reg[0]_0 ),
        .wr_en(wr_en3));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF080)) 
    mat_fifo3_i_1
       (.I0(row_cnt[0]),
        .I1(row_cnt[1]),
        .I2(gray_en_temp),
        .I3(mat_fifo1_i_2_n_0),
        .O(E));
  CARRY4 row_cnt3_carry
       (.CI(1'b0),
        .CO({row_cnt3,row_cnt3_carry_n_1,row_cnt3_carry_n_2,row_cnt3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_row_cnt3_carry_O_UNCONNECTED[3:0]),
        .S({row_cnt3_carry_i_1_n_0,row_cnt3_carry_i_2_n_0,row_cnt3_carry_i_3_n_0,row_cnt3_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    row_cnt3_carry_i_1
       (.I0(row_cnt[10]),
        .I1(row_cnt[9]),
        .O(row_cnt3_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    row_cnt3_carry_i_2
       (.I0(row_cnt[7]),
        .I1(row_cnt[6]),
        .I2(row_cnt[8]),
        .O(row_cnt3_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    row_cnt3_carry_i_3
       (.I0(row_cnt[4]),
        .I1(row_cnt[3]),
        .I2(row_cnt[5]),
        .O(row_cnt3_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    row_cnt3_carry_i_4
       (.I0(row_cnt[1]),
        .I1(row_cnt[0]),
        .I2(row_cnt[2]),
        .O(row_cnt3_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \row_cnt[0]_i_1 
       (.I0(row_cnt3),
        .I1(gray_en_temp),
        .I2(row_cnt[0]),
        .O(\row_cnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE0A0)) 
    \row_cnt[10]_i_1 
       (.I0(gray_out_en),
        .I1(row_cnt3),
        .I2(col_cnt2),
        .I3(gray_en_temp),
        .O(\row_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \row_cnt[10]_i_2 
       (.I0(row_cnt3),
        .I1(gray_en_temp),
        .I2(row_cnt0),
        .O(\row_cnt[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \row_cnt[10]_i_3 
       (.I0(\row_cnt[9]_i_3_n_0 ),
        .I1(row_cnt[9]),
        .I2(row_cnt[8]),
        .I3(row_cnt[7]),
        .I4(row_cnt[6]),
        .I5(row_cnt[10]),
        .O(row_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \row_cnt[1]_i_1 
       (.I0(row_cnt3),
        .I1(gray_en_temp),
        .I2(row_cnt[1]),
        .I3(row_cnt[0]),
        .O(\row_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h07707070)) 
    \row_cnt[2]_i_1 
       (.I0(row_cnt3),
        .I1(gray_en_temp),
        .I2(row_cnt[2]),
        .I3(row_cnt[0]),
        .I4(row_cnt[1]),
        .O(\row_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \row_cnt[3]_i_1 
       (.I0(row_cnt3),
        .I1(gray_en_temp),
        .I2(row_cnt[3]),
        .I3(\row_cnt[4]_i_2_n_0 ),
        .O(\row_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h07707070)) 
    \row_cnt[4]_i_1 
       (.I0(row_cnt3),
        .I1(gray_en_temp),
        .I2(row_cnt[4]),
        .I3(\row_cnt[4]_i_2_n_0 ),
        .I4(row_cnt[3]),
        .O(\row_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \row_cnt[4]_i_2 
       (.I0(row_cnt[1]),
        .I1(row_cnt[0]),
        .I2(row_cnt[2]),
        .O(\row_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \row_cnt[5]_i_1 
       (.I0(row_cnt3),
        .I1(gray_en_temp),
        .I2(row_cnt[5]),
        .I3(\row_cnt[5]_i_2_n_0 ),
        .O(\row_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \row_cnt[5]_i_2 
       (.I0(row_cnt[4]),
        .I1(row_cnt[3]),
        .I2(row_cnt[2]),
        .I3(row_cnt[0]),
        .I4(row_cnt[1]),
        .O(\row_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \row_cnt[6]_i_1 
       (.I0(row_cnt3),
        .I1(gray_en_temp),
        .I2(row_cnt[6]),
        .I3(\row_cnt[9]_i_3_n_0 ),
        .O(\row_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h07707070)) 
    \row_cnt[7]_i_1 
       (.I0(row_cnt3),
        .I1(gray_en_temp),
        .I2(row_cnt[7]),
        .I3(\row_cnt[9]_i_3_n_0 ),
        .I4(row_cnt[6]),
        .O(\row_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h077708880FFF0000)) 
    \row_cnt[8]_i_1 
       (.I0(row_cnt[6]),
        .I1(row_cnt[7]),
        .I2(row_cnt3),
        .I3(gray_en_temp),
        .I4(row_cnt[8]),
        .I5(\row_cnt[9]_i_3_n_0 ),
        .O(\row_cnt[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h07707070)) 
    \row_cnt[9]_i_1 
       (.I0(row_cnt3),
        .I1(gray_en_temp),
        .I2(row_cnt[9]),
        .I3(\row_cnt[9]_i_2_n_0 ),
        .I4(\row_cnt[9]_i_3_n_0 ),
        .O(\row_cnt[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \row_cnt[9]_i_2 
       (.I0(row_cnt[7]),
        .I1(row_cnt[6]),
        .I2(row_cnt[8]),
        .O(\row_cnt[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \row_cnt[9]_i_3 
       (.I0(row_cnt[1]),
        .I1(row_cnt[0]),
        .I2(row_cnt[2]),
        .I3(row_cnt[3]),
        .I4(row_cnt[4]),
        .I5(row_cnt[5]),
        .O(\row_cnt[9]_i_3_n_0 ));
  FDCE \row_cnt_reg[0] 
       (.C(clk_img),
        .CE(\row_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(\row_cnt[0]_i_1_n_0 ),
        .Q(row_cnt[0]));
  FDCE \row_cnt_reg[10] 
       (.C(clk_img),
        .CE(\row_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(\row_cnt[10]_i_2_n_0 ),
        .Q(row_cnt[10]));
  FDCE \row_cnt_reg[1] 
       (.C(clk_img),
        .CE(\row_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(\row_cnt[1]_i_1_n_0 ),
        .Q(row_cnt[1]));
  FDCE \row_cnt_reg[2] 
       (.C(clk_img),
        .CE(\row_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(\row_cnt[2]_i_1_n_0 ),
        .Q(row_cnt[2]));
  FDCE \row_cnt_reg[3] 
       (.C(clk_img),
        .CE(\row_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(\row_cnt[3]_i_1_n_0 ),
        .Q(row_cnt[3]));
  FDCE \row_cnt_reg[4] 
       (.C(clk_img),
        .CE(\row_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(\row_cnt[4]_i_1_n_0 ),
        .Q(row_cnt[4]));
  FDCE \row_cnt_reg[5] 
       (.C(clk_img),
        .CE(\row_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(\row_cnt[5]_i_1_n_0 ),
        .Q(row_cnt[5]));
  FDCE \row_cnt_reg[6] 
       (.C(clk_img),
        .CE(\row_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(\row_cnt[6]_i_1_n_0 ),
        .Q(row_cnt[6]));
  FDCE \row_cnt_reg[7] 
       (.C(clk_img),
        .CE(\row_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(\row_cnt[7]_i_1_n_0 ),
        .Q(row_cnt[7]));
  FDCE \row_cnt_reg[8] 
       (.C(clk_img),
        .CE(\row_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(\row_cnt[8]_i_1_n_0 ),
        .Q(row_cnt[8]));
  FDCE \row_cnt_reg[9] 
       (.C(clk_img),
        .CE(\row_cnt[10]_i_1_n_0 ),
        .CLR(\row_cnt_reg[0]_0 ),
        .D(\row_cnt[9]_i_1_n_0 ),
        .Q(row_cnt[9]));
endmodule

(* ORIG_REF_NAME = "gly_v5_0" *) 
module gly_0_gly_v5_0
   (addrb,
    dinb,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    rstb,
    web,
    RGB444_in,
    clk_img,
    s00_axi_aresetn,
    RGB_data_en,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output [29:0]addrb;
  output [31:0]dinb;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output rstb;
  output [0:0]web;
  input [11:0]RGB444_in;
  input clk_img;
  input s00_axi_aresetn;
  input RGB_data_en;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [11:0]RGB444_in;
  wire RGB_data_en;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [29:0]addrb;
  wire clk_img;
  wire [31:0]dinb;
  wire rstb;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [0:0]web;

  gly_0_gly_v5_0_S00_AXI gly_v5_0_S00_AXI_inst
       (.RGB444_in(RGB444_in),
        .RGB_data_en(RGB_data_en),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .addrb(addrb),
        .clk_img(clk_img),
        .dinb(dinb),
        .rstb(rstb),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .web(web));
endmodule

(* ORIG_REF_NAME = "gly_v5_0_S00_AXI" *) 
module gly_0_gly_v5_0_S00_AXI
   (addrb,
    dinb,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    rstb,
    web,
    RGB444_in,
    clk_img,
    s00_axi_aresetn,
    RGB_data_en,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output [29:0]addrb;
  output [31:0]dinb;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output rstb;
  output [0:0]web;
  input [11:0]RGB444_in;
  input clk_img;
  input s00_axi_aresetn;
  input RGB_data_en;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [11:0]RGB444_in;
  wire RGB_data_en;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [29:0]addrb;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire clk_img;
  wire [31:0]dinb;
  wire [7:0]gray_out;
  wire gray_out_en;
  wire img_edge;
  wire img_en;
  wire mat_en;
  wire [7:0]mat_r1;
  wire [7:0]mat_r2;
  wire [7:0]mat_r3;
  wire [1:0]p_0_in;
  wire [31:0]reg_data_out;
  wire rstb;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire sobelel_n_1;
  wire [0:0]web;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(sobelel_n_1));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(sobelel_n_1));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(sobelel_n_1));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(sobelel_n_1));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(sobelel_n_1));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(sobelel_n_1));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(sobelel_n_1));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(sobelel_n_1));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(sobelel_n_1));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(sobelel_n_1));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(sobelel_n_1));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(sobelel_n_1));
  gly_0_dout doutt
       (.S(addrb[3:1]),
        .addrb(addrb[29:28]),
        .\addrb_reg[13]_0 (addrb[11:8]),
        .\addrb_reg[17]_0 (addrb[15:12]),
        .\addrb_reg[21]_0 (addrb[19:16]),
        .\addrb_reg[25]_0 (addrb[23:20]),
        .\addrb_reg[29]_0 (addrb[27:24]),
        .\addrb_reg[2]_0 (addrb[0]),
        .\addrb_reg[9]_0 (addrb[7:4]),
        .clk_img(clk_img),
        .dinb(dinb),
        .\dinb_reg[31]_0 (sobelel_n_1),
        .img_edge(img_edge),
        .img_en(img_en),
        .rstb(rstb),
        .web(web));
  gly_0_genMat genner
       (.D(mat_r1),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (mat_r2),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 (mat_r3),
        .E(mat_en),
        .Q(gray_out),
        .clk_img(clk_img),
        .gray_out_en(gray_out_en),
        .\row_cnt_reg[0]_0 (sobelel_n_1));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(sobelel_n_1));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(sobelel_n_1));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(sobelel_n_1));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(sobelel_n_1));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(sobelel_n_1));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(sobelel_n_1));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(sobelel_n_1));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(sobelel_n_1));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
  gly_0_sobel sobelel
       (.D(mat_r3),
        .E(mat_en),
        .SR(sobelel_n_1),
        .clk_img(clk_img),
        .img_edge(img_edge),
        .img_en(img_en),
        .\p13_reg[7]_0 (mat_r1),
        .\p23_reg[7]_0 (mat_r2),
        .s00_axi_aresetn(s00_axi_aresetn));
  gly_0_rgb2gray trans
       (.Q(gray_out),
        .RGB444_in(RGB444_in),
        .RGB_data_en(RGB_data_en),
        .SR(sobelel_n_1),
        .clk_img(clk_img),
        .gray_out_en(gray_out_en));
endmodule

(* ORIG_REF_NAME = "rgb2gray" *) 
module gly_0_rgb2gray
   (gray_out_en,
    Q,
    RGB_data_en,
    clk_img,
    SR,
    RGB444_in);
  output gray_out_en;
  output [7:0]Q;
  input RGB_data_en;
  input clk_img;
  input [0:0]SR;
  input [11:0]RGB444_in;

  wire [7:0]Q;
  wire [11:0]RGB444_in;
  wire RGB_data_en;
  wire RGB_data_en_temp;
  wire [0:0]SR;
  wire [12:5]b;
  wire [12:6]b0;
  wire \b[12]_i_2_n_0 ;
  wire \b[12]_i_3_n_0 ;
  wire \b[12]_i_4_n_0 ;
  wire \b[12]_i_5_n_0 ;
  wire \b[12]_i_6_n_0 ;
  wire \b[9]_i_2_n_0 ;
  wire \b[9]_i_3_n_0 ;
  wire \b[9]_i_4_n_0 ;
  wire \b[9]_i_5_n_0 ;
  wire \b[9]_i_6_n_0 ;
  wire \b[9]_i_7_n_0 ;
  wire \b_reg[12]_i_1_n_2 ;
  wire \b_reg[12]_i_1_n_3 ;
  wire \b_reg[9]_i_1_n_0 ;
  wire \b_reg[9]_i_1_n_1 ;
  wire \b_reg[9]_i_1_n_2 ;
  wire \b_reg[9]_i_1_n_3 ;
  wire clk_img;
  wire [15:5]g;
  wire [15:6]g0;
  wire \g[13]_i_2_n_0 ;
  wire \g[13]_i_3_n_0 ;
  wire \g[13]_i_4_n_0 ;
  wire \g[13]_i_5_n_0 ;
  wire \g[13]_i_6_n_0 ;
  wire \g[15]_i_2_n_0 ;
  wire \g[9]_i_2_n_0 ;
  wire \g[9]_i_3_n_0 ;
  wire \g[9]_i_4_n_0 ;
  wire \g[9]_i_5_n_0 ;
  wire \g[9]_i_6_n_0 ;
  wire \g_reg[13]_i_1_n_0 ;
  wire \g_reg[13]_i_1_n_1 ;
  wire \g_reg[13]_i_1_n_2 ;
  wire \g_reg[13]_i_1_n_3 ;
  wire \g_reg[15]_i_1_n_3 ;
  wire \g_reg[9]_i_1_n_0 ;
  wire \g_reg[9]_i_1_n_1 ;
  wire \g_reg[9]_i_1_n_2 ;
  wire \g_reg[9]_i_1_n_3 ;
  wire gray_out_en;
  wire \gray_temp[12]_i_2_n_0 ;
  wire \gray_temp[12]_i_3_n_0 ;
  wire \gray_temp[12]_i_4_n_0 ;
  wire \gray_temp[12]_i_5_n_0 ;
  wire \gray_temp[12]_i_6_n_0 ;
  wire \gray_temp[12]_i_7_n_0 ;
  wire \gray_temp[12]_i_8_n_0 ;
  wire \gray_temp[12]_i_9_n_0 ;
  wire \gray_temp[15]_i_2_n_0 ;
  wire \gray_temp[15]_i_3_n_0 ;
  wire \gray_temp[15]_i_4_n_0 ;
  wire \gray_temp[15]_i_5_n_0 ;
  wire \gray_temp[15]_i_6_n_0 ;
  wire \gray_temp[8]_i_2_n_0 ;
  wire \gray_temp[8]_i_3_n_0 ;
  wire \gray_temp[8]_i_4_n_0 ;
  wire \gray_temp[8]_i_5_n_0 ;
  wire \gray_temp[8]_i_6_n_0 ;
  wire \gray_temp[8]_i_7_n_0 ;
  wire \gray_temp[8]_i_8_n_0 ;
  wire \gray_temp_reg[12]_i_1_n_0 ;
  wire \gray_temp_reg[12]_i_1_n_1 ;
  wire \gray_temp_reg[12]_i_1_n_2 ;
  wire \gray_temp_reg[12]_i_1_n_3 ;
  wire \gray_temp_reg[12]_i_1_n_4 ;
  wire \gray_temp_reg[12]_i_1_n_5 ;
  wire \gray_temp_reg[12]_i_1_n_6 ;
  wire \gray_temp_reg[12]_i_1_n_7 ;
  wire \gray_temp_reg[15]_i_1_n_2 ;
  wire \gray_temp_reg[15]_i_1_n_3 ;
  wire \gray_temp_reg[15]_i_1_n_5 ;
  wire \gray_temp_reg[15]_i_1_n_6 ;
  wire \gray_temp_reg[15]_i_1_n_7 ;
  wire \gray_temp_reg[8]_i_1_n_0 ;
  wire \gray_temp_reg[8]_i_1_n_1 ;
  wire \gray_temp_reg[8]_i_1_n_2 ;
  wire \gray_temp_reg[8]_i_1_n_3 ;
  wire \gray_temp_reg[8]_i_1_n_4 ;
  wire [14:5]r;
  wire [14:6]r0;
  wire \r[10]_i_2_n_0 ;
  wire \r[10]_i_3_n_0 ;
  wire \r[10]_i_4_n_0 ;
  wire \r[14]_i_2_n_0 ;
  wire \r_reg[10]_i_1_n_0 ;
  wire \r_reg[10]_i_1_n_1 ;
  wire \r_reg[10]_i_1_n_2 ;
  wire \r_reg[10]_i_1_n_3 ;
  wire \r_reg[14]_i_1_n_2 ;
  wire \r_reg[14]_i_1_n_3 ;
  wire [3:2]\NLW_b_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_b_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_g_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_reg[15]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_gray_temp_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_gray_temp_reg[15]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_gray_temp_reg[8]_i_1_O_UNCONNECTED ;
  wire [2:2]\NLW_r_reg[14]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_reg[14]_i_1_O_UNCONNECTED ;

  FDCE RGB_data_en_temp_reg
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(RGB_data_en),
        .Q(RGB_data_en_temp));
  LUT1 #(
    .INIT(2'h2)) 
    \b[12]_i_2 
       (.I0(RGB444_in[1]),
        .O(\b[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h54FF)) 
    \b[12]_i_3 
       (.I0(RGB444_in[3]),
        .I1(RGB444_in[1]),
        .I2(RGB444_in[0]),
        .I3(RGB444_in[2]),
        .O(\b[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \b[12]_i_4 
       (.I0(RGB444_in[2]),
        .I1(RGB444_in[3]),
        .O(\b[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \b[12]_i_5 
       (.I0(RGB444_in[2]),
        .I1(RGB444_in[1]),
        .O(\b[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5BFA)) 
    \b[12]_i_6 
       (.I0(RGB444_in[3]),
        .I1(RGB444_in[0]),
        .I2(RGB444_in[1]),
        .I3(RGB444_in[2]),
        .O(\b[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hC696)) 
    \b[9]_i_2 
       (.I0(RGB444_in[1]),
        .I1(RGB444_in[3]),
        .I2(RGB444_in[2]),
        .I3(RGB444_in[0]),
        .O(\b[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hC6)) 
    \b[9]_i_3 
       (.I0(RGB444_in[0]),
        .I1(RGB444_in[2]),
        .I2(RGB444_in[1]),
        .O(\b[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3BD4)) 
    \b[9]_i_4 
       (.I0(RGB444_in[1]),
        .I1(RGB444_in[3]),
        .I2(RGB444_in[2]),
        .I3(RGB444_in[0]),
        .O(\b[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9959)) 
    \b[9]_i_5 
       (.I0(RGB444_in[3]),
        .I1(RGB444_in[2]),
        .I2(RGB444_in[0]),
        .I3(RGB444_in[1]),
        .O(\b[9]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h95)) 
    \b[9]_i_6 
       (.I0(RGB444_in[2]),
        .I1(RGB444_in[1]),
        .I2(RGB444_in[0]),
        .O(\b[9]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \b[9]_i_7 
       (.I0(RGB444_in[0]),
        .I1(RGB444_in[1]),
        .O(\b[9]_i_7_n_0 ));
  FDCE \b_reg[10] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(b0[10]),
        .Q(b[10]));
  FDCE \b_reg[11] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(b0[11]),
        .Q(b[11]));
  FDCE \b_reg[12] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(b0[12]),
        .Q(b[12]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b_reg[12]_i_1 
       (.CI(\b_reg[9]_i_1_n_0 ),
        .CO({\NLW_b_reg[12]_i_1_CO_UNCONNECTED [3:2],\b_reg[12]_i_1_n_2 ,\b_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\b[12]_i_2_n_0 ,\b[12]_i_3_n_0 }),
        .O({\NLW_b_reg[12]_i_1_O_UNCONNECTED [3],b0[12:10]}),
        .S({1'b0,\b[12]_i_4_n_0 ,\b[12]_i_5_n_0 ,\b[12]_i_6_n_0 }));
  FDCE \b_reg[5] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(RGB444_in[0]),
        .Q(b[5]));
  FDCE \b_reg[6] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(b0[6]),
        .Q(b[6]));
  FDCE \b_reg[7] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(b0[7]),
        .Q(b[7]));
  FDCE \b_reg[8] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(b0[8]),
        .Q(b[8]));
  FDCE \b_reg[9] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(b0[9]),
        .Q(b[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x5}}" *) 
  CARRY4 \b_reg[9]_i_1 
       (.CI(1'b0),
        .CO({\b_reg[9]_i_1_n_0 ,\b_reg[9]_i_1_n_1 ,\b_reg[9]_i_1_n_2 ,\b_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({RGB444_in[0],\b[9]_i_2_n_0 ,\b[9]_i_3_n_0 ,1'b0}),
        .O(b0[9:6]),
        .S({\b[9]_i_4_n_0 ,\b[9]_i_5_n_0 ,\b[9]_i_6_n_0 ,\b[9]_i_7_n_0 }));
  LUT1 #(
    .INIT(2'h2)) 
    \g[13]_i_2 
       (.I0(RGB444_in[7]),
        .O(\g[13]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \g[13]_i_3 
       (.I0(RGB444_in[6]),
        .O(\g[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g[13]_i_4 
       (.I0(RGB444_in[5]),
        .I1(RGB444_in[7]),
        .O(\g[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g[13]_i_5 
       (.I0(RGB444_in[7]),
        .I1(RGB444_in[4]),
        .O(\g[13]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h58)) 
    \g[13]_i_6 
       (.I0(RGB444_in[7]),
        .I1(RGB444_in[5]),
        .I2(RGB444_in[6]),
        .O(\g[13]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \g[15]_i_2 
       (.I0(RGB444_in[7]),
        .O(\g[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hC6)) 
    \g[9]_i_2 
       (.I0(RGB444_in[4]),
        .I1(RGB444_in[6]),
        .I2(RGB444_in[5]),
        .O(\g[9]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hDD64)) 
    \g[9]_i_3 
       (.I0(RGB444_in[6]),
        .I1(RGB444_in[7]),
        .I2(RGB444_in[4]),
        .I3(RGB444_in[5]),
        .O(\g[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3996)) 
    \g[9]_i_4 
       (.I0(RGB444_in[5]),
        .I1(RGB444_in[7]),
        .I2(RGB444_in[6]),
        .I3(RGB444_in[4]),
        .O(\g[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h63)) 
    \g[9]_i_5 
       (.I0(RGB444_in[5]),
        .I1(RGB444_in[6]),
        .I2(RGB444_in[4]),
        .O(\g[9]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \g[9]_i_6 
       (.I0(RGB444_in[4]),
        .I1(RGB444_in[5]),
        .O(\g[9]_i_6_n_0 ));
  FDCE \g_reg[10] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(g0[10]),
        .Q(g[10]));
  FDCE \g_reg[11] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(g0[11]),
        .Q(g[11]));
  FDCE \g_reg[12] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(g0[12]),
        .Q(g[12]));
  FDCE \g_reg[13] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(g0[13]),
        .Q(g[13]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g_reg[13]_i_1 
       (.CI(\g_reg[9]_i_1_n_0 ),
        .CO({\g_reg[13]_i_1_n_0 ,\g_reg[13]_i_1_n_1 ,\g_reg[13]_i_1_n_2 ,\g_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\g[13]_i_2_n_0 ,RGB444_in[4],RGB444_in[6]}),
        .O(g0[13:10]),
        .S({\g[13]_i_3_n_0 ,\g[13]_i_4_n_0 ,\g[13]_i_5_n_0 ,\g[13]_i_6_n_0 }));
  FDCE \g_reg[14] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(g0[14]),
        .Q(g[14]));
  FDCE \g_reg[15] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(g0[15]),
        .Q(g[15]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g_reg[15]_i_1 
       (.CI(\g_reg[13]_i_1_n_0 ),
        .CO({\NLW_g_reg[15]_i_1_CO_UNCONNECTED [3:1],\g_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_g_reg[15]_i_1_O_UNCONNECTED [3:2],g0[15:14]}),
        .S({1'b0,1'b0,1'b0,\g[15]_i_2_n_0 }));
  FDCE \g_reg[5] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(RGB444_in[4]),
        .Q(g[5]));
  FDCE \g_reg[6] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(g0[6]),
        .Q(g[6]));
  FDCE \g_reg[7] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(g0[7]),
        .Q(g[7]));
  FDCE \g_reg[8] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(g0[8]),
        .Q(g[8]));
  FDCE \g_reg[9] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(g0[9]),
        .Q(g[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 \g_reg[9]_i_1 
       (.CI(1'b0),
        .CO({\g_reg[9]_i_1_n_0 ,\g_reg[9]_i_1_n_1 ,\g_reg[9]_i_1_n_2 ,\g_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({RGB444_in[5:4],\g[9]_i_2_n_0 ,1'b0}),
        .O(g0[9:6]),
        .S({\g[9]_i_3_n_0 ,\g[9]_i_4_n_0 ,\g[9]_i_5_n_0 ,\g[9]_i_6_n_0 }));
  FDCE gray_out_en_reg
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(RGB_data_en_temp),
        .Q(gray_out_en));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gray_temp[12]_i_2 
       (.I0(g[11]),
        .I1(b[11]),
        .I2(r[11]),
        .O(\gray_temp[12]_i_2_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gray_temp[12]_i_3 
       (.I0(g[10]),
        .I1(b[10]),
        .I2(r[10]),
        .O(\gray_temp[12]_i_3_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gray_temp[12]_i_4 
       (.I0(g[9]),
        .I1(b[9]),
        .I2(r[9]),
        .O(\gray_temp[12]_i_4_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gray_temp[12]_i_5 
       (.I0(g[8]),
        .I1(b[8]),
        .I2(r[8]),
        .O(\gray_temp[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \gray_temp[12]_i_6 
       (.I0(\gray_temp[12]_i_2_n_0 ),
        .I1(b[12]),
        .I2(g[12]),
        .I3(r[12]),
        .O(\gray_temp[12]_i_6_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gray_temp[12]_i_7 
       (.I0(g[11]),
        .I1(b[11]),
        .I2(r[11]),
        .I3(\gray_temp[12]_i_3_n_0 ),
        .O(\gray_temp[12]_i_7_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gray_temp[12]_i_8 
       (.I0(g[10]),
        .I1(b[10]),
        .I2(r[10]),
        .I3(\gray_temp[12]_i_4_n_0 ),
        .O(\gray_temp[12]_i_8_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gray_temp[12]_i_9 
       (.I0(g[9]),
        .I1(b[9]),
        .I2(r[9]),
        .I3(\gray_temp[12]_i_5_n_0 ),
        .O(\gray_temp[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gray_temp[15]_i_2 
       (.I0(r[13]),
        .I1(g[13]),
        .O(\gray_temp[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \gray_temp[15]_i_3 
       (.I0(g[12]),
        .I1(b[12]),
        .I2(r[12]),
        .O(\gray_temp[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \gray_temp[15]_i_4 
       (.I0(r[14]),
        .I1(g[14]),
        .I2(g[15]),
        .O(\gray_temp[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \gray_temp[15]_i_5 
       (.I0(r[13]),
        .I1(g[13]),
        .I2(g[14]),
        .I3(r[14]),
        .O(\gray_temp[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \gray_temp[15]_i_6 
       (.I0(r[12]),
        .I1(b[12]),
        .I2(g[12]),
        .I3(g[13]),
        .I4(r[13]),
        .O(\gray_temp[15]_i_6_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gray_temp[8]_i_2 
       (.I0(g[7]),
        .I1(b[7]),
        .I2(r[7]),
        .O(\gray_temp[8]_i_2_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gray_temp[8]_i_3 
       (.I0(g[6]),
        .I1(b[6]),
        .I2(r[6]),
        .O(\gray_temp[8]_i_3_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \gray_temp[8]_i_4 
       (.I0(g[5]),
        .I1(b[5]),
        .I2(r[5]),
        .O(\gray_temp[8]_i_4_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gray_temp[8]_i_5 
       (.I0(g[8]),
        .I1(b[8]),
        .I2(r[8]),
        .I3(\gray_temp[8]_i_2_n_0 ),
        .O(\gray_temp[8]_i_5_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gray_temp[8]_i_6 
       (.I0(g[7]),
        .I1(b[7]),
        .I2(r[7]),
        .I3(\gray_temp[8]_i_3_n_0 ),
        .O(\gray_temp[8]_i_6_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \gray_temp[8]_i_7 
       (.I0(g[6]),
        .I1(b[6]),
        .I2(r[6]),
        .I3(\gray_temp[8]_i_4_n_0 ),
        .O(\gray_temp[8]_i_7_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gray_temp[8]_i_8 
       (.I0(g[5]),
        .I1(b[5]),
        .I2(r[5]),
        .O(\gray_temp[8]_i_8_n_0 ));
  FDCE \gray_temp_reg[10] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(\gray_temp_reg[12]_i_1_n_6 ),
        .Q(Q[2]));
  FDCE \gray_temp_reg[11] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(\gray_temp_reg[12]_i_1_n_5 ),
        .Q(Q[3]));
  FDCE \gray_temp_reg[12] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(\gray_temp_reg[12]_i_1_n_4 ),
        .Q(Q[4]));
  CARRY4 \gray_temp_reg[12]_i_1 
       (.CI(\gray_temp_reg[8]_i_1_n_0 ),
        .CO({\gray_temp_reg[12]_i_1_n_0 ,\gray_temp_reg[12]_i_1_n_1 ,\gray_temp_reg[12]_i_1_n_2 ,\gray_temp_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gray_temp[12]_i_2_n_0 ,\gray_temp[12]_i_3_n_0 ,\gray_temp[12]_i_4_n_0 ,\gray_temp[12]_i_5_n_0 }),
        .O({\gray_temp_reg[12]_i_1_n_4 ,\gray_temp_reg[12]_i_1_n_5 ,\gray_temp_reg[12]_i_1_n_6 ,\gray_temp_reg[12]_i_1_n_7 }),
        .S({\gray_temp[12]_i_6_n_0 ,\gray_temp[12]_i_7_n_0 ,\gray_temp[12]_i_8_n_0 ,\gray_temp[12]_i_9_n_0 }));
  FDCE \gray_temp_reg[13] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(\gray_temp_reg[15]_i_1_n_7 ),
        .Q(Q[5]));
  FDCE \gray_temp_reg[14] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(\gray_temp_reg[15]_i_1_n_6 ),
        .Q(Q[6]));
  FDCE \gray_temp_reg[15] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(\gray_temp_reg[15]_i_1_n_5 ),
        .Q(Q[7]));
  CARRY4 \gray_temp_reg[15]_i_1 
       (.CI(\gray_temp_reg[12]_i_1_n_0 ),
        .CO({\NLW_gray_temp_reg[15]_i_1_CO_UNCONNECTED [3:2],\gray_temp_reg[15]_i_1_n_2 ,\gray_temp_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\gray_temp[15]_i_2_n_0 ,\gray_temp[15]_i_3_n_0 }),
        .O({\NLW_gray_temp_reg[15]_i_1_O_UNCONNECTED [3],\gray_temp_reg[15]_i_1_n_5 ,\gray_temp_reg[15]_i_1_n_6 ,\gray_temp_reg[15]_i_1_n_7 }),
        .S({1'b0,\gray_temp[15]_i_4_n_0 ,\gray_temp[15]_i_5_n_0 ,\gray_temp[15]_i_6_n_0 }));
  FDCE \gray_temp_reg[8] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(\gray_temp_reg[8]_i_1_n_4 ),
        .Q(Q[0]));
  CARRY4 \gray_temp_reg[8]_i_1 
       (.CI(1'b0),
        .CO({\gray_temp_reg[8]_i_1_n_0 ,\gray_temp_reg[8]_i_1_n_1 ,\gray_temp_reg[8]_i_1_n_2 ,\gray_temp_reg[8]_i_1_n_3 }),
        .CYINIT(r[5]),
        .DI({\gray_temp[8]_i_2_n_0 ,\gray_temp[8]_i_3_n_0 ,\gray_temp[8]_i_4_n_0 ,1'b0}),
        .O({\gray_temp_reg[8]_i_1_n_4 ,\NLW_gray_temp_reg[8]_i_1_O_UNCONNECTED [2:0]}),
        .S({\gray_temp[8]_i_5_n_0 ,\gray_temp[8]_i_6_n_0 ,\gray_temp[8]_i_7_n_0 ,\gray_temp[8]_i_8_n_0 }));
  FDCE \gray_temp_reg[9] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(\gray_temp_reg[12]_i_1_n_7 ),
        .Q(Q[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \r[10]_i_2 
       (.I0(RGB444_in[8]),
        .I1(RGB444_in[10]),
        .O(\r[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[10]_i_3 
       (.I0(RGB444_in[11]),
        .I1(RGB444_in[9]),
        .O(\r[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[10]_i_4 
       (.I0(RGB444_in[10]),
        .I1(RGB444_in[8]),
        .O(\r[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r[14]_i_2 
       (.I0(RGB444_in[9]),
        .I1(RGB444_in[11]),
        .O(\r[14]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r[6]_i_1 
       (.I0(RGB444_in[8]),
        .O(r0[6]));
  FDCE \r_reg[10] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(r0[10]),
        .Q(r[10]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r_reg[10]_i_1 
       (.CI(1'b0),
        .CO({\r_reg[10]_i_1_n_0 ,\r_reg[10]_i_1_n_1 ,\r_reg[10]_i_1_n_2 ,\r_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({RGB444_in[8],RGB444_in[9:8],1'b1}),
        .O(r0[10:7]),
        .S({\r[10]_i_2_n_0 ,\r[10]_i_3_n_0 ,\r[10]_i_4_n_0 ,RGB444_in[9]}));
  FDCE \r_reg[11] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(r0[11]),
        .Q(r[11]));
  FDCE \r_reg[12] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(r0[12]),
        .Q(r[12]));
  FDCE \r_reg[13] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(r0[13]),
        .Q(r[13]));
  FDCE \r_reg[14] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(r0[14]),
        .Q(r[14]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x7}}" *) 
  CARRY4 \r_reg[14]_i_1 
       (.CI(\r_reg[10]_i_1_n_0 ),
        .CO({r0[14],\NLW_r_reg[14]_i_1_CO_UNCONNECTED [2],\r_reg[14]_i_1_n_2 ,\r_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,RGB444_in[9]}),
        .O({\NLW_r_reg[14]_i_1_O_UNCONNECTED [3],r0[13:11]}),
        .S({1'b1,RGB444_in[11:10],\r[14]_i_2_n_0 }));
  FDCE \r_reg[5] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(1'b1),
        .Q(r[5]));
  FDCE \r_reg[6] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(r0[6]),
        .Q(r[6]));
  FDCE \r_reg[7] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(r0[7]),
        .Q(r[7]));
  FDCE \r_reg[8] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(r0[8]),
        .Q(r[8]));
  FDCE \r_reg[9] 
       (.C(clk_img),
        .CE(RGB_data_en),
        .CLR(SR),
        .D(r0[9]),
        .Q(r[9]));
endmodule

(* ORIG_REF_NAME = "sobel" *) 
module gly_0_sobel
   (img_en,
    SR,
    img_edge,
    clk_img,
    s00_axi_aresetn,
    E,
    D,
    \p13_reg[7]_0 ,
    \p23_reg[7]_0 );
  output img_en;
  output [0:0]SR;
  output img_edge;
  input clk_img;
  input s00_axi_aresetn;
  input [0:0]E;
  input [7:0]D;
  input [7:0]\p13_reg[7]_0 ;
  input [7:0]\p23_reg[7]_0 ;

  wire [9:0]A;
  wire [7:0]D;
  wire [15:0]DIM;
  wire DIM_VALID;
  wire [0:0]E;
  wire [9:0]Gx_data0;
  wire Gx_data2;
  wire Gx_data2_carry__0_i_1_n_0;
  wire Gx_data2_carry__0_i_2_n_0;
  wire Gx_data2_carry_i_1_n_0;
  wire Gx_data2_carry_i_2_n_0;
  wire Gx_data2_carry_i_3_n_0;
  wire Gx_data2_carry_i_4_n_0;
  wire Gx_data2_carry_i_5_n_0;
  wire Gx_data2_carry_i_6_n_0;
  wire Gx_data2_carry_i_7_n_0;
  wire Gx_data2_carry_i_8_n_0;
  wire Gx_data2_carry_n_0;
  wire Gx_data2_carry_n_1;
  wire Gx_data2_carry_n_2;
  wire Gx_data2_carry_n_3;
  wire [9:0]Gx_t1;
  wire Gx_t10__1_carry__0_i_1_n_0;
  wire Gx_t10__1_carry__0_i_2_n_0;
  wire Gx_t10__1_carry__0_i_3_n_0;
  wire Gx_t10__1_carry__0_i_4_n_0;
  wire Gx_t10__1_carry__0_i_5_n_0;
  wire Gx_t10__1_carry__0_i_6_n_0;
  wire Gx_t10__1_carry__0_i_7_n_0;
  wire Gx_t10__1_carry__0_i_8_n_0;
  wire Gx_t10__1_carry__0_n_0;
  wire Gx_t10__1_carry__0_n_1;
  wire Gx_t10__1_carry__0_n_2;
  wire Gx_t10__1_carry__0_n_3;
  wire Gx_t10__1_carry__0_n_4;
  wire Gx_t10__1_carry__0_n_5;
  wire Gx_t10__1_carry__0_n_6;
  wire Gx_t10__1_carry__0_n_7;
  wire Gx_t10__1_carry__1_i_1_n_0;
  wire Gx_t10__1_carry__1_n_2;
  wire Gx_t10__1_carry__1_n_7;
  wire Gx_t10__1_carry_i_1_n_0;
  wire Gx_t10__1_carry_i_2_n_0;
  wire Gx_t10__1_carry_i_3_n_0;
  wire Gx_t10__1_carry_i_4_n_0;
  wire Gx_t10__1_carry_i_5_n_0;
  wire Gx_t10__1_carry_i_6_n_0;
  wire Gx_t10__1_carry_n_0;
  wire Gx_t10__1_carry_n_1;
  wire Gx_t10__1_carry_n_2;
  wire Gx_t10__1_carry_n_3;
  wire Gx_t10__1_carry_n_4;
  wire Gx_t10__1_carry_n_5;
  wire Gx_t10__1_carry_n_6;
  wire Gx_t10__1_carry_n_7;
  wire [8:1]Gx_t12;
  wire [9:0]Gx_t2;
  wire Gx_t20__1_carry__0_i_1_n_0;
  wire Gx_t20__1_carry__0_i_2_n_0;
  wire Gx_t20__1_carry__0_i_3_n_0;
  wire Gx_t20__1_carry__0_i_4_n_0;
  wire Gx_t20__1_carry__0_i_5_n_0;
  wire Gx_t20__1_carry__0_i_6_n_0;
  wire Gx_t20__1_carry__0_i_7_n_0;
  wire Gx_t20__1_carry__0_i_8_n_0;
  wire Gx_t20__1_carry__0_n_0;
  wire Gx_t20__1_carry__0_n_1;
  wire Gx_t20__1_carry__0_n_2;
  wire Gx_t20__1_carry__0_n_3;
  wire Gx_t20__1_carry__0_n_4;
  wire Gx_t20__1_carry__0_n_5;
  wire Gx_t20__1_carry__0_n_6;
  wire Gx_t20__1_carry__0_n_7;
  wire Gx_t20__1_carry__1_i_1_n_0;
  wire Gx_t20__1_carry__1_n_2;
  wire Gx_t20__1_carry__1_n_7;
  wire Gx_t20__1_carry_i_1_n_0;
  wire Gx_t20__1_carry_i_2_n_0;
  wire Gx_t20__1_carry_i_3_n_0;
  wire Gx_t20__1_carry_i_4_n_0;
  wire Gx_t20__1_carry_i_5_n_0;
  wire Gx_t20__1_carry_i_6_n_0;
  wire Gx_t20__1_carry_n_0;
  wire Gx_t20__1_carry_n_1;
  wire Gx_t20__1_carry_n_2;
  wire Gx_t20__1_carry_n_3;
  wire Gx_t20__1_carry_n_4;
  wire Gx_t20__1_carry_n_5;
  wire Gx_t20__1_carry_n_6;
  wire Gx_t20__1_carry_n_7;
  wire Gxy_sq0_n_100;
  wire Gxy_sq0_n_101;
  wire Gxy_sq0_n_102;
  wire Gxy_sq0_n_103;
  wire Gxy_sq0_n_104;
  wire Gxy_sq0_n_105;
  wire Gxy_sq0_n_106;
  wire Gxy_sq0_n_107;
  wire Gxy_sq0_n_108;
  wire Gxy_sq0_n_109;
  wire Gxy_sq0_n_110;
  wire Gxy_sq0_n_111;
  wire Gxy_sq0_n_112;
  wire Gxy_sq0_n_113;
  wire Gxy_sq0_n_114;
  wire Gxy_sq0_n_115;
  wire Gxy_sq0_n_116;
  wire Gxy_sq0_n_117;
  wire Gxy_sq0_n_118;
  wire Gxy_sq0_n_119;
  wire Gxy_sq0_n_120;
  wire Gxy_sq0_n_121;
  wire Gxy_sq0_n_122;
  wire Gxy_sq0_n_123;
  wire Gxy_sq0_n_124;
  wire Gxy_sq0_n_125;
  wire Gxy_sq0_n_126;
  wire Gxy_sq0_n_127;
  wire Gxy_sq0_n_128;
  wire Gxy_sq0_n_129;
  wire Gxy_sq0_n_130;
  wire Gxy_sq0_n_131;
  wire Gxy_sq0_n_132;
  wire Gxy_sq0_n_133;
  wire Gxy_sq0_n_134;
  wire Gxy_sq0_n_135;
  wire Gxy_sq0_n_136;
  wire Gxy_sq0_n_137;
  wire Gxy_sq0_n_138;
  wire Gxy_sq0_n_139;
  wire Gxy_sq0_n_140;
  wire Gxy_sq0_n_141;
  wire Gxy_sq0_n_142;
  wire Gxy_sq0_n_143;
  wire Gxy_sq0_n_144;
  wire Gxy_sq0_n_145;
  wire Gxy_sq0_n_146;
  wire Gxy_sq0_n_147;
  wire Gxy_sq0_n_148;
  wire Gxy_sq0_n_149;
  wire Gxy_sq0_n_150;
  wire Gxy_sq0_n_151;
  wire Gxy_sq0_n_152;
  wire Gxy_sq0_n_153;
  wire Gxy_sq0_n_86;
  wire Gxy_sq0_n_87;
  wire Gxy_sq0_n_88;
  wire Gxy_sq0_n_89;
  wire Gxy_sq0_n_90;
  wire Gxy_sq0_n_91;
  wire Gxy_sq0_n_92;
  wire Gxy_sq0_n_93;
  wire Gxy_sq0_n_94;
  wire Gxy_sq0_n_95;
  wire Gxy_sq0_n_96;
  wire Gxy_sq0_n_97;
  wire Gxy_sq0_n_98;
  wire Gxy_sq0_n_99;
  wire [20:0]Gxy_sq__0;
  wire [9:0]Gy_data0;
  wire Gy_data2;
  wire Gy_data2_carry__0_i_1_n_0;
  wire Gy_data2_carry__0_i_2_n_0;
  wire Gy_data2_carry_i_1_n_0;
  wire Gy_data2_carry_i_2_n_0;
  wire Gy_data2_carry_i_3_n_0;
  wire Gy_data2_carry_i_4_n_0;
  wire Gy_data2_carry_i_5_n_0;
  wire Gy_data2_carry_i_6_n_0;
  wire Gy_data2_carry_i_7_n_0;
  wire Gy_data2_carry_i_8_n_0;
  wire Gy_data2_carry_n_0;
  wire Gy_data2_carry_n_1;
  wire Gy_data2_carry_n_2;
  wire Gy_data2_carry_n_3;
  wire \Gy_data_reg_n_0_[0] ;
  wire \Gy_data_reg_n_0_[1] ;
  wire \Gy_data_reg_n_0_[2] ;
  wire \Gy_data_reg_n_0_[3] ;
  wire \Gy_data_reg_n_0_[4] ;
  wire \Gy_data_reg_n_0_[5] ;
  wire \Gy_data_reg_n_0_[6] ;
  wire \Gy_data_reg_n_0_[7] ;
  wire \Gy_data_reg_n_0_[8] ;
  wire \Gy_data_reg_n_0_[9] ;
  wire [9:0]Gy_t1;
  wire Gy_t10__1_carry__0_i_1_n_0;
  wire Gy_t10__1_carry__0_i_2_n_0;
  wire Gy_t10__1_carry__0_i_3_n_0;
  wire Gy_t10__1_carry__0_i_4_n_0;
  wire Gy_t10__1_carry__0_i_5_n_0;
  wire Gy_t10__1_carry__0_i_6_n_0;
  wire Gy_t10__1_carry__0_i_7_n_0;
  wire Gy_t10__1_carry__0_i_8_n_0;
  wire Gy_t10__1_carry__0_n_0;
  wire Gy_t10__1_carry__0_n_1;
  wire Gy_t10__1_carry__0_n_2;
  wire Gy_t10__1_carry__0_n_3;
  wire Gy_t10__1_carry__0_n_4;
  wire Gy_t10__1_carry__0_n_5;
  wire Gy_t10__1_carry__0_n_6;
  wire Gy_t10__1_carry__0_n_7;
  wire Gy_t10__1_carry__1_i_1_n_0;
  wire Gy_t10__1_carry__1_n_2;
  wire Gy_t10__1_carry__1_n_7;
  wire Gy_t10__1_carry_i_1_n_0;
  wire Gy_t10__1_carry_i_2_n_0;
  wire Gy_t10__1_carry_i_3_n_0;
  wire Gy_t10__1_carry_i_4_n_0;
  wire Gy_t10__1_carry_i_5_n_0;
  wire Gy_t10__1_carry_i_6_n_0;
  wire Gy_t10__1_carry_n_0;
  wire Gy_t10__1_carry_n_1;
  wire Gy_t10__1_carry_n_2;
  wire Gy_t10__1_carry_n_3;
  wire Gy_t10__1_carry_n_4;
  wire Gy_t10__1_carry_n_5;
  wire Gy_t10__1_carry_n_6;
  wire Gy_t10__1_carry_n_7;
  wire [8:1]Gy_t12;
  wire [9:0]Gy_t2;
  wire Gy_t20__1_carry__0_i_1_n_0;
  wire Gy_t20__1_carry__0_i_2_n_0;
  wire Gy_t20__1_carry__0_i_3_n_0;
  wire Gy_t20__1_carry__0_i_4_n_0;
  wire Gy_t20__1_carry__0_i_5_n_0;
  wire Gy_t20__1_carry__0_i_6_n_0;
  wire Gy_t20__1_carry__0_i_7_n_0;
  wire Gy_t20__1_carry__0_i_8_n_0;
  wire Gy_t20__1_carry__0_n_0;
  wire Gy_t20__1_carry__0_n_1;
  wire Gy_t20__1_carry__0_n_2;
  wire Gy_t20__1_carry__0_n_3;
  wire Gy_t20__1_carry__0_n_4;
  wire Gy_t20__1_carry__0_n_5;
  wire Gy_t20__1_carry__0_n_6;
  wire Gy_t20__1_carry__0_n_7;
  wire Gy_t20__1_carry__1_i_1_n_0;
  wire Gy_t20__1_carry__1_n_2;
  wire Gy_t20__1_carry__1_n_7;
  wire Gy_t20__1_carry_i_1_n_0;
  wire Gy_t20__1_carry_i_2_n_0;
  wire Gy_t20__1_carry_i_3_n_0;
  wire Gy_t20__1_carry_i_4_n_0;
  wire Gy_t20__1_carry_i_5_n_0;
  wire Gy_t20__1_carry_i_6_n_0;
  wire Gy_t20__1_carry_n_0;
  wire Gy_t20__1_carry_n_1;
  wire Gy_t20__1_carry_n_2;
  wire Gy_t20__1_carry_n_3;
  wire Gy_t20__1_carry_n_4;
  wire Gy_t20__1_carry_n_5;
  wire Gy_t20__1_carry_n_6;
  wire Gy_t20__1_carry_n_7;
  wire [8:1]Gy_t22;
  wire [0:0]SR;
  wire \_inferred__3/i__carry__0_n_0 ;
  wire \_inferred__3/i__carry__0_n_1 ;
  wire \_inferred__3/i__carry__0_n_2 ;
  wire \_inferred__3/i__carry__0_n_3 ;
  wire \_inferred__3/i__carry__1_n_3 ;
  wire \_inferred__3/i__carry_n_0 ;
  wire \_inferred__3/i__carry_n_1 ;
  wire \_inferred__3/i__carry_n_2 ;
  wire \_inferred__3/i__carry_n_3 ;
  wire \_inferred__8/i__carry__0_n_0 ;
  wire \_inferred__8/i__carry__0_n_1 ;
  wire \_inferred__8/i__carry__0_n_2 ;
  wire \_inferred__8/i__carry__0_n_3 ;
  wire \_inferred__8/i__carry__1_n_3 ;
  wire \_inferred__8/i__carry_n_0 ;
  wire \_inferred__8/i__carry_n_1 ;
  wire \_inferred__8/i__carry_n_2 ;
  wire \_inferred__8/i__carry_n_3 ;
  wire clk_img;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire img_edge;
  wire img_edge_i_1_n_0;
  wire img_edge_i_2_n_0;
  wire img_edge_i_3_n_0;
  wire img_edge_i_4_n_0;
  wire img_en;
  wire [7:0]p11;
  wire [7:0]p13;
  wire [7:0]\p13_reg[7]_0 ;
  wire [7:0]p22;
  wire [7:0]p23;
  wire [7:0]\p23_reg[7]_0 ;
  wire [7:0]p31;
  wire [7:0]p33;
  wire s00_axi_aresetn;
  wire [3:0]NLW_Gx_data2_carry_O_UNCONNECTED;
  wire [3:1]NLW_Gx_data2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_Gx_data2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_Gx_t10__1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_Gx_t10__1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_Gx_t20__1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_Gx_t20__1_carry__1_O_UNCONNECTED;
  wire NLW_Gxy_sq_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gxy_sq_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gxy_sq_OVERFLOW_UNCONNECTED;
  wire NLW_Gxy_sq_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gxy_sq_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gxy_sq_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gxy_sq_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gxy_sq_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gxy_sq_CARRYOUT_UNCONNECTED;
  wire [47:21]NLW_Gxy_sq_P_UNCONNECTED;
  wire [47:0]NLW_Gxy_sq_PCOUT_UNCONNECTED;
  wire NLW_Gxy_sq0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Gxy_sq0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Gxy_sq0_OVERFLOW_UNCONNECTED;
  wire NLW_Gxy_sq0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Gxy_sq0_PATTERNDETECT_UNCONNECTED;
  wire NLW_Gxy_sq0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Gxy_sq0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Gxy_sq0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Gxy_sq0_CARRYOUT_UNCONNECTED;
  wire [47:20]NLW_Gxy_sq0_P_UNCONNECTED;
  wire [3:0]NLW_Gy_data2_carry_O_UNCONNECTED;
  wire [3:1]NLW_Gy_data2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_Gy_data2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_Gy_t10__1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_Gy_t10__1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_Gy_t20__1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_Gy_t20__1_carry__1_O_UNCONNECTED;
  wire [3:1]\NLW__inferred__3/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__3/i__carry__1_O_UNCONNECTED ;
  wire [3:1]\NLW__inferred__8/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW__inferred__8/i__carry__1_O_UNCONNECTED ;

  CARRY4 Gx_data2_carry
       (.CI(1'b0),
        .CO({Gx_data2_carry_n_0,Gx_data2_carry_n_1,Gx_data2_carry_n_2,Gx_data2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({Gx_data2_carry_i_1_n_0,Gx_data2_carry_i_2_n_0,Gx_data2_carry_i_3_n_0,Gx_data2_carry_i_4_n_0}),
        .O(NLW_Gx_data2_carry_O_UNCONNECTED[3:0]),
        .S({Gx_data2_carry_i_5_n_0,Gx_data2_carry_i_6_n_0,Gx_data2_carry_i_7_n_0,Gx_data2_carry_i_8_n_0}));
  CARRY4 Gx_data2_carry__0
       (.CI(Gx_data2_carry_n_0),
        .CO({NLW_Gx_data2_carry__0_CO_UNCONNECTED[3:1],Gx_data2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Gx_data2_carry__0_i_1_n_0}),
        .O(NLW_Gx_data2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,Gx_data2_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    Gx_data2_carry__0_i_1
       (.I0(Gx_t1[8]),
        .I1(Gx_t2[8]),
        .I2(Gx_t2[9]),
        .I3(Gx_t1[9]),
        .O(Gx_data2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Gx_data2_carry__0_i_2
       (.I0(Gx_t1[8]),
        .I1(Gx_t2[8]),
        .I2(Gx_t1[9]),
        .I3(Gx_t2[9]),
        .O(Gx_data2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    Gx_data2_carry_i_1
       (.I0(Gx_t1[6]),
        .I1(Gx_t2[6]),
        .I2(Gx_t2[7]),
        .I3(Gx_t1[7]),
        .O(Gx_data2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    Gx_data2_carry_i_2
       (.I0(Gx_t1[4]),
        .I1(Gx_t2[4]),
        .I2(Gx_t2[5]),
        .I3(Gx_t1[5]),
        .O(Gx_data2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    Gx_data2_carry_i_3
       (.I0(Gx_t1[2]),
        .I1(Gx_t2[2]),
        .I2(Gx_t2[3]),
        .I3(Gx_t1[3]),
        .O(Gx_data2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    Gx_data2_carry_i_4
       (.I0(Gx_t1[0]),
        .I1(Gx_t2[0]),
        .I2(Gx_t2[1]),
        .I3(Gx_t1[1]),
        .O(Gx_data2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Gx_data2_carry_i_5
       (.I0(Gx_t1[6]),
        .I1(Gx_t2[6]),
        .I2(Gx_t1[7]),
        .I3(Gx_t2[7]),
        .O(Gx_data2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Gx_data2_carry_i_6
       (.I0(Gx_t1[4]),
        .I1(Gx_t2[4]),
        .I2(Gx_t1[5]),
        .I3(Gx_t2[5]),
        .O(Gx_data2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Gx_data2_carry_i_7
       (.I0(Gx_t1[2]),
        .I1(Gx_t2[2]),
        .I2(Gx_t1[3]),
        .I3(Gx_t2[3]),
        .O(Gx_data2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Gx_data2_carry_i_8
       (.I0(Gx_t1[0]),
        .I1(Gx_t2[0]),
        .I2(Gx_t1[1]),
        .I3(Gx_t2[1]),
        .O(Gx_data2_carry_i_8_n_0));
  FDCE \Gx_data_reg[0] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_data0[0]),
        .Q(A[0]));
  FDCE \Gx_data_reg[1] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_data0[1]),
        .Q(A[1]));
  FDCE \Gx_data_reg[2] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_data0[2]),
        .Q(A[2]));
  FDCE \Gx_data_reg[3] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_data0[3]),
        .Q(A[3]));
  FDCE \Gx_data_reg[4] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_data0[4]),
        .Q(A[4]));
  FDCE \Gx_data_reg[5] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_data0[5]),
        .Q(A[5]));
  FDCE \Gx_data_reg[6] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_data0[6]),
        .Q(A[6]));
  FDCE \Gx_data_reg[7] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_data0[7]),
        .Q(A[7]));
  FDCE \Gx_data_reg[8] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_data0[8]),
        .Q(A[8]));
  FDCE \Gx_data_reg[9] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_data0[9]),
        .Q(A[9]));
  CARRY4 Gx_t10__1_carry
       (.CI(1'b0),
        .CO({Gx_t10__1_carry_n_0,Gx_t10__1_carry_n_1,Gx_t10__1_carry_n_2,Gx_t10__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Gx_t10__1_carry_i_1_n_0,Gx_t10__1_carry_i_2_n_0,p13[1:0]}),
        .O({Gx_t10__1_carry_n_4,Gx_t10__1_carry_n_5,Gx_t10__1_carry_n_6,Gx_t10__1_carry_n_7}),
        .S({Gx_t10__1_carry_i_3_n_0,Gx_t10__1_carry_i_4_n_0,Gx_t10__1_carry_i_5_n_0,Gx_t10__1_carry_i_6_n_0}));
  CARRY4 Gx_t10__1_carry__0
       (.CI(Gx_t10__1_carry_n_0),
        .CO({Gx_t10__1_carry__0_n_0,Gx_t10__1_carry__0_n_1,Gx_t10__1_carry__0_n_2,Gx_t10__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Gx_t10__1_carry__0_i_1_n_0,Gx_t10__1_carry__0_i_2_n_0,Gx_t10__1_carry__0_i_3_n_0,Gx_t10__1_carry__0_i_4_n_0}),
        .O({Gx_t10__1_carry__0_n_4,Gx_t10__1_carry__0_n_5,Gx_t10__1_carry__0_n_6,Gx_t10__1_carry__0_n_7}),
        .S({Gx_t10__1_carry__0_i_5_n_0,Gx_t10__1_carry__0_i_6_n_0,Gx_t10__1_carry__0_i_7_n_0,Gx_t10__1_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gx_t10__1_carry__0_i_1
       (.I0(Gx_t12[6]),
        .I1(p33[6]),
        .I2(p13[6]),
        .O(Gx_t10__1_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gx_t10__1_carry__0_i_2
       (.I0(Gx_t12[5]),
        .I1(p33[5]),
        .I2(p13[5]),
        .O(Gx_t10__1_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gx_t10__1_carry__0_i_3
       (.I0(Gx_t12[4]),
        .I1(p33[4]),
        .I2(p13[4]),
        .O(Gx_t10__1_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gx_t10__1_carry__0_i_4
       (.I0(Gx_t12[3]),
        .I1(p33[3]),
        .I2(p13[3]),
        .O(Gx_t10__1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Gx_t10__1_carry__0_i_5
       (.I0(Gx_t10__1_carry__0_i_1_n_0),
        .I1(p33[7]),
        .I2(Gx_t12[7]),
        .I3(p13[7]),
        .O(Gx_t10__1_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gx_t10__1_carry__0_i_6
       (.I0(Gx_t12[6]),
        .I1(p33[6]),
        .I2(p13[6]),
        .I3(Gx_t10__1_carry__0_i_2_n_0),
        .O(Gx_t10__1_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gx_t10__1_carry__0_i_7
       (.I0(Gx_t12[5]),
        .I1(p33[5]),
        .I2(p13[5]),
        .I3(Gx_t10__1_carry__0_i_3_n_0),
        .O(Gx_t10__1_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gx_t10__1_carry__0_i_8
       (.I0(Gx_t12[4]),
        .I1(p33[4]),
        .I2(p13[4]),
        .I3(Gx_t10__1_carry__0_i_4_n_0),
        .O(Gx_t10__1_carry__0_i_8_n_0));
  CARRY4 Gx_t10__1_carry__1
       (.CI(Gx_t10__1_carry__0_n_0),
        .CO({NLW_Gx_t10__1_carry__1_CO_UNCONNECTED[3:2],Gx_t10__1_carry__1_n_2,NLW_Gx_t10__1_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Gx_t12[8]}),
        .O({NLW_Gx_t10__1_carry__1_O_UNCONNECTED[3:1],Gx_t10__1_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,Gx_t10__1_carry__1_i_1_n_0}));
  LUT4 #(
    .INIT(16'h17E8)) 
    Gx_t10__1_carry__1_i_1
       (.I0(p13[7]),
        .I1(p33[7]),
        .I2(Gx_t12[7]),
        .I3(Gx_t12[8]),
        .O(Gx_t10__1_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gx_t10__1_carry_i_1
       (.I0(Gx_t12[2]),
        .I1(p33[2]),
        .I2(p13[2]),
        .O(Gx_t10__1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Gx_t10__1_carry_i_2
       (.I0(p13[2]),
        .I1(Gx_t12[2]),
        .I2(p33[2]),
        .O(Gx_t10__1_carry_i_2_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gx_t10__1_carry_i_3
       (.I0(Gx_t12[3]),
        .I1(p33[3]),
        .I2(p13[3]),
        .I3(Gx_t10__1_carry_i_1_n_0),
        .O(Gx_t10__1_carry_i_3_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    Gx_t10__1_carry_i_4
       (.I0(Gx_t12[2]),
        .I1(p33[2]),
        .I2(p13[2]),
        .I3(p33[1]),
        .I4(Gx_t12[1]),
        .O(Gx_t10__1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Gx_t10__1_carry_i_5
       (.I0(Gx_t12[1]),
        .I1(p33[1]),
        .I2(p13[1]),
        .O(Gx_t10__1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gx_t10__1_carry_i_6
       (.I0(p13[0]),
        .I1(p33[0]),
        .O(Gx_t10__1_carry_i_6_n_0));
  FDCE \Gx_t1_reg[0] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t10__1_carry_n_7),
        .Q(Gx_t1[0]));
  FDCE \Gx_t1_reg[1] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t10__1_carry_n_6),
        .Q(Gx_t1[1]));
  FDCE \Gx_t1_reg[2] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t10__1_carry_n_5),
        .Q(Gx_t1[2]));
  FDCE \Gx_t1_reg[3] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t10__1_carry_n_4),
        .Q(Gx_t1[3]));
  FDCE \Gx_t1_reg[4] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t10__1_carry__0_n_7),
        .Q(Gx_t1[4]));
  FDCE \Gx_t1_reg[5] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t10__1_carry__0_n_6),
        .Q(Gx_t1[5]));
  FDCE \Gx_t1_reg[6] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t10__1_carry__0_n_5),
        .Q(Gx_t1[6]));
  FDCE \Gx_t1_reg[7] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t10__1_carry__0_n_4),
        .Q(Gx_t1[7]));
  FDCE \Gx_t1_reg[8] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t10__1_carry__1_n_7),
        .Q(Gx_t1[8]));
  FDCE \Gx_t1_reg[9] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t10__1_carry__1_n_2),
        .Q(Gx_t1[9]));
  CARRY4 Gx_t20__1_carry
       (.CI(1'b0),
        .CO({Gx_t20__1_carry_n_0,Gx_t20__1_carry_n_1,Gx_t20__1_carry_n_2,Gx_t20__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Gx_t20__1_carry_i_1_n_0,Gx_t20__1_carry_i_2_n_0,p11[1:0]}),
        .O({Gx_t20__1_carry_n_4,Gx_t20__1_carry_n_5,Gx_t20__1_carry_n_6,Gx_t20__1_carry_n_7}),
        .S({Gx_t20__1_carry_i_3_n_0,Gx_t20__1_carry_i_4_n_0,Gx_t20__1_carry_i_5_n_0,Gx_t20__1_carry_i_6_n_0}));
  CARRY4 Gx_t20__1_carry__0
       (.CI(Gx_t20__1_carry_n_0),
        .CO({Gx_t20__1_carry__0_n_0,Gx_t20__1_carry__0_n_1,Gx_t20__1_carry__0_n_2,Gx_t20__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Gx_t20__1_carry__0_i_1_n_0,Gx_t20__1_carry__0_i_2_n_0,Gx_t20__1_carry__0_i_3_n_0,Gx_t20__1_carry__0_i_4_n_0}),
        .O({Gx_t20__1_carry__0_n_4,Gx_t20__1_carry__0_n_5,Gx_t20__1_carry__0_n_6,Gx_t20__1_carry__0_n_7}),
        .S({Gx_t20__1_carry__0_i_5_n_0,Gx_t20__1_carry__0_i_6_n_0,Gx_t20__1_carry__0_i_7_n_0,Gx_t20__1_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gx_t20__1_carry__0_i_1
       (.I0(Gx_t12[6]),
        .I1(p31[6]),
        .I2(p11[6]),
        .O(Gx_t20__1_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gx_t20__1_carry__0_i_2
       (.I0(Gx_t12[5]),
        .I1(p31[5]),
        .I2(p11[5]),
        .O(Gx_t20__1_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gx_t20__1_carry__0_i_3
       (.I0(Gx_t12[4]),
        .I1(p31[4]),
        .I2(p11[4]),
        .O(Gx_t20__1_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gx_t20__1_carry__0_i_4
       (.I0(Gx_t12[3]),
        .I1(p31[3]),
        .I2(p11[3]),
        .O(Gx_t20__1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Gx_t20__1_carry__0_i_5
       (.I0(Gx_t20__1_carry__0_i_1_n_0),
        .I1(p31[7]),
        .I2(Gx_t12[7]),
        .I3(p11[7]),
        .O(Gx_t20__1_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gx_t20__1_carry__0_i_6
       (.I0(Gx_t12[6]),
        .I1(p31[6]),
        .I2(p11[6]),
        .I3(Gx_t20__1_carry__0_i_2_n_0),
        .O(Gx_t20__1_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gx_t20__1_carry__0_i_7
       (.I0(Gx_t12[5]),
        .I1(p31[5]),
        .I2(p11[5]),
        .I3(Gx_t20__1_carry__0_i_3_n_0),
        .O(Gx_t20__1_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gx_t20__1_carry__0_i_8
       (.I0(Gx_t12[4]),
        .I1(p31[4]),
        .I2(p11[4]),
        .I3(Gx_t20__1_carry__0_i_4_n_0),
        .O(Gx_t20__1_carry__0_i_8_n_0));
  CARRY4 Gx_t20__1_carry__1
       (.CI(Gx_t20__1_carry__0_n_0),
        .CO({NLW_Gx_t20__1_carry__1_CO_UNCONNECTED[3:2],Gx_t20__1_carry__1_n_2,NLW_Gx_t20__1_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Gx_t12[8]}),
        .O({NLW_Gx_t20__1_carry__1_O_UNCONNECTED[3:1],Gx_t20__1_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,Gx_t20__1_carry__1_i_1_n_0}));
  LUT4 #(
    .INIT(16'h17E8)) 
    Gx_t20__1_carry__1_i_1
       (.I0(p11[7]),
        .I1(p31[7]),
        .I2(Gx_t12[7]),
        .I3(Gx_t12[8]),
        .O(Gx_t20__1_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gx_t20__1_carry_i_1
       (.I0(Gx_t12[2]),
        .I1(p31[2]),
        .I2(p11[2]),
        .O(Gx_t20__1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Gx_t20__1_carry_i_2
       (.I0(p11[2]),
        .I1(Gx_t12[2]),
        .I2(p31[2]),
        .O(Gx_t20__1_carry_i_2_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gx_t20__1_carry_i_3
       (.I0(Gx_t12[3]),
        .I1(p31[3]),
        .I2(p11[3]),
        .I3(Gx_t20__1_carry_i_1_n_0),
        .O(Gx_t20__1_carry_i_3_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    Gx_t20__1_carry_i_4
       (.I0(Gx_t12[2]),
        .I1(p31[2]),
        .I2(p11[2]),
        .I3(p31[1]),
        .I4(Gx_t12[1]),
        .O(Gx_t20__1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Gx_t20__1_carry_i_5
       (.I0(Gx_t12[1]),
        .I1(p31[1]),
        .I2(p11[1]),
        .O(Gx_t20__1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gx_t20__1_carry_i_6
       (.I0(p11[0]),
        .I1(p31[0]),
        .O(Gx_t20__1_carry_i_6_n_0));
  FDCE \Gx_t2_reg[0] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t20__1_carry_n_7),
        .Q(Gx_t2[0]));
  FDCE \Gx_t2_reg[1] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t20__1_carry_n_6),
        .Q(Gx_t2[1]));
  FDCE \Gx_t2_reg[2] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t20__1_carry_n_5),
        .Q(Gx_t2[2]));
  FDCE \Gx_t2_reg[3] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t20__1_carry_n_4),
        .Q(Gx_t2[3]));
  FDCE \Gx_t2_reg[4] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t20__1_carry__0_n_7),
        .Q(Gx_t2[4]));
  FDCE \Gx_t2_reg[5] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t20__1_carry__0_n_6),
        .Q(Gx_t2[5]));
  FDCE \Gx_t2_reg[6] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t20__1_carry__0_n_5),
        .Q(Gx_t2[6]));
  FDCE \Gx_t2_reg[7] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t20__1_carry__0_n_4),
        .Q(Gx_t2[7]));
  FDCE \Gx_t2_reg[8] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t20__1_carry__1_n_7),
        .Q(Gx_t2[8]));
  FDCE \Gx_t2_reg[9] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gx_t20__1_carry__1_n_2),
        .Q(Gx_t2[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Gxy_sq
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\Gy_data_reg_n_0_[9] ,\Gy_data_reg_n_0_[8] ,\Gy_data_reg_n_0_[7] ,\Gy_data_reg_n_0_[6] ,\Gy_data_reg_n_0_[5] ,\Gy_data_reg_n_0_[4] ,\Gy_data_reg_n_0_[3] ,\Gy_data_reg_n_0_[2] ,\Gy_data_reg_n_0_[1] ,\Gy_data_reg_n_0_[0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gxy_sq_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\Gy_data_reg_n_0_[9] ,\Gy_data_reg_n_0_[8] ,\Gy_data_reg_n_0_[7] ,\Gy_data_reg_n_0_[6] ,\Gy_data_reg_n_0_[5] ,\Gy_data_reg_n_0_[4] ,\Gy_data_reg_n_0_[3] ,\Gy_data_reg_n_0_[2] ,\Gy_data_reg_n_0_[1] ,\Gy_data_reg_n_0_[0] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gxy_sq_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gxy_sq_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gxy_sq_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Gxy_sq_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gxy_sq_OVERFLOW_UNCONNECTED),
        .P({NLW_Gxy_sq_P_UNCONNECTED[47:21],Gxy_sq__0}),
        .PATTERNBDETECT(NLW_Gxy_sq_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gxy_sq_PATTERNDETECT_UNCONNECTED),
        .PCIN({Gxy_sq0_n_106,Gxy_sq0_n_107,Gxy_sq0_n_108,Gxy_sq0_n_109,Gxy_sq0_n_110,Gxy_sq0_n_111,Gxy_sq0_n_112,Gxy_sq0_n_113,Gxy_sq0_n_114,Gxy_sq0_n_115,Gxy_sq0_n_116,Gxy_sq0_n_117,Gxy_sq0_n_118,Gxy_sq0_n_119,Gxy_sq0_n_120,Gxy_sq0_n_121,Gxy_sq0_n_122,Gxy_sq0_n_123,Gxy_sq0_n_124,Gxy_sq0_n_125,Gxy_sq0_n_126,Gxy_sq0_n_127,Gxy_sq0_n_128,Gxy_sq0_n_129,Gxy_sq0_n_130,Gxy_sq0_n_131,Gxy_sq0_n_132,Gxy_sq0_n_133,Gxy_sq0_n_134,Gxy_sq0_n_135,Gxy_sq0_n_136,Gxy_sq0_n_137,Gxy_sq0_n_138,Gxy_sq0_n_139,Gxy_sq0_n_140,Gxy_sq0_n_141,Gxy_sq0_n_142,Gxy_sq0_n_143,Gxy_sq0_n_144,Gxy_sq0_n_145,Gxy_sq0_n_146,Gxy_sq0_n_147,Gxy_sq0_n_148,Gxy_sq0_n_149,Gxy_sq0_n_150,Gxy_sq0_n_151,Gxy_sq0_n_152,Gxy_sq0_n_153}),
        .PCOUT(NLW_Gxy_sq_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Gxy_sq_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Gxy_sq0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Gxy_sq0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Gxy_sq0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Gxy_sq0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Gxy_sq0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Gxy_sq0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Gxy_sq0_OVERFLOW_UNCONNECTED),
        .P({NLW_Gxy_sq0_P_UNCONNECTED[47:20],Gxy_sq0_n_86,Gxy_sq0_n_87,Gxy_sq0_n_88,Gxy_sq0_n_89,Gxy_sq0_n_90,Gxy_sq0_n_91,Gxy_sq0_n_92,Gxy_sq0_n_93,Gxy_sq0_n_94,Gxy_sq0_n_95,Gxy_sq0_n_96,Gxy_sq0_n_97,Gxy_sq0_n_98,Gxy_sq0_n_99,Gxy_sq0_n_100,Gxy_sq0_n_101,Gxy_sq0_n_102,Gxy_sq0_n_103,Gxy_sq0_n_104,Gxy_sq0_n_105}),
        .PATTERNBDETECT(NLW_Gxy_sq0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Gxy_sq0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({Gxy_sq0_n_106,Gxy_sq0_n_107,Gxy_sq0_n_108,Gxy_sq0_n_109,Gxy_sq0_n_110,Gxy_sq0_n_111,Gxy_sq0_n_112,Gxy_sq0_n_113,Gxy_sq0_n_114,Gxy_sq0_n_115,Gxy_sq0_n_116,Gxy_sq0_n_117,Gxy_sq0_n_118,Gxy_sq0_n_119,Gxy_sq0_n_120,Gxy_sq0_n_121,Gxy_sq0_n_122,Gxy_sq0_n_123,Gxy_sq0_n_124,Gxy_sq0_n_125,Gxy_sq0_n_126,Gxy_sq0_n_127,Gxy_sq0_n_128,Gxy_sq0_n_129,Gxy_sq0_n_130,Gxy_sq0_n_131,Gxy_sq0_n_132,Gxy_sq0_n_133,Gxy_sq0_n_134,Gxy_sq0_n_135,Gxy_sq0_n_136,Gxy_sq0_n_137,Gxy_sq0_n_138,Gxy_sq0_n_139,Gxy_sq0_n_140,Gxy_sq0_n_141,Gxy_sq0_n_142,Gxy_sq0_n_143,Gxy_sq0_n_144,Gxy_sq0_n_145,Gxy_sq0_n_146,Gxy_sq0_n_147,Gxy_sq0_n_148,Gxy_sq0_n_149,Gxy_sq0_n_150,Gxy_sq0_n_151,Gxy_sq0_n_152,Gxy_sq0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Gxy_sq0_UNDERFLOW_UNCONNECTED));
  CARRY4 Gy_data2_carry
       (.CI(1'b0),
        .CO({Gy_data2_carry_n_0,Gy_data2_carry_n_1,Gy_data2_carry_n_2,Gy_data2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({Gy_data2_carry_i_1_n_0,Gy_data2_carry_i_2_n_0,Gy_data2_carry_i_3_n_0,Gy_data2_carry_i_4_n_0}),
        .O(NLW_Gy_data2_carry_O_UNCONNECTED[3:0]),
        .S({Gy_data2_carry_i_5_n_0,Gy_data2_carry_i_6_n_0,Gy_data2_carry_i_7_n_0,Gy_data2_carry_i_8_n_0}));
  CARRY4 Gy_data2_carry__0
       (.CI(Gy_data2_carry_n_0),
        .CO({NLW_Gy_data2_carry__0_CO_UNCONNECTED[3:1],Gy_data2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Gy_data2_carry__0_i_1_n_0}),
        .O(NLW_Gy_data2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,Gy_data2_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    Gy_data2_carry__0_i_1
       (.I0(Gy_t1[8]),
        .I1(Gy_t2[8]),
        .I2(Gy_t2[9]),
        .I3(Gy_t1[9]),
        .O(Gy_data2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Gy_data2_carry__0_i_2
       (.I0(Gy_t1[8]),
        .I1(Gy_t2[8]),
        .I2(Gy_t1[9]),
        .I3(Gy_t2[9]),
        .O(Gy_data2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    Gy_data2_carry_i_1
       (.I0(Gy_t1[6]),
        .I1(Gy_t2[6]),
        .I2(Gy_t2[7]),
        .I3(Gy_t1[7]),
        .O(Gy_data2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    Gy_data2_carry_i_2
       (.I0(Gy_t1[4]),
        .I1(Gy_t2[4]),
        .I2(Gy_t2[5]),
        .I3(Gy_t1[5]),
        .O(Gy_data2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    Gy_data2_carry_i_3
       (.I0(Gy_t1[2]),
        .I1(Gy_t2[2]),
        .I2(Gy_t2[3]),
        .I3(Gy_t1[3]),
        .O(Gy_data2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    Gy_data2_carry_i_4
       (.I0(Gy_t1[0]),
        .I1(Gy_t2[0]),
        .I2(Gy_t2[1]),
        .I3(Gy_t1[1]),
        .O(Gy_data2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Gy_data2_carry_i_5
       (.I0(Gy_t1[6]),
        .I1(Gy_t2[6]),
        .I2(Gy_t1[7]),
        .I3(Gy_t2[7]),
        .O(Gy_data2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Gy_data2_carry_i_6
       (.I0(Gy_t1[4]),
        .I1(Gy_t2[4]),
        .I2(Gy_t1[5]),
        .I3(Gy_t2[5]),
        .O(Gy_data2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Gy_data2_carry_i_7
       (.I0(Gy_t1[2]),
        .I1(Gy_t2[2]),
        .I2(Gy_t1[3]),
        .I3(Gy_t2[3]),
        .O(Gy_data2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Gy_data2_carry_i_8
       (.I0(Gy_t1[0]),
        .I1(Gy_t2[0]),
        .I2(Gy_t1[1]),
        .I3(Gy_t2[1]),
        .O(Gy_data2_carry_i_8_n_0));
  FDCE \Gy_data_reg[0] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_data0[0]),
        .Q(\Gy_data_reg_n_0_[0] ));
  FDCE \Gy_data_reg[1] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_data0[1]),
        .Q(\Gy_data_reg_n_0_[1] ));
  FDCE \Gy_data_reg[2] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_data0[2]),
        .Q(\Gy_data_reg_n_0_[2] ));
  FDCE \Gy_data_reg[3] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_data0[3]),
        .Q(\Gy_data_reg_n_0_[3] ));
  FDCE \Gy_data_reg[4] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_data0[4]),
        .Q(\Gy_data_reg_n_0_[4] ));
  FDCE \Gy_data_reg[5] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_data0[5]),
        .Q(\Gy_data_reg_n_0_[5] ));
  FDCE \Gy_data_reg[6] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_data0[6]),
        .Q(\Gy_data_reg_n_0_[6] ));
  FDCE \Gy_data_reg[7] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_data0[7]),
        .Q(\Gy_data_reg_n_0_[7] ));
  FDCE \Gy_data_reg[8] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_data0[8]),
        .Q(\Gy_data_reg_n_0_[8] ));
  FDCE \Gy_data_reg[9] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_data0[9]),
        .Q(\Gy_data_reg_n_0_[9] ));
  CARRY4 Gy_t10__1_carry
       (.CI(1'b0),
        .CO({Gy_t10__1_carry_n_0,Gy_t10__1_carry_n_1,Gy_t10__1_carry_n_2,Gy_t10__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Gy_t10__1_carry_i_1_n_0,Gy_t10__1_carry_i_2_n_0,p11[1:0]}),
        .O({Gy_t10__1_carry_n_4,Gy_t10__1_carry_n_5,Gy_t10__1_carry_n_6,Gy_t10__1_carry_n_7}),
        .S({Gy_t10__1_carry_i_3_n_0,Gy_t10__1_carry_i_4_n_0,Gy_t10__1_carry_i_5_n_0,Gy_t10__1_carry_i_6_n_0}));
  CARRY4 Gy_t10__1_carry__0
       (.CI(Gy_t10__1_carry_n_0),
        .CO({Gy_t10__1_carry__0_n_0,Gy_t10__1_carry__0_n_1,Gy_t10__1_carry__0_n_2,Gy_t10__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Gy_t10__1_carry__0_i_1_n_0,Gy_t10__1_carry__0_i_2_n_0,Gy_t10__1_carry__0_i_3_n_0,Gy_t10__1_carry__0_i_4_n_0}),
        .O({Gy_t10__1_carry__0_n_4,Gy_t10__1_carry__0_n_5,Gy_t10__1_carry__0_n_6,Gy_t10__1_carry__0_n_7}),
        .S({Gy_t10__1_carry__0_i_5_n_0,Gy_t10__1_carry__0_i_6_n_0,Gy_t10__1_carry__0_i_7_n_0,Gy_t10__1_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gy_t10__1_carry__0_i_1
       (.I0(Gy_t12[6]),
        .I1(p13[6]),
        .I2(p11[6]),
        .O(Gy_t10__1_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gy_t10__1_carry__0_i_2
       (.I0(Gy_t12[5]),
        .I1(p13[5]),
        .I2(p11[5]),
        .O(Gy_t10__1_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gy_t10__1_carry__0_i_3
       (.I0(Gy_t12[4]),
        .I1(p13[4]),
        .I2(p11[4]),
        .O(Gy_t10__1_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gy_t10__1_carry__0_i_4
       (.I0(Gy_t12[3]),
        .I1(p13[3]),
        .I2(p11[3]),
        .O(Gy_t10__1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Gy_t10__1_carry__0_i_5
       (.I0(Gy_t10__1_carry__0_i_1_n_0),
        .I1(p13[7]),
        .I2(Gy_t12[7]),
        .I3(p11[7]),
        .O(Gy_t10__1_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gy_t10__1_carry__0_i_6
       (.I0(Gy_t12[6]),
        .I1(p13[6]),
        .I2(p11[6]),
        .I3(Gy_t10__1_carry__0_i_2_n_0),
        .O(Gy_t10__1_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gy_t10__1_carry__0_i_7
       (.I0(Gy_t12[5]),
        .I1(p13[5]),
        .I2(p11[5]),
        .I3(Gy_t10__1_carry__0_i_3_n_0),
        .O(Gy_t10__1_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gy_t10__1_carry__0_i_8
       (.I0(Gy_t12[4]),
        .I1(p13[4]),
        .I2(p11[4]),
        .I3(Gy_t10__1_carry__0_i_4_n_0),
        .O(Gy_t10__1_carry__0_i_8_n_0));
  CARRY4 Gy_t10__1_carry__1
       (.CI(Gy_t10__1_carry__0_n_0),
        .CO({NLW_Gy_t10__1_carry__1_CO_UNCONNECTED[3:2],Gy_t10__1_carry__1_n_2,NLW_Gy_t10__1_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Gy_t12[8]}),
        .O({NLW_Gy_t10__1_carry__1_O_UNCONNECTED[3:1],Gy_t10__1_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,Gy_t10__1_carry__1_i_1_n_0}));
  LUT4 #(
    .INIT(16'h17E8)) 
    Gy_t10__1_carry__1_i_1
       (.I0(p11[7]),
        .I1(p13[7]),
        .I2(Gy_t12[7]),
        .I3(Gy_t12[8]),
        .O(Gy_t10__1_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gy_t10__1_carry_i_1
       (.I0(Gy_t12[2]),
        .I1(p13[2]),
        .I2(p11[2]),
        .O(Gy_t10__1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Gy_t10__1_carry_i_2
       (.I0(p11[2]),
        .I1(Gy_t12[2]),
        .I2(p13[2]),
        .O(Gy_t10__1_carry_i_2_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gy_t10__1_carry_i_3
       (.I0(Gy_t12[3]),
        .I1(p13[3]),
        .I2(p11[3]),
        .I3(Gy_t10__1_carry_i_1_n_0),
        .O(Gy_t10__1_carry_i_3_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    Gy_t10__1_carry_i_4
       (.I0(Gy_t12[2]),
        .I1(p13[2]),
        .I2(p11[2]),
        .I3(p13[1]),
        .I4(Gy_t12[1]),
        .O(Gy_t10__1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Gy_t10__1_carry_i_5
       (.I0(Gy_t12[1]),
        .I1(p13[1]),
        .I2(p11[1]),
        .O(Gy_t10__1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gy_t10__1_carry_i_6
       (.I0(p11[0]),
        .I1(p13[0]),
        .O(Gy_t10__1_carry_i_6_n_0));
  FDCE \Gy_t1_reg[0] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t10__1_carry_n_7),
        .Q(Gy_t1[0]));
  FDCE \Gy_t1_reg[1] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t10__1_carry_n_6),
        .Q(Gy_t1[1]));
  FDCE \Gy_t1_reg[2] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t10__1_carry_n_5),
        .Q(Gy_t1[2]));
  FDCE \Gy_t1_reg[3] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t10__1_carry_n_4),
        .Q(Gy_t1[3]));
  FDCE \Gy_t1_reg[4] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t10__1_carry__0_n_7),
        .Q(Gy_t1[4]));
  FDCE \Gy_t1_reg[5] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t10__1_carry__0_n_6),
        .Q(Gy_t1[5]));
  FDCE \Gy_t1_reg[6] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t10__1_carry__0_n_5),
        .Q(Gy_t1[6]));
  FDCE \Gy_t1_reg[7] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t10__1_carry__0_n_4),
        .Q(Gy_t1[7]));
  FDCE \Gy_t1_reg[8] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t10__1_carry__1_n_7),
        .Q(Gy_t1[8]));
  FDCE \Gy_t1_reg[9] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t10__1_carry__1_n_2),
        .Q(Gy_t1[9]));
  CARRY4 Gy_t20__1_carry
       (.CI(1'b0),
        .CO({Gy_t20__1_carry_n_0,Gy_t20__1_carry_n_1,Gy_t20__1_carry_n_2,Gy_t20__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({Gy_t20__1_carry_i_1_n_0,Gy_t20__1_carry_i_2_n_0,p31[1:0]}),
        .O({Gy_t20__1_carry_n_4,Gy_t20__1_carry_n_5,Gy_t20__1_carry_n_6,Gy_t20__1_carry_n_7}),
        .S({Gy_t20__1_carry_i_3_n_0,Gy_t20__1_carry_i_4_n_0,Gy_t20__1_carry_i_5_n_0,Gy_t20__1_carry_i_6_n_0}));
  CARRY4 Gy_t20__1_carry__0
       (.CI(Gy_t20__1_carry_n_0),
        .CO({Gy_t20__1_carry__0_n_0,Gy_t20__1_carry__0_n_1,Gy_t20__1_carry__0_n_2,Gy_t20__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Gy_t20__1_carry__0_i_1_n_0,Gy_t20__1_carry__0_i_2_n_0,Gy_t20__1_carry__0_i_3_n_0,Gy_t20__1_carry__0_i_4_n_0}),
        .O({Gy_t20__1_carry__0_n_4,Gy_t20__1_carry__0_n_5,Gy_t20__1_carry__0_n_6,Gy_t20__1_carry__0_n_7}),
        .S({Gy_t20__1_carry__0_i_5_n_0,Gy_t20__1_carry__0_i_6_n_0,Gy_t20__1_carry__0_i_7_n_0,Gy_t20__1_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gy_t20__1_carry__0_i_1
       (.I0(Gy_t22[6]),
        .I1(p33[6]),
        .I2(p31[6]),
        .O(Gy_t20__1_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gy_t20__1_carry__0_i_2
       (.I0(Gy_t22[5]),
        .I1(p33[5]),
        .I2(p31[5]),
        .O(Gy_t20__1_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gy_t20__1_carry__0_i_3
       (.I0(Gy_t22[4]),
        .I1(p33[4]),
        .I2(p31[4]),
        .O(Gy_t20__1_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gy_t20__1_carry__0_i_4
       (.I0(Gy_t22[3]),
        .I1(p33[3]),
        .I2(p31[3]),
        .O(Gy_t20__1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    Gy_t20__1_carry__0_i_5
       (.I0(Gy_t20__1_carry__0_i_1_n_0),
        .I1(p33[7]),
        .I2(Gy_t22[7]),
        .I3(p31[7]),
        .O(Gy_t20__1_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gy_t20__1_carry__0_i_6
       (.I0(Gy_t22[6]),
        .I1(p33[6]),
        .I2(p31[6]),
        .I3(Gy_t20__1_carry__0_i_2_n_0),
        .O(Gy_t20__1_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gy_t20__1_carry__0_i_7
       (.I0(Gy_t22[5]),
        .I1(p33[5]),
        .I2(p31[5]),
        .I3(Gy_t20__1_carry__0_i_3_n_0),
        .O(Gy_t20__1_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gy_t20__1_carry__0_i_8
       (.I0(Gy_t22[4]),
        .I1(p33[4]),
        .I2(p31[4]),
        .I3(Gy_t20__1_carry__0_i_4_n_0),
        .O(Gy_t20__1_carry__0_i_8_n_0));
  CARRY4 Gy_t20__1_carry__1
       (.CI(Gy_t20__1_carry__0_n_0),
        .CO({NLW_Gy_t20__1_carry__1_CO_UNCONNECTED[3:2],Gy_t20__1_carry__1_n_2,NLW_Gy_t20__1_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Gy_t22[8]}),
        .O({NLW_Gy_t20__1_carry__1_O_UNCONNECTED[3:1],Gy_t20__1_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,Gy_t20__1_carry__1_i_1_n_0}));
  LUT4 #(
    .INIT(16'h17E8)) 
    Gy_t20__1_carry__1_i_1
       (.I0(p31[7]),
        .I1(p33[7]),
        .I2(Gy_t22[7]),
        .I3(Gy_t22[8]),
        .O(Gy_t20__1_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Gy_t20__1_carry_i_1
       (.I0(Gy_t22[2]),
        .I1(p33[2]),
        .I2(p31[2]),
        .O(Gy_t20__1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Gy_t20__1_carry_i_2
       (.I0(p31[2]),
        .I1(Gy_t22[2]),
        .I2(p33[2]),
        .O(Gy_t20__1_carry_i_2_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    Gy_t20__1_carry_i_3
       (.I0(Gy_t22[3]),
        .I1(p33[3]),
        .I2(p31[3]),
        .I3(Gy_t20__1_carry_i_1_n_0),
        .O(Gy_t20__1_carry_i_3_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    Gy_t20__1_carry_i_4
       (.I0(Gy_t22[2]),
        .I1(p33[2]),
        .I2(p31[2]),
        .I3(p33[1]),
        .I4(Gy_t22[1]),
        .O(Gy_t20__1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    Gy_t20__1_carry_i_5
       (.I0(Gy_t22[1]),
        .I1(p33[1]),
        .I2(p31[1]),
        .O(Gy_t20__1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    Gy_t20__1_carry_i_6
       (.I0(p31[0]),
        .I1(p33[0]),
        .O(Gy_t20__1_carry_i_6_n_0));
  FDCE \Gy_t2_reg[0] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t20__1_carry_n_7),
        .Q(Gy_t2[0]));
  FDCE \Gy_t2_reg[1] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t20__1_carry_n_6),
        .Q(Gy_t2[1]));
  FDCE \Gy_t2_reg[2] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t20__1_carry_n_5),
        .Q(Gy_t2[2]));
  FDCE \Gy_t2_reg[3] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t20__1_carry_n_4),
        .Q(Gy_t2[3]));
  FDCE \Gy_t2_reg[4] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t20__1_carry__0_n_7),
        .Q(Gy_t2[4]));
  FDCE \Gy_t2_reg[5] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t20__1_carry__0_n_6),
        .Q(Gy_t2[5]));
  FDCE \Gy_t2_reg[6] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t20__1_carry__0_n_5),
        .Q(Gy_t2[6]));
  FDCE \Gy_t2_reg[7] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t20__1_carry__0_n_4),
        .Q(Gy_t2[7]));
  FDCE \Gy_t2_reg[8] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t20__1_carry__1_n_7),
        .Q(Gy_t2[8]));
  FDCE \Gy_t2_reg[9] 
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(Gy_t20__1_carry__1_n_2),
        .Q(Gy_t2[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__3/i__carry_n_0 ,\_inferred__3/i__carry_n_1 ,\_inferred__3/i__carry_n_2 ,\_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(Gy_data0[3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__3/i__carry__0 
       (.CI(\_inferred__3/i__carry_n_0 ),
        .CO({\_inferred__3/i__carry__0_n_0 ,\_inferred__3/i__carry__0_n_1 ,\_inferred__3/i__carry__0_n_2 ,\_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(Gy_data0[7:4]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__3/i__carry__1 
       (.CI(\_inferred__3/i__carry__0_n_0 ),
        .CO({\NLW__inferred__3/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__3/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__1_i_1_n_0}),
        .O({\NLW__inferred__3/i__carry__1_O_UNCONNECTED [3:2],Gy_data0[9:8]}),
        .S({1'b0,1'b0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__8/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__8/i__carry_n_0 ,\_inferred__8/i__carry_n_1 ,\_inferred__8/i__carry_n_2 ,\_inferred__8/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(Gx_data0[3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__8/i__carry__0 
       (.CI(\_inferred__8/i__carry_n_0 ),
        .CO({\_inferred__8/i__carry__0_n_0 ,\_inferred__8/i__carry__0_n_1 ,\_inferred__8/i__carry__0_n_2 ,\_inferred__8/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(Gx_data0[7:4]),
        .S({i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__8/i__carry__1 
       (.CI(\_inferred__8/i__carry__0_n_0 ),
        .CO({\NLW__inferred__8/i__carry__1_CO_UNCONNECTED [3:1],\_inferred__8/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__1_i_1__0_n_0}),
        .O({\NLW__inferred__8/i__carry__1_O_UNCONNECTED [3:2],Gx_data0[9:8]}),
        .S({1'b0,1'b0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \dinb[31]_i_2 
       (.I0(s00_axi_aresetn),
        .O(SR));
  (* CHECK_LICENSE_TYPE = "cordic_ip,cordic_v6_0_14,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "cordic_v6_0_14,Vivado 2018.3" *) 
  gly_0_cordic_ip genSq
       (.aclk(clk_img),
        .aresetn(s00_axi_aresetn),
        .m_axis_dout_tdata(DIM),
        .m_axis_dout_tvalid(DIM_VALID),
        .s_axis_cartesian_tdata({1'b0,1'b0,1'b0,Gxy_sq__0}),
        .s_axis_cartesian_tvalid(E));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__0_i_1
       (.I0(Gy_t2[7]),
        .I1(Gy_t1[7]),
        .I2(Gy_data2),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__0_i_1__0
       (.I0(Gx_t2[7]),
        .I1(Gx_t1[7]),
        .I2(Gx_data2),
        .O(i__carry__0_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__0_i_2
       (.I0(Gy_t2[6]),
        .I1(Gy_t1[6]),
        .I2(Gy_data2),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__0_i_2__0
       (.I0(Gx_t2[6]),
        .I1(Gx_t1[6]),
        .I2(Gx_data2),
        .O(i__carry__0_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__0_i_3
       (.I0(Gy_t2[5]),
        .I1(Gy_t1[5]),
        .I2(Gy_data2),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__0_i_3__0
       (.I0(Gx_t2[5]),
        .I1(Gx_t1[5]),
        .I2(Gx_data2),
        .O(i__carry__0_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__0_i_4
       (.I0(Gy_t2[4]),
        .I1(Gy_t1[4]),
        .I2(Gy_data2),
        .O(i__carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__0_i_4__0
       (.I0(Gx_t2[4]),
        .I1(Gx_t1[4]),
        .I2(Gx_data2),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_5
       (.I0(Gy_t2[7]),
        .I1(Gy_t1[7]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_5__0
       (.I0(Gx_t2[7]),
        .I1(Gx_t1[7]),
        .O(i__carry__0_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_6
       (.I0(Gy_t2[6]),
        .I1(Gy_t1[6]),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_6__0
       (.I0(Gx_t2[6]),
        .I1(Gx_t1[6]),
        .O(i__carry__0_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_7
       (.I0(Gy_t2[5]),
        .I1(Gy_t1[5]),
        .O(i__carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_7__0
       (.I0(Gx_t2[5]),
        .I1(Gx_t1[5]),
        .O(i__carry__0_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_8
       (.I0(Gy_t2[4]),
        .I1(Gy_t1[4]),
        .O(i__carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_8__0
       (.I0(Gx_t2[4]),
        .I1(Gx_t1[4]),
        .O(i__carry__0_i_8__0_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__1_i_1
       (.I0(Gy_t2[8]),
        .I1(Gy_t1[8]),
        .I2(Gy_data2),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry__1_i_1__0
       (.I0(Gx_t2[8]),
        .I1(Gx_t1[8]),
        .I2(Gx_data2),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(Gy_t2[9]),
        .I1(Gy_t1[9]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__0
       (.I0(Gx_t2[9]),
        .I1(Gx_t1[9]),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(Gy_t2[8]),
        .I1(Gy_t1[8]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3__0
       (.I0(Gx_t2[8]),
        .I1(Gx_t1[8]),
        .O(i__carry__1_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry_i_1
       (.I0(Gy_t2[3]),
        .I1(Gy_t1[3]),
        .I2(Gy_data2),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry_i_1__0
       (.I0(Gx_t2[3]),
        .I1(Gx_t1[3]),
        .I2(Gx_data2),
        .O(i__carry_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry_i_2
       (.I0(Gy_t2[2]),
        .I1(Gy_t1[2]),
        .I2(Gy_data2),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry_i_2__0
       (.I0(Gx_t2[2]),
        .I1(Gx_t1[2]),
        .I2(Gx_data2),
        .O(i__carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry_i_3
       (.I0(Gy_t2[1]),
        .I1(Gy_t1[1]),
        .I2(Gy_data2),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry_i_3__0
       (.I0(Gx_t2[1]),
        .I1(Gx_t1[1]),
        .I2(Gx_data2),
        .O(i__carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry_i_4
       (.I0(Gy_t2[0]),
        .I1(Gy_t1[0]),
        .I2(Gy_data2),
        .O(i__carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    i__carry_i_4__0
       (.I0(Gx_t2[0]),
        .I1(Gx_t1[0]),
        .I2(Gx_data2),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5
       (.I0(Gy_t2[3]),
        .I1(Gy_t1[3]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5__0
       (.I0(Gx_t2[3]),
        .I1(Gx_t1[3]),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_6
       (.I0(Gy_t2[2]),
        .I1(Gy_t1[2]),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_6__0
       (.I0(Gx_t2[2]),
        .I1(Gx_t1[2]),
        .O(i__carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_7
       (.I0(Gy_t2[1]),
        .I1(Gy_t1[1]),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_7__0
       (.I0(Gx_t2[1]),
        .I1(Gx_t1[1]),
        .O(i__carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_8
       (.I0(Gy_t2[0]),
        .I1(Gy_t1[0]),
        .O(i__carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_8__0
       (.I0(Gx_t2[0]),
        .I1(Gx_t1[0]),
        .O(i__carry_i_8__0_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    img_edge_i_1
       (.I0(DIM[6]),
        .I1(img_edge_i_2_n_0),
        .I2(img_edge_i_3_n_0),
        .I3(img_edge_i_4_n_0),
        .I4(DIM_VALID),
        .I5(img_edge),
        .O(img_edge_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    img_edge_i_2
       (.I0(DIM[11]),
        .I1(DIM[12]),
        .I2(DIM[9]),
        .I3(DIM[10]),
        .I4(DIM[8]),
        .I5(DIM[7]),
        .O(img_edge_i_2_n_0));
  LUT6 #(
    .INIT(64'h8888888088808880)) 
    img_edge_i_3
       (.I0(DIM[5]),
        .I1(DIM[4]),
        .I2(DIM[2]),
        .I3(DIM[3]),
        .I4(DIM[0]),
        .I5(DIM[1]),
        .O(img_edge_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    img_edge_i_4
       (.I0(DIM[15]),
        .I1(DIM[14]),
        .I2(DIM[13]),
        .O(img_edge_i_4_n_0));
  FDCE img_edge_reg
       (.C(clk_img),
        .CE(1'b1),
        .CLR(SR),
        .D(img_edge_i_1_n_0),
        .Q(img_edge));
  FDCE img_en_reg
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(DIM_VALID),
        .Q(img_en));
  FDCE \p11_reg[0] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t12[1]),
        .Q(p11[0]));
  FDCE \p11_reg[1] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t12[2]),
        .Q(p11[1]));
  FDCE \p11_reg[2] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t12[3]),
        .Q(p11[2]));
  FDCE \p11_reg[3] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t12[4]),
        .Q(p11[3]));
  FDCE \p11_reg[4] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t12[5]),
        .Q(p11[4]));
  FDCE \p11_reg[5] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t12[6]),
        .Q(p11[5]));
  FDCE \p11_reg[6] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t12[7]),
        .Q(p11[6]));
  FDCE \p11_reg[7] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t12[8]),
        .Q(p11[7]));
  FDCE \p12_reg[0] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p13[0]),
        .Q(Gy_t12[1]));
  FDCE \p12_reg[1] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p13[1]),
        .Q(Gy_t12[2]));
  FDCE \p12_reg[2] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p13[2]),
        .Q(Gy_t12[3]));
  FDCE \p12_reg[3] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p13[3]),
        .Q(Gy_t12[4]));
  FDCE \p12_reg[4] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p13[4]),
        .Q(Gy_t12[5]));
  FDCE \p12_reg[5] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p13[5]),
        .Q(Gy_t12[6]));
  FDCE \p12_reg[6] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p13[6]),
        .Q(Gy_t12[7]));
  FDCE \p12_reg[7] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p13[7]),
        .Q(Gy_t12[8]));
  FDCE \p13_reg[0] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p13_reg[7]_0 [0]),
        .Q(p13[0]));
  FDCE \p13_reg[1] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p13_reg[7]_0 [1]),
        .Q(p13[1]));
  FDCE \p13_reg[2] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p13_reg[7]_0 [2]),
        .Q(p13[2]));
  FDCE \p13_reg[3] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p13_reg[7]_0 [3]),
        .Q(p13[3]));
  FDCE \p13_reg[4] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p13_reg[7]_0 [4]),
        .Q(p13[4]));
  FDCE \p13_reg[5] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p13_reg[7]_0 [5]),
        .Q(p13[5]));
  FDCE \p13_reg[6] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p13_reg[7]_0 [6]),
        .Q(p13[6]));
  FDCE \p13_reg[7] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p13_reg[7]_0 [7]),
        .Q(p13[7]));
  FDCE \p21_reg[0] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p22[0]),
        .Q(Gx_t12[1]));
  FDCE \p21_reg[1] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p22[1]),
        .Q(Gx_t12[2]));
  FDCE \p21_reg[2] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p22[2]),
        .Q(Gx_t12[3]));
  FDCE \p21_reg[3] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p22[3]),
        .Q(Gx_t12[4]));
  FDCE \p21_reg[4] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p22[4]),
        .Q(Gx_t12[5]));
  FDCE \p21_reg[5] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p22[5]),
        .Q(Gx_t12[6]));
  FDCE \p21_reg[6] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p22[6]),
        .Q(Gx_t12[7]));
  FDCE \p21_reg[7] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p22[7]),
        .Q(Gx_t12[8]));
  FDCE \p22_reg[0] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p23[0]),
        .Q(p22[0]));
  FDCE \p22_reg[1] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p23[1]),
        .Q(p22[1]));
  FDCE \p22_reg[2] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p23[2]),
        .Q(p22[2]));
  FDCE \p22_reg[3] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p23[3]),
        .Q(p22[3]));
  FDCE \p22_reg[4] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p23[4]),
        .Q(p22[4]));
  FDCE \p22_reg[5] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p23[5]),
        .Q(p22[5]));
  FDCE \p22_reg[6] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p23[6]),
        .Q(p22[6]));
  FDCE \p22_reg[7] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p23[7]),
        .Q(p22[7]));
  FDCE \p23_reg[0] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p23_reg[7]_0 [0]),
        .Q(p23[0]));
  FDCE \p23_reg[1] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p23_reg[7]_0 [1]),
        .Q(p23[1]));
  FDCE \p23_reg[2] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p23_reg[7]_0 [2]),
        .Q(p23[2]));
  FDCE \p23_reg[3] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p23_reg[7]_0 [3]),
        .Q(p23[3]));
  FDCE \p23_reg[4] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p23_reg[7]_0 [4]),
        .Q(p23[4]));
  FDCE \p23_reg[5] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p23_reg[7]_0 [5]),
        .Q(p23[5]));
  FDCE \p23_reg[6] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p23_reg[7]_0 [6]),
        .Q(p23[6]));
  FDCE \p23_reg[7] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(\p23_reg[7]_0 [7]),
        .Q(p23[7]));
  FDCE \p31_reg[0] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t22[1]),
        .Q(p31[0]));
  FDCE \p31_reg[1] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t22[2]),
        .Q(p31[1]));
  FDCE \p31_reg[2] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t22[3]),
        .Q(p31[2]));
  FDCE \p31_reg[3] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t22[4]),
        .Q(p31[3]));
  FDCE \p31_reg[4] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t22[5]),
        .Q(p31[4]));
  FDCE \p31_reg[5] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t22[6]),
        .Q(p31[5]));
  FDCE \p31_reg[6] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t22[7]),
        .Q(p31[6]));
  FDCE \p31_reg[7] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(Gy_t22[8]),
        .Q(p31[7]));
  FDCE \p32_reg[0] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p33[0]),
        .Q(Gy_t22[1]));
  FDCE \p32_reg[1] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p33[1]),
        .Q(Gy_t22[2]));
  FDCE \p32_reg[2] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p33[2]),
        .Q(Gy_t22[3]));
  FDCE \p32_reg[3] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p33[3]),
        .Q(Gy_t22[4]));
  FDCE \p32_reg[4] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p33[4]),
        .Q(Gy_t22[5]));
  FDCE \p32_reg[5] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p33[5]),
        .Q(Gy_t22[6]));
  FDCE \p32_reg[6] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p33[6]),
        .Q(Gy_t22[7]));
  FDCE \p32_reg[7] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(p33[7]),
        .Q(Gy_t22[8]));
  FDCE \p33_reg[0] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(D[0]),
        .Q(p33[0]));
  FDCE \p33_reg[1] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(D[1]),
        .Q(p33[1]));
  FDCE \p33_reg[2] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(D[2]),
        .Q(p33[2]));
  FDCE \p33_reg[3] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(D[3]),
        .Q(p33[3]));
  FDCE \p33_reg[4] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(D[4]),
        .Q(p33[4]));
  FDCE \p33_reg[5] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(D[5]),
        .Q(p33[5]));
  FDCE \p33_reg[6] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(D[6]),
        .Q(p33[6]));
  FDCE \p33_reg[7] 
       (.C(clk_img),
        .CE(E),
        .CLR(SR),
        .D(D[7]),
        .Q(p33[7]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module gly_0_blk_mem_gen_generic_cstr
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module gly_0_blk_mem_gen_generic_cstr_21
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_prim_width_22 \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module gly_0_blk_mem_gen_generic_cstr_41
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_prim_width_42 \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module gly_0_blk_mem_gen_prim_width
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module gly_0_blk_mem_gen_prim_width_22
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_prim_wrapper_23 \prim_noinit.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module gly_0_blk_mem_gen_prim_width_42
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_prim_wrapper_43 \prim_noinit.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module gly_0_blk_mem_gen_prim_wrapper
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_16 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_17 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_18 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_19 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_25 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_26 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_27 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_35 ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({Q,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,din[7:4],1'b0,1'b0,1'b0,1'b0,din[3:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_16 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_17 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_18 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_19 ,dout[7:4],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_24 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_25 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_26 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_27 ,dout[3:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_35 }),
        .ENARDEN(E),
        .ENBWREN(tmp_ram_rd_en),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(srst),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({E,E}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module gly_0_blk_mem_gen_prim_wrapper_23
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_16 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_17 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_18 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_19 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_25 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_26 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_27 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_35 ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({Q,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,din[7:4],1'b0,1'b0,1'b0,1'b0,din[3:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_16 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_17 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_18 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_19 ,dout[7:4],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_24 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_25 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_26 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_27 ,dout[3:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_35 }),
        .ENARDEN(E),
        .ENBWREN(tmp_ram_rd_en),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(srst),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({E,E}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module gly_0_blk_mem_gen_prim_wrapper_43
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_16 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_17 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_18 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_19 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_25 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_26 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_27 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_35 ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 ,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({Q,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,din[7:4],1'b0,1'b0,1'b0,1'b0,din[3:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_16 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_17 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_18 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_19 ,dout[7:4],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_24 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_25 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_26 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_27 ,dout[3:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_n_35 }),
        .ENARDEN(E),
        .ENBWREN(tmp_ram_rd_en),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(srst),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({E,E}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module gly_0_blk_mem_gen_top
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module gly_0_blk_mem_gen_top_20
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_generic_cstr_21 \valid.cstr 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module gly_0_blk_mem_gen_top_40
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_generic_cstr_41 \valid.cstr 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) 
module gly_0_blk_mem_gen_v8_4_2
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) 
module gly_0_blk_mem_gen_v8_4_2_18
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_v8_4_2_synth_19 inst_blk_mem_gen
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) 
module gly_0_blk_mem_gen_v8_4_2_38
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_v8_4_2_synth_39 inst_blk_mem_gen
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module gly_0_blk_mem_gen_v8_4_2_synth
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module gly_0_blk_mem_gen_v8_4_2_synth_19
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_top_20 \gnbram.gnativebmg.native_blk_mem_gen 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module gly_0_blk_mem_gen_v8_4_2_synth_39
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_top_40 \gnbram.gnativebmg.native_blk_mem_gen 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* C_ARCHITECTURE = "2" *) (* C_COARSE_ROTATE = "0" *) (* C_CORDIC_FUNCTION = "6" *) 
(* C_DATA_FORMAT = "2" *) (* C_HAS_ACLK = "1" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ARESETN = "1" *) (* C_HAS_S_AXIS_CARTESIAN = "1" *) (* C_HAS_S_AXIS_CARTESIAN_TLAST = "0" *) 
(* C_HAS_S_AXIS_CARTESIAN_TUSER = "0" *) (* C_HAS_S_AXIS_PHASE = "0" *) (* C_HAS_S_AXIS_PHASE_TLAST = "0" *) 
(* C_HAS_S_AXIS_PHASE_TUSER = "0" *) (* C_INPUT_WIDTH = "21" *) (* C_ITERATIONS = "0" *) 
(* C_M_AXIS_DOUT_TDATA_WIDTH = "16" *) (* C_M_AXIS_DOUT_TUSER_WIDTH = "1" *) (* C_OUTPUT_WIDTH = "11" *) 
(* C_PHASE_FORMAT = "0" *) (* C_PIPELINE_MODE = "-2" *) (* C_PRECISION = "0" *) 
(* C_ROUND_MODE = "0" *) (* C_SCALE_COMP = "0" *) (* C_S_AXIS_CARTESIAN_TDATA_WIDTH = "24" *) 
(* C_S_AXIS_CARTESIAN_TUSER_WIDTH = "1" *) (* C_S_AXIS_PHASE_TDATA_WIDTH = "24" *) (* C_S_AXIS_PHASE_TUSER_WIDTH = "1" *) 
(* C_THROTTLE_SCHEME = "3" *) (* C_TLAST_RESOLUTION = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "cordic_v6_0_14" *) 
module gly_0_cordic_v6_0_14
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tuser,
    s_axis_phase_tlast,
    s_axis_phase_tdata,
    s_axis_cartesian_tvalid,
    s_axis_cartesian_tready,
    s_axis_cartesian_tuser,
    s_axis_cartesian_tlast,
    s_axis_cartesian_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tready,
    m_axis_dout_tuser,
    m_axis_dout_tlast,
    m_axis_dout_tdata);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [0:0]s_axis_phase_tuser;
  input s_axis_phase_tlast;
  input [23:0]s_axis_phase_tdata;
  input s_axis_cartesian_tvalid;
  output s_axis_cartesian_tready;
  input [0:0]s_axis_cartesian_tuser;
  input s_axis_cartesian_tlast;
  input [23:0]s_axis_cartesian_tdata;
  output m_axis_dout_tvalid;
  input m_axis_dout_tready;
  output [0:0]m_axis_dout_tuser;
  output m_axis_dout_tlast;
  output [15:0]m_axis_dout_tdata;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [15:0]\^m_axis_dout_tdata ;
  wire m_axis_dout_tvalid;
  wire [23:0]s_axis_cartesian_tdata;
  wire s_axis_cartesian_tvalid;
  wire NLW_i_synth_m_axis_dout_tlast_UNCONNECTED;
  wire NLW_i_synth_s_axis_cartesian_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_phase_tready_UNCONNECTED;
  wire [14:10]NLW_i_synth_m_axis_dout_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_dout_tuser_UNCONNECTED;

  assign m_axis_dout_tdata[15] = \^m_axis_dout_tdata [15];
  assign m_axis_dout_tdata[14] = \<const0> ;
  assign m_axis_dout_tdata[13] = \<const0> ;
  assign m_axis_dout_tdata[12] = \<const0> ;
  assign m_axis_dout_tdata[11] = \<const0> ;
  assign m_axis_dout_tdata[10] = \<const0> ;
  assign m_axis_dout_tdata[9:0] = \^m_axis_dout_tdata [9:0];
  assign m_axis_dout_tlast = \<const0> ;
  assign m_axis_dout_tuser[0] = \<const0> ;
  assign s_axis_cartesian_tready = \<const0> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_HAS_ACLK = "1" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "1" *) 
  (* C_HAS_S_AXIS_CARTESIAN = "1" *) 
  (* C_HAS_S_AXIS_CARTESIAN_TLAST = "0" *) 
  (* C_HAS_S_AXIS_CARTESIAN_TUSER = "0" *) 
  (* C_HAS_S_AXIS_PHASE = "0" *) 
  (* C_HAS_S_AXIS_PHASE_TLAST = "0" *) 
  (* C_HAS_S_AXIS_PHASE_TUSER = "0" *) 
  (* C_M_AXIS_DOUT_TDATA_WIDTH = "16" *) 
  (* C_M_AXIS_DOUT_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_CARTESIAN_TDATA_WIDTH = "24" *) 
  (* C_S_AXIS_CARTESIAN_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_PHASE_TDATA_WIDTH = "24" *) 
  (* C_S_AXIS_PHASE_TUSER_WIDTH = "1" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_architecture = "2" *) 
  (* c_coarse_rotate = "0" *) 
  (* c_cordic_function = "6" *) 
  (* c_data_format = "2" *) 
  (* c_input_width = "21" *) 
  (* c_iterations = "0" *) 
  (* c_output_width = "11" *) 
  (* c_phase_format = "0" *) 
  (* c_pipeline_mode = "-2" *) 
  (* c_precision = "0" *) 
  (* c_round_mode = "0" *) 
  (* c_scale_comp = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  gly_0_cordic_v6_0_14_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(aresetn),
        .m_axis_dout_tdata(\^m_axis_dout_tdata ),
        .m_axis_dout_tlast(NLW_i_synth_m_axis_dout_tlast_UNCONNECTED),
        .m_axis_dout_tready(1'b0),
        .m_axis_dout_tuser(NLW_i_synth_m_axis_dout_tuser_UNCONNECTED[0]),
        .m_axis_dout_tvalid(m_axis_dout_tvalid),
        .s_axis_cartesian_tdata({1'b0,1'b0,1'b0,s_axis_cartesian_tdata[20:0]}),
        .s_axis_cartesian_tlast(1'b0),
        .s_axis_cartesian_tready(NLW_i_synth_s_axis_cartesian_tready_UNCONNECTED),
        .s_axis_cartesian_tuser(1'b0),
        .s_axis_cartesian_tvalid(s_axis_cartesian_tvalid),
        .s_axis_phase_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_i_synth_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module gly_0_fifo_generator_ramfifo
   (dout,
    empty,
    full,
    clk,
    srst,
    din,
    rd_en,
    wr_en);
  output [7:0]dout;
  output empty;
  output full;
  input clk;
  input srst;
  input [7:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.wr_n_0 ;
  wire [4:0]\gwss.wsts/c0/v1_reg ;
  wire [4:0]\gwss.wsts/c1/v1_reg ;
  wire [9:0]p_0_out;
  wire [9:0]p_11_out;
  wire [9:0]p_12_out;
  wire p_17_out;
  wire p_2_out;
  wire rd_en;
  wire srst;
  wire tmp_ram_rd_en;
  wire wr_en;

  gly_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.Q(p_0_out),
        .clk(clk),
        .empty(empty),
        .\gmux.gm[4].gms.ms (p_11_out),
        .\gmux.gm[4].gms.ms_0 (p_12_out),
        .out(p_2_out),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .rd_en(rd_en),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .v1_reg(\gwss.wsts/c0/v1_reg ),
        .v1_reg_0(\gwss.wsts/c1/v1_reg ),
        .wr_en(wr_en));
  gly_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.E(p_17_out),
        .Q(p_12_out),
        .clk(clk),
        .full(full),
        .\gcc0.gc0.count_d1_reg[9] (p_11_out),
        .out(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .ram_full_i_reg(p_2_out),
        .rd_en(rd_en),
        .srst(srst),
        .v1_reg(\gwss.wsts/c0/v1_reg ),
        .v1_reg_0(\gwss.wsts/c1/v1_reg ),
        .wr_en(wr_en));
  gly_0_memory \gntv_or_sync_fifo.mem 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (p_11_out),
        .E(p_17_out),
        .Q(p_0_out),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module gly_0_fifo_generator_ramfifo_14
   (dout,
    empty,
    full,
    clk,
    srst,
    din,
    rd_en,
    wr_en);
  output [7:0]dout;
  output empty;
  output full;
  input clk;
  input srst;
  input [7:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.wr_n_0 ;
  wire [4:0]\gwss.wsts/c0/v1_reg ;
  wire [4:0]\gwss.wsts/c1/v1_reg ;
  wire [9:0]p_0_out;
  wire [9:0]p_11_out;
  wire [9:0]p_12_out;
  wire p_17_out;
  wire p_2_out;
  wire rd_en;
  wire srst;
  wire tmp_ram_rd_en;
  wire wr_en;

  gly_0_rd_logic_15 \gntv_or_sync_fifo.gl0.rd 
       (.Q(p_0_out),
        .clk(clk),
        .empty(empty),
        .\gmux.gm[4].gms.ms (p_11_out),
        .\gmux.gm[4].gms.ms_0 (p_12_out),
        .out(p_2_out),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .rd_en(rd_en),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .v1_reg(\gwss.wsts/c0/v1_reg ),
        .v1_reg_0(\gwss.wsts/c1/v1_reg ),
        .wr_en(wr_en));
  gly_0_wr_logic_16 \gntv_or_sync_fifo.gl0.wr 
       (.E(p_17_out),
        .Q(p_12_out),
        .clk(clk),
        .full(full),
        .\gcc0.gc0.count_d1_reg[9] (p_11_out),
        .out(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .ram_full_i_reg(p_2_out),
        .rd_en(rd_en),
        .srst(srst),
        .v1_reg(\gwss.wsts/c0/v1_reg ),
        .v1_reg_0(\gwss.wsts/c1/v1_reg ),
        .wr_en(wr_en));
  gly_0_memory_17 \gntv_or_sync_fifo.mem 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (p_11_out),
        .E(p_17_out),
        .Q(p_0_out),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module gly_0_fifo_generator_ramfifo_34
   (dout,
    empty,
    full,
    clk,
    srst,
    din,
    rd_en,
    wr_en);
  output [7:0]dout;
  output empty;
  output full;
  input clk;
  input srst;
  input [7:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.wr_n_0 ;
  wire [4:0]\gwss.wsts/c0/v1_reg ;
  wire [4:0]\gwss.wsts/c1/v1_reg ;
  wire [9:0]p_0_out;
  wire [9:0]p_11_out;
  wire [9:0]p_12_out;
  wire p_17_out;
  wire p_2_out;
  wire rd_en;
  wire srst;
  wire tmp_ram_rd_en;
  wire wr_en;

  gly_0_rd_logic_35 \gntv_or_sync_fifo.gl0.rd 
       (.Q(p_0_out),
        .clk(clk),
        .empty(empty),
        .\gmux.gm[4].gms.ms (p_11_out),
        .\gmux.gm[4].gms.ms_0 (p_12_out),
        .out(p_2_out),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .rd_en(rd_en),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .v1_reg(\gwss.wsts/c0/v1_reg ),
        .v1_reg_0(\gwss.wsts/c1/v1_reg ),
        .wr_en(wr_en));
  gly_0_wr_logic_36 \gntv_or_sync_fifo.gl0.wr 
       (.E(p_17_out),
        .Q(p_12_out),
        .clk(clk),
        .full(full),
        .\gcc0.gc0.count_d1_reg[9] (p_11_out),
        .out(\gntv_or_sync_fifo.gl0.wr_n_0 ),
        .ram_full_i_reg(p_2_out),
        .rd_en(rd_en),
        .srst(srst),
        .v1_reg(\gwss.wsts/c0/v1_reg ),
        .v1_reg_0(\gwss.wsts/c1/v1_reg ),
        .wr_en(wr_en));
  gly_0_memory_37 \gntv_or_sync_fifo.mem 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (p_11_out),
        .E(p_17_out),
        .Q(p_0_out),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module gly_0_fifo_generator_top
   (dout,
    empty,
    full,
    clk,
    srst,
    din,
    rd_en,
    wr_en);
  output [7:0]dout;
  output empty;
  output full;
  input clk;
  input srst;
  input [7:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  gly_0_fifo_generator_ramfifo \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module gly_0_fifo_generator_top_13
   (dout,
    empty,
    full,
    clk,
    srst,
    din,
    rd_en,
    wr_en);
  output [7:0]dout;
  output empty;
  output full;
  input clk;
  input srst;
  input [7:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  gly_0_fifo_generator_ramfifo_14 \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module gly_0_fifo_generator_top_33
   (dout,
    empty,
    full,
    clk,
    srst,
    din,
    rd_en,
    wr_en);
  output [7:0]dout;
  output empty;
  output full;
  input clk;
  input srst;
  input [7:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  gly_0_fifo_generator_ramfifo_34 \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "8" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "8" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "zynq" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "0" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "1" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "1kx18" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_3" *) 
module gly_0_fifo_generator_v13_2_3
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [7:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  gly_0_fifo_generator_v13_2_3_synth inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "8" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "8" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "zynq" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "0" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "1" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "1kx18" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_3" *) 
module gly_0_fifo_generator_v13_2_3__3
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [7:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  gly_0_fifo_generator_v13_2_3_synth_32 inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "8" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "8" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "zynq" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "0" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "1" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "1kx18" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1022" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1021" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_3" *) 
module gly_0_fifo_generator_v13_2_3__4
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [7:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  gly_0_fifo_generator_v13_2_3_synth_12 inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_compare" *) 
module gly_0_fifo_generator_v13_2_3_compare
   (comp0,
    v1_reg);
  output comp0;
  input [4:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire [4:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_compare" *) 
module gly_0_fifo_generator_v13_2_3_compare_10
   (comp0,
    \gmux.gm[1].gms.ms_0 ,
    \gmux.gm[2].gms.ms_0 ,
    \gmux.gm[3].gms.ms_0 ,
    \gmux.gm[4].gms.ms_0 ,
    ram_empty_i_reg);
  output comp0;
  input \gmux.gm[1].gms.ms_0 ;
  input \gmux.gm[2].gms.ms_0 ;
  input \gmux.gm[3].gms.ms_0 ;
  input \gmux.gm[4].gms.ms_0 ;
  input ram_empty_i_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire \gmux.gm[1].gms.ms_0 ;
  wire \gmux.gm[2].gms.ms_0 ;
  wire \gmux.gm[3].gms.ms_0 ;
  wire \gmux.gm[4].gms.ms_0 ;
  wire ram_empty_i_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S({\gmux.gm[4].gms.ms_0 ,\gmux.gm[3].gms.ms_0 ,\gmux.gm[2].gms.ms_0 ,\gmux.gm[1].gms.ms_0 }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],ram_empty_i_reg}));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_compare" *) 
module gly_0_fifo_generator_v13_2_3_compare_11
   (ram_full_fb_i_reg,
    v1_reg,
    rd_en,
    comp0,
    ram_empty_i_reg,
    wr_en,
    out);
  output ram_full_fb_i_reg;
  input [4:0]v1_reg;
  input rd_en;
  input comp0;
  input ram_empty_i_reg;
  input wr_en;
  input out;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire out;
  wire ram_empty_i_reg;
  wire ram_full_fb_i_reg;
  wire rd_en;
  wire [4:0]v1_reg;
  wire wr_en;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
  LUT6 #(
    .INIT(64'hFF0FFFFF88008888)) 
    ram_empty_fb_i_i_1
       (.I0(rd_en),
        .I1(comp1),
        .I2(comp0),
        .I3(ram_empty_i_reg),
        .I4(wr_en),
        .I5(out),
        .O(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_compare" *) 
module gly_0_fifo_generator_v13_2_3_compare_26
   (comp0,
    v1_reg);
  output comp0;
  input [4:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire [4:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_compare" *) 
module gly_0_fifo_generator_v13_2_3_compare_27
   (ram_full_comb,
    v1_reg_0,
    wr_en,
    comp0,
    ram_full_i_reg,
    rd_en,
    out);
  output ram_full_comb;
  input [4:0]v1_reg_0;
  input wr_en;
  input comp0;
  input ram_full_i_reg;
  input rd_en;
  input out;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire out;
  wire ram_full_comb;
  wire ram_full_i_reg;
  wire rd_en;
  wire [4:0]v1_reg_0;
  wire wr_en;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0[4]}));
  LUT6 #(
    .INIT(64'hFF0FFFFF88008888)) 
    ram_full_fb_i_i_1
       (.I0(wr_en),
        .I1(comp1),
        .I2(comp0),
        .I3(ram_full_i_reg),
        .I4(rd_en),
        .I5(out),
        .O(ram_full_comb));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_compare" *) 
module gly_0_fifo_generator_v13_2_3_compare_30
   (comp0,
    \gmux.gm[1].gms.ms_0 ,
    \gmux.gm[2].gms.ms_0 ,
    \gmux.gm[3].gms.ms_0 ,
    \gmux.gm[4].gms.ms_0 ,
    ram_empty_i_reg);
  output comp0;
  input \gmux.gm[1].gms.ms_0 ;
  input \gmux.gm[2].gms.ms_0 ;
  input \gmux.gm[3].gms.ms_0 ;
  input \gmux.gm[4].gms.ms_0 ;
  input ram_empty_i_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire \gmux.gm[1].gms.ms_0 ;
  wire \gmux.gm[2].gms.ms_0 ;
  wire \gmux.gm[3].gms.ms_0 ;
  wire \gmux.gm[4].gms.ms_0 ;
  wire ram_empty_i_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S({\gmux.gm[4].gms.ms_0 ,\gmux.gm[3].gms.ms_0 ,\gmux.gm[2].gms.ms_0 ,\gmux.gm[1].gms.ms_0 }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],ram_empty_i_reg}));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_compare" *) 
module gly_0_fifo_generator_v13_2_3_compare_31
   (ram_full_fb_i_reg,
    v1_reg,
    rd_en,
    comp0,
    ram_empty_i_reg,
    wr_en,
    out);
  output ram_full_fb_i_reg;
  input [4:0]v1_reg;
  input rd_en;
  input comp0;
  input ram_empty_i_reg;
  input wr_en;
  input out;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire out;
  wire ram_empty_i_reg;
  wire ram_full_fb_i_reg;
  wire rd_en;
  wire [4:0]v1_reg;
  wire wr_en;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
  LUT6 #(
    .INIT(64'hFF0FFFFF88008888)) 
    ram_empty_fb_i_i_1
       (.I0(rd_en),
        .I1(comp1),
        .I2(comp0),
        .I3(ram_empty_i_reg),
        .I4(wr_en),
        .I5(out),
        .O(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_compare" *) 
module gly_0_fifo_generator_v13_2_3_compare_46
   (comp0,
    v1_reg);
  output comp0;
  input [4:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire [4:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_compare" *) 
module gly_0_fifo_generator_v13_2_3_compare_47
   (ram_full_comb,
    v1_reg_0,
    wr_en,
    comp0,
    ram_full_i_reg,
    rd_en,
    out);
  output ram_full_comb;
  input [4:0]v1_reg_0;
  input wr_en;
  input comp0;
  input ram_full_i_reg;
  input rd_en;
  input out;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire out;
  wire ram_full_comb;
  wire ram_full_i_reg;
  wire rd_en;
  wire [4:0]v1_reg_0;
  wire wr_en;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0[4]}));
  LUT6 #(
    .INIT(64'hFF0FFFFF88008888)) 
    ram_full_fb_i_i_1
       (.I0(wr_en),
        .I1(comp1),
        .I2(comp0),
        .I3(ram_full_i_reg),
        .I4(rd_en),
        .I5(out),
        .O(ram_full_comb));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_compare" *) 
module gly_0_fifo_generator_v13_2_3_compare_50
   (comp0,
    \gmux.gm[1].gms.ms_0 ,
    \gmux.gm[2].gms.ms_0 ,
    \gmux.gm[3].gms.ms_0 ,
    \gmux.gm[4].gms.ms_0 ,
    ram_empty_i_reg);
  output comp0;
  input \gmux.gm[1].gms.ms_0 ;
  input \gmux.gm[2].gms.ms_0 ;
  input \gmux.gm[3].gms.ms_0 ;
  input \gmux.gm[4].gms.ms_0 ;
  input ram_empty_i_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire \gmux.gm[1].gms.ms_0 ;
  wire \gmux.gm[2].gms.ms_0 ;
  wire \gmux.gm[3].gms.ms_0 ;
  wire \gmux.gm[4].gms.ms_0 ;
  wire ram_empty_i_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S({\gmux.gm[4].gms.ms_0 ,\gmux.gm[3].gms.ms_0 ,\gmux.gm[2].gms.ms_0 ,\gmux.gm[1].gms.ms_0 }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],ram_empty_i_reg}));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_compare" *) 
module gly_0_fifo_generator_v13_2_3_compare_51
   (ram_full_fb_i_reg,
    v1_reg,
    rd_en,
    comp0,
    ram_empty_i_reg,
    wr_en,
    out);
  output ram_full_fb_i_reg;
  input [4:0]v1_reg;
  input rd_en;
  input comp0;
  input ram_empty_i_reg;
  input wr_en;
  input out;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire out;
  wire ram_empty_i_reg;
  wire ram_full_fb_i_reg;
  wire rd_en;
  wire [4:0]v1_reg;
  wire wr_en;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
  LUT6 #(
    .INIT(64'hFF0FFFFF88008888)) 
    ram_empty_fb_i_i_1
       (.I0(rd_en),
        .I1(comp1),
        .I2(comp0),
        .I3(ram_empty_i_reg),
        .I4(wr_en),
        .I5(out),
        .O(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_compare" *) 
module gly_0_fifo_generator_v13_2_3_compare_9
   (ram_full_comb,
    v1_reg_0,
    wr_en,
    comp0,
    ram_full_i_reg,
    rd_en,
    out);
  output ram_full_comb;
  input [4:0]v1_reg_0;
  input wr_en;
  input comp0;
  input ram_full_i_reg;
  input rd_en;
  input out;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire out;
  wire ram_full_comb;
  wire ram_full_i_reg;
  wire rd_en;
  wire [4:0]v1_reg_0;
  wire wr_en;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0[4]}));
  LUT6 #(
    .INIT(64'hFF0FFFFF88008888)) 
    ram_full_fb_i_i_1
       (.I0(wr_en),
        .I1(comp1),
        .I2(comp0),
        .I3(ram_full_i_reg),
        .I4(rd_en),
        .I5(out),
        .O(ram_full_comb));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_synth" *) 
module gly_0_fifo_generator_v13_2_3_synth
   (dout,
    empty,
    full,
    clk,
    srst,
    din,
    rd_en,
    wr_en);
  output [7:0]dout;
  output empty;
  output full;
  input clk;
  input srst;
  input [7:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  gly_0_fifo_generator_top \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_synth" *) 
module gly_0_fifo_generator_v13_2_3_synth_12
   (dout,
    empty,
    full,
    clk,
    srst,
    din,
    rd_en,
    wr_en);
  output [7:0]dout;
  output empty;
  output full;
  input clk;
  input srst;
  input [7:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  gly_0_fifo_generator_top_13 \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_3_synth" *) 
module gly_0_fifo_generator_v13_2_3_synth_32
   (dout,
    empty,
    full,
    clk,
    srst,
    din,
    rd_en,
    wr_en);
  output [7:0]dout;
  output empty;
  output full;
  input clk;
  input srst;
  input [7:0]din;
  input rd_en;
  input wr_en;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;

  gly_0_fifo_generator_top_33 \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module gly_0_memory
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_v8_4_2 \gbm.gbmg.gbmga.ngecc.bmg 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module gly_0_memory_17
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_v8_4_2_18 \gbm.gbmg.gbmga.ngecc.bmg 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module gly_0_memory_37
   (dout,
    clk,
    E,
    tmp_ram_rd_en,
    srst,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ,
    Q,
    din);
  output [7:0]dout;
  input clk;
  input [0:0]E;
  input tmp_ram_rd_en;
  input srst;
  input [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  input [9:0]Q;
  input [7:0]din;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire srst;
  wire tmp_ram_rd_en;

  gly_0_blk_mem_gen_v8_4_2_38 \gbm.gbmg.gbmga.ngecc.bmg 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module gly_0_rd_bin_cntr
   (v1_reg,
    Q,
    v1_reg_1,
    v1_reg_0,
    \gc0.count_d1_reg[0]_0 ,
    \gc0.count_d1_reg[2]_0 ,
    \gc0.count_d1_reg[4]_0 ,
    \gc0.count_d1_reg[6]_0 ,
    \gc0.count_d1_reg[8]_0 ,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 ,
    srst,
    E,
    clk);
  output [4:0]v1_reg;
  output [9:0]Q;
  output [4:0]v1_reg_1;
  output [4:0]v1_reg_0;
  output \gc0.count_d1_reg[0]_0 ;
  output \gc0.count_d1_reg[2]_0 ;
  output \gc0.count_d1_reg[4]_0 ;
  output \gc0.count_d1_reg[6]_0 ;
  output \gc0.count_d1_reg[8]_0 ;
  input [9:0]\gmux.gm[4].gms.ms ;
  input [9:0]\gmux.gm[4].gms.ms_0 ;
  input srst;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire \gc0.count[9]_i_2_n_0 ;
  wire \gc0.count_d1_reg[0]_0 ;
  wire \gc0.count_d1_reg[2]_0 ;
  wire \gc0.count_d1_reg[4]_0 ;
  wire \gc0.count_d1_reg[6]_0 ;
  wire \gc0.count_d1_reg[8]_0 ;
  wire [9:0]\gmux.gm[4].gms.ms ;
  wire [9:0]\gmux.gm[4].gms.ms_0 ;
  wire [9:0]plusOp;
  wire [9:0]rd_pntr_plus1;
  wire srst;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire [4:0]v1_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[5]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(rd_pntr_plus1[4]),
        .I5(rd_pntr_plus1[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[6]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[7]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .I2(rd_pntr_plus1[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[8]_i_1 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gc0.count[9]_i_2_n_0 ),
        .I2(rd_pntr_plus1[7]),
        .I3(rd_pntr_plus1[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[9]_i_1 
       (.I0(rd_pntr_plus1[7]),
        .I1(\gc0.count[9]_i_2_n_0 ),
        .I2(rd_pntr_plus1[6]),
        .I3(rd_pntr_plus1[8]),
        .I4(rd_pntr_plus1[9]),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc0.count[9]_i_2 
       (.I0(rd_pntr_plus1[5]),
        .I1(rd_pntr_plus1[3]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[0]),
        .I4(rd_pntr_plus1[2]),
        .I5(rd_pntr_plus1[4]),
        .O(\gc0.count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(Q[0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[2]),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[3]),
        .Q(Q[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[4]),
        .Q(Q[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(Q[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[6]),
        .Q(Q[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[7]),
        .Q(Q[7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[8]),
        .Q(Q[8]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[9] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[9]),
        .Q(Q[9]),
        .R(srst));
  FDSE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .Q(rd_pntr_plus1[0]),
        .S(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(clk),
        .CE(E),
        .D(plusOp[5]),
        .Q(rd_pntr_plus1[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(clk),
        .CE(E),
        .D(plusOp[6]),
        .Q(rd_pntr_plus1[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(clk),
        .CE(E),
        .D(plusOp[7]),
        .Q(rd_pntr_plus1[7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(clk),
        .CE(E),
        .D(plusOp[8]),
        .Q(rd_pntr_plus1[8]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[9] 
       (.C(clk),
        .CE(E),
        .D(plusOp[9]),
        .Q(rd_pntr_plus1[9]),
        .R(srst));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(rd_pntr_plus1[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms_0 [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms_0 [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(\gc0.count_d1_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(rd_pntr_plus1[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms_0 [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms_0 [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(\gc0.count_d1_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(rd_pntr_plus1[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms_0 [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms_0 [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(\gc0.count_d1_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(rd_pntr_plus1[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(v1_reg_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms_0 [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms_0 [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(\gc0.count_d1_reg[6]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .I2(Q[9]),
        .I3(\gmux.gm[4].gms.ms [9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .I2(rd_pntr_plus1[9]),
        .I3(\gmux.gm[4].gms.ms [9]),
        .O(v1_reg_1[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms_0 [8]),
        .I2(Q[9]),
        .I3(\gmux.gm[4].gms.ms_0 [9]),
        .O(v1_reg_0[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .I2(Q[9]),
        .I3(\gmux.gm[4].gms.ms [9]),
        .O(\gc0.count_d1_reg[8]_0 ));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module gly_0_rd_bin_cntr_29
   (v1_reg,
    Q,
    v1_reg_1,
    v1_reg_0,
    \gc0.count_d1_reg[0]_0 ,
    \gc0.count_d1_reg[2]_0 ,
    \gc0.count_d1_reg[4]_0 ,
    \gc0.count_d1_reg[6]_0 ,
    \gc0.count_d1_reg[8]_0 ,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 ,
    srst,
    E,
    clk);
  output [4:0]v1_reg;
  output [9:0]Q;
  output [4:0]v1_reg_1;
  output [4:0]v1_reg_0;
  output \gc0.count_d1_reg[0]_0 ;
  output \gc0.count_d1_reg[2]_0 ;
  output \gc0.count_d1_reg[4]_0 ;
  output \gc0.count_d1_reg[6]_0 ;
  output \gc0.count_d1_reg[8]_0 ;
  input [9:0]\gmux.gm[4].gms.ms ;
  input [9:0]\gmux.gm[4].gms.ms_0 ;
  input srst;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire \gc0.count[9]_i_2_n_0 ;
  wire \gc0.count_d1_reg[0]_0 ;
  wire \gc0.count_d1_reg[2]_0 ;
  wire \gc0.count_d1_reg[4]_0 ;
  wire \gc0.count_d1_reg[6]_0 ;
  wire \gc0.count_d1_reg[8]_0 ;
  wire [9:0]\gmux.gm[4].gms.ms ;
  wire [9:0]\gmux.gm[4].gms.ms_0 ;
  wire [9:0]plusOp;
  wire [9:0]rd_pntr_plus1;
  wire srst;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire [4:0]v1_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[5]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(rd_pntr_plus1[4]),
        .I5(rd_pntr_plus1[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[6]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[7]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .I2(rd_pntr_plus1[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[8]_i_1 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gc0.count[9]_i_2_n_0 ),
        .I2(rd_pntr_plus1[7]),
        .I3(rd_pntr_plus1[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[9]_i_1 
       (.I0(rd_pntr_plus1[7]),
        .I1(\gc0.count[9]_i_2_n_0 ),
        .I2(rd_pntr_plus1[6]),
        .I3(rd_pntr_plus1[8]),
        .I4(rd_pntr_plus1[9]),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc0.count[9]_i_2 
       (.I0(rd_pntr_plus1[5]),
        .I1(rd_pntr_plus1[3]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[0]),
        .I4(rd_pntr_plus1[2]),
        .I5(rd_pntr_plus1[4]),
        .O(\gc0.count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(Q[0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[2]),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[3]),
        .Q(Q[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[4]),
        .Q(Q[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(Q[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[6]),
        .Q(Q[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[7]),
        .Q(Q[7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[8]),
        .Q(Q[8]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[9] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[9]),
        .Q(Q[9]),
        .R(srst));
  FDSE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .Q(rd_pntr_plus1[0]),
        .S(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(clk),
        .CE(E),
        .D(plusOp[5]),
        .Q(rd_pntr_plus1[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(clk),
        .CE(E),
        .D(plusOp[6]),
        .Q(rd_pntr_plus1[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(clk),
        .CE(E),
        .D(plusOp[7]),
        .Q(rd_pntr_plus1[7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(clk),
        .CE(E),
        .D(plusOp[8]),
        .Q(rd_pntr_plus1[8]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[9] 
       (.C(clk),
        .CE(E),
        .D(plusOp[9]),
        .Q(rd_pntr_plus1[9]),
        .R(srst));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(rd_pntr_plus1[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms_0 [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms_0 [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(\gc0.count_d1_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(rd_pntr_plus1[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms_0 [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms_0 [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(\gc0.count_d1_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(rd_pntr_plus1[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms_0 [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms_0 [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(\gc0.count_d1_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(rd_pntr_plus1[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(v1_reg_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms_0 [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms_0 [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(\gc0.count_d1_reg[6]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .I2(Q[9]),
        .I3(\gmux.gm[4].gms.ms [9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .I2(rd_pntr_plus1[9]),
        .I3(\gmux.gm[4].gms.ms [9]),
        .O(v1_reg_1[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms_0 [8]),
        .I2(Q[9]),
        .I3(\gmux.gm[4].gms.ms_0 [9]),
        .O(v1_reg_0[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .I2(Q[9]),
        .I3(\gmux.gm[4].gms.ms [9]),
        .O(\gc0.count_d1_reg[8]_0 ));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module gly_0_rd_bin_cntr_49
   (v1_reg,
    Q,
    v1_reg_1,
    v1_reg_0,
    \gc0.count_d1_reg[0]_0 ,
    \gc0.count_d1_reg[2]_0 ,
    \gc0.count_d1_reg[4]_0 ,
    \gc0.count_d1_reg[6]_0 ,
    \gc0.count_d1_reg[8]_0 ,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 ,
    srst,
    E,
    clk);
  output [4:0]v1_reg;
  output [9:0]Q;
  output [4:0]v1_reg_1;
  output [4:0]v1_reg_0;
  output \gc0.count_d1_reg[0]_0 ;
  output \gc0.count_d1_reg[2]_0 ;
  output \gc0.count_d1_reg[4]_0 ;
  output \gc0.count_d1_reg[6]_0 ;
  output \gc0.count_d1_reg[8]_0 ;
  input [9:0]\gmux.gm[4].gms.ms ;
  input [9:0]\gmux.gm[4].gms.ms_0 ;
  input srst;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire \gc0.count[9]_i_2_n_0 ;
  wire \gc0.count_d1_reg[0]_0 ;
  wire \gc0.count_d1_reg[2]_0 ;
  wire \gc0.count_d1_reg[4]_0 ;
  wire \gc0.count_d1_reg[6]_0 ;
  wire \gc0.count_d1_reg[8]_0 ;
  wire [9:0]\gmux.gm[4].gms.ms ;
  wire [9:0]\gmux.gm[4].gms.ms_0 ;
  wire [9:0]plusOp;
  wire [9:0]rd_pntr_plus1;
  wire srst;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire [4:0]v1_reg_1;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[5]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(rd_pntr_plus1[4]),
        .I5(rd_pntr_plus1[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[6]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[7]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .I2(rd_pntr_plus1[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[8]_i_1 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gc0.count[9]_i_2_n_0 ),
        .I2(rd_pntr_plus1[7]),
        .I3(rd_pntr_plus1[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[9]_i_1 
       (.I0(rd_pntr_plus1[7]),
        .I1(\gc0.count[9]_i_2_n_0 ),
        .I2(rd_pntr_plus1[6]),
        .I3(rd_pntr_plus1[8]),
        .I4(rd_pntr_plus1[9]),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc0.count[9]_i_2 
       (.I0(rd_pntr_plus1[5]),
        .I1(rd_pntr_plus1[3]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[0]),
        .I4(rd_pntr_plus1[2]),
        .I5(rd_pntr_plus1[4]),
        .O(\gc0.count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(Q[0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[2]),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[3]),
        .Q(Q[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[4]),
        .Q(Q[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(Q[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[6]),
        .Q(Q[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[7]),
        .Q(Q[7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[8]),
        .Q(Q[8]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[9] 
       (.C(clk),
        .CE(E),
        .D(rd_pntr_plus1[9]),
        .Q(Q[9]),
        .R(srst));
  FDSE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .Q(rd_pntr_plus1[0]),
        .S(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(clk),
        .CE(E),
        .D(plusOp[5]),
        .Q(rd_pntr_plus1[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(clk),
        .CE(E),
        .D(plusOp[6]),
        .Q(rd_pntr_plus1[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(clk),
        .CE(E),
        .D(plusOp[7]),
        .Q(rd_pntr_plus1[7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(clk),
        .CE(E),
        .D(plusOp[8]),
        .Q(rd_pntr_plus1[8]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[9] 
       (.C(clk),
        .CE(E),
        .D(plusOp[9]),
        .Q(rd_pntr_plus1[9]),
        .R(srst));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(rd_pntr_plus1[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms_0 [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms_0 [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(Q[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(Q[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(\gc0.count_d1_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(rd_pntr_plus1[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms_0 [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms_0 [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(Q[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(Q[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(\gc0.count_d1_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(rd_pntr_plus1[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms_0 [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms_0 [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(Q[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(Q[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(\gc0.count_d1_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(rd_pntr_plus1[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(v1_reg_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms_0 [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms_0 [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(Q[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(Q[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(\gc0.count_d1_reg[6]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .I2(Q[9]),
        .I3(\gmux.gm[4].gms.ms [9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .I2(rd_pntr_plus1[9]),
        .I3(\gmux.gm[4].gms.ms [9]),
        .O(v1_reg_1[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms_0 [8]),
        .I2(Q[9]),
        .I3(\gmux.gm[4].gms.ms_0 [9]),
        .O(v1_reg_0[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(Q[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .I2(Q[9]),
        .I3(\gmux.gm[4].gms.ms [9]),
        .O(\gc0.count_d1_reg[8]_0 ));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module gly_0_rd_logic
   (out,
    empty,
    tmp_ram_rd_en,
    v1_reg,
    Q,
    v1_reg_0,
    srst,
    clk,
    rd_en,
    ram_empty_i_reg,
    wr_en,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 );
  output out;
  output empty;
  output tmp_ram_rd_en;
  output [4:0]v1_reg;
  output [9:0]Q;
  output [4:0]v1_reg_0;
  input srst;
  input clk;
  input rd_en;
  input ram_empty_i_reg;
  input wr_en;
  input [9:0]\gmux.gm[4].gms.ms ;
  input [9:0]\gmux.gm[4].gms.ms_0 ;

  wire [9:0]Q;
  wire [4:0]\c2/v1_reg ;
  wire clk;
  wire empty;
  wire [9:0]\gmux.gm[4].gms.ms ;
  wire [9:0]\gmux.gm[4].gms.ms_0 ;
  wire out;
  wire p_7_out;
  wire ram_empty_i_reg;
  wire rd_en;
  wire rpntr_n_25;
  wire rpntr_n_26;
  wire rpntr_n_27;
  wire rpntr_n_28;
  wire rpntr_n_29;
  wire srst;
  wire tmp_ram_rd_en;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_en;

  gly_0_rd_status_flags_ss \grss.rsts 
       (.E(p_7_out),
        .clk(clk),
        .empty(empty),
        .\gmux.gm[1].gms.ms (rpntr_n_25),
        .\gmux.gm[2].gms.ms (rpntr_n_26),
        .\gmux.gm[3].gms.ms (rpntr_n_27),
        .\gmux.gm[4].gms.ms (rpntr_n_28),
        .out(out),
        .ram_empty_i_reg_0(rpntr_n_29),
        .ram_empty_i_reg_1(ram_empty_i_reg),
        .rd_en(rd_en),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .v1_reg(\c2/v1_reg ),
        .wr_en(wr_en));
  gly_0_rd_bin_cntr rpntr
       (.E(p_7_out),
        .Q(Q),
        .clk(clk),
        .\gc0.count_d1_reg[0]_0 (rpntr_n_25),
        .\gc0.count_d1_reg[2]_0 (rpntr_n_26),
        .\gc0.count_d1_reg[4]_0 (rpntr_n_27),
        .\gc0.count_d1_reg[6]_0 (rpntr_n_28),
        .\gc0.count_d1_reg[8]_0 (rpntr_n_29),
        .\gmux.gm[4].gms.ms (\gmux.gm[4].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms_0 ),
        .srst(srst),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0),
        .v1_reg_1(\c2/v1_reg ));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module gly_0_rd_logic_15
   (out,
    empty,
    tmp_ram_rd_en,
    v1_reg,
    Q,
    v1_reg_0,
    srst,
    clk,
    rd_en,
    ram_empty_i_reg,
    wr_en,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 );
  output out;
  output empty;
  output tmp_ram_rd_en;
  output [4:0]v1_reg;
  output [9:0]Q;
  output [4:0]v1_reg_0;
  input srst;
  input clk;
  input rd_en;
  input ram_empty_i_reg;
  input wr_en;
  input [9:0]\gmux.gm[4].gms.ms ;
  input [9:0]\gmux.gm[4].gms.ms_0 ;

  wire [9:0]Q;
  wire [4:0]\c2/v1_reg ;
  wire clk;
  wire empty;
  wire [9:0]\gmux.gm[4].gms.ms ;
  wire [9:0]\gmux.gm[4].gms.ms_0 ;
  wire out;
  wire p_7_out;
  wire ram_empty_i_reg;
  wire rd_en;
  wire rpntr_n_25;
  wire rpntr_n_26;
  wire rpntr_n_27;
  wire rpntr_n_28;
  wire rpntr_n_29;
  wire srst;
  wire tmp_ram_rd_en;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_en;

  gly_0_rd_status_flags_ss_28 \grss.rsts 
       (.E(p_7_out),
        .clk(clk),
        .empty(empty),
        .\gmux.gm[1].gms.ms (rpntr_n_25),
        .\gmux.gm[2].gms.ms (rpntr_n_26),
        .\gmux.gm[3].gms.ms (rpntr_n_27),
        .\gmux.gm[4].gms.ms (rpntr_n_28),
        .out(out),
        .ram_empty_i_reg_0(rpntr_n_29),
        .ram_empty_i_reg_1(ram_empty_i_reg),
        .rd_en(rd_en),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .v1_reg(\c2/v1_reg ),
        .wr_en(wr_en));
  gly_0_rd_bin_cntr_29 rpntr
       (.E(p_7_out),
        .Q(Q),
        .clk(clk),
        .\gc0.count_d1_reg[0]_0 (rpntr_n_25),
        .\gc0.count_d1_reg[2]_0 (rpntr_n_26),
        .\gc0.count_d1_reg[4]_0 (rpntr_n_27),
        .\gc0.count_d1_reg[6]_0 (rpntr_n_28),
        .\gc0.count_d1_reg[8]_0 (rpntr_n_29),
        .\gmux.gm[4].gms.ms (\gmux.gm[4].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms_0 ),
        .srst(srst),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0),
        .v1_reg_1(\c2/v1_reg ));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module gly_0_rd_logic_35
   (out,
    empty,
    tmp_ram_rd_en,
    v1_reg,
    Q,
    v1_reg_0,
    srst,
    clk,
    rd_en,
    ram_empty_i_reg,
    wr_en,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 );
  output out;
  output empty;
  output tmp_ram_rd_en;
  output [4:0]v1_reg;
  output [9:0]Q;
  output [4:0]v1_reg_0;
  input srst;
  input clk;
  input rd_en;
  input ram_empty_i_reg;
  input wr_en;
  input [9:0]\gmux.gm[4].gms.ms ;
  input [9:0]\gmux.gm[4].gms.ms_0 ;

  wire [9:0]Q;
  wire [4:0]\c2/v1_reg ;
  wire clk;
  wire empty;
  wire [9:0]\gmux.gm[4].gms.ms ;
  wire [9:0]\gmux.gm[4].gms.ms_0 ;
  wire out;
  wire p_7_out;
  wire ram_empty_i_reg;
  wire rd_en;
  wire rpntr_n_25;
  wire rpntr_n_26;
  wire rpntr_n_27;
  wire rpntr_n_28;
  wire rpntr_n_29;
  wire srst;
  wire tmp_ram_rd_en;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_en;

  gly_0_rd_status_flags_ss_48 \grss.rsts 
       (.E(p_7_out),
        .clk(clk),
        .empty(empty),
        .\gmux.gm[1].gms.ms (rpntr_n_25),
        .\gmux.gm[2].gms.ms (rpntr_n_26),
        .\gmux.gm[3].gms.ms (rpntr_n_27),
        .\gmux.gm[4].gms.ms (rpntr_n_28),
        .out(out),
        .ram_empty_i_reg_0(rpntr_n_29),
        .ram_empty_i_reg_1(ram_empty_i_reg),
        .rd_en(rd_en),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .v1_reg(\c2/v1_reg ),
        .wr_en(wr_en));
  gly_0_rd_bin_cntr_49 rpntr
       (.E(p_7_out),
        .Q(Q),
        .clk(clk),
        .\gc0.count_d1_reg[0]_0 (rpntr_n_25),
        .\gc0.count_d1_reg[2]_0 (rpntr_n_26),
        .\gc0.count_d1_reg[4]_0 (rpntr_n_27),
        .\gc0.count_d1_reg[6]_0 (rpntr_n_28),
        .\gc0.count_d1_reg[8]_0 (rpntr_n_29),
        .\gmux.gm[4].gms.ms (\gmux.gm[4].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms_0 ),
        .srst(srst),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0),
        .v1_reg_1(\c2/v1_reg ));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module gly_0_rd_status_flags_ss
   (out,
    empty,
    tmp_ram_rd_en,
    E,
    \gmux.gm[1].gms.ms ,
    \gmux.gm[2].gms.ms ,
    \gmux.gm[3].gms.ms ,
    \gmux.gm[4].gms.ms ,
    ram_empty_i_reg_0,
    v1_reg,
    srst,
    clk,
    rd_en,
    ram_empty_i_reg_1,
    wr_en);
  output out;
  output empty;
  output tmp_ram_rd_en;
  output [0:0]E;
  input \gmux.gm[1].gms.ms ;
  input \gmux.gm[2].gms.ms ;
  input \gmux.gm[3].gms.ms ;
  input \gmux.gm[4].gms.ms ;
  input ram_empty_i_reg_0;
  input [4:0]v1_reg;
  input srst;
  input clk;
  input rd_en;
  input ram_empty_i_reg_1;
  input wr_en;

  wire [0:0]E;
  wire c2_n_0;
  wire clk;
  wire comp0;
  wire \gmux.gm[1].gms.ms ;
  wire \gmux.gm[2].gms.ms ;
  wire \gmux.gm[3].gms.ms ;
  wire \gmux.gm[4].gms.ms ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;
  wire rd_en;
  wire srst;
  wire tmp_ram_rd_en;
  wire [4:0]v1_reg;
  wire wr_en;

  assign empty = ram_empty_i;
  assign out = ram_empty_fb_i;
  LUT3 #(
    .INIT(8'hF4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2 
       (.I0(ram_empty_fb_i),
        .I1(rd_en),
        .I2(srst),
        .O(tmp_ram_rd_en));
  gly_0_fifo_generator_v13_2_3_compare_10 c1
       (.comp0(comp0),
        .\gmux.gm[1].gms.ms_0 (\gmux.gm[1].gms.ms ),
        .\gmux.gm[2].gms.ms_0 (\gmux.gm[2].gms.ms ),
        .\gmux.gm[3].gms.ms_0 (\gmux.gm[3].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms ),
        .ram_empty_i_reg(ram_empty_i_reg_0));
  gly_0_fifo_generator_v13_2_3_compare_11 c2
       (.comp0(comp0),
        .out(ram_empty_fb_i),
        .ram_empty_i_reg(ram_empty_i_reg_1),
        .ram_full_fb_i_reg(c2_n_0),
        .rd_en(rd_en),
        .v1_reg(v1_reg),
        .wr_en(wr_en));
  LUT2 #(
    .INIT(4'h2)) 
    \gc0.count_d1[9]_i_1 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(c2_n_0),
        .Q(ram_empty_fb_i),
        .S(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(c2_n_0),
        .Q(ram_empty_i),
        .S(srst));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module gly_0_rd_status_flags_ss_28
   (out,
    empty,
    tmp_ram_rd_en,
    E,
    \gmux.gm[1].gms.ms ,
    \gmux.gm[2].gms.ms ,
    \gmux.gm[3].gms.ms ,
    \gmux.gm[4].gms.ms ,
    ram_empty_i_reg_0,
    v1_reg,
    srst,
    clk,
    rd_en,
    ram_empty_i_reg_1,
    wr_en);
  output out;
  output empty;
  output tmp_ram_rd_en;
  output [0:0]E;
  input \gmux.gm[1].gms.ms ;
  input \gmux.gm[2].gms.ms ;
  input \gmux.gm[3].gms.ms ;
  input \gmux.gm[4].gms.ms ;
  input ram_empty_i_reg_0;
  input [4:0]v1_reg;
  input srst;
  input clk;
  input rd_en;
  input ram_empty_i_reg_1;
  input wr_en;

  wire [0:0]E;
  wire c2_n_0;
  wire clk;
  wire comp0;
  wire \gmux.gm[1].gms.ms ;
  wire \gmux.gm[2].gms.ms ;
  wire \gmux.gm[3].gms.ms ;
  wire \gmux.gm[4].gms.ms ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;
  wire rd_en;
  wire srst;
  wire tmp_ram_rd_en;
  wire [4:0]v1_reg;
  wire wr_en;

  assign empty = ram_empty_i;
  assign out = ram_empty_fb_i;
  LUT3 #(
    .INIT(8'hF4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2 
       (.I0(ram_empty_fb_i),
        .I1(rd_en),
        .I2(srst),
        .O(tmp_ram_rd_en));
  gly_0_fifo_generator_v13_2_3_compare_30 c1
       (.comp0(comp0),
        .\gmux.gm[1].gms.ms_0 (\gmux.gm[1].gms.ms ),
        .\gmux.gm[2].gms.ms_0 (\gmux.gm[2].gms.ms ),
        .\gmux.gm[3].gms.ms_0 (\gmux.gm[3].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms ),
        .ram_empty_i_reg(ram_empty_i_reg_0));
  gly_0_fifo_generator_v13_2_3_compare_31 c2
       (.comp0(comp0),
        .out(ram_empty_fb_i),
        .ram_empty_i_reg(ram_empty_i_reg_1),
        .ram_full_fb_i_reg(c2_n_0),
        .rd_en(rd_en),
        .v1_reg(v1_reg),
        .wr_en(wr_en));
  LUT2 #(
    .INIT(4'h2)) 
    \gc0.count_d1[9]_i_1 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(c2_n_0),
        .Q(ram_empty_fb_i),
        .S(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(c2_n_0),
        .Q(ram_empty_i),
        .S(srst));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module gly_0_rd_status_flags_ss_48
   (out,
    empty,
    tmp_ram_rd_en,
    E,
    \gmux.gm[1].gms.ms ,
    \gmux.gm[2].gms.ms ,
    \gmux.gm[3].gms.ms ,
    \gmux.gm[4].gms.ms ,
    ram_empty_i_reg_0,
    v1_reg,
    srst,
    clk,
    rd_en,
    ram_empty_i_reg_1,
    wr_en);
  output out;
  output empty;
  output tmp_ram_rd_en;
  output [0:0]E;
  input \gmux.gm[1].gms.ms ;
  input \gmux.gm[2].gms.ms ;
  input \gmux.gm[3].gms.ms ;
  input \gmux.gm[4].gms.ms ;
  input ram_empty_i_reg_0;
  input [4:0]v1_reg;
  input srst;
  input clk;
  input rd_en;
  input ram_empty_i_reg_1;
  input wr_en;

  wire [0:0]E;
  wire c2_n_0;
  wire clk;
  wire comp0;
  wire \gmux.gm[1].gms.ms ;
  wire \gmux.gm[2].gms.ms ;
  wire \gmux.gm[3].gms.ms ;
  wire \gmux.gm[4].gms.ms ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i_reg_0;
  wire ram_empty_i_reg_1;
  wire rd_en;
  wire srst;
  wire tmp_ram_rd_en;
  wire [4:0]v1_reg;
  wire wr_en;

  assign empty = ram_empty_i;
  assign out = ram_empty_fb_i;
  LUT3 #(
    .INIT(8'hF4)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2 
       (.I0(ram_empty_fb_i),
        .I1(rd_en),
        .I2(srst),
        .O(tmp_ram_rd_en));
  gly_0_fifo_generator_v13_2_3_compare_50 c1
       (.comp0(comp0),
        .\gmux.gm[1].gms.ms_0 (\gmux.gm[1].gms.ms ),
        .\gmux.gm[2].gms.ms_0 (\gmux.gm[2].gms.ms ),
        .\gmux.gm[3].gms.ms_0 (\gmux.gm[3].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms ),
        .ram_empty_i_reg(ram_empty_i_reg_0));
  gly_0_fifo_generator_v13_2_3_compare_51 c2
       (.comp0(comp0),
        .out(ram_empty_fb_i),
        .ram_empty_i_reg(ram_empty_i_reg_1),
        .ram_full_fb_i_reg(c2_n_0),
        .rd_en(rd_en),
        .v1_reg(v1_reg),
        .wr_en(wr_en));
  LUT2 #(
    .INIT(4'h2)) 
    \gc0.count_d1[9]_i_1 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(c2_n_0),
        .Q(ram_empty_fb_i),
        .S(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(c2_n_0),
        .Q(ram_empty_i),
        .S(srst));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module gly_0_wr_bin_cntr
   (Q,
    \gcc0.gc0.count_d1_reg[9]_0 ,
    srst,
    E,
    clk);
  output [9:0]Q;
  output [9:0]\gcc0.gc0.count_d1_reg[9]_0 ;
  input srst;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire \gcc0.gc0.count[9]_i_2_n_0 ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9]_0 ;
  wire [9:0]plusOp__0;
  wire srst;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gcc0.gc0.count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[6]_i_1 
       (.I0(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I1(Q[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[7]_i_1 
       (.I0(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[8]_i_1 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(plusOp__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[9]_i_1 
       (.I0(Q[7]),
        .I1(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(plusOp__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gcc0.gc0.count[9]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\gcc0.gc0.count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .D(Q[0]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .D(Q[1]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .D(Q[2]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .D(Q[3]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .D(Q[4]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[5] 
       (.C(clk),
        .CE(E),
        .D(Q[5]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[6] 
       (.C(clk),
        .CE(E),
        .D(Q[6]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[7] 
       (.C(clk),
        .CE(E),
        .D(Q[7]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[8] 
       (.C(clk),
        .CE(E),
        .D(Q[8]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [8]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[9] 
       (.C(clk),
        .CE(E),
        .D(Q[9]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [9]),
        .R(srst));
  FDSE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(Q[0]),
        .S(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(Q[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[4]),
        .Q(Q[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[5] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[5]),
        .Q(Q[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[6] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[6]),
        .Q(Q[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[7] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[7]),
        .Q(Q[7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[8] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[8]),
        .Q(Q[8]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[9] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[9]),
        .Q(Q[9]),
        .R(srst));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module gly_0_wr_bin_cntr_25
   (Q,
    \gcc0.gc0.count_d1_reg[9]_0 ,
    srst,
    E,
    clk);
  output [9:0]Q;
  output [9:0]\gcc0.gc0.count_d1_reg[9]_0 ;
  input srst;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire \gcc0.gc0.count[9]_i_2_n_0 ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9]_0 ;
  wire [9:0]plusOp__0;
  wire srst;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gcc0.gc0.count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[6]_i_1 
       (.I0(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I1(Q[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[7]_i_1 
       (.I0(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[8]_i_1 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(plusOp__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[9]_i_1 
       (.I0(Q[7]),
        .I1(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(plusOp__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gcc0.gc0.count[9]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\gcc0.gc0.count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .D(Q[0]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .D(Q[1]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .D(Q[2]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .D(Q[3]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .D(Q[4]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[5] 
       (.C(clk),
        .CE(E),
        .D(Q[5]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[6] 
       (.C(clk),
        .CE(E),
        .D(Q[6]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[7] 
       (.C(clk),
        .CE(E),
        .D(Q[7]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[8] 
       (.C(clk),
        .CE(E),
        .D(Q[8]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [8]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[9] 
       (.C(clk),
        .CE(E),
        .D(Q[9]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [9]),
        .R(srst));
  FDSE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(Q[0]),
        .S(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(Q[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[4]),
        .Q(Q[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[5] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[5]),
        .Q(Q[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[6] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[6]),
        .Q(Q[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[7] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[7]),
        .Q(Q[7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[8] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[8]),
        .Q(Q[8]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[9] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[9]),
        .Q(Q[9]),
        .R(srst));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module gly_0_wr_bin_cntr_45
   (Q,
    \gcc0.gc0.count_d1_reg[9]_0 ,
    srst,
    E,
    clk);
  output [9:0]Q;
  output [9:0]\gcc0.gc0.count_d1_reg[9]_0 ;
  input srst;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire \gcc0.gc0.count[9]_i_2_n_0 ;
  wire [9:0]\gcc0.gc0.count_d1_reg[9]_0 ;
  wire [9:0]plusOp__0;
  wire srst;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gcc0.gc0.count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[6]_i_1 
       (.I0(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I1(Q[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[7]_i_1 
       (.I0(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[8]_i_1 
       (.I0(Q[6]),
        .I1(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(plusOp__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[9]_i_1 
       (.I0(Q[7]),
        .I1(\gcc0.gc0.count[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(plusOp__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gcc0.gc0.count[9]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\gcc0.gc0.count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .D(Q[0]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [0]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .D(Q[1]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .D(Q[2]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .D(Q[3]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .D(Q[4]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[5] 
       (.C(clk),
        .CE(E),
        .D(Q[5]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[6] 
       (.C(clk),
        .CE(E),
        .D(Q[6]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[7] 
       (.C(clk),
        .CE(E),
        .D(Q[7]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[8] 
       (.C(clk),
        .CE(E),
        .D(Q[8]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [8]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[9] 
       (.C(clk),
        .CE(E),
        .D(Q[9]),
        .Q(\gcc0.gc0.count_d1_reg[9]_0 [9]),
        .R(srst));
  FDSE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(Q[0]),
        .S(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(Q[1]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(Q[2]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(Q[3]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[4]),
        .Q(Q[4]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[5] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[5]),
        .Q(Q[5]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[6] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[6]),
        .Q(Q[6]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[7] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[7]),
        .Q(Q[7]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[8] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[8]),
        .Q(Q[8]),
        .R(srst));
  FDRE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[9] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[9]),
        .Q(Q[9]),
        .R(srst));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module gly_0_wr_logic
   (out,
    full,
    E,
    Q,
    \gcc0.gc0.count_d1_reg[9] ,
    v1_reg,
    v1_reg_0,
    srst,
    clk,
    wr_en,
    ram_full_i_reg,
    rd_en);
  output out;
  output full;
  output [0:0]E;
  output [9:0]Q;
  output [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input srst;
  input clk;
  input wr_en;
  input ram_full_i_reg;
  input rd_en;

  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire full;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire out;
  wire ram_full_i_reg;
  wire rd_en;
  wire srst;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_en;

  gly_0_wr_status_flags_ss \gwss.wsts 
       (.E(E),
        .clk(clk),
        .full(full),
        .out(out),
        .ram_full_i_reg_0(ram_full_i_reg),
        .rd_en(rd_en),
        .srst(srst),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0),
        .wr_en(wr_en));
  gly_0_wr_bin_cntr wpntr
       (.E(E),
        .Q(Q),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[9]_0 (\gcc0.gc0.count_d1_reg[9] ),
        .srst(srst));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module gly_0_wr_logic_16
   (out,
    full,
    E,
    Q,
    \gcc0.gc0.count_d1_reg[9] ,
    v1_reg,
    v1_reg_0,
    srst,
    clk,
    wr_en,
    ram_full_i_reg,
    rd_en);
  output out;
  output full;
  output [0:0]E;
  output [9:0]Q;
  output [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input srst;
  input clk;
  input wr_en;
  input ram_full_i_reg;
  input rd_en;

  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire full;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire out;
  wire ram_full_i_reg;
  wire rd_en;
  wire srst;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_en;

  gly_0_wr_status_flags_ss_24 \gwss.wsts 
       (.E(E),
        .clk(clk),
        .full(full),
        .out(out),
        .ram_full_i_reg_0(ram_full_i_reg),
        .rd_en(rd_en),
        .srst(srst),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0),
        .wr_en(wr_en));
  gly_0_wr_bin_cntr_25 wpntr
       (.E(E),
        .Q(Q),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[9]_0 (\gcc0.gc0.count_d1_reg[9] ),
        .srst(srst));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module gly_0_wr_logic_36
   (out,
    full,
    E,
    Q,
    \gcc0.gc0.count_d1_reg[9] ,
    v1_reg,
    v1_reg_0,
    srst,
    clk,
    wr_en,
    ram_full_i_reg,
    rd_en);
  output out;
  output full;
  output [0:0]E;
  output [9:0]Q;
  output [9:0]\gcc0.gc0.count_d1_reg[9] ;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input srst;
  input clk;
  input wr_en;
  input ram_full_i_reg;
  input rd_en;

  wire [0:0]E;
  wire [9:0]Q;
  wire clk;
  wire full;
  wire [9:0]\gcc0.gc0.count_d1_reg[9] ;
  wire out;
  wire ram_full_i_reg;
  wire rd_en;
  wire srst;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_en;

  gly_0_wr_status_flags_ss_44 \gwss.wsts 
       (.E(E),
        .clk(clk),
        .full(full),
        .out(out),
        .ram_full_i_reg_0(ram_full_i_reg),
        .rd_en(rd_en),
        .srst(srst),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0),
        .wr_en(wr_en));
  gly_0_wr_bin_cntr_45 wpntr
       (.E(E),
        .Q(Q),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[9]_0 (\gcc0.gc0.count_d1_reg[9] ),
        .srst(srst));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module gly_0_wr_status_flags_ss
   (out,
    full,
    E,
    v1_reg,
    v1_reg_0,
    srst,
    clk,
    wr_en,
    ram_full_i_reg_0,
    rd_en);
  output out;
  output full;
  output [0:0]E;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input srst;
  input clk;
  input wr_en;
  input ram_full_i_reg_0;
  input rd_en;

  wire [0:0]E;
  wire clk;
  wire comp0;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  wire ram_full_comb;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_full_i_reg_0;
  wire rd_en;
  wire srst;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  gly_0_fifo_generator_v13_2_3_compare c0
       (.comp0(comp0),
        .v1_reg(v1_reg));
  gly_0_fifo_generator_v13_2_3_compare_9 c1
       (.comp0(comp0),
        .out(ram_full_fb_i),
        .ram_full_comb(ram_full_comb),
        .ram_full_i_reg(ram_full_i_reg_0),
        .rd_en(rd_en),
        .v1_reg_0(v1_reg_0),
        .wr_en(wr_en));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(ram_afull_fb));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_comb),
        .Q(ram_full_fb_i),
        .R(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_comb),
        .Q(ram_full_i),
        .R(srst));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module gly_0_wr_status_flags_ss_24
   (out,
    full,
    E,
    v1_reg,
    v1_reg_0,
    srst,
    clk,
    wr_en,
    ram_full_i_reg_0,
    rd_en);
  output out;
  output full;
  output [0:0]E;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input srst;
  input clk;
  input wr_en;
  input ram_full_i_reg_0;
  input rd_en;

  wire [0:0]E;
  wire clk;
  wire comp0;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  wire ram_full_comb;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_full_i_reg_0;
  wire rd_en;
  wire srst;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  gly_0_fifo_generator_v13_2_3_compare_26 c0
       (.comp0(comp0),
        .v1_reg(v1_reg));
  gly_0_fifo_generator_v13_2_3_compare_27 c1
       (.comp0(comp0),
        .out(ram_full_fb_i),
        .ram_full_comb(ram_full_comb),
        .ram_full_i_reg(ram_full_i_reg_0),
        .rd_en(rd_en),
        .v1_reg_0(v1_reg_0),
        .wr_en(wr_en));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(ram_afull_fb));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_comb),
        .Q(ram_full_fb_i),
        .R(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_comb),
        .Q(ram_full_i),
        .R(srst));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module gly_0_wr_status_flags_ss_44
   (out,
    full,
    E,
    v1_reg,
    v1_reg_0,
    srst,
    clk,
    wr_en,
    ram_full_i_reg_0,
    rd_en);
  output out;
  output full;
  output [0:0]E;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input srst;
  input clk;
  input wr_en;
  input ram_full_i_reg_0;
  input rd_en;

  wire [0:0]E;
  wire clk;
  wire comp0;
  (* DONT_TOUCH *) wire ram_afull_fb;
  (* DONT_TOUCH *) wire ram_afull_i;
  wire ram_full_comb;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_full_i_reg_0;
  wire rd_en;
  wire srst;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  gly_0_fifo_generator_v13_2_3_compare_46 c0
       (.comp0(comp0),
        .v1_reg(v1_reg));
  gly_0_fifo_generator_v13_2_3_compare_47 c1
       (.comp0(comp0),
        .out(ram_full_fb_i),
        .ram_full_comb(ram_full_comb),
        .ram_full_i_reg(ram_full_i_reg_0),
        .rd_en(rd_en),
        .v1_reg_0(v1_reg_0),
        .wr_en(wr_en));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(ram_afull_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(ram_afull_fb));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_comb),
        .Q(ram_full_fb_i),
        .R(srst));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_comb),
        .Q(ram_full_i),
        .R(srst));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RYuoasXcTxqZl4OypfcV41Dwu7SB3dkHbS3Cg0LFsj1QL3FtzeIRLNOj7siwa8I8T2D4oIY5scPT
OIYHJqI0EA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
c4RquQwHuC97o/rjIkwSApk/EDWuNTy6utZSdvrJqtGl8bh5FWGoojLTXZnMdZr7mYJTQp9fQHpp
HR1p28pRc2JEaj81rtfPyEJdSxz1D+830VGv1nxuRebLwPIiesN68abmxoPbFChRpgibQbJOYBIr
ep70Hj4GOkFunX6k/oY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r9X4FEpeftZaomzB7fpgYpps40t6c6MJRatNxnTXgNtJi0/qcV2fBXUrQ3thFBnFDzIglq3o1gQP
3AqRJJM68C6x2Da7CHIQkS9VGFDKy+qbhYW6QunksTEzZ3pMNDNhIJCJVKaPu/SdrtiY9kSqeK65
F9vIOmhQusKrhF/n2O25zp+ueG0/q6o7rVrYb+yIh2D4Y7DfgEkC1HSLzJwY13Xdkwvdu+SH8NPu
jU43IK8CpDJ6Thzrp8ek94KdHdhksWOtuG++IxSE+t+0/ZGO1bE3WeedfH/wpU6zVxDf6N8/QDoM
wsaaqk315/NY1QG/ahD+U5hOlBWTAIwXd7u/mQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oMKNfXyneL4p/ztU77XWHi3an+1tg4h1hSFrpp60j3DscSF7r5de0GfsSY6r49E0k95gZKMl64AH
1m9U1HQChoj2WLJMUwPqAOlLniOdLUF4J1znn5xYWdO340adDpDHMEPn8F3RFqLPwQLxRtcP60fS
KlL1e7Gt0EZG5WFXeUEE0G7O/TlLJRgZHs88DM53qWPH6dRe1UHF7e/29l505cEN9BKz0HhMUoMR
XEJwN1/szL0xqs7bEq2OcS8gr0SVfMKSw34u4kJ59tuRI43bCYs6xwolLag8bF8GA4ggX/03LE1X
NhDhKnjFNk4pksB+DejQcoGXMPx+RyILpLohIA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VzpnFpMOj1x8A+QYv8fgXtvioP+QqCbRn3LqvgMI3LHpbFdc5UQ4/K0cgdlFbwSGet/Fkt7Z3QPK
1UuGcBohDgvNj3XBFE3XfR4dwy0gKq/vVHD4gXtRf5UHeDtwSHg6c6ii0X0Iv2coI5bV+iwh8MxZ
eKW0i6yO94O/UsseyRmJDg7zumPWsJyNB2+Se17N2rLp1ZZ+Fpoqrl161TUEtQntfHUxeg1a0emb
VXJbSeuLk93zciARyc5XNwp2F/lWO+dAOHIVhi2wbbg+CxTlxnLgYBbE2KnvHFFNXUhKSLmp+DDR
+y712hQR6oTVXueG/kc1sLiU14FRC41zaSIKkA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
T2vtWi4yVyuAMDCgRlcOYSDYeCQ745ugoL5XAxPRQ55x0orQCShZ475xlcqQXN/z0iAOCRYE+9rp
5GM0ga6dsiYsXaqtwV9D05pheB1vJPHM0GsjPe0SVh/zNp9DiGmCJwuvzGYWxS9OfdQUolK2It/W
eTC/M1G5P28HiZ6mo2E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VLywuJoPfY6IoEMvT3Hu2J4GsnExnr9ttNgiROyfi7daULbXwsrsvLjPhOp35sgcsp5sYKO417QX
qToj+PVFzTjVcJdVlwS1OquA7pG5xpG0QTFiDCHxmzvRws9XHzrC3lns91RdtQ+oK5da9LqF17su
3zrGQLgkajZEO3sAdOo+c3Hm8hCtKL7Fpw9+D9GBMkyFPL0XAME93srKKEg2dnpBP9wiqAAtz290
e3NYFI+kfc8JdO86lrneDXywb7qei+NYBvlo1CabsNeOJE2IIB3+/MIpa1Tm8UL3/EPX0F/0h0UT
lqHnjXlJITkLWt0Dsommkj+4VdxJKEc6AwZz9Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cgCi4c4bD+N6ly/HUYB31UI4ciN5A91MiLIFBy/hVI/mDtD6oNQSZNDdSvw2zSZ2kpFxl7lJNUO/
HHQ5xGHnYyk1GLbfFCnA+v2NkK4QopnWsBNwukOtZ1G/MOTlgabnB1vjC6qo+Iue76bUTtHlLX34
fsm8NUXRfDC90WS9qBX5l1dm276KAsjgEjBBUAp05PUCpKRpCznv/xSCETq8GT955tV+b3y0zIzR
7ZZgSqRuQrYcQuGkDCUcSr4FUSsoZJnzAovJoRlUdiLw0/05YYcOzPFakmcL/PH+YKKEXxKp9x/L
syksIpZrfqgeXGuKKS/J1VKh0by9aUrgW4MUPQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vddVamdXZwjeUBERcnnsTjyFiG+Z0ptDTOJnykd0uS9Vsparjx+lUYAQGqEwY2cntpoxlcCDpmG3
HMDvf1Xducg6A3nLEBEXdoJAOA+8uFM4IY2RHg5uRM27tgf0ug23mePHMk4hQKuGj//bkmSktCap
2K9OQujm1oCwDuk/F6LXzj4W1FIbyBN152H7UKRKejFmjfewar4kbRHy+AyEPAU/TTLP4lI6u3WW
MoVz4g0prCgtBVtsqOWDKgdtIFfLerFK1JuhcTwsf1aAsIEXEFCLwkuT9hTsFwimLVH1NAO8mo7m
MTL69ORFHyRmmk8Yf1TFLGVCvWh1ALD5xFQlgA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 197920)
`pragma protect data_block
jSrBdxWpcbnRnJTBs3wcP88kKcDqyCyGlSlsLogqNP/bCez7gcuusWenKGI03+kNZ4X1sFUv8/Bg
WA6Kr67L21gi5CTkXh3HFB6TDXRPD9WWS6mTdqh8n15INgL1C5oh3oR28VKAm3Of3H9bkqAeT5Ub
lbbS0AmF0Osb+f2zpcHh2zG4CSlCWk8DPi4jsk/qozAiBIq0jex6QDF8K4QzCNz1vf4b3nj+Da6M
0CoQpoPGsLxv/RJ3BcjfSX/8iVzkYfI8nKXAZarTUvX3+BiZkjhyhhRYQe5MTCNoT9mb5m1I11fd
udqvOMh1Z7wVB90Zc+H+K69Zk0W8lW4AE6gfnww/RTOSNPCW9dCwJ0I0DYNUtxGUR6v1Tv7S+eDk
bUNHg3uaiT+GLqdXcoaMg6SJcPE9jy+wZnwGD+yosJT55SV4/X1V/f328LvnCQvh08Bq+Z3RObxk
fKcOivcnGRcSftv2d8KTcrbM8FqZQdvQDG94f86DdDC09FdmYtxFb6wCJLKiFPFk88ChQvYgsC8d
pUj5nV2LBvh5SySB3jrYawOHUjTrbDMbuiHCx8iFHOBYg18ub5Oo/0W8bF+r8Bjs9kHUzucva4+1
lWNXVroSC+TIlLdMClBZ2xoQignp+aKToxxQ97OEAa57nsTTTb0DmFl+hhcER9/0sMzOq1GP7yQr
DJA7TC8OaxgjzCARxaAVPTmHE33ijg1yEfLim5TwBpaRImDbW68nscg3DvbHeFQ0KpRih8mxbsxx
JKTIA0CN0t530LxvxMLFhTAJgpD8Dhdo5b0CxDpNtrZ3YpQiqva7zFe8CydmqHQ5Kr/b5FfmOOJP
7sUUTZcYaLPqIAocx4Q0gpGcT4f/zlN96XRnD21GulIUJeQLdjfDGPfyR7AGdMtlku4McgtlGTzb
KUVn06hJqEI3ZqaBM8X9cITWBd9fXW1QXsiUX4M1JPLluDfhDj60zuTX3/11kEp/vY8r/ckYpuUg
YTJ6gGDwQmwSDOI99lx69mDK2w95fc5VJ/B36PsL4rTsqWOihGPaxeFHFzaowN28zkCQ0TtVpyZa
zdUHi3rFzUPyMo9jHLNICt+2IwyBM05my7P3pny+DPbuqFeMK24FuP2kfQjw2k21uJQuRvKHXPgI
XjzWJE3qf+gv49MkOw2iQoJcgmzqftddjA21an0gKWSA2ODOgLc3cfKGP8Vb2Jr9WTMEM0krebZd
kcHbVJH9Abt/BuChEW+zLPXmIZDaQ2PB8jk8+H/MaLSlCBU4JoAIcC38S7eunXLVMAHOspuf0Lqv
iYYfQ0yVOn+Rnf22VS2sDpqr6gwbzUpNyzPaPqpVdbMFNac9yQa6jfzmXu2HwVGTxcN3D5MS7jzT
v1a0U7jAkShLg5wGy9wD8sNXpRW1PDd2PUHMBULvetzEvc1TectKb5L6CbNxI8Xvx3GdRSsaveKo
OoAfoKl5D7DAcdC7EVf0dn1EGF4A/xUR8cLzTD9v+OcWzMfMd5TQUhzuclQo1Oe969tHG4pemP6W
FsP44/kA0xk1eJ9+/9Nwa14Qs4rsS4eJ6KFpMd6tbL+nXv+MVRo/2eNKw0lO+tbyhh4VDD5EgbvI
NA7SmXCqAT1ljD7rDRp38GgRGgpxNafO3/B2bCHrjh+sOrIp64tvqCXq9vwe80y29DVb+Zne3Bjo
F+HQOPoOsGXsvIBF6yd3ABLdFt5YRp4pJoRtT79oUmj0y2TCqp1Oq+0ZLd7nQmHy5s96kXwB0BSx
CBUb9/vI4VCQMGsK/Q+QSEOrdBhphqhlz4QMAEd0fJJCINYFOsvazw1QYS5G1TyfIOgogEgCBcvp
7FO2cr5w3f0k8cd3tT1+ux1mAbg8m9upslsu/1hlQmCwPHt2T/+ug7WNM2kaFWzFAGokL5pNdZaR
5WxC1gyaDI3QsjLIMuVgPQzb6+D8sUyY1WNLTfnWz+irLdXb26jIYuWwr33gaiANN/E44W+ghHpE
dryNZ4t8XrNTapiMGx8T4/oQdQxMlF40WTVebXJAdT/XAN8UTg38+BOkMg4LRvXna6h2IOu2uEgh
Cyzi6+bXCgZ8kiFJK8G1uIUS2ZxQrRbj2ZIhpwSU9Fp7cAzzRW0d79Zkdm5IkpssJ7F7FE3ylgkc
GVQWeVvUFDJSgdhEeFAyxBk9XybCY3/aSYZsfiLk6dMj76xcaRIvk8FnXjaLSexQ98ucdA8jlxnB
WnbRsmsXND5hF0S47sWDexOvkroMoWJOXugoQVv4WbDvUlXYqGsZV5F0mxx39G/xnTPRUnHvvycc
hwOxiPiHdlIyPYN6phlUXpwIgRBXuU+qVKvj89WceuwS+3c/BNBBXohytOlXWZ2xgOvNJS3w5MN8
cJpgMctY9GDtJwxC0fH/akdSkv+jaE4NFnOUyTnv1JvBVsc6HV5KExjxYsgAzQ06hnkrjoR9fv3H
sFmtHC9C0ROqBt+HcY0Et6s3fa+dwswbKErITeXLplcaCh/5G/9qo7WSJuOlMVY7GIcjLn89nfj5
yy1cUkwQr9GMVTtt0YxRTR7ybYOg7NklZaoqYezTZwG4hJHPHrHyvKOdZt+8lUek9WraEy0UW5kk
8BC/lhbk8wEGq07laowCOtWPm2940KjxyrrEAMEs3n6k486d5OZMP9tZ05NLBG08UJjdqoZLjObq
ctJwTNyPXtMhDxMcnvRq0cGOsVybCvAYgdUkDVD+fTlMA4Io+rlKnxfdq4z5jZWF5WzzrUIyXvLs
Tmb8aj7dUqQol3SCX+lqIpuk7pN+0Hmh/X1FSTqTWD0xmBdO76JgJaRpuxWHorMvt+bwFmEFS2OL
9GIEho2m3BQRY+TdXSpb2ey1RFCUZIwzcklGeT1FUNUGpYgQrBBx3SLIUGQoBEtAaDQD2TgsoB8f
r9gd9xlZHQQ+lz6u/2X+G3RmR+8ZN8QwnVK9PYCzRMgynTP64QgFDs4pYOkf0wQgut4v9BwoJ3FL
xjKZiGEiOxmlotOcM7q8pUsedvWanAbvRYGn5mZA0kLx9FfMkXTLMF5hd9cZicvPeHp//n0nAMqE
OzDZhgnTyPr8ah6gf+oZ+t3pTaKuQISLoANpQQk1E/wGpQDffexrHhQSKXL8Zu8bFqISbwndilf/
xtl0fO3VJ+sgGh9PR0dBaUPfDENVB5Qc0Vn9XCdy8wV7aOHRTvvrJo5HFe8xnxn+qR9tuBZw/gUd
+2f4L9GnNMf8qUVB8fE1XVN5CbgR1/frz22buTC4ppHrhub237KlO6KVzxzj+Qp6+Gz+6kVDxF+5
/He4KOxEvPRJXsIDRz1mJEVTUMGqs6dDzgFX9llhuAyXMZtx/BLDD2xbtazX6DXiWRe1krdsh519
zI4a37Aw/iNjEHSwYA/TZUlhcwAYTCrJYWSbllRPmkQm3W56Di3SmzKjN5ROWLgx8AKqaDc5pbD0
rSFxdGqAvnB9hfDuS+2DPNCduumhXw/ijXZJDoPNQgxoDzDtCqxcKxrGi/IwWDd9TtECAyouuqij
53xOlSljpW4QH4uOSZ8wSerHgEGxbhnxmVjGpbej3eM35L2cdeoP6tfrgVP6DMTEWq4EAh67VrKL
WqKUKECDmGjimInZuHNjKDK1ePZxxmTF2HsV1GEZKp8SkkLcFXiLomkwGCPgoSWw/eweGzzIJbq/
UeefS35Y3Ubd7fBM+kfR7vV4BiXSR3h1FpvcUUi8UQlIqbP10hPKzokPtKimJS2Xyh4xN/EuuwOs
tEYlhlw+hlG3XJG527d/Rn8LoxxEm9wHBEI0qhzPs2oGjVzHVJWiKN3xaYAeesU2Z8o6k1E/7Q6p
h+KndzGNij3SUFxAbbwe0AQEe4IPn6mJfcNyUTD0gKLK/0rWucqB/JJ+uNoLJKeY7yie0NyY+Bfa
8gaOuj+k0CDKygvyDhstJG4EJWjh6PFKuFlyU10jJTlXN0lAjtRKbW+7PqRG6sy5Km5aMyuY0Wa3
lX1ZDilhMzCA2cs8Jsji3HVNr+YNMm69QzCx5ELzqbSg+ahnXFN5vcaAaiUjxEb4uGaQpYr4Uw39
o77xXwbOtJ1SDU604L1C72S9GiuJpcob1orEcCm9fNJGy3F1Pfr6Ol1vqhAcKUUvX9UWTzH5LGgB
QHmck9GyVpfe1FBO41MfzcfN/FQiHKkfwMsEhCOIA9ZEFqG1WvXDJfBTn5j2NxPQMYduosAbc9cE
cSXsIdakzJMblEu8pLLf9XExU5gTOUeiamyiFcbw3sOp4RU0FpVl9E8Z6BVG0PWeqzWdOj416mpQ
sSUOp6Uy81lUZ7YJiDEsrI3gUodysfT5hnnTD9TitqPsdB7FTqcEH1y5sjIUJ45CVZ3VeNZ1ZKNy
FHR8ucBPoqkGaAKtcMrW3EdMM/DgR3SaiK2a9D5Yd27+8ZJvSevKvlZjwqC3mtwxuNZ8cnXTCWNa
RaZPelB+F7CTj/Vde7RA6KlJ4nBcK/wePnO+I0zep3HXw1eaF62Mk1I82IZIVNLRPWuBdJiCYTRS
C9sUOCcmJLilU6s64RWjpIjr5cBQE87reqGRlS+H0za6RI3oLo1ZWJ29WVas9LwdHBfa3knCiJPS
sKrgwEB+WvYP+5DTSV0BCDYAbDOezC2uBgG2wv41Ld6M/ZhEUDlVmGxWQpdYp8GARyEiHYEBK+tA
1fqqNQLHiAF7KfsecDySQlYeJJtCXRGkIOIM9xLBm3AYtiOxHs23MdmeDRI8OqIVc8KOsdZxkL48
5sPAGbo2fcDWBVheTIm9AiiRfOoidf9IVBb5KuHg0FlfaXREEZVDxfoLXm2vxOntHu/PgguG766x
zs1jEThymLOWdzNOAiAE8JDF+tNBRwRjOa3p2UEKoLwV7n/bghLOQQkw3YTKbN1cm/wKr//8Yj0V
UvX+2BxTclI7Ctw1a6kPp/z+eQOldgrevf1u1J2ucMC5EuC76U1UANP6Vy2U3yA2HuVznllSUbQp
jBM3VLabfin9DhVIjy45ADcBNcgGs3XWUz5Lq9LXo3/tBMNP04EoHKHDGg85PDF4/Vor6x042nti
bWjM5ECfb8q9v0SFWVR43IhP1cykTQo4dcMVVhKqh6k3ltZQEF1G/pL6NY7+fgsxF4X1k7TRQ0Z7
YynXJpoGPHrXoFH2za8qd3LMkrVXUEYIF/PLB4fk9hOJN2YHZ43EirZBaUjETdspDUwvGo0qSqqA
2jUJWgyUj8kno81q7ZOvaLwnTd88NHR6k0Fw9ibaiSFTP4fHAOtvv9l8NnjGmty+6Egr7DHgCl4m
h2ghmW3wwBkqhvsFjGE9pjlvnjud8wWRrtPHNAbf4UVWrkHVaDqQ/wE5L7PXD08k6bDgIJLybnML
y0vK8T1ExyP2o82M948y+ynfDP+Vc0kmYgySdfnaayL9fwCnzWbop1UwAVe+cHKPIWdvj+I9csxB
sKB0hB/WFxFLz3xhG/LINob9dzSim9pHQhlFXo4z9AmVPuJ5qk33NYal47uil5f+RZ95/0eKEghk
hVf9ekAdpNH81aT+BsfWscr6AJ82vzggF5G8SNjffv1Q4cADfkfkVZdX/JjnvQ9+qJAhNxw4DDi9
5Vvx/+455DjDwiI1kXgPJEmt+K0wb0zW3iHFc7xgUcUpq+y9G7vHirBIIArTL3anh256r4E6togA
+GnoTZY3aVY4u95c0DfDiAVo17Cu0SmUaumQZt2IfrG5//1DERMFTUVUfVIY1n5FmpB/DaJZGWCn
SghzmFkgsc/jNtZX8pIDeF4YzGqj7euTlCGL5tLkK5xriqHzfMW+mMFa4/HjUiLA9o49LVUS/z3l
i1fLo0AybPYxSOODM2iNtRza5QO1s6eG8EgAvrJXfL0kwvlCbYONdaNthctm3xan2XXewBnV9YtS
xNQZo35iT6WGOzdCW9m98ILzRvJcfULw8VSRL97ITtJdB7MGw9+inxtLr2Bo4ZCMLQNTG7ezATs+
tK0llfiHi8YYzBEoBOIe4Rn/vGHoolOlTJQdHbfsbe+NPDe0nVStRl934oO5o+1HWDOjvb1cPs/1
gLox7E/MH9GFYIooHUoqlr7rmIaQdldgLmCf2EPl7cUpnF3Q9VdLlGMI5rlESl91ER9pnD0Z5kJ6
PjjzA+yT8aMEHfsiMofZ2ZMoEvhtKyJVJVuSiYKXciM6Mbx3hCu+NJqj0nD27Bx7B08tfkcse8Bz
wwodOE+Kpj7Ufa48/EqFkoyYQg3Qh/Q+XI9m5nVAe6LIrNF8/vOsBkz16md6f/kreMGgkaeKIh+w
oyP+Ue0RXy5DKc2x/Ag1KWke+MOmlhDhDSLiEiYfUwa3M8djV0AuiiTLmiqnvvQr12pPJG5br20v
fOmBrTkXeTUVZF7kKLfxYMXm++0omrJr9OYFaJInaz3krzX5eYR7kN5BhsUdqqa9oRIocjUCWif5
NN2eo2VLWNxnZ348lTv+G+w5GG3ROCfoBHFCyONm4fvBh0EnWOFE8WL0PXOivZhV6f5egb5d8Jyg
me95Fjv/KfSRGCRVGhioWOr0zZri8gnDjD6G1hNWXxmn27kmSKfmqRqLVuadIZ9whNJgONgcMhV5
klgyF5otYbM77UX2kXDBcO0TJxbH0C9S1DLK0kB9wAAvrJThO+7ur2l0vUB6pBlox6dacPHfgKXf
rpjBURF2dhp9JF1Yn2ajNtkyRwFFeVFpUQK0fY/7xfCXSWw3fwUpTcgTJGLtOrUrABy7m+Z+cNy7
UvNRr6q2Zonk6aZQqI4D39ceyCK5OVVZ825BKYtPH6LNyBQSsygZ2x7+g0fjKX0Zfi+PIj5yE+Sk
iyI7qzp/LenJEC6gtYweLW0+/n0YMWp7P/+mpfxQAJMoxockXXQIjwBHUtoTZl4m4ncSZteFUEjS
Rwz9Tvehi0d+aRothIWYRmd5wCe8Nl9e6r6VnEm3LH1jApAb1ytNCC3zriyeTjcQpgbFfKXCLZiC
RI9/mUec+gDDanNYqGzrJ73KZFCnGQ56snHG1B9qrkjydWAXeilOv5K9CmA50p/jn6gQglXze6Kn
fmnmQg21+0Itc/aYm/8fVd2g0LAZd7EjZlBxSSCc5aoRb+s907mAa1fPJZb2QuXdk/EWJgywr8DI
Iybp+HO6j+0DBWxQVG/8afNHzBLRLr5OYBvVRwYjlDDzwPf/az/wR0LoYJ3nAiWfBayPG3WXEtUa
bOvYrwrHfO99cSGbwPUdVg4homMpqAoO4EyRwWqIH3E3P+G8YuofkhknQmJGi0P/Ls4sAb0i6iUP
OEoQPs0xVABPhV7qiZFyyHMfzr2yu+T5frLLZeAZ72ELG4XGY4vbNB88a8bGpQjnP2q336RekHpI
4/CgyXVVFiwVq8rrM8p//CJrbyZUklQdCJ1TiYtNUEmw/NeiDvkVCtTOotGSGVLn9MD6hd/usb0R
rK3m2KlMYLGTqtfsK9n90T7nx2LfiLkur4ilE5Pw/B4nmMq5CTNjdVeSCl5mjD/XP9IxkaLBQxX8
ZjXqGxvcSHECL0ADUM+7c8+cMz3uFRu+wjTImm9w1bEZrvHaQgRnyRoCjjcCNN4la8+ZmGMKKHF2
DxwRCza+af0ypRZlPNxKno5z+SAy7zubynrn8iFBM9QYViWywm9W1bm3rSaIphUk4QlWGRTT/31U
6c7Zn3z+qkh6S4G94cg8+CqVnw8LHTfgXNlgaGr9xSDv4xbqXUAFCIXKhxPjojsxXbI3itpkguvT
tq74Xu10d+LU2xDxgxKFZJQ42bXc86UW8Vzb0fLi3tah/DQ4L4MXGvwezcioMC2FySbU50Jpc3hD
wXSg/VAWrgaD08+W3StZz7DgCvvSHpVvW0pH9txCbtOWLsVR0gLffYVeZoEAMglphMVTYqseuNVZ
AvjuaLzgJ3XxJjQ/RZaKP6ny7L1BrWeD9CFtQwDkSX29kN1ZIV6bT6IrW4yV/jcRBKxyS59mz59K
b9isIHPIpelQtNF1hVScGXtZlp5G6olcvb5yh8nRQMTpYEAn2jyUCvFZzv9jkA0dRdXZedjix2ON
MqyQ5u+wzuCGaQvs08liiW8vh+WiYplTpYp+t5DwBf+KNDJqGjb9DwfdPoXNGed6j+r/TACiL6An
U+HRQ+c+VodSGck754BSbUocnMGbqO7OjyBWBjLCOKYNRDZAzsGgNGrEo4wOmUdCbzRrV5yWKHNA
+Y9oFR5PygkDEQ5mbYSkaXizM/0WBpRrSPwzuj6GrEZ3r+G781g3YSMmulVFw/+ZMrl4YR0zOhCA
KDBz1DIRec9YYslpIS3Xe9rFmm2810Ye4QmHLmo/aXeICk44ZGCuHRqyUhqZMxBIwCI0BOAW0Hi7
7XCWyF6i7pxisbMM+HOlIo/Vnx5kiuSux6xTGuLL7ad2CoJRZS4yotEVlTB58DpTEhZlQbo7JqZi
bc+tnHVjkP7vBjtj77gSTZNgiGE+puGGntwR2mqV2H7G6KQRBNr5phnSvdJaGCP73TXup4bNR5B0
mSGcWQcxstpon3q4LhiMQEauv+E6uf5etmLe7wOVeFXcByDmnkyFwyUu8MdBSEaqKGGl4TJ2RIpd
ao8iWbMkGcRi3m0L6U4GCYaJMf4sOQ6r684F+hk9kpy2W5OGiWjvJ/xjGksp71CB1K4SEaUcxyZN
qxmVHmyO3sdP2xpsu1WBdM+YfbyidLIQGT+/7UTV/rIL36wcdSQKG5EKz7lR0xB3tRsQQCLjxWMS
V2bzrUaOc3q1LwJI+im2rzqMU/aWx8mhh44GJ2VkB41iZ7zIiwoCl9EkNVrYFxtJh3qdiEk9rbon
Qd09ywIOSKJJm6Bn7h90ACvWAgcRF5wBtMlcApDU86aCBObPj0zAi7N1jWb+6xLFCGhL5cHdbYPj
awmhCsTMWiJaBntI1FyTx98h4Sj4DThWT4W8afW/IZ0AV9PXKPSFsQIJFRitqsf5xva7JIqjHCFa
xzvHhBg1w7iDpFXOT8QlX+wdKGUhazEurAj2Lb3mW8GQPo29VZOduLCHhcM2R4tWxOfeL8Ed7bbs
quT3pXv15ngjcNJmxOt7kNlvIrwf6PvqppRcuph+1NKEmWh1o9aiMfHNhC2ciTX7liqyPqmUhkiQ
0hrtUchxYe6zfj5OAR7sdpOnwIOb91p2QBRA+IJVbXol9kuNosorxnL7jdvhM89lZ1so+WqeXppV
yWGDkHWLhK2chyi+U1HEBV4o21D3i6VvhefIZlRFn4LQH+Aq4qYITCPnFaa/FApIK7LeRbqUlRI2
fXTgHST+hO/BKVRF43oZCarkHcB2ksk6dt6haxPn/daGBmFE/s2UlBAKCmZDW9Z9hLCc/N0oZjPV
Zwe5ODgz2X//6UJ3bDw3NEDiGv5xze7UO/WsDo+ZEWAkqMoaB9VuElWz3PIfi7XgC9PLFWlRTYKk
xqvZ5HLJSuM5QzIS0/3MEnVG2yX5ZX0q6Du2maJmuGMu1wXrQsmVcbPn2H8EDiLCCdEBcgF+I034
ncjqn8+5no+0jmrj30nVHFoTLqSO4A7yruzSY4VPi0xtI8HB01v+pNAhy+S3jhWnaq0Pkf4JI2aW
ZMuJBrfnLRPZ94ePrtUsewDNVChNAFicUp/PSuCIkMqqJo3azfPJfXqyiDddczcsZqWI8p+Fw0hD
sXJ/8GFURpQQdAb8TqxZOBhP+d0FAM0lY01bAFLNYKgoXFsj4kp2ak+X+Ca19FcdFOmiInaRu6AV
8epO5B4FlHiwH2MawKgix+C8TT5U9FzsFAuFRQl422bmf9u/MrUJPusd7u7u15RpA6K3mQ6L9Kg8
I8C1S7c20449tQ1dVwmV03QAOeODZPMDX2MVe1rNSGPH/lOO4lLHjChtDSG93T73UPqaQ8tvh5iG
6xD4fF52vjftlpaMruYfOP9K87yQwO6XgpBEmA5FoCqnWyt0ryD2+/3b1qkTg2PHioth4IRt+JD0
QUF0kzyal2TsFqoiLDnqO0lE8tqP+PxJN0qL7PAv9iIjIu/o5LOOAPTakzbDg4wB0sfGX+y0Isk7
Ap8G/Jlnv0XPuMz26liuuC8VQYaVRQFgSgvD1HUyd/gorLo27yM+pnPz1JznMarHzqEOma4mc1jj
ilBd79ujdelpTu6BT8hUBxSQ7QAXVWc+Cn6/nhdMloj8tPlb8d4WwMBgeaFdF2pQSigskLlvYhPH
HM1z9goQB1W6cpigXpzhuDRVubG0TTKG89KPkjRD3idce+THdS5GpXSXP32UeVm0fWtK0+lqYwye
pNbmMpKD0SRmRqPxwMKBz0Ogmdrk1dClWmbI5iLk/xiRiTUlj/11ol7p96wjIeEhfBYRcCp9QHO4
wcZic2RLDFL18NgzrZu0VECpzlQ8V9GP41RDi8JzL+XzasqDwwK1ShhmJ8woBqopqEXyFA+kNCYv
bV+daqxT7YCPY8/gLRXIQTDjFziAX171UsvsWoo0x0rkaI/a/fFeERZDZdkUcXMSiFtKYEVycekr
qeN9VSPCqPVgmEqrhbunBZUakXrBriQKVFBMK5VykTiPHUdferoqhOfD/0P5E/RPjddUPWJ2Jz/K
PdDMPbyc07NiCspuVqPZ1TNiFJAGbw5TCzZsg7O+LVsGQNQ7Dmh5ylZmSulqHaWWwUAaEpHeQPFd
InXA/HeVNJITr6rZcG4kfZCuAh/IPmPkhQLTBVy10m7zdTbVz4takbG0Fjb0v4QfMKBgcrqoJUra
vSO01MUpKVz+aAFGQtnrtyy+bIN+yCnQPOvcBRMpQO4ovS7ysfBbVG7o+E9M+kV5VJoa1tZp5Emx
doWCEFR8GydMUDA4nwJ89vOMob6rV/1EQ+n874mtcBO6qxmnfUQ6seGWhkFIqpXgmRxxa8irHxgM
kGhf8mOVeOyYTLBk/QhA59gXZoXoTAnwdlOx9F4Kaby97Nhpj53yIFv3hVzUCMBXA96nuld2zDip
WP0iPWPBasCED+yS09Hn7wQbuhmviEQ/PLnhQEUk/tzpNX160Bm18jhPpQglwxmpikdhh8aTtB1d
OTmmAddOmhrRSNXK21HGijyQTEKNtI+DGTzIJmJBv/7M54Glp4PBjqwzxAAGV0KvF1akf0BWH2d9
UKlgW/as3dmqQa4WDgqRUGOpUhZy3OAUVGvoAsAXYmjPkcpctOB4HPzwK7RPiw0AMWgygDHeAgEM
jg1yxVvPTbgzow3toUVYYqof9xGZLmVV5ZAPEIHHyngjU1/iMJLsgIhWHkxmJZ8osUGaVsem+DxN
AJR6oc4siJYbfVR0BcWhwmCIDCfhEmSRy1mXYUxsZQCUblIMeWVkwCW3+SrDuFwWqxFdr+jwTpTG
+DdE24tFUyV1o2XwuyhvoXxBiS+pBincqSYzpq6te+tGZXCXAb70VjLIzx6ONKUXYEW1T57/hatx
s5nPRmqIn5E16mae5ycs7HU7WDJMaOkisB46K9AOjdPUsEsjVDgYvlbWJoIUa6+DsTWg2wGWkjf6
0NElVPspgyrbA3DLolPLjmXG1ChvXOhaeIMLjQJek6ZrWpAnSRkTvqASSwYaTFofGxMS17IZYVH9
1yBcOSZoAiaZpbGtd4n4ip+ITLUqjsqv/z+9b7xW8ZC7FhMUXaBV4a5ZzOC4w/+FKXV9eu62LUxo
DbvVMIiREaO7/ZhmIDWl0KsmulAePTiv3ndmCJI8T2KXlcDas91nqsoGEGAGtkpns8YXskvTRg04
HwoIJnnqy8DsvKEyIjbH10QYfDxu233+yiu4CKO+/Us5xrZd6yIPacVhHswKi5ZFiKbtLuZIWxVh
/yvh8/TiVbnZF0IB/N5H+v5EO3NnBjaBMF7/iWky5L/x44lci0JLG7/ekTJdqFZJgyP5+RnBEGWe
XoteJzghDoYb3AzPu6/vQmHPafJ25Dy5PpgfJ2AqQpeWl4RqUeuOPgTDWs0TM9+M6GxQnSr10Cyh
CLPmW8eafjJrVTJl48y0hdk1lOrvgLEi98z3Crm4rCvRj5UPnstTlr0X6/WXFnr9nrhtMiUJtpTq
BOxG+1TNEmE9RX7zQHZh0Bly3ysho4xp5BokVuYQZZLCug5jK1kH8T36WZdldOe8rX17Xj9Z5HC/
bweaqK8Xkp5xNdXkhfkv6ReyEebWFkdfbS6oiHPWIDqgMV4Wxjh+crjgIjolaTrPdSXmrY9xMDMc
/gd+4KULi2SGL4Y/tqNBJYqbhMLRI39Q4s6XgYphLv3KatBPLI9ti23cCcENo1XCOB/5o4gCX6aQ
o2pxNuz5ADy/xQM+wzUrTW4G4leAXJVV4uGIVm8ppk9Pt/FyPJiO5XAeKIt4QgMPU+mPYaXTE2LX
0XCd9VB01vaqGC0SX1qrZhUFojTWoyY0lSXcaC77p/2J/HZwaWXWQ9nSYKxJSFMfIFLpRzE2suqC
At+i0VJEt7J/2Hm03Wo02vQ66s56sJTZI3NeHYneNpTgQkwBj38+dFiAEZlAGRZrm19tU3UjpvjB
Mv5Q7Sxg4MujVY6IY0cvMBQgwDBcliCKLH6SKaSOT64gB+TZbwNM0MKtErdBl4itv57qNDIztoDv
0HDFzt+dZX+pOcK8cU6SkBO/QNZs+ocs6bNMf9qWxdgUIMjz9IAIV1GsBr8RlRAgx37q2KMDDeCL
iUMw3OTLPHG1tXag+uRREQIhVK7ioLIa862Q/okGR/HW0PJlSdpvE/1AIMZOrd33McQGUTaJ6q7d
o1vr/lhG8JVZHOf5ZI3IXpJzlug0pmhLiBr/UIJujaSaYQkTtcn6ofucObC9StdaWqWrWnshkQ2C
GZG1HskmRxQx2lM1qatkLDmoIvha+OV2DOJIpwuoBJ1unRF0GCFchjDnMFKs0269+BXh7NMi+c/J
i6qPPByDfUCJnC72qkzpO0aEigZzgWMY8Kv0qQxA+m5jlgzifXKJkUnjIvMepFrFanShrGEClgTo
536xYbYW/ii9X3xT72NLUxllfRShslYA+XBsu/POCDHh2+vkEas9d6q7HgWhNoSkZTc27MUdnhiP
2cN5IwG2pk58p3S4wAGXxnotXFlvH03KaBSkW2F750dQOmctxaZA8riUE6GOQAd6k7kBq2e2lpfP
hhWW2f4bKkKnrjlhnPU7IS6wi3i7ojsJUB7TZGjY9/ZSGcXqwTqO8h5xp+eXbIUfG9UyOl8Wo7zl
4h2UoBjga2+42EThl4NmqDYxAo1U6KOGIXCv/we7JSZWNSrSSwMb9awFuNiIW0am/eamOk2N1HE8
2MlBTEu/gy8GrEyKISZLsrk97uAUbh69BbjEljF4MmVY8QdqCN/81fGm76uhlyA9GlChgQB5HYA/
DzOPX4w8CcMQ9TL1XfxZnXI3OMZ11oWeOmJ5zexXVpizfx8sv46iQBeDrUWuj2yt4Sltobalyghm
7Q3xVZiCvqlGWqrJ4E4YPt9uvRfL7NqyrqKgNROMEfwfNnE8Rq58dHV/7Hc0tMMt5C7SM6fshrev
p20uouIMInih0h12ysTbuaLzFet1cJQ/HaiYuj2wfF9VzQzZx9nmdwSmhVxdChH2G7hpbea/PAFa
w5pFQHvm6n70v6V3CqKC9KFNWmjR1+TigH5reOs+X3ZxlxOY/yDJmhhrndNwpim4LUPRkkBGo+uT
UNftkAzyr71ZP3tJhHHG0jl2sQRAPBxehZlIiHKrVMmC6nSws81yGygbfTlvjMJd3NpvXUENDSoY
ezT9Mx29bFXw7zcxlQ5Nbx25Yq6fR4OzYPGvCVqAdcPoQqCdz1TaouoEr3JKyVSB4Fvc7MjLLPCh
1IMRuubQyGjZIUZyDCBBx4bbiroyylk3LbMUiUsfWshKnp/thnEOVi+4zxLrmnUqCOWeGVoZ/IhY
EvfFzl4LwPpwBPdH50FoScVN/O87eSzB5ZQv+DdFvp9ZicZkoKVPbxn/w2u+0rV80mnkzVLTczJp
FR4KKA8I+b2xUJsJuWVQ6ftrGePB3x6irlw+J5xJBf0VyO8IYPQLyhnGWrsH2pOMdKs7+/h5pV92
NIZJpqgSRCGW14BMLL0n4UG4lnFttRhwBi+kd+fqQ7nnYfzMvUZETDHw4yhtctmzto93872bH6Nt
1aGfSVSepIVnuV5ZnsscXpaDs2LCS67D6CVLnr1Ni+LnUOBZSPXleTClzo85ABwf4qo8Xk4iSZXK
XieeOu2twMWk+OAvkkVh1ZF+7G91bY2drC8X+tQ4WpPDDac5kb8ieOz8wvZQ2R1b5qnLx2UJDyyN
D0SwNiFLLLpTBqfbb4GuquljytY6tUoCv65liBJelm13GL3E9VvZXB4xdlhi7H4Z28bfREOAibf0
TBhEMxy6Nc728aBwoIw6HfYyvihDjeMyHVqvimqPNCmc28gKRuJ74ILxAgjk3FttOkK3Aoo5hi1G
qie+pZT65ehLdl4kL5aBgTwnMqILFCf6Qyewdm+2Npc4RW/P4cRGMaiXsdouG7dDvTwkeg/jkuqd
l/U98ofEXkpj9v29h89iFDPg2jFrAghQ7BlCAd8jhXJKVQuajQT2K7dOjho9vyrEQDRa/8okHBOq
qQqX7T20Re4j0CMCzJE+GDRPMKtMZkhsL1JJWw9g1mfHLYAXLWSRQeQkHd+5h2QHH8o+hcOPaO4T
MCZK+wlfFvhukIgrgHDP0Z8yyQnGYNwfeNe6em2EAyfYXgmXBSc6PhBX4dTEgsRO7ch49agIIbVC
wqQ/6SgiLvzYd+t8w4YtXhYnkl0daudClI/Qq5gjQLs3lacH14vyb3H5ZAYA4i27IWwurIJQJvyw
AZDOUnTO8767gbollfck11QUNSX2MUMkKgOIjTpPghuaOetysCS/+Ptk7q3zViqLZFYiwlnydPd7
ds9GMPnnmZ2zMMrNFnSI8p/9DQ8atpfdpgKJawH4LapDR449lewEzRsIig6U2xuH6LdERgJgEtFw
G6AVJyij65TMsQIhHn3qtY8en7t4jsJJtSYwBo/bOHhjHRK7T/FB/NCaatPkcEfD/P2GDG3j43+L
O0hNWbCYI++K0Sj0dWdMI46mLurrdKUXQkwsVRa2uooYBmmtui1GuJb5klWDAt84R0WFDCIFE0HP
tLTvmbJihWQOwuwf1WTyT9H8imU6Ehpd+1LIx3fa04eaJ6EdIGKcDLmowmgjSmO62/JcJ1JT5Doy
hdJj+vC2Ou6/DHw/jU97zn0VSMlrKd42eYNUi+NVfEqlwDmh0LtfY+xdNLJzhcfBRuv7kWCZYLdC
K+y20cdZE7aFN3a6l8Z28Fhce6gs7gpMw3AgXzA36K6D9eKGzzWnT/VxbFn9NN+MQm1JY0CkhOdA
GTBbCqH+P5RD5mJymswII6apC60ZJ2ieCp/wg2bH6KGRsCXnYBJZ1ZOy8jKU8j6cspPbB2SF+mGc
lJ7jIQ0cSu/mXo9S0BLchQcJZmuwJl2v1p6EuGVk0RVxKNKGV+NL3pBpy+msDelXjmbyRVkCHfiO
6Uq6q7UibdsLEbv0Rv+wi83tRYi8h9TqIaFyypoxTpTRZNron8plyf9FRdM832EATU5nhsoLstyr
uMJSnxT/tcmGCZvRvZU8U/VEGq+97w/XD8ismxUBLLy2owFWW7mRiYB/YEsqh5ucZLsnQbK5onMo
Btx/3KzpsUNr4hYNuFVb+U0Jalq65Hb+1VgEmAsDADcoo8u/+IMbLYcx67+gPx3ryPIF99GkTPhU
Pze+gzLgCkdQXz8R5216wxYdmTgTIV+WatqYJdTJCESmE34Rb4V6b7vqH+k8t46UmrosKlzV2plI
lzk9XdcnxRLy6sDVLCZ7sYxQqlVRg92BO9L3Cq82d3ZFM0PPQ1DEkyQ8UyICL3zb4PIzb2228L3G
Qr6/tjI0s4a/OoKg4on8q2ntxy8aePPa5zB/W3IWvdMxkowNXhngi2y5BAHPaUbYeGGwCwRDN2ND
wdyKrke2yKSyzH4var0+i8/CNu0a4XNvcNDk1blj9dgsVG+xgkuDssbNYqexZ7YB4M31RNAXbc+q
/L+t4TUso0OHHov4OiHSaXGWWkEexcFMRm0VRYQxynay5AZl3rL3Sbe+8WT2NYz++UW9uaQSodou
cTj/Fg+Fbc47ZKJP+Inhq3mlX/6HBIu9MJckt84RJUl2GnFA+1ZiAwsKFI0QedoteZpx7RLTCUmn
FUpe1PUlqkaIbGCiSQlo5/u3RONOZIHJC2k5CGbBnx3JZqMPShG/8DLtdLqgk/PkjyNIXGPCSFl+
m5J+eITYDu3XLGmYwAdEOl25qJ3LfaO53r1LMM4jJ30nLBflfy0ArED9xjmG+TSpSb2haAPY3tBd
/UD/L9ABzcY4KTwHGQt4EtFMuTJeFo2denlHbRk07kplXYOr5IhzPG81OYaOiBF1sv3V+n8IS+P3
MRf5jRVI41r5M9NQykV3kSa+veqiBn4AGevn3K3op8k4rNh7HTg0/aoiYzjQr1mV4PuIIiou0IF5
rKgy0L9S/bykyBAUKnZxxk1a9v8qL0OrSugi9cEiT52lihzL+hjiDC1+fe2CREqZc6uXk9rFRoVc
eN7rH4doX7YibfwVu53m8Hf9sWlqYhqtNsZAY30oEOCJg8mhOnDp0GC62r93ScUg/sVTY4zO9CyP
v036ZeTKuFjQCny6XR4zx4yL9+Jfp2gsSU3WGN6PP0ETv132AsMGCIzXdB1TTEVdwKqmb/8Wjj8b
y6b8m/KC86qHd02NuDhpx2eUNFcl5urEyQdF0hqrAsrAutfG6rCIkselxwq7jTkw2dR6/WP4ClNu
vBMr/zFgxpMG3F25NuKyIo9KeZkK2oqvi/rijnTPOC9mC7ZP6WrvpGXVbiIRZKC6tGnYIhopkAUA
Z7IIxzVMiEkQh7CEMdGocfVODoYAwgjWgS4n2sGOpFIafJwHFTjgJ+x/diNqymYIB8fcVjoZjS4B
TSA/Wqqg7oG/E5SisCNiOike/s+APgRhkbzTUQbplrLbMpbrkoCYkH72vTHTKrJmNxGlRQ3cTZVs
0yw7saUv/ZLFt6VI5ELEMTJn1RCu6EBAeQ/1pHH2LVa4iMBlqpkOTapoNWHtH/OL0YAerDZd+sQG
RaVwX6PyOKEaOTKJ5FpKlw0OIqZOGe+nTdby2Uw4P3KIjCPX7UssgFFr3T/leQ/2HRo3ijTEssjK
Hq7MGI+WcgCSnwJffUwKxZ231Axqkb6aAI8mmhlKtzaaMzIey8viSSakjCjUfsQduV0E9GgTCuhb
lgiXQcsYsdfCF+Z5klTNus1bUC3+05ZiLZ+xD1c2Xr46SyRbgTFCYOsMwfx/Jhe+btV8YPSeYphW
7ntDMihD/ZQTGBu0//xMV/FDMG3Uww+yj2rXNFTPxR4gpFbltGtY5m/3jVc4Vc8/M7vLLC+GkBym
ZcShi+807WiMkhLmIRyqSR7wxKPqrfctf0yxyOqJc46dz8S1yeRdmPOxujEqhOry6kftaEg2SrOa
ihJhbLKzoi5OcQ4lFZVkusKUxiT7Tpo+O9xcEmjU2YeAySZ3ETXiYLNyy+3zUAZIp17yQhvsuL6V
wz1NsCKiW3FJJMBrUBqZs+Scv6cuIcWNeA/uNZQJyAgMiO5o1cCY7HiMK1OdIGaODq+RJXk1gffT
52XBe0OXg6+H6umxH1bDaET1tV3Klzp7r36qY3lDEIHB6M5wfJPJwhztBkPiDvwOVcEzY2EC92Kw
054h0mtgspuh3JGlH66BvFT1S6Lvej4mhn+mbWMeKpS3Hw/CxzLBz8H/zWsxzlmT/c1Qh5JTsgjN
ZDZy79rSDWHCafIbNwStLt6xDZmWo/9hTZkEb8CN98WR/yYrKA+zagVS9haGfTyfcR49VrBgy3an
iCPBbVPVkrwDHP552SZA50Ea7n83Jj/Hka65w3RcTmW1cRbpfXXCpOy297adswWgiCRep2obCOhQ
46XrArJ5WIJZljh7ylWWI7n6Fwyl6/h08HrOH/Jjs4cwRJjXuvG8KNJoBL1T+squmyR3QRJgCW+b
xg71OSsTreu+dK9ITxSuJUGkqDXItT5mQTdvbiS25SzgXtkrgfAMe480l5fs3Dm/MzhdMyY1vxzi
q2nbY7YCZfNJ+7rMPz+52u7nUz/x+BOzzhAQgTRTuc6uTRCoQVllgoLpl3NPZwbcMQ7zvtuEt7zb
ZVPKCDRCBOKc51e3n6l3umbkXCOUBUPhRattGKKQSe+Shj7K5j/cmWImjxEqL0CSYlntBSmvjnr0
SK0PSiIz9FwONX3+pZZGlmDH3ZDyNVeUG0z2z5zJNc2RCW6AZ8tPo2Se6cP13s/LXAEg+/sRyAYJ
XSmECnxramS6yWSqznVb0dO95lFChA8EpwALItCIODsJD5F2CctYSVuKbMS5qxHLv5UEHUk0JKTG
QWhY8mVJZGvGgzg9aaqIms1wqI23+xwSHGEj+tBADpGDn0mLx47MvgfRq9tR4AAEqfM8gb3CEZcJ
zW+XcfbnCP4KkwMR1wgz/ZzeDLtIRcMW+n1hfgpZXGMbt79nCsGSQU96htNuIzyjCpCcnTIfg93/
rqFNIQ4xbWy3WAFQ14H44i1KVomDsfVw1Z+DmJrqL5zNzSJLiQf1eikyYUYnFMnUJVtD5cgPHFBq
MynjMnH0GSznqPQzGux3r3s3kDVIX2ScqdM/aTzeWElZM4RCJZijkvsEbaCWkWKh0uNENV+muPII
rf+4KqW5XPyc0RRhJvTWElLxh7FRMyug3sfzfgPD7v1lAmSKFg7x+1/yVgvSCev4U5ynqD2zeEJ4
bTphHlBctwAa4KfnZ4jFMaCvFLU6Nvgfm9HtKdpj4pgLdKI+iI18Kc2K8H29F3RtmuH6EDwecXRl
9aynx/S4YCpOevRPo7mZoWjuumRVKKZ47O7pHJhEJ5xsnu57BQwOjMIvAzRs2/57vqY7zNYWdxTQ
aFc5J2My1ucaDKFh8eg6TjJLKeHWdj2j9WQDvMW8L4RvF8Fw+vUKKbmlsmVMPVyOmJi5KuUYnFse
laf7bTeioC1RViX8hU3vTFUFamJ8NnR7RzmOtahD5QyoAaDQTsWmUwcYtPULpwlv0NiIUTsybtmi
LxFuZBKMwD4iGjXxju9Fj6dmRa5MW8JSFWMiPg9pi9oKO52VriN+RBs5lmoNkueHemW0QMRARELu
PeFAS3mqk+1WERbEEy3q13BBtGPiLtT0hClLckCSdEbMkeaRLG7iR2muatPHk9f+Pgc4eFA9solB
ZeeELLWkYQPgXHQNIo4/ClT59FL4dS77yiCfNdQZ2+Alcl/xlclYCebmkDq2urp20+3HjTJtcnnI
W81Dtu61Sicd7nzoATcMRa4XVa3CUyrA1yAINcpwH+9G1Cwhcjt5/sMdePWrkMB1NRGVSQeOXGlF
1RxHitbr9d/v5aYuW7l/8Ac5VPgxyI9/K8G0CSltYG50Zb1Janmdxil2I0wmk1piJFSt4YgHrl6m
WsiDWE2Onl3RbkjVCvSnLVqHCkDJwDKc1ok9JBykL/VzayCB3+0xMJCjMaEK3KX9O+JcVHEQDxhy
24V7NwTHgEkhWmSjP7nrnaGM+Rbf31nVXm1I77BAhUH2jwaa0Z6v9l7r1gntbbPLoMcZmTnNfsxJ
aHO/yqoR4aMNiO6sV8tK8Af1uFNwuS8xh/aDYYkDdLdth+XhLWzP393oFu5+P/YH0DjBrDOk/AeN
ScYbSEGw/eo/hhfm6qcWxJRCKpEYehgN5E31urzDA7hyRl/22yoUD5z7pwGXfcbQpZ7u3RY+CuNU
ybmJrVnffGH+qRrlgLL7ZM39AxjHOMM30BK3HbTMKtvHs0larLKLU0lUhFI7Utl0moXHfq+w2KQy
rpprpJOvaHQXOXpiRvL9cPuHRtjPNBJQinL4+e/YhIWqLwlho2flZRIsNKYQ2feKHQoiMLMpCmZ8
gGIw1tU1cerevm7Vth2QdkMSdtKAdAddYkTwzcQIoVpvjYNDSx4BfAd+EP2kPYl2OAk4/mRcdxbG
U0YnMgYwFfnuYy8tN+pgFbbe7P71vKGYNAq+7Z9Sb//FQgLEmXfaHXrz/QbGEnedJei0KLw/eR5v
o8s3LXsyP+y0xuMSCDxca5aNaOqQylTDBwTp9EkcQGQNMAP+8oJc2Y7L3zVxdRNI+6hZ13DJMuC3
94BGDTEFOHxm2EwGxMtkVmSvN789nBbgP9Wd6f5AliQiQt3HBuvRxnI0CM5kuiHp3I4igGI7GwT4
YGoa41rvBxU9l+UwX1qKusiMBU+LEWsGDLU1khNOzZVlBTaCI5QnvaRUf0yCrTSJobDx4/ad3pKk
3ruOztYbeh4ZXrfAlL8DgjZwub4KnunS4lrqVCiDKr7TKW4Z8Y0czkNNgtjuvep9hdwWDnjd4mBK
2SXJWq1jBgwj63K3Txm5priN3T3WdxD/j96/H28wlgG3U9E6/rgbjyvMc68DKtXTtC1TRaSoS/Id
+yRqvdN/+atu7a0a8l6v8v11tVpbAx1BxqpcI3Mb4N4yJN30XAYJOkxcDDZ/MNdNY10M0EFYBV23
M8l3HITs0wBZw4W8rSt5cuF1vTOtkK6vVd3HJkYF962v17E8DpxV4MB/zQ+XAJdvB2lS/dit04wH
PTGzfJWJodhRus7RN3VKnIGp5XCUOeyYLYeHJp/yeCvzVTmbVpTU9cv5nvCwZphp9qRh+vnwBdrr
xBqboycms1uqWqKoY6sC5qkNTj8Wfuk8pcx+RINmC96jgPh3xTAfQj6WQOkRjkiOE3vjhIF4w5Fq
i3yVvy4B2W0jyqe5tetl9W1N07w7N2fg0GsaXBOwskjnbcBh55oKsBz3eCdNblUNMR05SfIfR2GC
U8x4uo2FSGL0OmsviE3U4xBHeKuS794oXTFwgyhOWaQ4FB2J1EXNj4+oFyqU8vRY04tbt1K5oUq/
pTyBrbIw8CGzsi93h0tm9aizjBpEloWDu6MDMnvbwHG/rREKP85+pgCZOUQ7y+ovNyuvfl7atL6n
crI7O+NuACp7w+AJJkM3jv0NswxC5g66+XO8B+mC6bDwtxJRVs5SfUhFcN8Tcig+H+GnuwGYy5fs
3eZjxIkCd1EWJYeWaV09y0ZWzNvJaoa/Gr9XKORt/uu3JYYa9ZglnWasGAFNTSdBii6zj6SpBlk4
onXGpZtdJICiUIbAnyvv1u61lB68woT/aWovdh0pI6weHL77kSvmkmssrbduJSVo+IoGGswMoMEH
YzaGwTdZ7gA/p1shvtR5pSCO83rW5p2uSPwkDbxakZR+n/GBYCQ/RX5E3+E7dbO0JEJOd/wFh9W3
Cap+6w2dQ+l7GHDu3NY9Hr4TupGX6wIK8VRu18ybWzLd7jdKhmLt1F9/Pr8zlLnpx5vy/7nKIkvT
KJtqGmSQ9U7Eqw/b0Xmgi7j8ApTiUfTq49F+N1LKGZ8Rl+J9r9CQHTfV5Banh20UE7lydzR5bjC3
yxxDGyDFRTTCh27zf3iVxgLFuN0t/oMKCIUFSvIc/x5WHTS6lKJt6uR0Wf05x3Wk9BYba62YLge6
Ki0sHZZqYzZtgSiyTav2C0yMe/EzoJKrJDjF1LMGVltYVczHGsGXTjRDor6qg70DI4QMVRUX21Wr
Qu+CEqGirSUiyctMHFaxZip3jzzDYbIes+Q1nJ6IRN35QNGX7x0I+05Y9HqaqkAsNj5irDB8YJIZ
ebrjO5L4CDItaJelyu3tveBu+bIPD4oT5Z1zk2ROff+zsICDboC/qBTfFb/HE2iP6vyGSth3T0GG
mBbDv9MkD7Tg2ciqIGe7lyjah+ep82NLa1sDB4OUMke9p+LSdggGPlFZoTxR8Cc3D7Obq42q1odh
37+vHKysXxOzKFuo4MinnfplNhNDyLYIsJTAgoXULqRKhZceMfu4S4qf3v1TpHRxLyHOIRF3CIM/
UXhSBpjyQjbNrsJoXAkIDl/alE2EegIeg4RYBC46a1Fvx7KhEc7clMRltDn7WH5kXA1FORn5J9U4
Oe4yTd8m/fdytHqiF4USTEG0OR9VYk65eZdUa+MLGs4wj2pXDCEsID1Rl0fn9KiEszLx0H9YuuZQ
uBnXgQjH7IXIKfKST+D0uYlhblpVDUm09hbJstLsf0nR4t7Wcm2AeQw3USVn2kp1NpASsUbJ76Ni
gy1PbM2YQ7E2401mQH56IqrNc7IHVbNqeIwSlTUN4XdlGQWH3+Bxm/iEMXZv0vBdtniS05c/PXd1
Jq2iQpbhdMc4+0IzBQZqiMKlTgPxKH7iUWAnUseDx3txwNrr0xfpqxBZTb0+w6qm/8MGL7ugM9zr
0XS4FGNzSQOfazjqj6fauUYBRgv9zScF+OTPiXdFDDL+kyvsiT/qG12TJOnZRGcXeBn+VziCN4j8
6j3qVK3QVX4+W55AlY5F+kxSeV59iWd/tZcGWqI+2Wq/Pe1I7Q4+4Lqwn3XXhqO14ikbf7wNOGDm
vAvR9yP9hln02w5YErBtUHlSeTRfkBvUWapGP5hZsheb+kITBHGGa2Y12URYR18WyFOOw1zkKh3p
XlhbKAuqAoO0qlVKgJtc33+ZYJHXf3FgnjV8IIqd7FIy6gWwCuM/jBEbtFvXLN67B0isWblWRa1S
QX1tSt/IzznPDiC9d6jp79PXPcQhD860iC7gIWf0vn0O1icUioHr4u+Is/KrwKyVUJNlYlxnCH5y
eb0WEOD8UndgCZPD2i59QPLssf8s1nnNKMoEsatvK0TDUNlWXALphrTe5Y46UQvbMkX/yxn04LRT
+AkM81LEZ+m6IaP1pSM2MN8Vfz14wQVmS2svEPdERgM079MqdChSZRmH+q1OLcAd4Sdm32N80qoW
VdDehYNn6MG8UsbuRhOcJE2Q8T10XsAViMITPwSOsyXyb4z5UZ5yCj7Zop1k7Zm8pyS1taGvKQzH
lyf+jPgxluJ7EvU1s8iC5hZ7oEjKydx+MRda6qIxIOC8MThhtE78lVMsi1CKQhF6bysHyFhdKYUR
3iYigw5NOWsjaLLEUqM4IGn/OKVCUHFta1SZyoY4RQqPL3TR8kBvZ/AofPFuMNu8bRb5sVjSOobD
eHaNPvm1n0BcIENC+qzM28yN1BWP7/NQIVAWJLsqOAplHXr22y2qY/yOCM2iMM3zBbKWSMized8S
a7Si+Cb27Tnr7EfTektcD0QeFxXpqj8ITXnr7lc/X1V0a0/n8xE+Y6eazMeM4Sum8TUGxTO+YQsk
pvDlz4OHyuOcs2CAxhQbMspmQTUIxDc6YgvcEhzGkum/1E5rAk2VDVx5F+eekof2YllEBJvuqX+X
xMFpGRHzKiZ4HO8kdeV1ktO+oyxpzsayQPwD3Et1XnbtCu9EnpKQgpIiy1asg7iiaJX8IpcNJl49
DnhUufPH6QWBE4SXknk8XfLJHjeiZy+2DyzMm2QutL7K0TPFTTeLaZWARm9nsVXDlHOGfljIf561
4/69126xNqfyQInZpJBVTxQ7IE03qwvYk0eAM6LMo9ZLpOfviDCY4vnAm4Z8CfTZP0uOn8sobReP
QyfmWvNM5ls99GBxdEV0xwmZ108j1X/xl4CHXjv2Jcs6xatANRl0AiHo3NoD98nDuqSHoB+/kMwh
s2NW6H6dvweCZ4uXJfI5gJhYEzV0eyLg/rGMP1Xm4Tl9XqRsAeAtfvYr+IEjncKjwYy+WEA0KBNv
Z1RHEY/JhnysXxwD8O/bvRhqV3IRuphX10pXFmEUwTAVAfqNzW9vTps0m+uueX3BM4F7e51h9Y2j
aeJEfBYhFB9MBtiXVw/FVX9tG7nxo1AMotvtU8OhP5i9bS5hBkOSjGcfOnMDQKzl4+cDYmnJlGYS
/i+9XZZdUK7h6t9h6qD5YtZOEnuN7XWRaEbCmkhAIchCxKJUoEIz11obUbTTIFQWhHduQkgIAph+
tZMDrqSczYBAF/MJ5eDNk1J/mQeZ2ZMnHQ7bdqgOhed2M5hiFZIGS/gSV/cL3z+GtfYfjnjfxrCH
w5TeCPP82cyUB+cBc/5B81uQhzhS8Mx6wfoV+2c3NIKR/DaeyFaL2EFVcSt9dM/ygInb0sRw4/Q9
zOEr/WLFB+lmCrL29KtoIwgNwQ360FLdnDFq/70c1B260V1FVBKDkaEvRV1XqGUSOegrMwJ1Qtv1
8O7bD3FipIcmD3feT/6CxTLFuBUF4JCr/H0fSYCWqdzUnMoG29/1ar97DYo2+3Yf3rnoJ3QOcQJo
rsSiGwXaieDNBRxEqj1t8LAEHozzcuwHTZw/Ffe/R14u/tqsRzkFURYtAb4RrM/0+nrNYwMEzevE
4MLit5Vh5Y1O364SLmgkmPJnOuONs+l3Rt9A3OPpJE1mwappZEd0xNDPMKswlfnq9LY2yH3jD09S
ixZ5GcnbPT6BkPpmM2CqlN7uZ+RkaPaNfw864oCQui+njMFUuuehBv/ISAQaTrNi7OTNyAIEsYZG
JPi6o/AXOO2aC8TxZN0w/aIwrFYCY5b5AJbLnHQAUi8S+o6kbNy0PwaVBtndpGzsXHCi2YMtbw2N
J0DtIHM1+iR7hs3SSDjBNQfX0ZN5DT/86NEnHWLX+QxVGVBxObwnpz+LfZiQrOM9Eqg/3MSDKm/v
6ZkHWU5enFJVZlP8qnMHZ+jVn7GKbwMJWv0hUl4JiAgrAodKEpgxBcALxAunDg2rpkM+0ceS3pX4
hSggUH807I9/T6g1r0W5wtmsgvgIZsNlPe3u++U37RRS0BuwmtNKKDY0ThUO5vuIgp57P0wtbesO
AUUDafwQZrQPKJF6Z5Y60HEfkw6/C7FL3+WMJzIIVZdLlbWx13CyCLlsyDyARK7TKT0XrynuwH5F
cDk1bJuEcFM2UOPg3sg6SZn7VOUApatfDEzXOOhUOrVI0IsTZtA/wEq+MXJEVBn1YHxPG80GQIMZ
CsLz8dw8FUdowlK3A+T/aTAKhQT1lV+HzsvgtgdjywNnk9EzQ+WVpyGEzJVn6jqU1BNe7/mzPr5K
27XBLOoRZ4NM0ZTgCv2ye/aFZg9IJjJXS9o+d6pKGNUpyNpdTiMnkDlBU6UvSq5fN8MvWmQweP4x
iLxUFxeNikp09Aab1XdK5eW95bd6n8apxaL8fzvQSUuVvWBvH/LblH789BMUBYkyx4NhBisjGE01
66uyst+NPFlXvLJrVtlwjzR3wsjopiwKdMG4I9EhIX5EtGaExfl0Marbare23SekJ2goT8+++9nd
ClBl1rJmZ6UWIpGfoZyZN05q6Vq5EMcGB2OWfl+IYcL+GiROSobl5Z7yxou1tn2JoQA2cmrUqGDf
kIsBQfuQTPbCKA9gC7RkS5f23s73BMnnWk2Erji7/miXYDBMSmLNnmPmk4rxC35gRzOIxI/lLXfD
Q9C/9oHKSnpbLVMn41lSfoX6aSp3OShjREnKUzoOlSPlsid5Gwv4FLbPRGr/Vm/OXgL4prBqKOH8
xFnWCVSpI9zjIXTe+IBNcPcK4AOFRrUNSoZ1RPGsQ5rzIFoHOLPAgkNC8DumiAPCFa/fw86lQv3p
wcW+w+TIQlvt8gWJtdEJBensQTmPBWSq8qThMww6J9CifHkLvOzGTDrfyUAiJMjG5gkH12jLJkhT
jDbg95GwRaOH6srhS2TcalBcRmU2z5+Silrw91t6b0MDykLlD06+94/BhLteOhr+dG+5kgGW+4L9
/QHkCyUTYWMP09++wynVSANZuXKf1ZTzQbCCV1SOS7tiWhOcttm98xxVGB4+JsUG4n2EBhexE4LZ
8AHaLb67kja+M+iI2bDFCH06lFe6IH3iNujXRu5/8F2/ebOVQdjHZ+SoJ2OSPpeMeVuzadP4rxWR
afYKe71vAY5b2ZVCby1wq4Xe0kiNZ1LQ5kT25UBTpeoBUuxcxYn2hzLuW3VwN7CVPMkCPV+hFGcc
VaosMbxt4HFmMyFrBR6A6Xhb1aIJIDNDA6BJfa5ZDzBc01Jm/BkrbAVxVGXhUKjQRZrxbk3Tjp2i
dWDpruKFH/3wtFNSfCm+WQdf6k2imBMQzwai8T+twxcvquvwCDWbVWkG/OG3ddTD9n3skoHZtqrp
VEAaORxVe7DLFMkLlBWNtRFFAdH1wxXAvHM5x9JXpRorU7+SgkCwsMSAYel4Aud3bmBPjDlb5mBm
F7YTatVY0qHaAtXHfJRRcuWHwZBqfrLzuu/VRgzHnryJ2dGGZpeK2zpXkz9Z0wmqiVE7uU9gVNHI
ro0YD3i7g/rjWsb2+Gb+4iCgu7iNS0qhCToP46rN6Ww7wYAQGbYqVU08jGNPcPuGP0r0XqkFWf59
t++aViHoJPhn9aisngxRkNISvdfuPwGQgMjY28BEgFA/7u+GJs8GXhxzXodczQ3hDae0bHlDIlie
cc74+XArRy+tFOsc+0wMSDTW288NDjgPEo/lxehhmZx5XT1S4uiEAakRIFAut5BPLZj+XpTLc2Fs
a6QPwMhvwH2rUEMEYwGqqeBsXOSGnELVe8vBGe2uyC4+MUheriBBngPIbe4OD56JgUabH0OJBAMS
DTSRrR7by9jAXxm+x9P0tnqgWeEjnFbSLjGakpB/LGZRjq/LNlyNQfNQHDVFxIU1AaaMSw7UOH2w
72C9OpEQAwQ9RnYqmaKwaRawogHPf+qnPKQpDjb7UHDcCjKitHJfj6na/0GOQbnKf2h0HvbYLb8l
jrEq6MIQwN+sHNcGXFL87lwfaDApQ2xnMLbCoWlRimA0o+ipguDApvGe6FsgZH5kaI/LR/5NYHtG
yxgKOQ+rk49HvhQqt7y96dVjrhNPb5VktsSb/R1BgvjdIQcltq/Ngj596UYDbdZ/KgOZPF3/hNuz
M2o2K9j/fq81tIe+Ta2GAWZv/zATnqdRFGN0ASVFiOYojFQpFvgerX+TRdVchthneDeQoo9+rPm6
a+W2kbMqiOIeL2QA2gqzFMt/ZaGzI2rXFzQ51vGNU75b0fjf5SHZ0jBFCkujRugIl327Yc+q55hC
qPHBH2xiPKY4N29w89tbtUaEK7cYswixa8maeqzNYKHkH9smZM02g2szPqxNUm5z5oOX4dNr3FvD
bMF3FaBoE1IQACJqBPEv/xvjtiES/52a0JFI+ByljP43iUZnDC2cCFhYQBTR1+Z3hrKPAFkiyrWT
4OGa5aqAKKTJVrqX7OfalOH4uIa71erbEoE/UPFEBdekOnMZ2EkcU3KmYCzRH2PthfeeaLlBdGn+
RzQrI3f8yGPVT54H5jRTKrzdeyJFv7OcS1sZ9G8FVMmhgp2MkA+NYFuxgHtyd7tR0KOZ3jhei1UT
C6hrYrxidE67qiqfgP1ElUGOMPdMqZtN/wHKQBXTtIT0IvgsSH+2t1koWyH4RcRoHsNxnZtDqEZl
rbgycc892xpzVCn5uvgLsSorzDSOBDmQAntvRODXZsrqEweIiOq/kEMPYe2IC2LDtwYk4j14CRfN
zXJ4hDE0FCZ2ACbLMEiho0wrcGExjdCaV8vJkiKDMKemytxlQ3IbtPdefAUrdPRrFkCvu2FQ8HQG
zUwTWv0r4wOWMslxmqzFeks/QrImGKqyVXPbUaD5KaPI1Ta8RU8AFeu0bZ+c5uuzfDQoFotUxmIo
3ZoingaykBvJckXXIwYchmkYU4mEydd88npKvexEwpWll7cuCKeJtWu2ic9NdE4quuoD72Fr3jZN
WvDuGxRHUqNQK6+zkE7zAyOHRWxFLDgQD60GvFunQxte1282Iy36N8yLV4/kVhI9lvhyW2zUspGf
Djn9Gx8SIEOpb7QVsS74CJsbAMms740jxVDdXSyWuox1Ya0GDO0Q2raRHjDgx5nKi2PrHd22q/QG
Nx8upMwiNJ8YrvvPnsJQ3C0qGKdN/1cLXkWm1FVEPlQNaEIFNag8ZS/CUd0YAUTF63O7brYm/mnr
hZ62+k1FjrXpc4pj8+uVhO5aRFeN38j88vr/2ihUt3iFnLVff5QyW77RuwoT82mv4dqaU1W1vv7p
jJ4e3a7hZmH89jakQP/Bqy4YUpqnKsyf11jGagh6eEebnsyVyTT3KtydxnuSphGr9aDiQIPdrVVg
m+eegd257AyQRG22u3tC3V60ORv47L1MNxrLUOD2KVcoH+5HF2x307QYeCUsy/dCpuwkoOOeMWhN
n7XFpOrVXI6qo7Xq7b3xUuYx5qfy5CmJpjQ/LyRJmMCTWe0+MN/RnqPHIL+lEHg7NT4UayEmUuf6
+49ireNwU9j1QlOVIjsjurxByqYHt8TOThupdW4AGiaeo3Iwyaa/SzmfWU6T3p/tExSeiGZSDbW/
UQcf6kkc9sxpfFM5OA0BeV3SoE8PMCiC+QH3VVLSwjJtpBwwnjZjhiPyfjWr5ImrZKkupHsAMG0X
c2PFUDsG+LO5NmYb8rG6zrRloHBtZ8liOvKhRDcjBoDak4ZSmOZGMIdds0Pc9q4rflyv2Vj21yVi
lD0rikXdSiqnkVokeBI9AE1+NTdM+2K5Ro69jlEmB/ar/3VB18npp/dJ1rqJkv75JxklwKKvWJ5G
IUcN9v7Trrg9RRuWETpiAZBAinh8vliDK/Vtbqwt7v8eZqEhHJ6aRazqt2pX2yW1Hgy7Dv3C3B+R
Ckq+wj+9arolsvqv8fiECb8a83bCZsIdu3cBuDJZsApaabKLIb8+mqIu/DzgYSoWwzRv7ynKDIm7
Z/L0W2b7LTeDxfmYqURcvjAt0BbcvtVg4jBA3sTbNznxAoDCfhNAkJ1oG0+BjFUJQ5rvgwfFBtfG
8wAdFuLnq3j0PzphAD/2UP870uSiF8b9CRjQOtQnYyZSPcNyHGdz6k6pxXlpWjAoGXEK7JPV9+kQ
Bg4H+4J0624+zYIbQKGzX44eJ/jwjCeHVeowx9E4UpkrVa45DbVHosWzCNHBGhoj2qAOqRk+m9XU
JksQ7WRQNfy/leCIcNMTwywGWDpT0l0JPF3FLxtiuSXnZ9FPAiTGqkBXOjBnk3GQCuIH+Jn0MjwV
dd+O3eC/xYlTkzYi88NNR2CNFoq6r1Git3IFBFsjg7kOTZ6vJmAIXyFN1zAnqfgdz12DeZq8xzwL
WHrXUi5+XdYb2GCI5YiWRgYx5OorK5aqE6HYgn6kZNw4s+KWRyPaJ6EQ2uVxaFmUDlABFMxrQZOl
CtEwEaXdsoP80GjKhCx1mu8C2crFuNe4xSDLvnFMBGq3S5+7Ua8kmKH0cNIdFB43CI5KvAuGnUZj
oy7k1mS0+Oym6/6+Zcq2TDdQBWLPbsw2tqRuuxAwj7tb8SNXzed2Fl66KWpUvYHNyGRs4Xwj8qCY
pZYIXXkAEtnB5QeEat6vmuqnc5qqvOF1gi1jkW89N53jYa48OMHWI+yST0KtUp88KyyqewIlEZQc
h/eP358mAm7UbLpnk6y82F7NUUJRPjPXnWgr78aMP6lnn1buwYE9NquzB4h+SjJztjQDEng56LBW
Q9r21UcL7jT2G3ZXXuSrs+oFox4/qQamYqCKbrr3KtmjOtrOkxm3MLM+9tf/wcqSPi6UStsCYySL
cFzLgxkakmrfUBz6Kku7qjxAgIA0S4zwG4A6cDLR2Tm6+HMb+vTDkv4rDNssaiM13aT6ZoQm5xj4
AOrimoENKWCxMBfQPUVs8nbpJjWs0zZ32gcEdKULm4BKVjUqkNo55FSyzUlxN4k9eHL3uoJU9RTC
r6MyNY0SQwx/IXSrNYHbC+Nb85CwJNuUIwFUAs2+Vh4iUy+5yYQmAuStpgKtmNEx7SdvtFdkJ2gW
3qqf+LzUO3INFC6ITAr2Mx25/hnNYXgMikLzrykyF4uxBwjwtutL09PLTTZvHQ/dd+hDuuUmi+Nf
OGeO0Djuw72J5EmGSiXcb8lCHICGo62nR6xu2bFVzDFSTPQ2q3YnjkfKNkX8nURB6yOP8ii6Q1z1
5mnM+KcS9JIcVKixx/C+7JzUQfZTaNEkdZxA9VNhThmqa/kbmER/puvWj52zOrra55ocNJt2eBcD
kKcBFxCM7/xsNPkh4yhRajQsf7k142rZ54S7fyN3aR1WtroFYL0gRyRXbBzG26jt2jW95oA8kARa
mAlDDx2rwnDxQrkEgJCBRuahI54u0kTgyNPm+juag0G2T1mq6Rcv4Dgot4XOpO2elIw9LaYNXmjl
X5jfiGiiFNx+iAm4fghOL+aSeqat0yAR05zUXGai2orIiL2zVbKBqkEAAwD7aGYdADZ5xaJO2jyl
kL4WR0WLYWC4yUMl3vtLHYT2Qt+QMw8uWK00IVu9g0U74fe1rIZPS3b5hfTSZ8mfwJuay9SRF8vk
CZOSlIdBNLFEdrQCSHXDjlEYApbkLmc0Q4s1tU4eJYaoBC2VXoZurTYK/N0jnnidMcgSh66ZNy79
CwWAIOMm7Tmo7zFkEJtt0oeTMHNlt+RSOIUUlJi5Xhq0I0pRJEknmYrytVc5LLu5MDU9AYc0dO4F
C0yWpK5lS/+9mow9xVIcRQMxKixaNFR8lgjstaeD9OCy3kZI+clFq+P3Ub9IwBytWz4PAOOrnO24
yN70ggsKwBI5ewoEblTyYA9v/CE/WL724s7MS1hYJloSPCReFrgWQQAqXszMtvhN7WGArg/J5c8R
cC9mWd8SP9niUzWF1yZ+EwgYkegALXRSv096ydzOWU/ZQQFMPHwWBtIiyOu6/ytPVaraphXzmlTO
YUQ3t7ar9q41rZg6SQiR3dlWBwYw5/mULMxu67Ezjp0C0HGMkolBsQljSZoNwjc6GqGjgzgtvhcl
hMtogfOA4PT4FGRdX8iQpySVHmJ/xy1g3yPGEzXqYS9i5rN3ivOzbgxWZBB4YwsDAlrSaOOKxrxf
0H0pzW58QDGuEii3r55f6HgsZZ3zPowxnDifT9vO5G8x5M8iJHeXZqdHUU43ZScgIJP24ikkHFVC
t5r951fn5ACxnoLGIBxLL3iGpMhRLsxEsba9Ff23ccX4/FYRKxKKh8pavTaAb3taEVWbEvVc9ix1
VCNKlcBBhg9RB4yPl27NOHSCYxDLfAZbPlNTSmiai9B81lluN16Gmm+wAZvZJKptQSdXR/7NXbYb
Ry9vYIOgsMqfPFwhGm9htKidLP6EY+8qw7NF+PocvHs5SP7OBsabXA4sLLdswAot8xeUHgks52Od
d2qWbMsk9CcOcPHEsYXQfZpyPrp4tI84P4DpVUnhudK9QTqtBPX2UZb8uo+DLu7aEzT03R3IM0FI
PplS0VFz3RdtWVb2af5lC7VYoRXkFwoFxhiufI+IPN5UJJKTfT0Q4Q5fX8F/8T8A17xoHrdiFCJp
e4/HNEPolkxIsv/hwGCvHihrIVf7N0ZWz8+5WWcvLqZJWTRmEulRCB+6lRw9v76YA+AWYU+F/GwG
4jN7ogTbAH+/VXQkpFib8JV4W9sTcsvNNamXiMehgzadC4x4zJ3FRnQQn1wT/MUd0/PL7llo7Axq
0nqKv0nXWRQ88WsPHirR53GefFFiK63FPRZVtgRH1Ie8LhbFI4ZnEDG2M2gBM8VO/ThkMyRkf4mp
AOyeYMXDUykPoZwEoAaozNBuqu2BsnS71ZtGFYMGDcXtjuaxg6YfyzTuOjKoPWYJQpzmPrL90+XW
jAGzgYowXWfvUEC5sZvV7DwaLyrpIASe5QIXAqa+uXHNNusWVCstGKp7GOPqqnjaSc8hF1GGxaS5
1mDuF0H7ZWrkUsDW2ZdEeyb39qUZWHx/bGxPPYP+TpnicrhwvSYKhcCI/HUD1T6JQg1kAg5lBDRe
bv7GnBFx6VcUf/rHzYjyKOe3wTQkxr0BaDBkOS7P0nooR3iF+zZDpWA85tZDsUpqUdnznld8LzM7
C7ETEG7eq0U1LyF8RdJNg+ns4Z7CxiUFx/jQqDCMqjLxrUDx/av7LyPlKUd13/FH1bM01fZqYkZC
fDdWYNNi7CC8yLnsKzThzWfcwXBuRjAvyuOTq6S5sEICcyW3t6oDoQqwhZUHOpItWFuhuWzdxI8I
Ared4otQJI8bEO6a7qAV3rQCj4T3CSvwAUiDQ8Oe2MGvIAkPYPWEJfk/3x4ZrpRSLEOzJkdph08F
obEmZWbMEyFk0vmMNCU+SdudGrTS26lIjbBbOMdJ/rcgA36/HzDUqGESTPR2QmWe8eJVxc6DAhED
S24wUJgyBdgOKqpiaPL7T1Tr+0MQSw4wX7tk5ASbFB9xygbHY1msowAA/3qTRmqSzsaU9VZDfPjZ
HF+WQQuJIRmHStPDqoX/oImTk/ek0NBTqWWAckaIaXFUgX3mTOuwXaafdAC6qERyhWpJx8j5xMI2
p3Ugi7g5ICuDg8R34+o7rH5WVHK9k93Bosz3vNAKzy01uU/4EiLzVzqGgE8+S16vjp2QxHDUUcQG
tRYeaMQ49joZ1c6TUfgOPnSeduF4BbBlwkAaDANGOJd5y2h0khq4SPTpUtyrT/U9FArOj6pxZR8p
Lx51tHdT0csqv3Ia6U5tBB+A0zUNSCD2jHszMQ7L5pCltLVKf3AXJD1vb+Xh5DAQMOwYQRVK+gNx
N2/ylm9IhE5nEVNyaaVUhKw6a609kdK5Hbic7afF+MqZ69befuQSqKIUabe1kNc80FJT6i1rkc3H
jjS7jy2LlOUv0W9zCkbconkVXVAa2LO8S94nlBR9DlE1tw1crFZkqmwuDCDLxA6JbFvFbq7q8O4g
9sZU0+zCkzU2PwNzHp+DMIjxe+GVmsv/1F9LmzKK9T9MFHLpSobjTL2Ek8YcnYUif7XCLc4Iwmil
dgfobJ1RBPOp4yqm6i5WsGOkKmthVbLI9682k6Qg+HO/i+4G2EBCkpbYykWDGnYzIsuayZ2+mHrw
e6f+5B5CByEy9bcr1xDED6c2twzJEU66zW5+rQjU713XovH/FpLGKGOKx4hSEMJYmiZJoxHpRCJL
NeltHy2FObSVethS2NdCCmGD/Ku7FAk5h06qcbJpYVuWO1UYFgPaae9c+5OStf07DcvjTpyp5CMd
FN0pCtf9r6Lxd1PmHmSgH63MwmxAM8FCxobWiNEhqx0sVxcBWQSSP76tOKgpDCZRFpnfhq4rIuRE
VQHeq++uae4PRI/p13WiOcqiSTyUTJFmxyt5RERQStSojQ53PfnHhbhEOBUoaNyxs+WyJaqJUlIv
9SOYz1z8P12mkk2yvLGF8LCqoGpoW3Es6I0UtobCghNmDy0zjtmCdUArrohFu5vPl9YH5x7gBu77
BAoWKHwDxxeAuUzdHZC9gSsUr5SHDBx+HcMCxywiw3+u4hTc8kGVUixGxh3rmKzgnE7kIbDG10Ev
WjailDCWCsRt0scKA33kHTEwU5B7KlLN/+YYY8oaffU9+2ydj608k4DM3EnKn2LGmV0+/iPFDguV
T6yW4zv+FrE2IM5j67q0c+2Pac7/eEMeW2y5vZTH5BK+Z3l1+nxI8Wf0g3RG5AjJXHmdrzMR7Suh
59NEd24OxqjkAaS1LZNp6qAtkNkE2lSh3HwJP/Vgpmohm12iZ7/JIYPKCoIA5m+4WNuypNXTdPqT
QOI8nLDXzurS/AcdESSk3v0Rd3PLV3bVhz74G+bbaWL3wrViEliH4Bw/9zMz9KR0OQXE6x43/OUm
XsL95Gd6w2kklNz0RfmL3yq+b5h5IGM4uRHdNKV9T5/Hvu2zq+WqcGDKL3sL81Fvr9jNxmdhB03H
Vp1EUelWaFksfaelypwzLWoDn/ZYYiCEgwQOfT3JJXMftAZvhedxvz6iqg4h3Bp29cVzuGPCF2KX
5tA3RHO4HPYjCnNmOKOxKGFrfGK36r1mWR2LuKgl4qHv3u9GkMKgvotqM2Q1YWxAQTn5q2oq3Z0K
4jsMPuF4JTiiNFrHjqfhd2tVuuA1cltvh6IsUbNxXoCmJ61bUdA40Yp3GSNjWGBGl4/5xABrTN//
A1kHc7+ZL1yHDMd3/IfotqbR9U7TYHWLrsOhOgyX2YcM32OKsVvZK6ervk+wUkG5Bytm+NLkLqOQ
eHtQt1Uswzvp1nVxz5IDrEIqWsP2tgohqTouJQ2s+8w6ajYAYU+jdL1zoSwk/dFx5RiI1+/ftMQk
cDFMqYtPXq/cM9ds/a2Y5WGmSGobYT3bgjAiTGkzcZDJWCoEUxNyE7UNhp6IGFBKeFcaN7vtBgVE
486LD1rLxvWgYnfsp5pzJ4ykPdu3KlvTwDFF++nakW4nCWRmChMKCEvfNa89TuW5LHS8T4obfjb2
5qfcUdPBO3J7pmtbn0jqZGbtCFRmEk8dANlbVngNQp9bID/U5lnYD089661nYhV8QfdXkJpkk/Tz
p5iQ3qBdZWigd8VhQ7OiRcmVmx/uuKb3yjjCjTwDkWqyjPI1jSIg+UbCE4Ny6hhDafyctXKaiv0L
01xPADFqEtrlEKgLnWY36QHDC2ZzG2/9PWhO0RfRiyMl6O/xTAat6A2F75wtMVouitWpF0IQNcfl
L5OEaso3gKh+RDwpTSREZ+GyfYFPBnTo1lfcST/vbGtMrOSatxhSOYnXLn/gj3ejIu1TsUNfiMWN
KCVi1gGbRJYd3AhS3B6eUJpxl5fHUqHvajJLtz2hLsborxqPezUR+vwKllwrKycmVCMW3grfhi30
+KjPUl/7ivHpx+30wGe8alqWVqAygvGpUqRuMn5JAkaXHMIkD64QZRlGfDTM5SwGVlBn8+Y43JXK
DQy6yFyVqbCg537MSHPJ6M5y7t9ApwHaD5e2BopudO1eGEP5nG0Mf+8m2nNrRIPqdXGLPJY9m8Jv
jkuxCqe0mKwfBbweZNgleGYnDuoQvVpQ3DzApYIZ4Jh7kEgOfOkZOzARTHkQjHEzGs335r4DV/u1
409TCv51l2Ins4FPlOMHcfcWW8zOwVL5seGZgwow9fPNvPS6jLJQy4xMRFMC54ZkzKBgXPGwyDZi
xxCa+lDqXdo3pS05NhZZ9lK701xaCiD1RIdTNx6gPxIWFYjmjyqW47GmefpR+Beq6P6nHteeJIxC
0iJW/Z+yJ58FUXcw6yY0GsQcqJ8eDpCkShMBaGwKQxJyEQJ9f+qAy5AnvCW9KfVFDdr+hSoihZNb
bv77JcGWNp8oTruXFn1gXas29KZJfUb0aomDXFSlL+mf2d1NOcaNoLLoipyOWVXd20HQ8fFMN0Fu
pimzdAi3LgP5K6NbJHmQMNC3OCuPasJfWywPw/gwdtWwhXuidasc/E8JSxOLxPcVm+yxbmvOdRet
3owj7yMbq2X5DM/On9gpz8o5SoushBOGzZns1scWjp8aimxusDB++ICBHt42LhG87tzHfKNwS2xF
GxSods5DXHiPCtcq+Bc9f6auKt54RN/OtAo56J64HnWhqE/yo3MuF5DygVQydMoDfF2Np0PGsLa5
O7xAUGePU9Filahs5V0lIzR5IWuimTg88Wz/ha2CJ0MLdxpR8M0oTL16yVVow7tLo6mQTinEu6ZC
qyhLU4h/qKI+9+0WLC1jtoDU61x7FPn/IuB5Sz/V2A6RE3tYs+zoKIqJVhzmc4JtaW5BLk/s0mfq
TQYYlkzBwZTUZiFEgNREZB82/lz0XJrth+T9kMkrUK1CDq22haS2L0g4MwyqC31trYEavym3/7fJ
PToBECvOxG6ALYvP9zZT2PhgKLnHOXB4l0jprtRStb85qokXWi6xV3fxQsEYtns9EA2Nn/29IaEg
uv4Iz9E9efyd66ZSlwTY5HZxvRgUp05lutbUoQrTS0LUjATNdMdJZLgmIny9lkg9E3qsvz9O6o23
NejoDNUED/ZDG4NHbEUDxTKirRLRQEw3iHzAfNBtJKMi4rwDvJMr0Ir9eXIQl8KZx7YhueSFGK8p
bXEgg84IIRNNh9502dU/MLXlTEgxzthtMGiz2A/QhIPCi1SxboG18a7JJ81UFktpV1+kBcukf3CS
oichOuWSfAUSMIA4FpCPR/YscGllJPiL4D5IZDe8/L2nnDrTVsWZV/2ak5IaQgF+12t/gd2nQ9wh
qigp9HBo6kh3B7jbThOAUsneWSkMmiVZoOjTGcVsAIqLmZiAh0QhXGRxxjOMRlOMPVLbst+uQU8d
085SSnW6yeeb9X1bX1wuGCQibqCDqU5eVjsQTXBPa4SF44k7gIpcdLqfOc1qyNco0TewhRNb6e3D
VN2OgSlY3pXZ06ugQTp849XKGoA0YPYJxot9lbXqxW8NcauqSBrzy2Fb/C3phoauN3smyETELHJu
cvMpAc/O1jdlIYwjxe8r7ahTjEs48VcxI/ufwu+i5t51GW+AHSRi0IV24TOAcOrXZM2Brq52Rh2f
p+6KT5kWMHFrGTkZNxcqsH61j8nUl0bqkLCfLp6zrx5wRizfSzWZdrjDjLnx/+73uIrzX20BvxEB
1GjH6rDT+BycUqEDQ/J44CqkoaiVKQutuwaRtsJbQaokFqNeHxmv0Y0FPRoDuzARcILakDptJDH6
So5lmM/DlchcM+/W2a1Hg/a/yCX2VjXpLn6wyYlAyjs7tdbuRfFlSK82TzDg9e+OAOyjhmkM66Ti
YNYXb1yDc++NGv4XvJ07n/eLt5ZEfe3pMKC2uZEA9/wL9Dd0BHfYU0TVxGNVXgRax+q7RPi5nJoT
FJBTGzPUtbARIJfehuJS1Dvmo3vZ9Xs7uQTcj94WTGNTGWqkgd7fyXKb9SKB0GrDVglid0XKNDP7
TcLDjmLKbrUfWbOJ6QfI6JQOTS1NFG5cqFFxFdy9nSdTMXKVH+7JwM1TIElslvaGhaec8JqJHCtz
vJbHNmnvva2ROcw3zqDTMEUQOJ3rcq8A0tL4B1XexqGfCQFgdJVeJkp1bfJzFp61W8IKf4GZNjnj
dfWmpXFRXyY4j9zuiQDIHuovp8042bm+2Vao1pUKzSzG3ZYzF0YnU0QOMkkL/siWlL7QwMf2n4Wl
RyRNKx9fqJEqOr4ZjzFv14WecgGH6WAolvraUrST0PLFl3jul+kPP1IZcQ0RL31A2q7K07atZPDN
zukBXLvwhP2TE1ZYfSm87jOOJbPIJvJKuAva0qrccXNQJKO/PCnIXEOJ6bPnvXCzYxaZOEBUYtla
gmPcod5zkXkhSruoe52AwYoBp3c846u1RShB1E28bn098WRWbgYxbfvlfKSK7RgcPnoj6EXzuvFX
k38cxgAGx1WXDn2gc7DRa4qacHHBUVf4P+9F4xJs9xDZIOwjoFmSMmZiazHp9fFjVaNKngnkpFqA
8qgmXhL/NiCEZ6SVAMrRblmq9NpKSJeVuBEJn/eWIOxll+rMUrsyWnAIj2YTEbzwKWOhYLMeXDxc
lvVxE5O84CUD9ufZHITtCTKv6o6N+4UJN+3w/feZJNH30mU6BSFZ1sUCFYZGqPtZ6r9WoZGJxVeN
Qbrm5Bb5LOGuajhz3IXQDy9XTgCRya1brzW5SJvgZnc0rRHZ5tnsr5xBEwQpMnGpImxXmF63CGVw
AsghJKkgtLuwp5XPMYmNkzDGNTXKdyZWhcoOM4C+F77LqbbfibKgo/RRMP1whQEwAwgaSGA4F/by
cyUymz0tlrRF8GBOJBqRF6YdbiegLKq7WBgSbq1RCeCW+2YfgEzxR6DITx0X1GzbQ5lYEz31F/Iq
p5Sd83KciythDvNQVaFon8p/unG+5R8RTPACiougpRo7cghPmm0BSEGReGZgNzrDREQ/YtMm7BPi
eyhqaEsMSroX4jFGnMjR+pQKlYFoeHp2W+NdAwLk0iCUJH7gXqxLwxA1UGx8GCCzLUtfTKnMOE4O
9D7EVfhmd14TDNR9nfE8upKoV9cBeenc1AJPx88VkyxeuF1LsGlBqWsy5e0Fb44BpfciqFi+sPSa
y/B+PiU7li8H6l/mO0WrMbG1blP2CfG7g5j+lVDbO6WU2jcj/AeliZ3epGbIQ52D4X3Z6siSlANf
ovoROv9YShbNr2O6aMUCS5I70Dhnm5pOgRpkL9QMsXTyRRtJ9/JIW+xWPVq/hlfvz+t0WU09PlAp
CZ1uHYOFJR2zuO3PwngDLsSktVW9QpTMfbu9RtBzSoySP4p4rhWaqjShcfdfK9McdCCkNUtWRIDf
0B0nCzuVZHXbmTmU2+YBe/jvN8pCn6GbRWJj2Arnggm224MtJqvsLJqy1y4BhUx34gDA7YiWHF72
tvdGKpaJDiqC4E54LKybzUDaG7RGB+reetMnZJYoIOnAmiRAr6ZX32tn1/wU/IWFRPdYZI0BK7MZ
W3SOORMpc/fLoyzG3LV5sYm5gu9C9YzjO4Y0ypOIRqp7JHKpqE9nE/ExqNF4wsjaf3rR+uUnXJwb
/54xFWMh9Q3lvwncpP47P8w/FP7PbsPXA9qMtCf2c8LdksUtklcuM6Ukhlg9KoFFUzIW7u7S3OUw
s7IKx8LSpZ+rgu9zeY2RcOVoZTlQLyQnQHWgkaTIr67hh9+lJBzGrG5D6VK92I/UR1MEe1IAdKbv
ge3h0P4xHP1dQlCY/jXbz5W7TEZVR0L0dvgAXMo2iov4NVyYoUqYcyiwtDE0SWyaeEh9UEu8sZ2w
e25+YjcKVKBXwSdHKzNnW9rR7zBQMWqZWmRkYKy/4+lwKutgMMGuHVeSVwkzHajS9N+uKvmPQ8Oe
iPM05GqflSv4eVZMXIIiPE1gHpocWCvrdnLJFmWvAIDcGGboFMXgBr24h7klXON8Kp/sHXc9lFPG
B9BJP5EdFfwyAkTlDKzcHsUmmidGlPn1oBXb0ZmLN2pqIYmmSy9YJS6S0txjxI+lzLJu8miWVT0u
YStv10OBuzoNpFvlsZsU7+Ot/lIRU7osODj8bVrqP7uD+0V6WxWL4tJf7t4/LeIwHGK+rvCr0sC4
qu0BDBtMmHO0Y3Rqkn9D7WUkkDu8A9ONqh2Lk+zCVtAb+norigUXJUWmrJSBPJce5TWrHEvu1Amx
c/2QG/cn4+te0qCU0EYRyvxD+57EEKz4cOaAP7JPPYHNFinvgtMiwx5AM4T+fVeu6auU+C3KljPx
Ix/+Bx0AI5keH1l01KI9eqaWyzrHb/xIzIGBTbL8wmoq42X9ZR3hHByDaDOMXuwmz/LcyxxDUE5E
CibTiqrNkES3UKi6W23DcoubIkUaq13cYGZwAtxWBhaPLVH419Jkw8toPDtzDqDiSxv3D7bYSH3p
YQ0kZFpQCxHqFZS7oQu5D8H2ccca3tHNKJ2q8e/X4AmssJgkqprywTlfcJmkrvm3VvJrrXMKPFdg
ZKCfcoD79guPP29CwJi7aGDZkjnGc0Wr9/L7kmmQrnc7JxoSQ6X7iz3dyruEV0YKmYnWt1Fdbqz4
c2Mu2ImCZ83bJ/KBR/2XsWY3S/yssdouEoUaWt11jqul9LTsa4mxLcdI/nnpK6N4CiotmEsIBoI8
QZFxdzSFh3chq2g1IuO6shjXPXwnt+n6dV6CWTzuESKCz6xDTJRBbM8mfCU36YR+F7BZ6RXzKuCg
4/4AUIlxpdWennP0sU9Uix6kX3lVZCR/f+Vw7GSMTtyTwh4MoiVRD5iZFvxOMXj0MEv3iX56DusA
c4PjWIyZwTX2gFMeuect8wLyYECpx76ky/QrgJwiIMOXGylFb28VdQpaRWY/eBIdFchPqPSz37SK
ifaPzt8UIqHmOPqe4WHdZZjoli9968Hb86/cwlgrTmtU5cO/kzmQWDJDjOTGStifjJJqtgO6VgRh
IuoFXs3pxi4wck1Lkx/IRF+EBzcIwrHETdli2zF48FdqdQyeBCP6jHOCLI6b/blxIbZgu9eeft/p
+27QX7Bguc+sAhZG+LJE9b1Ku7SuV1b2rgNwUoarYCZz1VNeOygCwGRbf5bRu4opQst/9ZxVxFVM
lqlyswN0zBX1yqonIjhlIFOUbYjUh5SltWo8yuutuUg6oHod278nqXL/FqTxgMGT0vo5YZo5ouMI
aNuEUNJCqQZZA+4L/ozV1skFZzoHrKZLCk6h/Ap+JicXCHkJoS+tqGMGSGAPGIWSeCDVPSc741X2
KTtNTfuvBzZYfXxwpJ/uM7XEog/thT3rr9s4dDmI5R9AUdD1XkRnVcOpO+AUIE2Xz3zd7fkjM+NG
K1p8oQTtNTwW78cv8rotvmLY1EsZ7VThxQXbmrERUd5sDJjRaTNRna3V1EK8pOwP3hoMI3MVav7A
MH9/ykUUPPJc1V6YJlLA8cnk2CK+wCg9R0RAdK1KJLeHwcrK8aYTNwpqiwtGgLdOAfC92ffxH7Cd
ml9jFzPOUFfEe2ywdUmOX4V0cu0d7BTVE6wQiI47HwpFNAJw46takm4X5d/l4zXarXqwyQNP3uff
QYv0zMH8oFwGr7CR5aXo2EFWd3vSCxJN7K1JStKow1KHWm9/lf975yf4VcjtYe/8zPr7yLcOuDgS
rLpNocTXBgawy2J+66tbHMeksIFb/kilggm22dfJptMgNMfCy57dSbblIJ6Ip9zkcqmZCKFO5o95
DyefcWjrxwFM0vfjna0F9uKOwjrW1OdgF5dubTS+Of+BunKpQd9zviz2SO8i9IJ+DtzrPkhowd8b
9pcF5egRJOWL9cfzv9j3qNtAGaDagql6kEFg7oiThf5antncR8CmQa2bxaLu4z1h0dkqQCsNpfGe
BPHYGEpsu8bA9jm4TLLyO5akd/30x/uRSIVcu/VhuH+7xlnyQ6gsY57qIHskPXdymft7UlKw3G5l
smQu0OHFrv3BTJBOkrnYLVmOWJsrNe5soJbQdqB3jXFi4v4i7iEksCaOW1M9NLVc1DSNsx4F/UIa
LFWsIFEwy6Xn8JbUFpl7m/C/V2lVWaNS+JvjhYh5nTyVMOHgDB4+jqdIOlFDYAvBqTBQokaJDRWM
AdP0Iwlo9vpQbdk6uGzdo4PlzWmitCU/lQ6AOuDc+xD98IANVsTuax9MM42QT4QoiH9OZfW52YCL
7f9+DOZYCdQ/k1AOmXU2NEh8LySNnxeY55eKgpghoYClAcIvYACCR7spZG7UNGqs+evYk6joUj5R
BMcUeCaGgREh/h10mSzMMHRp5mn+cDsIkSrn1KGQu3AIXYw963zQ2sSMOroIma7ujGW78wusumSZ
umgKe/boyHAPXPOHSks/QQqWEgOrOIAAXJAoeSW30zwc/XQvXK7utH4S/uONqZln0/qmgLPiuEu0
r3/KG7Fp5X9MlVkb5uSVfrr8biH/F+ZK1QrIXdTvc9PzXGIHvk1todqgEUqB6cxdPPvC0/xCfOmY
xI4FZ0kJOPAIKsT/S/vPOS/whYiCpQTswXlLeLSnKYgI2ZxUtBgS15xGLOiImnBpyN8cs5kKZnQm
TTxFNRcfzoHZ+KfyeBEeMDTJBin129tufyghMOYnXpPigypvt6se+K6Jz9Htzi05LYbiPF4wYnL1
vdW2UyH5ef8JLKvrKjTtJu6P9A+PGRvB8YjMXvhpYQo7bNXiN+/Rx2liUvcf3dWc5xYkGrReNJzv
Hpn1OAr3Zd5hvHyjbGN+cETIRTZWMmxKTYcr7cN1eYKjaNvtWj4X4LGMf/CnUDbwZogscWJiUS+d
R2Os5/kd3BbTyV1zB+YMrZPVOl6iCwI/396BsiSHs8AClROLdopaf9RpzPf2cmzvEGdA2TURq0c4
RKbKOQZ1iY5hbkdlEU+f/ecPh8fu4M8X2em47n1Cc9SSWR68IGvabbOjhwoi+uxDVpDKk9UweO9J
2F/UQOSawVQsBImPyT1/R0TpsxI2zmuC4SQL7QZUy0uXmIc76kQiEK6jQ38zafM8dph28hMmUIzX
qFHu0+4rjeSfRccTfAzHVVrNPMgXYjPBAmUsvlNAEXcj4vsYVbALik92aQkG1iTTaLC41nI62oGI
EX/eOhJbWKtDaDPJrmpxk2HhdnP0LOR9VBRBrRvPPJEBnW3x/l+73dh77cNySeICv8dxV47YSD37
o4V1hrF28KC+2jLA98v9jFpz6RBTwJmexkfV098NEDOu3iRVLN83Ob5DLz3MnO0lyID37VL9UAnJ
+kFkbB6ga5tC9Ad2530bNbGO9JuKb+ZeTeAXB3w5qV/6NDQg83y9jbhPWUVEU/InglG2Q/PBiNoF
6t8oq7k2wPvRYPhVk8L/L44ZPwPqMmszxCqk1qIz+fp/STjDaXYlNDMno5CGWyqcUIuH8s4rUpK9
EHY4EvCznG5ADzqZ5DPwqal1TkyL6gGHYu5CRv0WvMBPHfNtIN6l7VbABfqsUenZUUqHIV12eVmY
1yWRjfoK4uQX1P5dtys8rntKBMt6QyHry6moeGxa4K5Puef16fhVXsEQGUIMlzPM7pBUayXm3ohb
5fiTPN5USt0kq0oc5rU5v9wbe8wXd5+GhhHX9uZcb2ktKJ2SdnXUJdaHc2cERy8lJczpS44m6YzT
y0m9dnSiBpqtb0rL6T9R3fZ058Z6tXdMlqyijeH9rm1MdLzJ6DVeyImyOkwKOEJZZBpqQGREBT72
ogC1VBuElrImPv1+XCZNjr5qcQ7p4QjUtw5J4KmwWJnaq7GcbZnkmVuQ6UDpviffM0alR0RNUZCq
1eRl0On1kZM/VKyR3MigS0eK0drrMzSLTY638zVb3kBxIEoYVprSRSoGD9+cHWwabmrtDEjnzhjA
7BZdTEuZaWKh/SppKteBuHlPdcXyswmBoXqLRRtzDS7FGVUdI2JjP7bQconwmT+heluy04ScjNPf
D/nrjtqiXSCZCDDV1n+tlKmz8ObgwZ1G4cDqHDm2ea2CuqNDYsXwL4Vb9KdAG8ZlA6AvVY/dqjns
gXclYkqP07urRsQKACHfc4iln31MqOpCdXkksAqpJO13A3CTh/Wt7o+/QIaUydTuAT0j3bUCP3kY
iCZbDj6TPeBzpcCaArAZnxK/uspSIhmHywJbYGXeUDzm8CeB+3A8yxfcU3x8c1Pg2L7hxFIqbKpE
k1kowULYts1RQ0AG7Ao2p6+n25K4AFQ56O5bOmdABJ4iiR1ejm1IZqnRTWs9lKpN8UHqe2QdqqV3
cx6ua7wIAMlVmj4GFeD2yWSlGatmg0sY3ZbRXL4o5xQqibM8KhaKWIrSYACHOpbd2ZNiaZGKQl1Y
ObHzaIINAN+lr2tfF1UR6g+N5iluGZFQYrPkKngkOlCQivGvWjVsKKPVznZyUOvQuK1am4bhLTvD
XO0BUFnLQ1QiRfKzC+Et8zMjkYEJcFZ09nfFCEfGdkufFnXQdbbKvHhi3YCrk7pr9kGlUQom7MO1
pfIwq3UyVyzNrRV9N15MHU9TXMtZK5a0XQoHrl+xnftWjdEvvzKOMGs7qyfKoeVXb1m6pkOw93Ae
tlCzMegPklWrnkifP4Regj/YppP9h9MUY14JQUUjVXZaQu1xKD5pSI6FPQQmcCxLPM8RCrANrElI
wCWhIpaL8B6jbpGB7bi+/510yMT0Q7SAUpulE35+opmnS+sBJMYVWcZeeTmU4CPgG+oJ9ACtkUGX
Ql+/SjEq2sbzPTXB82IGCOsY7fWxVp/6WLuNiNfhAKPgFx5ITJGKY1LG7vLPWfrUu5FpoDH5CmJ4
GlKKBniw83NHYkFA/I/hdzm/8pDgfIAEqo1LRnADnTfBzQyZtgHDSWRz6SUtZvKR5yVABegDhjn7
O77Nn5yn7aEIb1rg0Y8jvtL+L/CXXTORLV6xB7YNEFD2USr42WACsRsvijuFSZnMSMDUMDZFmRtt
qJivV0eR2YNjsnMa3Z7vstL8xR3n/FvV+JIedHtSBNcknTURLpl+ZSFRP27IiG0VtDz+q1HzUcSx
eKtG8pjEyinYA8HStkOqw7ER+VdyKkS9n91NTfuOkfu8FsspmCwmLyxgHyjWXF8FfRKt9RHqBRyv
Y1a+Ya6rfvrlgknQ8XD8Ktjf/CUvFpCuDh2pg2l5nXv4qDvxeq/pHC4BL1E+jnaM3OfCTVpC+vOI
KggwmB6PdCHEnHPBz9Ncszy3Bme528+F5aiK9mn0fFwmoVsJdU2KtzUhCwQl5J1UVQoBQyTYyQE6
F05MaupcneE6W4RUbTk/kfylTYzzazOVzUeQXaL1kPr8DHp+z0KraTo11FVSqf/OkOyYt/Xrk1Zj
yjwmDShx4DrK1pNLUlT9AYYK6ipwt6v+ru5Ou/512ne5uVp+rf7yDWhMwavWRZxKH9dp2pVTWoA5
wHhVsugKG9jybDvw1d5TLTnqEMyGluPf/t0lyBmsBUIfuNNpZh/g/fBths57WkKYif+SjkohV0fF
G95n5dphT4VKFQ1geBapeZZSzd58Hcp1hvquQ5UOKCNMCy3B0EWRE8qxe5TfJ8yebBThe8XseTuV
TvH0+k1JO2ULUjWswVmAutOjTV/fkVGK+GLeDb862KhTUn4KQqRInZsl6fWhX7f0Qk5tEJN0ujOJ
an6xdKiJJpFCsVVOnnU5AxjR7OdTCeag/ZV1d+JVHZQWmVqjNiYdrVn98jo8elh1hvKn2mr4PbIf
W7mYud1AhFzStkSKH49jg4pNoyPaAvu4IGzpSl/xvQUo38GmijktDi0mJQZAlYx66pxEnoS+GvhI
VrAHVZFQkuouFcaHVGv0vjIlWnhryKnzrzoQ4r1UASfnjNCSb7Yip3eAfas2FZayPbvrC3QXNkRs
HBlNduK/vKRk7f88GgxihR1c3oJGXREUaWJQx5mq2yiQG5sLtRrsT1w9veAislcUkxFrZomLxW0b
iMMtH/Nb/uV+7Gt1EF4PGWYnQARRR0T5uGCTTKo7f5u6RFWYa3mdhzpI/XxB17pR0aWMS/IKB6ht
NWDKXEbm/F4cOnext8su3TpjLKbpvA+VooP1c5ly4zdqdqS3XRADqkFX1l1mnmIVlDodiOVgz7d4
uHJjG9FTrUf56zoWMVE9/YBGjWw6+xxFgP02x9IV6/cwHYCvBr+5DhwLLv3KSpSHbnygMeidCBCc
vGfLa7R7Mz6ZI/VUL4Kmow5QHTC4Fwtg/stdLWszS8Wpd1mcC9RGyAeUrqTZES359TpSq+kntuD6
B4XccKVmj4V5rWI+lm7evp78sdA9R7Py4lQQrKKGMFV9cR79pXv2gkQAw0+ro2OKVpDrdxm/immR
GhKLBHKmKprLcx3H2kNkxEotbi9bz8VDkaIpxMBCaEVvw7/7xzKrHy/M27ow/chNcxbMD6pUo4MH
YE0U9pImo79oSCJp6EPCGkd7KNq2MzkL19AksR3pi6XQN/Vbmd1p+k+2F7LUbYF/LRPmxgaifUaY
0UjaqEx7ejX5JlSwdcI4GcxicgKLy8itpdCg9F5ywOqOxay1p11yBFq3aPsLdnQXIWRyE9Dy+PC5
Q2KzmWqXxhHqlubHO1s8Ap1QXatKlANxLbZRnCmVcnZX4SFLCNVYXGcXqX91fi74yh0FGtjS2LDU
3Bk9U46mqP+8JxhSx+xs6GfGx0jlSsHMX9AnnwTnoTbGTwLIwP4YpMISg83UIVJDVpb9HcCuzkaj
HoHaKaTYAyugQGAZPFijvss/rObaYbCLb08SfVDsp08Orl9Dx4gYRWE6VlvJImsDY46ozc939aqv
HYlhM/bADcJY0rtomS6bA6zgtZFEli/n0wZlkn/RYTrjWe+juyNv/S7eKOnvc9VQLeO+0lClyt7u
OAhYLk9cuwYXqqhc4qgJYJs4nr/7qi+RZb6NmDGvwP+5+Zr3vkWjh0Z0Q4HEBQOnca1MIbNeGHx5
L3WY9Jh+gSuEAN1Mcl8UIltntfn6t9FPcuIKTGlJCdoV4iloYo/rF2rj+YoavzxyCWx4iuaKORTp
eHBtlRWpGtYiYthepFCsliwPx/zXe5pvKSMYMTnzNGNMtv801X+glpqQECOVdHF7eqMLmr0Cutg2
cNNuOt0FbTT0AIeaAFnDUSQ2DtsDDJbqjZwy3Ps7Y4LF8vizkhaTkw2wV32fMTh7lhJSWRocYf4K
ispqitHAiRPVKap4kDj1qaSx1XQ2cUg1eeEbIGIYsWd7BuB6I8kOUqe59QLwU42I+d4plABaboWQ
Nj5ldBvyxTrmwJTovXfY7kfo2gPeJ0GB8Js7In6eDHn/RX12/fXEJMvsxy9CKdG9XZuzEN8NNOi+
IL9eGT52R7aYuupMf4ZS6ba5Usj7O7MCIe8L52AvqkjEOO3sVgyvsgkzHxIrJzxAkkmYV+gWdZQu
NLYizgh3NUa6uBNvlyJcfs1ym6N5oNoHmpEYxcj6tymVMIz5c+MlX2nRvbUUHBUa71LoY8w9EfOo
IRDivVRuefiy/0jeQQpNOyNISSsnxsf+njhwHBaQFH7UN4bEIMD4qfWH/YFsRF34p3KfU1NzrpL/
CXAJ8l0OQMvoqPFawiM8irF9hACGHgpSJ3dSnX9wofQkEskzgi/gVFxGrT6WgExecNgnHxqZlIUb
rsCiB9GQ9ca/1PeOH4//tN4cab/HfwxPi2P1yvMOEWoRd47txI1wIpga6k/Lh/QmzTO4MEHrn3xE
ftCXfxfveSCQLosMBuf17dpt48Mf8dC8zFyr2TjOlo3/iA00EqR15K5NrZBrC7cZdpJc9tMNP+m/
DkIzVMAw/pwjbGVQHlCM3QsY7Ng9ZgrwKAWLkvqakvEDm6tPJSg95m69ldnAJANX3iiRQ97MlJMB
lR1uTpQZ6b/5xSRgeulzm7cMWx4Ng7egQ+h4hpjgB+nPwRfWuF1CjLpbz1Mhqxshx44+PmLBrgSU
UbQqyYFig5q64luLa89geAWA/tsJl/mfendwCApqMMpxBl/WTdjWKQPpH9NHbORu/Se9Dhds9K6S
qsIaSfAwbdbrcb3zGRi0EndhAvHWZpuwUF9kKmXlYRSbRs1BWPgzbfPKLj5Qb2CVBnkFpBp2O/vn
624QYFi+BVU5QPRtkuPE95gaAc4uOg85uTNWnQYXUPvUvp9HU2rPeFMhqeHVLW00TuDl4/fHaFDn
7KR5radeTBU3QfgCfcBZtoQHlbPcKJ/4uPzqgcADh1foXv2nL00Pu4vlpuV6c2qWPf5uL05BRWY/
FN8o+qdJsWc3SRoMd7tI/U8U/3/HiuKl8Ndloz4YJxAQgMb97iRXzV4nZ+4RoD92/wToShW4BmFX
UVphLPY/m9L1Q/vV6PUmX1SSMa/PxxnrcbNppV62/TLw1LI2ZW+ZPY420oBWQAyajZ9bpzI+rfpm
jv4zVCta+tZFaNJvgXdK6o/ZRPu0zWHbu68JzOCvvcXXt/f2dQ++r5XJLz+DZK3GGeEv/lngI6YR
ujvJQiG8FEqMTFyfrZLxulQbMlTXi4s6K/kKBEswk0cnmErtRYOSvFWhXx6U/94TEZG3eFINMlhY
lcBGOPZJ5EZSK6OPgD4tx6qmHfQYhwpmrPDGEeRgpSIjStZIBjf16wKH7hywNaQvW6d1VFikCgss
kjHy/0WpFzX2v0q58xTh/GIgWmw5L/wlGEMjqnDgq8FrghbX+6U3+ojC6Q0CjxyBQe9ztz8S3pzz
JGm4Pds4sZpYMyduQ6mxezT3grU9M5Kf7F293SxPCuH2rXgIs2XALgNk7RcZlnxp7C23omrkeo34
JycOzdEnT8jcEEUIdRF6KPZ4tmMbi+p8bHJkCLttrByz4Iedyp8AExpf2F4MBLUKTExADauPGyXm
9beC7SJSH1vT34Q+v/I1uCUsUVQuqMJzjgNNn+EJtMBhi94NqOGpiJnP5r02g3kj4SjdEtPKex/x
WKzRlg+O+HSKeeU3z/wyyyJyfBww+vah9oSEbX4siqHaixew5PvZVbhuvukbH9uGOUtmSzuBtG00
zZNngmpKooxayC+Oy/PPNKVJuDuZfUMGh0sw1pzW+592ebM0eCZyvUfPZcW4A4xD3PIiDfincHaa
v7SyD5LolqGQSzv9Xcz7MDw0GLnJ2SBVOAKdgW70CCa1shofdDUOHAamJpGe545WAH4Nw4fsKq8/
Dwq+olG9aMvzGGz2W+fWHV8YLe3SprXwA/EP8KjVUIeSHJg7DY3HAV1gRrjyYOTZkuLKSr4UczHZ
AEbDiQVqzya7dC/aseGLl0NgdbPA2T2wz96DL6I7VaOH9zaddv0K/DiGtFlyl9oXWrNgVnRbbjPx
vHW7gydGY+y1j2EYEWwGccxrFo9nXEny+9Zu99FRPVRuQjvmXIGbi2ro/IBC3dKGvGU8RXqB3aCV
VS7Ysi/++ZiEPFMgbguo6Y2YtIXeaR6ybUOFuww4/CSBh+BimlHnbZjCN9VzMW1qOHPa+TIPk7ZX
s1tzyVwjrnmcmnKyvmbUpUlG5QXRKGs3zCNuGcqEp/vPN6sQYgpM3tYfHobXSPwG8Lwscfna4Bd/
dEEjjrGxYliCX1Cz/2BLSFu7NFnXPHHu5fpSAllfVY6qfAKZPkgMWIwNyUrWn1zJoxt9XlgYlCWQ
BDcbjePnnufrU1sCLzeLg0jU/PPGMncNUum0+IxjR0Cpk9nBs4oLQ/MNaMjQkgnzldTSvRyq5aev
ZMwIfW/CpX8uZ+faCOGxI5uD5IzuGvWCXpbVqECTo37MKmW8qI92U+noICEcIxNQeSVbQpgtVHTZ
Pa18oXrtR2xReDUjm6T2v/JiWkbUs8mzeTT/n2QnkxMN3lH+vIOiLRin8lH302DyGcGnTMiJ+OsK
L9IcC1JYpplcDXxnJTXdm9ZjiLOE08euTAklDZVvaenNU0S8Fcdqwkve49hGPY7Gq7AJOTQVErZF
WpKfsivjkfVGXA/+YT+OXaHMHyjHNV+PNTu4AApUzSJ96vXB+Wsc9BlTBuUnfZj0M2AtNkBgXX+T
o8iJ2qrVksvrAMB/4+Elt5y0G71pCfhuEez8kyTRKdDXqLtp88TeixPHhwGpieSgSWyF2eI2GFAD
WHM/TLajRVPFRv1U0xdOhwaKyr4yaKiVIu5VxjSq7EHkRBFL94dJykI+EubUJOQEXJKiGSwIqXXA
ragZmVLCiXfRRFeJ5djMQEnUDjxP2zlppjgQ8rN/SJOkABrZeTgZC8v+TCqCbbAjR3QApy1igxFc
i4WTTy4udp7gDAU/M6uoSCuSz5fcIF8lgrVc8vfpXbOQNQv5xzzVQV7YMRUg3mwMPoUfu+zlcg/I
zACnhuZfzej1xPifMLoqWMoqaqKO+gkIZEE+Z7vFoCfL+UfuuwEiX9GrdfYEYudr6tIY2/Pziqxz
0uG0x42lhIaVQN6ifiOwb4NOGSrjKLO8Nxf6EF++J32agxv5AN48eQRcAyFZS1AWL+8xZHnDvD1+
AR6gKSQYBuMs1jai5jTdplImxvdkkIATR8boCvn82MnWiqj5xDFF4Soh21XjonA4RD1qURM1z9mw
7a4o7m5tDrD5gPB0TJvJi+JqM9xc1XVHLrW4Ne2VYZfStimzF6zFr0CDf+ob6psNd5AG0iFKIHvs
g7CnsfuU9UZjEeW52bkANHSL/i41dvRh1CqR175necWrHmVxML1EN/h3QhcHfPZOF1nDjo2RQc4h
FfyV9yP/lcojZbMPFxHC76hLvE87z5kUGg6xiWwkSROprnWU6uGFW+FStHa3v8e7ZaWJksLpRFVT
624iAAe6butm+pT8WfoSW9Z+gTMbYGfXPPm6bABUoKGiizI9CmxQPkPhjQRHwTwmytA4kub8mEBS
vj6YRzb0h32wyBj+25ZppUj8MdRFP3lAZojWEiEtQb0yEaAd9lZVMOv65Fw1ScC50m2Rjj6EvZML
G1sMXhok1PqBv/kRM4JmvjhcOhuqQcZcQIZ0tYAoLnJ7n6TBkzSivj/z1QzhnMHQUGRg7B54VGG5
VN9GV2KADzHYYRxS0rltBX1Y93l5kJwnbedUzrCDHFnwJtd0WT/G6ZXLHrULcHGOuYG1ZeFvs2On
XmkRBKI2P2yZtrA1D5bqAIq+I+wtG3/NNkFYz5COfOhJVzbgBwtvZ8aHkLHkZBA7K5+9kxCl+et8
VXXl8SvLdlVo1WqT0dqDl58T4cvk2TwOqInuHy52ol7mYgUIt0SdNHCkOn5NI3msBCaxIgXF0xoP
cR0sVnMsBu/QlBR4ECeHcl3WbLTzkL/fdFaQBZ75qY8EV9FZewCiNJ8Q/e+elSIF1ThM0DuyppAs
bCV3fFNY48r7oEwSoAkvuwrBTbX+JiODkp0Lrl05YP7x+Lzu10O1K3BJ4/DTHacaPBHoM25anTST
OmhrQ/xzcmz3JCFLkwpovOktmnbiGxcABPR76nEZK4Yprc7ZZme8doO4x0YQ47oealFDbpXi9ntV
Qu70EYTEIFon2VyRKNhnM1GMhF7bK23X6Fdkv/Z2jZuAeCyjCq5S/EbNzp5YQMyllMSV3NdM0Nbf
k5LL1dDgHZ8SbjKs9bX/4KF+pZbLeK4aOrbpcjeQhVCTxaAcGY0b2YwELgJoyq+KR/AdfphH5V6G
S7oT7VHaMYAHcB/QP8K+Y9DPlo9K5XYFxF1iT+bfvYx3fqohHTH//3K0Tv5GnzONon1uce5jH5WN
IFxUDrLxDlMMrwl6dNbB+ztXISFH0CSSG769KyLdaer0hUClP+wEFJ+/hTs4p7VOTtDnOK1KZejZ
sVuyl37K5CxI74HVj4il9lr2zS9wC2IjWbD7aukEx2qYm7v2iLQg7IVWylAPzEFoQpW45u+5LZTe
rAi9UGAXCPMMB99DB6AG2vUuW2dnVdDIH+ejTGbsdmTzi8SEQ/HeGLKyTMbdf+xG/Xd7utkFqn4v
lvaOHCcXDRQvrhiwMBcD3Y6xqYEvysvYk3Ah2f7ZrSvKfWRgUfSdoWoBf+net4L6vubLFhMiwpjV
+QQk9lDmZwuMAoD+jUwVnGYxgy4MXWWS7/51V8lvVphOht9MdXDQHGhlUWOUUAtu1JbR06hxMm23
Z+XLfnIr5TyfL0zSuTqxnfyDMiFcWz1bwFqp8h7J6aEHBvp6ihbkfKAUA6DYZX4fq92eRZA/hIXm
9INYIarCyrMxHuWx3zQZOZMPvi1bHoWomOrvCF6KsHuCAGPX0ISOLwE8J9SJWEHY3n1HTqdAlH8+
eOSvC60cp0f6JBzh5LPSAaIpPpi0w6zjPc12Sd5y7b7rIULnTyqkB8qEsfbwpqjO5MUwhV/Vs+eF
S7Xma1P2YSyOViw/REGQlIXTEZy3cnKi+pzBve5xKnr90FrbXWdoellL8QiEqVIARPqVgkfO+F5M
WyHUKbk2ENVycx0F1yP/MS8K0Bh7YVkXLqPaYissnUpqTzINzSNwOmMN4fyoZ50rgrHYwYkc7f9E
w+gSt+LBojtLcmOkt3P5QqxB3cFoicZVvhyUVcN5nMlmfnnEmNzeZAVrUlM7nKeQCmf60ro/eKlu
dZASFKpZmc4Eg65rvAYb0NxlWq3BQS7tscci9LW4P1P9JV3Qa1VJ6ee3FIVfWqSP0VRa/+xtZ77O
CWM6znJUKhgl5NWB1NX9EWtb7ZWSRaHLQ+7X+cvNg2mJ5elSfGUdJQbl3lkbfXfytmA1nJQBOBpO
k9jdWefs7Vj0ZmqmsfDTlmYEzHUGOoiN9h3XFwzEVdZMHisi9PsrTpkqcqaTOY4DlrdCShc6Gktq
XlRXstvkjhHwlRlqlteCI5kw6dy9nrRyIz1w4f8n2kOyPiDPquymP3I8yvYWMkMA9mGIDv30I2vF
ZsaI162dyGyCW4dpCvse8ZwbTUB4l3Fdz12XmRtJGq3CkVoGrDXa9MWZ0ndDe2XogVFRM2pwFeme
CvJlEwx/SIKxmywk1EYaPpjxPWVbPWQ0IJGFPWKbIPYDbWGe3vb8RGuKNmAZbmjE5RpTe7PvnzBh
v7GjitbT4UX7HHebMwnf786S5L0Un1V9jBTdlHFjx4XgoNDXkgniuALCHQSgkkdXPCSr9GgTMTeu
43rCPZAeSqINyv5ZejKfKjZ9i07uOmNB7LuekZLKqZVUhT0OfHZgqr79pQUqawNihmAu/VmubbgJ
WmtOGZZYfLhHO7Qt/A4PYgHQjKguyGPGyBvHpQd/p6niK8vHuHaQzhVicWWs3hMz+4fjJ/LIeKkx
q8i9pXHrM0kxKHhWQ0S2IdReXcApMASM3Ur6WWlGve+2HbZKhcbkCg9XmmDDUwgOzwDTucopp4DL
GAdWO8DZWpbDuvML1rLVwS592BHgITma1HciwqqKMFS3VxmxfAcIq1QE9G89+HfWUg5nt/sJTtbk
It6iUnv+CBiGwl3pW7tk3SCnny/DZp7QUrN9IhnV3PZmizZEVVA7YdaAm/jrE5hNfiu0ofHjVtc5
8xKcLa32atX/bS7YabPkPbHjnFxUZnlm4EkHMe7d7JgkWobzZzNqtWnVztXD9e96ifHncWW1t6oB
XdFnXZgZhwEwEcNDb2ZQBtNBfBJkmcCl9/seUGG/iicq4SrHnRfA5szboyHfK+HtPxtSfgzdT7nA
5ZwJn23fRAn1egsqtdiuXwyVMSXTJh0HJrdnqNr9MsZ/FHAbnHddxpclI6tpQfvA0tmeUHflCM8i
ompGOkTk9Vx+29eEACzN9wfEOYYxJ6wU7396HJAvEM7RjznYJSsJ7PPntLt4mI8CQp8g9S3S7gVU
aCW2KWMS9Huc90/ykKr3+6scshoJWhWCvDCl7C5Euxu8+v9sS4H4QvcXsI/rMZ6ZZRsc6B0f5eAG
0cM+ulA3yEWKKXzAFqFX7KNOJFTeMElFE0gys4Iw8nNzx+z6xBKgygCg5P/B2Ssc3GqEmFXikLw5
ko0LkLNEIRamMEYKbaCAzz6c/V/XXoR4vyXVHnCzpSl+So3q8x5so4UgO2qPPhWVvL7NLvZ2oq7X
FUC5i/SCXayvHaVoRSes7rayZ6vBPNdXqCqhZZHIV8wgS+8df1BwFcI8AGPQ/triu9yAZshOkBtF
yBP9JTxSaIdJ5o1WpUGBsYVqKf96ZLHNoyM45mFojHKrHsYlEm07tIM02y1Wu340RTOlVFA5kKdn
aB5hM1gVvSKEDv5nG0kLgbrGotUz+Ser0MOOIReijPiHE78RsucSIGfg35MYVsNUTR2Kq5QhcmGw
IDVr8S2kHTpXV8be03xUsgILdEofVL4eQ+pHHwGg4ifAJRQD2HzP4ky4VAnuItl4ZDdqewqTOcOE
hefuSzDjSlkB1F8EuI65vCaomK2QRS7JWHhlcLjE2BvvX9wvA7+L0bypPFLtHSIqoBe1fUc27Nke
pd8qc4arjpq1bimDe+W0xJPsrzBkPl770D7oWEEAaQuoWB0qB5aRePXswN0p0L7H3HIO/qlDDNsj
f7sLxVZF++gbI9+RPT9j94Kn3YEopqpQm4vB+I1dF4lT/A+ZpAq+AjMg5m/FKvgbeFQXFY6JBjDT
iNO1Mp9r5+LTl5OBXBGIcwGdrfFVldv6fPCaQdZGiay5BFDShZfH7xTed9rxymgj5K2tYtzQzDR7
iJ/tnzaCSGYu8ihjXFiKZ3WkL+1PkY+qHg5R9PKf9qKNJlu1ELgC88i7IZJljlGtwmdrke5rTRzc
zKralKol+aHowmTk4Y8WWY08Gc7L/sGpOXok71grqfU4c6ZWBL3jeocfj5KFtQ8kpU504L0Qw0Pq
dfiN27foEbPXzsJPHNzgOVJyasm5tyTwmuHq85zPw7V6XaEoJuW9dcDknkM9EXJfZzl5MmeBCxPJ
5WoqrWi/kQKFbEQ5+NiWflGs03r0yXEi4ukmlaRfEubfG3UVNm2T8YIaqMV16iJyg7/pPO2UieAB
D6TYUjWqvN3rrjj19SaFnnUzinjHsyJrEihwpK2LZyT45k1aKFOFZ6hI0/az0TJeZYDQs+iSpiul
u0URrawUCevjf9ntckTgP5cGPZgIACvvyzI3MDSmPByuXMwfDRx1e1Kuqefs5gL8CImlQab7rOFe
DXh/HAC/6xvzef5cuBbqsMSEME0yJtM32HrtPDJDuqbYW5GHiVDxzkQ0Lbam//LCinCcMhKv4T14
chABRG9nj8zk+8oyMa11E9plEr0Ss/ZIphbOLLORr3MIbPqHGyj9AvaJNJ77H/5hYDuMOtRROUg+
Mzhti0vUv/z/wwXuQr8iLU3I7WBc6gSKk76PCrbfrMKBo0Rb4zjd2moHHlgbkgp3YChRGBSRGrPc
OBHEshepZhrJR+ol50aeV/GLT7ASMBijqQp4tFTUoKf8AaLyzzcB1q+GUYh2TF2brKql2aYHtxux
D2P4zc4SW525uo3JK1CLALQ6mwhznegMzGOGHKjzEfN9ZYTqtraGLHQNekezQd2RcDE6mdgG8ynE
HV5InrSq1HdSLX7A8495SQvUpMTYuijxTo76z9Mh7NcZB8qaA2Y2SfJpppxZA7naw6E7EfgYQMUI
BCMv7TjZSp7DE807RKOR6tJJDK/MK2zx2GRC+hymvRN2BqGcvU7oTlhRzGSb1meZNs2sjOFPGWpc
Mho4HdVfU1FA8cjZr7Ui2mQzTTAu9MB74qpY4xBJVfS/x145JVCCcmdfyeY4FrI49qIm8Fcb4Jpx
A8AYRfwO/lYIDT+WlRXJNOEx8Ovvs+k0kxuApbqagb5C9aYsyVRQTXibZfCAMLxQHCLYKU4a30cW
uMKUhkICoVeZsxM3AJtLRd63pfnSuXi4czUnL5qIITEPPoRaZim2QXsKWsDqm1x1ldSD6cnHNk0u
gSnODeJmomf9XgZwAitltpXMlPCGN9NF2JLC7YXmHMc2irKiNIQAKygbyKS5R9jJ1fOdWdsMGXbL
l0+4QWWCW4Mx1JNTunxtMTFSdpJ3M6vFtyMmjyyhVgJyW+scWxATeYVONN68LRdeXO92g4UIJtMY
ZhzNN8actyhIO3M3mw1NNRjEzj9DetwsEesWNcyTYc1GqHZsePvbO0zqj7apBJS/42EW/EUNzfN8
x42fwGdA+dJwP723RV//+EbjrDS91AfEvkmaksjVAI5A8np5qceFkpY0QGCnrY7w7Rsur+wKqNzG
VBYE+06imgpGlWnr+qJbKVYmuDCtma27NeGSSsJ5cSkhfa6Zb8d0+fdMu4sSBAvTmlpXkFFGlD04
df9vJ1Vh5Bb7iWeGOFVd7VW7q9xq5IPlE3K0mW/LCtLwnRLye5UdVFn6ByskN0f/nskYaWvryK1L
aV5rwJsimkK3Rm6XuXKCW0AnsIJTw/qKxvBiRGdu6RkK3dzaENYGmvHQf9K5Ay67mJL4K+lQ98+4
4earIvBXYeVNPPZKy/Zstceyuij/z6tD8z7InsK6c6XotuBM0F6Oc6Fz+lP7cegCe6nCOh01pysW
DixphmTp5CUMv9LaYE72y47SL5Bqd5bRpYUHadPrgXGMA+ziMaZ3dl67Z4ASvZHK24YZyDBZkr2R
VjMmfHXlGcJMmYHaWtFEXtvHXMpr3QIMRVnB+v3TdX8v5C1XY7opOO/0r0BUSGehdrfJ4uj6hH3J
Wvfdv716cg5lvhZ/ansVEvD1R6WZbFXiDM+VAj7WT/hKWs9OqpamEWvah3S+MGO34hb/tcD3VcjK
maJT9hZZIoVmQIvziXXXo/0zL4WFx7P2lW07eaqvR+J/4bLdpn5myktl+DCz6ZrhT11gWiITL07v
hi+0GRLx31l+G3P2MAH8O6C0EKg5iZMC2Hdrto7dwieWBTedjttLQRTKlL9Y77Lg6qaP5hZuDhIG
sbeGl+terWgGw5KZZaJZbGOtQqbAvwF5EQyDgP62wk3UaUHd0EAqXnmBSGOam98RKfOFSjiuO+Iw
+NfBgfRIQeWSLE/6y1chxko0p5rIjHA5rw4QGktbgSqqPqSCrpQnabkza/dnrVoRIC6oaLcHg5zS
UNcNbItWWtGRrtowUQ+C4mnvCkEcFAEfFwN3+oAgRfcwAg342ZQH+Fm/Ci666F41Gt8Iy5+LV1Re
G/IXwcYS2MNXf/e/MMkVdChF0KCYx+a71l0ZHAqu+xa7sdcjcCCUORtcWNj6yhv46h+PaXk/ukIj
rB0+hqzOx0zwN3sDXCYwyTV7pP4Ak+P+IBCqRW9EdZY+fd1iRDg4HRuvrfbz7dLHSyMKj/WXmOuq
v0+XfdLGde2FAFORZWpdp4Q8MdsTKGhuYlpkLq8QZQbJdRO+FWo33N/0HON7oS8xjZE/75EQql6A
8Wvo6dq+dQY3uceqMnxRIgfdcIwlb8ie1xKeV5gWtaUcYl10GLfTslsgmJZFYIBWJEXUwd9Qq5qP
zJawadBi+2hRk8tlSHlSVP4NuG0Ar8cRU8n2SdizD5oAavKSKmwRNmlqxg5Q/F7b4545USwDr3Uo
Vs84tYivHWO/7SVcqwQEAU0rXb9d/TJVOyF1pI1X+1qWpmTc21r70N8LVVbiATeR9umjQSERzyxm
t3AfEFz509+G35btYGRXArJkcRIIrOyrzl1e+4tTGqZmHDQxMxi1vayriAvhppBAn9G9BggFGYkK
qqz4Z1PEpryyqZbdu2M5MkkmO3VEApfdK7RCO8AdTWxtVFZzf1YXAbhrG9ee0Twvd4onJOlAIWF5
yjd7M0j2Txj/uGWCYNKHwKhULoqRumIJ0CyHs/B/GqtjoBkpUBSGwmw9GSiqR4ujcuf030F7uxZY
NRFwWECiwvjAIx33c+0v4JqRyuC5K6CbJnUcrRm92f7ka4jJpdxOTDOyxVx23Up7F0xwo/3k0wA3
5dFuQvIu+jXEAN5migtI3+1dYGYFwGenekZqDjB4BQ7GRVhQYIePScd3mmT0aZqEVyEAahu7AlXf
lPehqceSPaeRpabenE5d8UaRAnc9G5CTOtb2/rj7jDkPJmCOW9nTWDrfFz8nJixKhCjteby4Z8be
ghIv/Olxlu2luKYnYB3ARUl/9kkEz9FInnA9uBvJaQhxndK0dEPHudL6SAFxieyYiZvSZG7ofrDz
5CxJhrbhlCSfASsDiOF81wVkHW0cfflsWhrpuhsiTNr7zQOeU27RcWh75yYjnCBU/IQUI12dL34J
RPjO/xGUJkxxY2xcFWEC4u9Xe2s4CVQ8ItBOiyDiNcFnkcCORNEHFr1W6qh3dz4bJhQMO8h+TKkp
WLG2J3hkfKtw/dwQ38HRAjSVUJNZIKRYki3KV7NR7/GNzIYE19446d/9mtDRkdGALLhhUOGNGJuA
M+u69OfsxPrkSOaJyqO2XLJ3qTbe1EEMWqMJmxMdE6oM0aNjVCjHs3RBvB08CxCf6qr1nOcNquO2
qxwd1kaBcAX8QF65hzmNHAud5Q9/Zf/rFhAkcg0IEH8roOc5cYJsd6VMTIl/5/t8TGCbcdcd0+Tx
2RFei8hTMps1nMArMN5sXdhSjn8hOhLrGpx9Dv+Q9FUkDezmgMIjz6QrGM7o51cHtDx1tgdXEQd5
Hakvy6AZxfViJb8xING3hCiqdxpiKJoHbQNZW9mHiLOvGs/0Qjd2o1pP/4xfNeEc4rIHtZy6rLYA
nhvDTNbOhKImQLqNDETe73P6BbVgUD7m5CndyHyXG/ypo2AAtfNRLAJxaS8U4wWdyZylQqh0Gntd
viZ3y6Cvg+lDROhonCMRzIpZUXWdctW+fDXVGFymotzI/bcBmbbHv8Y7dM3fFL98Ma8uPYQe+nDB
IsKffq+rEsfRCY1tcgV+g198vD0wFwleWnaNwuocsHKPYgnTt+TR8SU5m66ua2MS3JezsSniXMn9
s+8mIjiZgA1vqlz4wpZQtimc1ZVXH82veVzsMxrbYBdyPgDEWWC9/Eq8PuaswsBGzvPq+6E5IjqO
jTfGHhNRW4UTC0gAA3tPSRdUUfOpgjwTtt+AmDkeLZjAZFyWZpFZd6Jvvb+Z2x7jzKh5bnWQYoHZ
bGYx0MLVmzzvvJ90ZaiXCKgFfPEh0F9HvLEtTLIr53vNS2uks7YWL9IcxvwWv0Xs/+Axzsx7rN3u
x4sDh+RjFTB0rOTQPYONAoAIJsHFxXPuq2V1g7roKbYHAswZv+HL04VCjwgvHh4HAsj1UZqT9OaY
YHQGx7DKsBSRW9GB8iQ+ZzVgF37kvQFQnVsg2EyKnKfT1ekuChuqCG4h48MtHg1xsB6HuJJT7aH4
+f8+EXQsEeJJvko7YyoFL268WpOs4TmFY4cybblOYd6IbwzxaRPTruyBDwCGke7J6be30ZlDDywB
kvq8Vi2h2prMCU7B7CpYpFzCuOeHSiMPtxAmnH1WeehzoVPb2Oo+wksY1qu6Aj3/0APbz0RonUxN
zNs05hXzSNiEEd9WWod2ggsdAZmeRtDAD7W4LBa1eDIfZkqUVnq3Fs0AV0nbYtD7HuR5JscAEqyf
Yv5bNcQ2R/M4niCZTV2l9w1M2LhjT02HDEZ/ES6xBNti2y98v93hTtRCjOOBW5obO79Q1V+ht3vo
FeiKsnNprC65rhkasAEOqzW1dz23jlQXgdV4vssTkOnsXurUSD3i364U6SSPAOyagQtgUuS1UyuU
e4sKapEZXwZKwEMVCk25RCB8b+YvwRHWdMwmwDH7i/Czirmd1TLYAaov+e24rWQ7y70xrDXTO+hX
9pyOLkX7ZFpZ+W4c2VTVQ9G1nVQlIQx18R1Fl2M87StE22NwG/s5Qq/eRYBu5vF1lqO8BcXa1sKZ
lS40mwxhDgrdFAz8d7d41Ji2FbWM8lhMCtsVLusrorfWX+RAMWmNBNCof+ZLGk6ocsDlPTfWMQg+
RVeLZWR3//ILx3g5vsV08LqTWR1rON5Comfbq79YV/4HxOCUlUx0zIFn6XJaK2SPzWWGsI0Kv09L
bPCW5RVtBmR3+YkC1BibRfCfDsnNjZgjGnUSQkkWPYn4D+hnU7MZE5LlOu6cmgxUZ0MXSRKhmjkX
1AeTfPVpS81HUFh4+3eHRB9YqR3D/z/GiYaWtPffYTL33r0MrfXfY/PotnRjGE+Ybek+EEPgrKJO
mgQSi0e9C5fkAVZ+pJDiX5mH0ymnkhwjGnp5J34cqKhDVogfTV3/YqJyAw4sYDmLNBA1kjztXi6q
bAuFDWQt+EYe3Biz2vUgPwGqoEVZL+eTBhHlVbBEo9fg6Hc5bBySjrqhRpI2YX+rRUkqWdqpama6
YirQ7gVjk9n+zNkaGjVXjTZxmGFUN2ScZdEthlgn9jeLnmXydtORZbayr1kGiQpvelbUEEQ2UEIO
HS9aLNSiVW7yMoNDy4fvrGJnd53Awv8wmFqVN/ubaG07kjkTvSfIUmzcR3ZNUoWoJfK8Ol2pC63Z
YmEq5OE32dUzXDcRjjJpTgt8LxJU1ZSZ2tYBFj5dP+njhdiNm4FAaLPzTQEOityF9Iv6BLKm4qrP
pz8sUaDvMuFRSyrlFF24yjMy0qvIkPJZEQGgcIHDd7wffDSoNQ418vl6nzF57uQAb/u+aRE3+TWX
HGg8dMAAX49jFvMyl1OSh07wZcM/RZ9RDNyRXssOdOz8u6wnvMTzSWtDlOww5UHYe38hWTLdAJOw
DSg4kx2PmQ9p5Ru3/lfFkM1zkpRry2G3+C6Ej7+hPmfa8ytcWHfCv1WqY155Fw6JZ5+BklE3xdme
hUREaX8q1YxBtl0Irmbe5em4g3WjW9pxZEUcnb4/0J6PwNbxK5F3yD7WNv8NvEmIvsECTVSxjl2q
KXzOtlfOj5/41Gj5LoQwzeQONgv9hFWehDo/zxkbYrz8SxcvTUnxY861M6GCoFJ890KETPuj210n
3eN013xjxcgJkUJP2+Ju6mFaNvz7TzmvuJ+z7qPAa3eG9wo+KmE8loi3eQFSMVidSIVYonAP2DRJ
MlQupMVm/P1jV+QrT2onzww5lPALsW4suaxXkjRL/S48wVkqfTFEAYKAgQw0H7HIl2Xq0t1pvhPg
rQ0w410CR9fnZuigLoobzTvJHPInHH+JmIWq8/+UJGZHMxjy1bDu7Su4Cx/UX6sQ3YT5sFRNFWfY
AalBBk/6S5iHNSYFKogMw1JsvW4G/ClvK9bRMLP6Qnpomsnb6ThP7aAceUBjMQuQ7zPA7EJxqdVV
/3QApxnIdjEcSXj+3WYmTJkxvYWD3u8+jVKvzHqhgkyMDF02wekwqcQ62JQElFy7dnZ/L5pbD+AI
C39iA7sVNwlQXCCi+f5NpB1v5adOMdnTaPc/RWCLS6F/6Gl7ozTRGc9LUYH7qoFQ4DVn7P2lJpoi
nqNlyegPQkChEbeziHYqPhlaKRqrrJ9oTBuQzC5RSDwz9vNsSrSQMBuQz+lF+ZKdnqQaYIipcmg+
H50QN9jNwvGrwBiDQ0uawKzelZOjzlIZudCw9yArVL0cENxhsmZ0jLWvbUsICuXwvyzFfcPTmxgo
0mRRvlM9FfmFIf7Ihv90v6lankpE5zFzYsRSjTf3CjPMpgT11YVWlawKKoWkDvhJE5RCak+bGUWF
ClZ9pI+2pPshmPs660itKGxIefHbXBZdj9nQVINKjUbCeyuQ1YyqF0FkxIuIduON47CisS5USVDM
5qS271T2+z4uDWSBKbmh2s7xwQ/2JjpiLCIxBrMXfb7lQIr4vmcc3PyRYUo4UlJ9ZBMHvK/8Z2K1
H9MFjVV3qUWZ8ODsSYHyz9LhjrcloAAdS9w9OMkac2v+CZARqjvk7jlTmovm4Zyr9+fAame+nTRs
NBZ15dOPYIJRdTFU3nAxUvAuFlPjJiN6qJUXd59/TEyVDjTxnP4pfPJxAa1cH2xjDt85VUq+onIR
bDSrqwBHD7hCNBtqOq6IdLUSkl2dhLE/Ar7M+UYV+7ZsFXc62z/IvsFzjvbVoIEAgP8govHcLrg6
cB1/lOXDmdlPQM2FuOwp3Ph/YIi9Usv3qZjlL7qIgo1Tzwj28QnpBP+DQqpHoBQKjjYxjl2ndt9o
MFqD3H0CdXpBsxBtf3+kCwKVaIHJYnsQmM1J6qyJNDtc0/yo9y60ebo4W3OS9rkz2p2TsJYy6vb1
+AGuq/h48YQFdZrd9CdyEEL3I5oqPcuN8gmNeN4xrBeqS7epppQJ1ZVy6/2fA4zIBQbNNRMHz1+a
HIdAYjFNZkryiNBXefr03sbRULHeBVVYQZSD13U78AU2tItttVGDDAiyLKHSHCr19NbarFjkABZD
cjG5fGrA05/dM64HtuF6hopXdcjcrsyJAc12A7R/2G/1rDCuAST+qLZgJs6zxiJWqxMPvgJtPFfH
ED6KQnq5AxzTtbidXc5Ka0ywi+BahsoBBAvHD+knT2w5smbvQsR6ptptMLWSWDFJNIP4VAYEFJkp
eAsRfxMgy9KvIJXOwk2c7BfBsQVYsLl5+Y+Vso5RSwgeWT5zzS++uUhmq6b3LKW+57ExieEWqPAz
+AFndxxzBNqPN7zKw1r4rTmm8g5ctsBwPH7yQHaaIi/i5gZ4Xfc0aHOpoBpUHWORegmnG2AkKjkR
lluuoYl+6/dB7D4oq/H800Il3jftKWjic/JxFtGTBlnQ5XpLYvDPJxtcQ+r8cZKATZSJFgGROdO6
gJ7Wkr8qYwqPm2pCui7dxpr/sgiJp+wdiuZivHlpmTAYi2AeOVzo3POBzMXhrE5s8fnhx4kQ3gce
eYN60o880u7jsjwGCgnC/zqmmuHNUV9istBOoGEg4HpPJzCgGEjSiHk4C2cOKYwTQaiIkifkuJle
lGW9SbwEEamKWV16NKgi0iyYRKHRMZbcs+9qysu8BA1/6/Ku0UXXOdkBFFsmPyxKrU09eyoeKxtg
OTb0l4mtdFhZXVRffAbc+hdzBOr/Z0awHry6ul5h4jq/IcAl19D055kUT+wQ+MR01CMypGiq54pn
+th+ECOKKfZcaTe+ZdsQPuAIs8LbVsP7UosznwhmIJ6dw1jWPXarxcW3/1ilLwMa1HJeSczECw/k
uYqnrZ1d4RLWoaufR1ei3vZol+jkJk0VvZOYAiJVtjUU5eLn3aLG5Ue5H5J2TRtIyBkYC2sKDWq5
vCDr0IW6wV/eIgM+8HBh9+CDGVnsu2n9tgz51CCasEMRnvdXtpWNWUyUWarXGBy5TB4sI5bkhd4J
39EygjyGqcevB251xXDJWoQlbgMH76TzVt8Bb5I5+PLGpEfRMC3kJHIAEdSY9c4OhmiQQItfz7/r
O+/3XL58y8Dt+y5qLfZ7CaDepb7rD5XOeGtHpWPQBczgBLHKpS2PhS50NEvJ93m6jdkX3Z/S8KVr
NF2tAHg7vCw0kX07s3kgOJcDzydp7JQY7Xe5dxR2Dc58sJrW3BUETyMaRCO8hXJZSWTOvhaDDtpl
d3/9tKqbKj7VHz0EuHsVi7zfwJjWn89wN4jc1r0IO7a4o/+42S/FxyB+RXx4f9F08eUl030JLNet
CwsCehBn1wiEXTzFYqWMNI0YR1gycuIwZqJmmmB+hw0V8l+bfMUFbTznSh67Csekdwy+XSGU+XFZ
obbBboWwArpiQQJLRHVhlrZk1KBP1bmfDw2RNvNstYTHTDPArT+Z1xLF+i9PKxBInePwdM0IdsRw
6xQSTQpo2K1JrWAjJSzzJzQafOKDY0d+qoU+yhhvXraYEITvErrMSXhLQfykhCpXTsY9oOfEG5f7
CbcOsRB4txH1LAwq+H/DkyDelsZJORQAmXFQ7K0d8B3tdJIDBYYP94hXoVrE3VkTpiiuPkC1t0IB
oc9TfBbEh9puB3oyXJkq7tSxmTiv4ZWSJ6heywII32K7aR6O+94F74XtJ5h4ucVtSLUwSF2CbPqx
Tpk4jdOqgJwH7Me9xSr3HwM6qYynqm9GMB74dqPnfZ8XcCxouQYuMAAnp60WZinPhjcubbK+V5/I
5KpTe31yg1sqHJFG5dVsLUEa70DV+a+txfBeElZ3x1+0Bedn2XMCGtrnvvvKrDijkXgwm66ajWYz
phiKmo7KjQUTSy8hzW56hqN71JUBbwVS8McCyP8nQhQXi5QmbwMX+c7fB+91oDnTtvYpbnW5a1SN
8DNVlW/UdZt4erBfzPGrWJZJHTSm/YoJ7DbZWgpCz53fxK5PsdqFdXFETRd8XeuoXVqanJBWf5aO
OV+pmqSY4NBrqXjRo8VKULhxs0MDJh1/SEQH6/kmmtJ4fc6x1V67HgD7o7U9AbibTNKd4qi+/E7P
kbaWYXVRCxlpXWnQ6fnRv/3Ip62ckHe/092egFVRZp8IqwpLEcYQyxPvpXI+gzIgUPxMNNgvg9lJ
grvcqz8vOFcYwR7JBuOGA4DoMM3568soNFrlds2nIc1+Hu9IZrCPGJ2bAxZfpZDnb0FddTmBlfEq
n+ZDaVr4d+SaV5e/rDOGDGe588ci0OpFu8ixTT/ka6f80UGwB/Yx4s4dVVILYGb3THPDFIwUENtM
KKbRGQRb7oFysnOnIVnFE+efgy+yDBXtJ9aMdxrLjfS6dHqnkHFicaNbZtUQGqWbrXWOa/wuzAzx
eadZmftaAUHm8v47zY9wHBProukQBwcPzLpJz8mBDLsBd8oHxrfaK2ZzJ5J7i2gUmuhBf2raovf6
2/eVKEi6KOHFq+DT/Bjh2eSzkNrbkbTYpjzDH3ipUD461pHMe/aor1Etk6T+USUvAcpjnZtyz3kO
8OZLKEmTgpPAg4Ejlom/PvwSbkiguor09MrOBg2hbfJ//fHPHOVZDP2BTwp5vnaycwzCb00yiBTd
J+Bi3y0lMwDJ6AuK9FmK2GlRRbC1cwCAfNqu+ktuWehz1NfyOh6ogL2iBbCNUyn8CWkgkcikIFxZ
Hlt5/Pi4hlpgKmVC/672pBIbMNHkXOpKNvc4gt2sXztzuXBiyjL+DyOdlZWWz84Whv74KvlvqZba
QRPtbH22whicMEgLArGB08jH6RT1RByrrt7rI/PWU8dNYR6CItuQhsEeJ3qeSNaQWeot8rGKiC/B
3QcQXQN0dBzl21wvj9P6quVrYaesrnljImsnBVovthW+E16Pq6pZYhoSvpRXFNFxAC6W7YcWlhPa
2gwIQAJjPTvTjDyGEmTFUjE8fTjyZvj8kV2YDiYrr02e5HTepiDX0BDlrL6k6UO53LUl2nuLgEHI
mxoYxCelJUL+preIfp78IFKSezjjTzVbfftcBAtf+Hq2W4Gten8oFezxZYzlILwK3rZ5Bcpo1uRY
nJYxxFEQAvnsohoFF0Hf9cyGkf1ssUFwtjesUaVraaA00KdvNKpME8E1mCRA8WvpFL8sIIgHPQSo
kB5vIRlpYUfIiZyZ2c710E6TJ29xtLqoPjpQMdB6P/6/5BkFfG2MnobsGM00GvW7s2PkJ+9xdO2m
PTNI65uSH8DfE7V8xaOhcqgKkuBqBpccsE/1aK5VW8nUaRkVrqF+jPftBxNd9oc9o3IiM+ad2BR8
bbw7X0lmloM0uPUjIlwXdhLe5UYyv2bjTITct1zMzyaGQVT3Y6fbZ8bohWmfVc3a+BcY/+7R/8oY
8G8kNXzswkrYcDtsQISMpZRdPHfkKKOf11sYWl2FkW/+N+kpl7hQY6aZ3v1WcjcDTSBV43Y0pIIL
cezLtOC9sxQOW2UlMNHxoLPZlhxZs/Trh+gqRpt2cFMUQkZDGxsHIbcnNljiSfk0ylNYGKybd61p
Bmd6+rFpibBkSPmQ1M6+P9LvB6HnNGdis9zWgy96VUAxjv+2V6hZla7Md3+shjkoB+2zqvwevjdG
gE4oEkCgVPec36aefYoCO3QNCQIcMWfhR/fFG6ilr8KnFu/ss2nVVuj+4LhdhBDl8ypubjpj3yWG
WC9Y+7ywdUa0Zpg+XYNlvJQWf/ItuSh/nWBxfUiN/wukoTWy7DdmPDD1xYhS6q1u6TORI6yuwQ6R
/7kpqLZ3hFkBQb/3UGF01O0TROglair42cEbR6QyqOT6aN1c1rCh7i3leHtFRTEgvZ3D/RxtyzJA
HE1+5uyid5Kyfvvicp4fU/7pr5wC8sZvVz05g8b1nHmDZ69cXykMl8pQmIi4VYhpHC9UkNN8AWdU
CikgbbGa8neSWqJxb0PrZQTejvoCGQV04M0ubr3ZyCiPbWiuQ8chOHL21cYgi4/ppIZZK+9ksq0e
B1lgNIV3W+TIfXkg/N0nWYrSDJahm8+8U8Q1WwMr83KX0CZYc5FiDczVTuSkF9XMaDuQ2/fPw/qV
RlJc87S0k/Ak1zavmkXRq97+VD2+SCgqsBeC1uGFEZNCVOa596TNKgKyC37+AYbkTwbQIcF8WGgG
cXtsxARFqGAGfjxBHoItIPDTHgMsYZ0Eij3wo1p/Ltab3kfrQOSo8scjM1H2oXcaVno0TcBUVQcq
XaAiQ0YAVlsqb2bTam0pkKfvcXPu1DgRw/hsSdam4c4E3KwqOL+N7VDvPyAuQOk+ZjBo/fis6qdk
1VTrLOqUi3o8gP04YUBqp4GatRPD7YF4WdQM4cJYtd+eduEiVJrcSfFX3tgK//NkRowBNZ1uk+Ej
ypia0n5LqmXgkq3bjGcKhr1P6/i9GgNAbfErYi92Cx5Z6D2fjWuYIZPa6Ti3AbBRbJuhlhvntT4P
c4TCGyMbViyVD6p4viUjNTM8ElqTYDp4mL2R1TyKUsPokmutnjFdkYdqYjdqoJhIdBKV5eS2JaUv
8e9oXQ/fOhcuRHw5fl1CQUZr8f970/TdDPZFaGdSWkWUHTbq+3Kcs8M95jROUY7JqjCEuo2NSswj
vPHwkzBAq3wrsgK0uGbAZhkMhsEUEnzhLsKijv7VVUTHUlrGe6kjaUQBnC+hCXniExQltMl3jcGE
ADpV+Y+le6+GpYmZy9ZOPw1WFWC55gkQkNV6lPcZkFkV02y7zt46jD7OfXG6ftv2dzB6AMYbRgo1
HzsgSNaNienb1XEDnI0ZgfjMvwiWTtnj16EcFCpOKkrfbz34ZHV5zDULiIkZo2Bfv8FE5wjr8jSi
POSJ2oxcnA2KHgYLLFDhJGIk8fCXYBM523ZGY3SblCh10Vrna/MbYfrY3OrIv4yddNBGrFtusDPm
L3B3O4Po5Kfse+NGHVfOJvfIiXZzU7IXWGnwuvD3lAustczIoMPOBjxNo0mzApHqu844HpTPHX0D
18gFOzIcoiEp4FeVCpKz89gGnVSibVaKac1Z83At2x/tjKeGkKQMMFV1QdwldGp88Z0WoTsFz+Vv
LH0pKhMT7D2uok+ufcanIdKwfX5nxpCVRm4fsB7Nd/q2Ezxx9GhcxWXeraR2Wo2n+P3yp99ZIBOq
WVjNZX/EeCx0ehDD9FjXWduDgnBVXcBGrWlSO4SUOJumgMgsQt2qCqSAZ0TWRgbsSl5R4Vf32ZlG
XDS8tPDBc3JVBt3KHsiZEaHtppeg2hyAPBGcKkUFMgeyRd17Jg525gI4fEcgupCAmVFRwbxrh+Pf
0Uw1h0crsyKUvTK/z/qME+pTu/2UEJ/S/4sUIsKIpKsLldmixP3xdzcBZsNK2D7Rt/k0lzZrKg1j
P+szHi2yW0rxLYEoWxO5G0/R0P30MwVjZhFLZV5wS9X1T21CfoZrjAYS5NS1FOiY+jvBfkJ7vPjw
epbQPcPpRAjolrZwfhZ0JbJSuR6uHNH8i/Foj4CihEtzfJObyOT2+nQE3+FwAfG3OHYOmQAsZdWf
6n331xn9bN4yMXMJL7XreLI64at4AHzeEVShab55sdm+m8kx5Wb2ztFhY0L/VUTFg3qBBBPmJuFw
GiJE96DT4NbTqP0lHCh2EYhrz4/XDJt/uYN9YoR3AhaRokPabxtY67sM7qqwsPF+ogcc12XyMM67
1Nz5NgtjDvVQdvBCJlnSXfs1XJ+73XNYSa6jJG6T0jbTkq3YI4Wtng0DOw49eMh2ecPNlm5t6x9l
Vrc51CKXwF6Pabjpx7YTIA76BFp0gx4bTmXMAkALOMq12z5+TSbNpMewdeF1sn5s7ea5loCxFLV7
8c3iLw9hxv22s8TMLwLO3beoDYM90nL/ICGenDMLPhPJr8vokcDhXNwMVOugoaLMJStCcgnf3CY7
Ls4+C5J0u5gsjxa86S/ti57/3xBOaSrESlCCOdwaXjeuLHZntZbSPHRpdpfVbNGdaJ2lq3kCmuZw
QCy8woV6A/eZXhr4LyIt9WLCwj9Opx+yqDM830w8enD/NOuEebe7jg5Aoo2jLmqfyhrA02dqPBsi
tu6ovxwDmcGxuflkU2GRzd+1+bASFnTbU4L9rM+3Qwt4V3yo9IBN9eUQz98y9Y0C4rcm/694cJ/K
jkMtAtnhg9byPJyir5ebVCcMn60aBSPBSuUMVfb6K+abZR2CoplCbDv01EwRmm8fAz4T4emC5crd
B5YXAFXS7Cq47l2XTyxAqIJ6MqGwtDUQD8RbFM1C6f160a5Rb8YPe/AdEX940glJVtEMadAN7dea
RaHzIvSSQYAuo/E6z5kW9aduUSDOZIGrOOF58qLVQV4/PXYDj3reHl4TRZR+vIDkeHXHrj+rnumV
qU8GuBapT8tKkukla5JJl3UVq69khzGIz4FIkrOMIh+jqeX5xN1DxwgXjsiwPgb4Z526Aulgy87g
8XcK5JYeYxg7JYtoragCt7Ox2qe4KT1zaYocg9bFuep7j1WB4YipyD3qcrNjD80xU/enHUy2RFXL
Q6ksTfp930Kmh8F+qBzwWq9VvKUWnmbGVozUuSaLntR6KM7ZQ0R8O7M7DRX4FD209DndPtjFHBPU
yMfrEt6YO/4WwHYSeSheF9WisoKVKML6DwDAwOY7DZCYkcU2bD/ILeIjPenPKuIXf35w6H59wI2W
qiaIV36wJGUAeIi0oCtGcnA2POPBoQE0HDhTOytNPLvbkrqjxSAVrhSDa4/+A6+pf3fJTL2vD7j+
6/EBduaSdWzHKcLDNwcZQWnAZC9hv3roVDcR8IA1ObvZP8Sv5vmmMBSKCrrsKJyWt7swJzWjdqto
kY9rAH3lq3Vh/ffJtQMIp3ZSKmV34kWwPG/pcIWbStrxWVXCEcex59hqWtiHXbsaJ/jXYMUg36E3
xw20N1dTAGyngniJbQtcnPzIyfIWBv8g+3oqOB5xIFSg4r1QTJvgp1aV8oSQjQH1sc/IMNJ+447c
IfYT7c0fES0kadJaP9P4INSDJ+0uaalglsx5TNgJnjWzsl2KopmGiVD3tvVyKsj0xOemo0+g4hN1
r68+9KyKD9VvDppHoha5gOluLxHiPsYJwEFbYM1CgTW0OT2nBbvxZbjwas7zu1wYnBM0vdIcEpT4
lxdfcMDmMwqCD4PFFZsqPgmTXjWfAc4/5xMRMITd++e6RWspk+NTNIkIDHj0eo0dCo4DA14F7xu0
Spop9Y3JiQegRHU/0V6yH4UGtLhHf3VlOKr1TkTZCWOlKHjcSChSkFNcFLZomJAkPdNA+2FloVAh
Yanzj8cKdlRSflUWpNNSdUldcYVD0kmhLQ7menpxaPGKvtUbyJQQMpRS2w6naRfDVWyz9zpIoCgX
SGdEtQ5/UOAf6zTkXtYI0sgGuoUnCnKO8HWzX5Scu4ObQzqQZV4bLmX9urkvwcsuzIzbhELG9uht
3WAbQORHUBaJiKNxB2ORqk/74vlgDW8Ht6YqS8uhKlgoNk6QPZXyRKLpaR4989sIEI5GDGv6BoiF
w/yaOhDBxnOxfoBzkLXtlpG0VLq7+Vx0ZOnRHMvXVsHZSmhqGnzNXU2nqVr0u8aRMyWXyA0BRdCo
TnpkUmPdGgHXQjI1L+mPqxRvta3DbPx31V+nPzlGwv5wV8a7ydl72jqhBkbRaxKEi8yc03vSKQvV
dFNVf9fttORyWLiHY0CAFnGdLEA7xAob50+5upN0CJYGjYbnuN8A0oSQmuPSGhK7bKNqjd+WYaro
foiZHPkYdnVnoKtBGdOBz0xbVbj8FRQAtuQgei4gKk0Ya1spRzVv94hGjUWMPA7uwgEd2lxL/194
j7w6cY7zZSLav8dSbhX/Ips2J6F9Hg9UxqVI8ztIYKvnQ1QbkTexNCEB/VQLQo/Dg4/Ayn97s5kx
5M9SoE5k6jtNEL4tizTwSQK68CQDSFt9UYlI0g6UsKk87QY0XjS3lG6vGlILGYE/ITwVm/OcuqX5
XepUHiUipUiXEBZ9fMMORqY1udxMwxsHo174SH/4WcA5DB3QVkQiZY7pKRF6qs2Tn915jAbJ6m/L
h5pSBstcoOrKVgAHFS+0uq0RIQwwIT7HzoGnLGHksgmk3KlFgUs0IA/EtybfoOadSDsELow5s25h
b/mjwVR8Mm0trZbBoOrOLbp13bFH0MHFSHtnvBTrtVrs7eAkYaepqLXgS7ixHaoakCnbb7psZTxJ
FdKN2GhI8Z2IRKQipWDEr3fxc6ByZT0/MGFQXC8ArwxduQ8c5PSoL8VwqtyL7Y+/Lwl3QyUfqzHD
OvMsM2b+mGhqPj++0H8G+R5UlQ84KpdxeFH/C2JXncfPwO+B3caqdYrtF8ZRyRMgITIAzyoq2jsn
hn3+tKt5qGwPW7/ZaAhw0lpV7LUU27UeyL/CTcEKte2TbG+iSGd8CVt7b4e3qTkqLGCxD4jYaaXN
wF/W7twDu/zzgO/DsNlmHJXqwFFtOKJ2NLhJIbCHh+LEb8XaJgsVoYs5BzbznEkF8H8RPnn55oKH
sB8EDOMNNAnikP+aezg+SSGxQpWTrnrvdHGhlM6WZn5dkfFboWSQ/BDDQaVm+s2TqYBxVR0ASAF6
LauOMM2lTvVrmGvbSJ48Cgzepbso5TaFGzMrf6qS7xyxkt9wTIrEHkFosSf2qxLeQB/zi1QM5okV
jgJevG0aypPRWDMbC0P6uPDaDKIgo8Q+jeZXdIsHwcKmjJ7Y0cPm1JGh8ObZLp4yeCl3BSNDXKS/
GQyGtUtA3Zd8U0M+tsirAKKWiUDvLRvjg7hFMlOD/IgdhQx1tCSrAYyqP3ux2rvxmQGhC5aPsKv1
dYYaKNmYTsuLTUCN+zJ3PXKVXQLWNzz9l4+3JEeZV9IpyA/C4dWHLcnvZzb2t4q/UftktlC+WaCF
5qDcC4CjhOXWG0zpEH0DRcLgKODxjTEwGh62/iNkDeVIeWpQzXKL4AVbafm6WNnSE/erZWXcCYKV
rhxvNtMDkmjfnL73mv6U1IvfJTJLNVKTDWdA+FMQfw2ARwZQHgFJNcru4FYKRSsC0HyFUx1P+cfl
P4NLopD76bUqA/6AwQPizHASnz2kFu/oB+Qsqfc2CpQCRY+8nkj/RoFhZhCd13tte0043Zlq8eo+
dBqsdYOPo34RFYqzzs4wKqT6erc05ceFBZl7zZ2JCOT4h9vDyiGS0ZZ0w84VPgb7sS/42LAvIbga
RXscZEiZQToW7erMYmXFTM6OZLvFmM2N9+e6TlknEYittEVSsDAXFb7KoCz0GJj+PdaHGdGGvDoh
VruVgYEAeyMqOjyTXeJuelqh4G75b9tuSnvG8uxt3yxDdTfrErFbvz1jifD2aivMO1QnurailDZx
vvKQ2m6eR3m6Dw0Yy32wtNLyBLGP90fVWn7ImV9VizWXziu4vWgDTbrbcdNX9S5yYSIkNB598fSG
vy27iCx467TZYhn376F/N2DsJbNE+k1Pte5YykStwoefq2BTwNFetCU5YfVo+AWH25Mv0uyCJKdU
4dCb8V2eRXGJGnNEx8Zkkp+zLuNOqes/jZVwHuFPHBi/HH0Yk6J+o9QZH8gnsKIgAbMuGu/vbDu9
W8Lh475NFVglRRVWsdaqx5LWBdu6MDeBE7K5rlq522zwXm0KdcYbFqgOQd6pgb7ej/GhN22esen/
VbcNYvA5J1vyfiHalY4srWYBMfzavMg/fzw3xQ10V+Jrs7S+3mUA83L4Ic4dwluyZWcVpvG1cixC
PXtzws0S2k8LxBeyBnpmIZ2ixCm6ZIuroiBEF6SByD6wyyYRwVRBNxYbSWO9/d+C+E0GDDv8B20r
yPm+yLuhtJqWVeb9ZWWpCcwQ/nvhQ2hqwGHmjxn3D6ax25xdJ3tdla8x957Y7bXVoc31kfrmm/HW
/CnsZ6k7umlZEPJjKCi63ohz/wwmP+D8cn47EH+I6EjoTu6u7F/3Q1oxMs2CqPmoOtXvx+ldl8vd
agxbOFa8+uFLpNKC2jQgHmIKayQuqk4+pjs3di4Yo0YTKCIlTru7cpMPLAKjkVT9uKGKZjl35WWA
K5g7teh0R6qzw4+yJPIW14vrg1nmw6zZTEAAiQebPdL1M+WZtJYXv48s58ponfrEKq3eViHHaIxF
8+gk39RIiDnc6PfLY0U7zh81gql7hGevK/8s8nGQtHhbYaGzyKNgNkdQp51Wh3LsFF844UxlGLuH
fSVuJHcvpOGkuCn2jFMC2nVJ2zA2zBvhMih9K1sPaMx8mdecA5My/vmDdRp4v9TCbFPyRqnYMhLI
wv1LWXAwTfbYIEJ/hNyIzGaI8NcjwGMrlRru+DeYSqq9GD/qEdaVWzaEnoV9hyG6X52I3B1zCZwQ
kmtfxUBfIOHgNV/sBJ+Yu2NbVGdDeFSNcTuLd7QJn6sCStaOf5PDkig5faJoa14IuKzzSwf+EI4C
LPwMDkqgzNvEv4R1VrSCFojushin8E2tNHBBy8CUXWd4Gyt3f31/6rTfq+l/70nSJj9WGjvuNzrs
j3MPZ1Ag3CodgsLLtXOKJFlAlXcjqUr9UJt8NyeLC+wKRpBSJ6ddcENoDTRkMmlsbMHcN0UcOUTo
uafOYlsuGviA6Xdlu4NBEWX+KsvKjdx+Lskmk8+MPVl4zkTy+SogImSG1YSLdQY4LJi6SHfKdbSF
QwzmDcSgKKhMuJpw9t7zsNfIuAtFIcyZwj4WnYWt24Ex6/zuQtiOQHprdOhP4KyS5258r3D6HbeB
EopQa6lUCP1uISOCzZ8yPF+r1m54FAqb4dGNKn+8ZadImkp/0yE8KwNJJTPRTe4P+3uzYdGEX+zT
/v0DeetfE9m8/4pxZFWEokiviqehPrLdRMykzq5PXR7SIErrmL1NP68zFQ1UqF2sBNu2ja5OfGA1
XTJG7eeOWwH5u9cTufzZydHb+STk1P4SsuH00/DDZMy2o9S6oNpfxwVdrpNnZGQr7HgVTPws0L8e
7/2U97jYOEHUIrOyfVxkoWO9tLPG6IIU8AC7mIu27sipQtpVLVcCcyr/hMaaFJGhHcO3hnGxXcVY
iXc8x+usDNUS86uA/7F7/fO5Fj5HYSwKzTgzhd4NnzGyiFUh5VxjaelsqB4jtRF4VHp2cDBMBU6v
8ZtwCbql9gzxe2xcaP4UHJiG73yJvsBDt+a0ihUMZ5KlYMrSpbETfHD+/SdLJ+/jY00O2nS2KxWs
0FJKaz6q3R8Pd7UYQWBWrPqLDJ5pNzuundzYcsPivufworyJrsFF+Sl6VFqJKwMGYGMrIuW+NAwR
0C+b82UoMh/2Plih3V1NlPQOxZp44KdKWdNsbF1NoncFLIJr/vfhLjJoRyAZK7KHWWeLCnWIzCPy
F0Y/1HtFfe3r+++C4ObS/Bje7mG2j/oVxWZnH7jOa2GHfuARmNkkw+INnU1QY+j0oROvm9XXFoaA
MueK4T577yJcSalaYqF2iRWZCcxYzU+cYmj/vvMaCFAAibvHCt+yhvkYFmhPEgUapZtg51jWXQkM
WnPZSJuqeUzYi+yc2tj7gqTaXhwAOztzprxnjZS9C7xdPxZfXM8WcaBY0wD1yCtFDGn0WajeZZcS
LWijKh9ewqLjAgysk1TZWC4hK7qIsg5sEUXREucu3KVfYzUmwq9m4UOE2573OHrVhFJQgARXDg3u
/+aQZqaLRFne+mV3r1vuMFH2Cb3SORo+vX85GfrQi5lqWwMKctDx9/q0N3JnawLY6mrzdACqwC+f
zKbnCSt5V1htqcel+bJUlWKC6vYCxOIz5b5+AImJqc56/K6We04S2RJHke374qSpKg+DDiywq5Oa
QL3inl1QDr1LzMYWBCTRU3In4vAiECkyMbXJRLZi7DpkM8rJLLkN2Rwxr1fsnPHQiqcUovKkCA8D
X41MytcrLnmEfkGSQ0V6Nemow/64Mb30fVGgEnmLbyXvuPcND7XLN+/XP7pi7+7Exzh4jy9cALY6
bt9C8uYs8iiENDXOvnJLevMrY3K2CLmbf8b1znnp81WGyVjk/YByKTci0S0mu9La0Z0bNVj8C9Bu
L22KDo6SYd0Hd5/e44gfPiIkuebQrkFfYOLKhtYMOIGMg5JzeKOseLDP32rF+wYMg9wKYHQFRB89
iULIpqLV9a50fx7F51sX7Vte7P+yEp0r8yumcPOc1lw/sVKAEOZ/WiO0dDO/5mdnYdANm5oNneZ7
RN+tolEAJAXlvDzHd66ejWXJG3B9FLLcGxsIAmU5asybmxn9/jO2wXsY8JauyhdsrRviRlL/AuZ1
fIwXWsTrKCf311R+TjKRP2ENF8dNgIeB5RoB3n5LXwksRHIz2jcPPxdUj+PRcn2j5y/jGn1aI7E7
l9cHjdA+8dtkRi4qigvb9wjfEddW48PfSsc3+eSqD9+67HjyNIbvZ+wK35vKh6yl0+J8vE0/1YYl
T1GUkXkp3w3VPzdRXuV7cBwjA+VLxT0hORzH1grufu+FbtoqXyjzUMpfWb3Tsya2q8FWgaeTsOrX
Kn0Z+xLUd/Tux4iSHCouqWx1+kSNHtojsF/GtHm1Y1ou1Rib9BoxNzaNrfOj0DzZ4wcCP/LvGGDg
Itqm6UeRV2ploeI3M8zXKFipXja+g3Dsppdex7ouIIlBSo8lK2rsDaX+M6NuvUwhxUrIS6X1/Euk
RXidees2wyo69vIU3xyx9dQvh/2wpEn43XM3JvTtXSYGMHWqr0o2sIU9XA4vrXM9/vAhPS9qV+N0
A2Jn7gCDui4foN4qNAa+sGuUJdHdIrizIXxulzLlJWw6IQekYg4PwnNG+9vFvi/3Tb4Pd1h3E5Ve
VJImfxrdpIE6F5BfmU2BDVs3Juya4mbt9OeGhVgIc7bV4m0vuXiG3QMJpdM8wsNznrTDDfaExdP4
mJFxPxnl1z6FMdosDa6d9S0MGM8lQypPhJAzw2iJPTWw7zr4R79uwAxUGM26gvwmNpnLVVQJAsov
bB77Bq1eyt0lGQofE7h6O+CT4m1oa9i8SGaqX6RrBDi1Yma1f2AnyWzFjaSXx3nfTthon07J1uVO
IqLQKjUn1PF2mgqPX+S6IDkOtfXU1eM1+ymTpmfxsonegUaGcStz+FvvL14nfb9Zi+mW/oO1l6/B
KT1tlBeYaLrSq2zvCcYxqqhh74DRHzP/j/a34QlR5aACldpR+ygvW2VPucd28oJR94QL+MVP7M2Y
5f0dt4K3a4/cbCUJYPhn53PETj6WZumMeTpwWLSITdNbXVR+CwsfceCmu2CKHfHwgMdTwbuUADxz
GSXTZP9IdMvvIGICjbJojkWhkJ1G8NcvzsQa5cSTZd5LZiAbEfcgSvD7W0lCB+ojH31ER0e37cI0
w9wP/iYgG0clRh0SvNstBrWads1gz8Iah5SB/3ry+TG0OvyV5PTIeloRqfFaZuuD1u2pdHpBPfYI
jtYZ0d6tCxSKv5/qwHArxKgXiyVvegCcmkcXBRvEu9v1ScDDf5qaLd7XeNbkDVwHrjo4IrGd8DmG
CPzNOQUUSB8R44RYFWtx8db5IbbX6Z3GfPB7yKOqASm3Teilcg62QJRJXzR42xCMS/H5BPvt/vFr
NWEljDu8JlzbLhJBwqSrQYHeFaH0srPSVR34T1pHx670xVHv8Cwz0UMoFjUAvaa++YONf0IP7X9N
k2sIDi9laWnKlAaQtR+TlZ7yNTLGrHjshdeuqhRMk7mdt9w77Hds/tNIId07wmQOTLsRL55t4b/T
vHDiBhh3kcseoHLKsaC6qvbCDcgXi06q5hTfkW5MmyVlT6a6SBuyHNur+nNjv0+zw4vp+m3nsySJ
w3VDWFzY6lgKCgFnQ7zab8X3gnpw4tyPX7OZ8rB68kYYXtDlTvV/qO2uEutI5YKPraAsrss5Gnm5
OowE1Opu3Rs/7v7hLSMNOydIozt0P/gIYWQhU0LpCKR9jC6SS6RU9Dt008/yXwb+s1QRxbPGGKVG
jOcZFf56hKZjeZE1EuhenNxF+4z09MZCIchZoLmVj4VLwL0s+MNAIeXHKhxojOqNZh9qm8zdZ/4O
Pki3PTeBN5bNrDlUUr/fGi43sqot4lUSgkXWQpXEH2lkwQ0uibtGq7Ol4LEDlJVyvYB2M/qHNmtL
5Uds6gJHFqW6jJOa9Xpc1dZEyBewCvfFAdYsf/kdG+zMIR3zNYSx7vNKNUwTkaGbCyyH5afFhE6u
PdutDX6/7mJCNb4oMKc69V+Rsx7u8UEH/mrZFRm8wr9VEnGz6uhPgOLuADtTlDhRGx5oAuBblNiW
yfF39qhwBQitxF+PGG6LGW1+ilZZIycqECxikd9RchW2Ybu2FIYcaNLz7jelB3lc2mQcO1VY81H7
JvDvAJlDnrwVQumkZ2K0Zof0r5SQI+fqKy42ldp5JrKyu1XcUSzHwdg65njDQnCs6iBOD8Qg8snG
F0/qjCXud3CWraXds3sazoGSSC8Q/LjrY8Vc7FZWXIqfmYFU58moF3p0XfCp2JXV7Zb8Sml+wRkq
88UvwAwwq39pLSf3p4V1VFc1WiXGATZOHj4BGSdboYbZrNZrwcvlXBM8iWYXLsWcxqZDH1gFSvQ9
QvlFvIn8B2baNwwST8DJaVfwXAIe4utamWv2yXVE9crB6kg+hyvgjmsjK8cF7KzE5AHydT3jNBXa
qImC9r/vkreEVxjJ4LSWGvHGWaZmHB5LwWk+bklz9RQK5UpNsB0c4vH1ONOYy+zoi7kdORNe330k
hrV9N8H+c6KPq/m41nijgEBsRfuCm6lICiaAFnTCUvkItR7t29DVwRvPF4++cjNv3gw+8/BwufyE
qclBZ9fHJxW5axFJNLlpTwgy+KbK3m6ky1lwPTVTeI1FqjJdosSqnTLQyPO9uSY+5HR4Eu2eyW2L
KC044dNXivoVQkX7NsSmV5Dz2VBgGt+ztqkx3i8ZfozYXNeBIfnEXC7b9fm76aFDIsufo+1EMkye
Zycs2HKVPkwtOlZXepnT20QvQ+/OUeDjgadgwfQFydyglmPMBYOgSPjLhO0V9GvEY1vDmPpu2gZi
WhlrUTCbcwZ6pfROvA/DgDmqydRkRgP32iohh5yonKDmvO/KFmh2pOZ3d8+SVw4upDA8V0xu5f3m
UK6XvwskDUFtXyVgfiPysNswpNdHVfHEtlY/UffntORsSV+HVfOOBGSqUv0Al5pdBcLtH2znQcrx
jvJ3WuMSv1saUIulwPcH4rpmlMkfUHmTyuGLp/ebkShzdphkfb7n97lO4w50AY5Ohgr8xmAOczOs
lWiMhrtxA6v52Jz8Puh5CAHygatesGQOrC5WXGoBqgGTtz9Kq/FwMpImsGFaxg7MZAkBtp0Vq4Q6
RLEKNLdQ75pz2KEOdZJYOT9AI0CDwixFPzy5SrICUyRY6F/ADJt85QKx8t6bHh0ECqtcvJ2tuKHY
weHuJsWFbCD9PhTfr0X0VhQfHEDXtK1ePkTmtrt5rp3/YuUbRwpEa0hSESMZcDjqe2NRK/b1ONpG
B5I3Dxnrywlt0gcaII6R9eZBw3qER2l/rGh296CVgrDkBzCT69AVsIXZ+zoABI+zHysl2AemqRXg
f/fSx5ySp47qXAaBSqeu0bPnxI9NiuWkYMsa41w/8nrVnGWNOclWB0szPyC8PV/f/Uz884ubqxPj
HMUn7OUeraNV+wNe0UV/nFdguFWJTAfsI02GQxjAcPJdqRunYEHHWy6kCwWFHFBBI5N05/hM5mkc
Q4kBtoVw3USOjFYIXrdOe8waloOxLFaPQ3U8glGG01mch4ljGUenK7y4WLgTBAHRGmTOvYJzO8Us
z4wQqMmiyhsWIPsA/kJMLlZ9QCEhnUNdx4WsQcSO8QvpKZ4is3UF3QyU1i1PkT9IFpU1Cj7G7vv/
1y1+x9oZoB91mdSEjZy6Jz7W+yY1xz9apN0MJb5i1K7zqI7wopBoEuaTaCHuxwX6946Eesb/MA7h
wURkBcfSerEgnjJ6k6BmYQPiA2YwVO0WTeOA6ePiKLg4vP2R8nGOvEC+V1LcUaZzPqUsyCZnOUna
ZSWUVa4RNE1rN1mKjLyStind9m2Hx326yQDpj3C80wnb3MrytasFZK+5ka6TDowaeA3UVypFtABb
XUVC/1wT3FWhsQIIzWxppZyeNhIHfwqO//69Y2wvOpqwdIYzvO/a8vWcjSVCvTVxd0W7YXG6svrp
e6GRetyErSjHhNGoHOEoVS7z8gwH98vEPLvVVVgKiCscENBHKo1ErfXnZMrvi4QF46TR0bsGLKHG
hcVxUyO9JgiTUT2xhdy/Hb+9ldyH/0XRd/EUDY7jK9PzpT29Uz8W44srr/ZPHaj0S9H6XFzUCliZ
wjUUydaA0up2Q6WhdOkW+dj2ovgz4mLXgj4XeZUa4fgkeZaxolxozsBEH/1O00F8+77rT+kcQktu
spWUYN6sJ4E1h792vgwQJMwiht13VWJu7bgnJqt+6Ptqtt5jbCXnFOOLJBbdGuNiODeBjIffL1qO
SYEmy72kYWaPKCMw4AFvc60sF/+ZXHJMzeIxYQmg9qkuigCYc7EboEzLKZvkeICqijU4NMLRub1m
/oEjJZHC6stdm5dvHTpYO3r9GkfkfnYOjc0/thVKsZ4Qdy75K2BVT3KZIJGUmtVEmGDv8bK8fmMW
VKFzhnOdBBy+1zG3DEbN47WqIZZq4MADxkXBV0U6/Ce1hvNrc7a0yZgkw9RWEteC/g/UOBgjCYy8
xmGdhPMKYVygiIj2MtFMG5fNrCTtJFMNjQ+cPCfXlgkmEi867KTTXucc2OwcJ7UUpIecaGAgrxtp
vIoP23IJSC/9lKMj9UN4CpQuhOmbhD3xEagchaPydOeSilBPUGNgrIHlTF8yUA2gTt7J5fi1feso
KCZ2DYPZuSgTT8juR+aTSVJ94IRmlpxECBex1Q1LRha+qKrsGpcKzVqETkBRDv969Dz/DOzSVyuR
yE+6n9VN6qGCDm6VwtUq0+3g2KFooVhDyXttDN3wONQRSfPHR9xL5VldiMMLugyfeMhxJGcjvCEW
hg3Q3Rxzv9Za4HJO75xu2RX9iUk1qZnZb76S1uO1QZNRCh0vOKRdFqT7WMYzTM/gC5bQmfDKxx4x
C0Jkw3AyDxULtkGtgTMZ8HcyH6+atqcn9m7BEgFneO5MNdUbJH7n3RsOjm8GS0BN0Vu8RDwqFRIK
9efumPYMqe7C9Pm3sdH+zTgkFZn6zGawhtxcRqr+r6MlF7R18Q5QOt3tXgtdCEW82DNBa/+Fv2S5
rfDOtYfsUvMFTFGf+6dzyoTcheNqN/6/p+8pCoQBTBjgxdCzjxBXZh7gO4fNQxZEYGwfh1LtbT8i
k0b6Q+XLmoiyUp09w3IQANug4fCLvguWG2UQ5Iu7MVrSvUCZko8ne6zl2RWp/8lTOeb30A/7lSrv
TOdWGFhqDX3EXRY+lzrhrIUUUrBrhxk1GbAM+A0CJSTp3n3susV4QK+F+LkVZL4FUZ/k8bKkboZG
26lKkDZUIjAywwjalGSvp7KFdWc0772A2gMSQ4cPLTWGEb3s8Gp2Yt/34Wj0y/2vC4YGnRGp86as
pazpn/QnC86lgx8QxcYYei6yH97myasx5JxZhWSdELLEfUBDpZQXwNvfOm6mELJnpBs2jiFvAtDZ
/8jF7G/VDsaS8K8j9DtnNvMwcPwUHXzJuYs6+2X7WTWbYwSgr1YxoL3I6UmjQEluYfNBNntWdouK
IyjP5c6rOPGT2iBBCgckZjsa2rQ2SLHMh4h6gYPvQPfmZmNDgSYttCM3hZoXlqB2o6TcP+hDZyvs
sxyyznsvoKxr9UNh3F4dNnFJ27fApZCBWoqhbtAT2/kkYuA8GR9/Bv4ruIQvurkdCP7PmuKiN7C7
iAiDjAXkSIYDWEBFCkl3LFEGc9/H9gHna8PXevwfCc5L4wX+LDYYxMhhxTNm7JY9tunK927yn/1h
TlwIaUBpjRKabGHspXOEgccedWQIuTYFNyccyfkVMq2VREu0mo7SaYWn6Rc2wfLjpNXqL4wcg9Ok
kR37TJua6Fl3ZPkW11P7dV/wJeSu7SzpQ+bq+tQn2ijVPKp7muw/zFOpOkJ5xtQRagozgq5m/SG/
FDuUcIuXdM1vHmpmXQyaQP5f2qH8HE82a8nB/QwkxoCRIq388qaAHwy7AEyBEjM3BgIFzz51NGH/
My6pSCJz1Xk3FRwDSfnx2W5roqL7yKBc/06HzW1q1EiWbp/h62+ZV3z9SY3vSlFYI47J7luBu+gz
d1zMAinh0ay4/o9qO14zOchloZzhsg+KcfqWTSNdC9LQ076RwvjljiRO1d+Lyqk4tYOv2ZNGU8ei
DJiMMj2iT8W1wp0Qk9A6qQJQbdp/RoCRFiBsqyVZXkQJ+2r8+jsn3MlVKAb9rlzTuYUipubN063W
pnRl2MBL/9qU7WlnacA7vS5VB921DE55JJCxagg0MFDDq5udkQ6fKBcvb3C67u6jlXbxMhwSJKNu
DEx4O6WgGt/o6DJgBXCofVRVVedXnW+M3CgZBWTdodsP5ko7BHJ/5RjFRgp2CCyFXkCd4I4XUY39
2DVyxJ09BPPEvhqzpO/WQYBRNDCgdlv0GPuZ1ie0F4KofCABS1KQEXd2/ONIkDluKs+M7F5y7JQ5
XGMGSinXB73VY4d+8/D5ebyW5pY7hShE5oiLKnIDdSbzuFignMtR0SA/HyEfgi3TZgkWN1VhsUGS
//J6yfqOV6naCZFziVo5S+DrLTkW9+3gkquappQousohmKCSsz/prBwf9wWr+96uc7GXXudl5uI+
26sxNpOfQTh/iJWqoGdevtf6lF0dp/TpxttvyZB5bWhpzmPsPe/YwBEAvyI+X7qFI1W6hz55X7dY
KLIq9TTY8HMz5JurYHFeMqqxwEZ3JNuEIDo+kfnD96yVEDzEzFl8f2obNv6anLSDIhMeCmXWAcuA
M9bf0JIKxB1kD7vl+UPGtn1TVzBDfR64ygtygIxyZsBme8HAvmMlV7dkbLwapBmC0MwsZp72Tyjr
XdI29JuH/9O2enZvxBODXQ280i0wOrxjd6VBM5gZwW3UQXroSJXyBluu/f+461ym0VYdda2L5NXx
2wFxErm02q/nZwKGA9sHHtDgy6g2X+ODDlNbyLxNWFB04keZHpMPX9Ditxe8EHDc28A0/8tvez4w
yLOOxQF3v9DUu/E9+sAc1TxG4rt+3ivO8qK3oHlKHG/gocUgycRdmao6DcbJpzaYewxUeM+0RJge
bpRcIIqYFWant/D5zAYWrvolRDDvtO3CkcS1iFc1pnQiO424UYf2XtVUK1f7eHaN2e58tdUVfb8T
EqqSNaIovAiDqX8fFPhkHnDzWBD5EJzOSH8QRNwM8XEnjn8jPUw6kTyxxXFlDceCyzHh8uRcAe/u
GbFe4Vbewu0ZrmMdvETuzLs46wVwqLgyRIMsTiMcclD0fqXhcaUyI3awvbbCe1BUefXCREOnTaFm
duxPQ0a1MbBBUhaQXsYsltoOpuMG8DHm/h2NV8SBfseu9agR6UBvNHWrdLXCiekL5RLZrBbML+dv
/4goME3goW3HiG33azwMblYzCRI5KN5wseogIMb9IlhB+xxCjp9yjcIzmCqmnCiu1J7F9TgR1oyz
vI4OUcU4SgGtSGsQlPugS2KdFfJbP7BU3J6oPomYt/7b2w9vMu45EVT7keYj3pknGoaMeyQQQ3bQ
DVLuAfZAQ2maInkQRN8eI4fx1yHSlGHx9yzH3HYWnzvAa3KX3TW/qr2JlxmzR3ApiW2WifKWTXGW
vfkLlI6QCuptq/eTZamZmJZV94IWCXDmbUY+hXwUwevdJVMLms0HdThp32b0OTX1jntNd0XZR3/I
v5Cs8phm89SYllPOLvJ7fkSJXUZR2/ySpLEvHb07fks293PN9XFPeacnwkgz654qTj6VJ3B3NftJ
hWghE1fp3goNpqu93QX8Eobx6N7SMlqToP4tURFUM005WYAJm4zJ38J9KlKHwz892RWiJz31KlMz
Yxa7BNFzFEiQZ5ACLMqLqGwJF/UrB4uw1r5NOiDOY1MF+wlu7fa4JbJxuaCcqoRRooCNSED/2KFH
huvB5AnqO/RlrW0holWQ36KJCQJxbAzWD0QePdrfDFHSQoV2kfJnvmVzU6eQsZpbPkxTxp7GrKJb
vTXBOAuxghZ4CEdLprW0E4r1RBI8lrp96THIpU/BgXn/Y3G06S4NWNDPzEzsM93lCVj4YYZ/Rp0F
YNsAoEQhF7A8A/lV/jT1vAD7V8uTgMgz7MVuKNWR+Ts99hR0v0/dZnOf3EfnrQiXpidzMT6eMiZn
vVtuONOVwiOjW/Tgvu5oTcFL3v80aXA1cUrry/ojkHTLWsb4PhlO2qMPrUGF/RdsFTIS4ABey6hZ
aEmwLCHa9ZnhrODjt69hSVee6dZXlKC2h+rHtRaj7l+mkmBJek5cdVKDvWKrAlUvNjZ8x5TrzSP3
+m6XZMhgzM5qlXRjRNqQbwKma5ZdgS1mmpmp5WohshhjkbqiUk8W77EfAj33gtloQ6eqwXjA9v71
dri2Nr4jziasmea0PSHOUCOQY4zRFUL92+dW1kDqiPyp3roS9UAkr7HfciZ5P75GlBAdmkAYMByj
nnTRgpmdgEr74reZSqU8GAuFLjrQREH5F5+K0EYHWUg7W6gR+fBYSdsHuBYNryIiNEWNb3vYFPqw
P+zbwr9rExC9ZbZclNUXo6Zjv6OTYIZlsd2jE/dOwX6j2tda75F/uUGkPK2ZWFaHusYVLs08ytRB
WeVpDiR3P1HmdSQUP1TfVxtVGzpUoe6cdd1wKRR78N3L694GpozVZcjTUJ9QS2oIfIbiZf8uu5jq
Mm+w/u6xjgc1gQdRS4yzexn3Atwwh+sqr6AmJlHqAbDAACOfSkiYa6u7sSbVnCIAYUMgzf5vZd3w
KxAs89rfoM5bsaX430CeUycKk5ZNsfsI47a5hOJLy5LIiXRInOS42jOVx0i6iVFkAm171cEzfnII
iHsfsagT1phgDcoBMJOi5qMouO/oNBZS3LTRIqbxjeM6Uzv4ZjJyUk0hLABxd9t+aLeOAXBcu7s7
gCz/xEKskZkMD5JGRRiw2fx42QW7Oxa/u4X6mAKRBnHjwmachsjwDXq9Am5URChzUIgRCl7I5LSp
9OLzQqxmwe8n1ejZnfPL3CTZRtDp3gfSmBgpMooC9Xrijy/6iMGlzLoFzYlVFsIsArKPHToDzo5X
AEQq9SwXeY+l1DgQLB9iJgD009obtKcak7qHxTb2TLUPtBJfBrPaTSSOn88JVYwo8ebr7IOlaOZi
DyJ96uq0vI3gPmLYmtfNIW0JbydtUGPKtBWWUq7qnNDwvjR1BOi9YCksCeUbfbOFXT5FIdX0H4ZJ
X1DC9V6reqx+bF0fRXj1Xr42leZat3TkXIpUQTms++xTBJy8FnvrvuIxbZRHLc5h77rLUJf9nmv7
H3t7pQAZPkEyrwJzryDvPV8c/0iJ9jP4obdd9Jm7SbHWgJPD75IIghThrW60j14fmpCa4FDa+KwK
zfOh7NVvmcqPKdm2T7eqYqsnMVE5/mDteb1LSzthAOzDkLLz+eYHdgERO1MPw6Jtd52ysfa7Z4Cg
raJJHsO6x5MxqK36KxdRBUOPcpEZnGW24n06b3pGRydKAcfRmZG/Wy7eqvi2gxlErpvcbvG66LJU
QpSN33jrDV9VKDPOCbmdZo1dJ+Dm8Q+RgLxdv7LWePs3DrI9czHNGUJ3sKnIheSgqQAMAENps7qS
8NS68zgAOjoOGcNuPI5AlPe/mk8cUE/ZCJTuioO4FWzAXgd5tsDcndzMJFuYkOEkUcR0vavzuIqP
USi7RYJQLbevIcDqkVJPZahXTwWHF5UzDD1Zv1N/Cj/rFz7diuActaHkkf4LnpADJpGtvEZJjrk4
07h4itofeHH/oenQN4qk/NE7lDnpZabt5qM/vuqbKqtD63ELXvMqL4RofOxg0rjQaD7wkvmSHu0x
TgvqC4WIdv68fSB3kxntwFIV2jEGL3/n5yWKKiCptNPx5q3s8UTVFt4w3+5CSCUbWDGlXuPY+kXx
mYyoZE9WCgPkUktlWqw8mdu432dwvAZtrFiEtz2dU8F/soxwdqhqcDRrZdtGbS5K19ZzTAnv+BJC
d1LnbQle0dioPxQy+44jtCg8BYgnpnvcPPvoqcrzYXykjuoeow5+f0TFgzoCVtaOaVXDaoU/ekMW
0AayoAaL+Bc8GEffOw5fZrNVQ1SaP7zFSavIKT6o1ymW8KZyfeGV5wqzCDRO5uui8xHD1Ks+n12Q
squKLVpYW+MRqDIWuuuER9QyS29mV3I4e3484O10IXknvaNivRDtk5qz4F7kwBlrTAb/d3A75Ret
xc2Fyy6skL5dXX/D/+v6cY9ntf7R7r/48/w8xMy5BuYKosR4IwEw/je7Vk1q35jE7BDVb3rmmNNA
4ncWkjZr4TJ/ujLGa2x1N433LL61ZcLFE4sE6pmMOXj708yQpmcJjig+HKTaeK27hUa3zgBxjcgd
7xH75n4693z5JQwOzLkwAF0KX50CHEoEhOwbJO0SZb0bLhnS7Wx9eDMtxE/Ki0dO2c1DrGRgV8L7
l1R3Mg5b4A9pvvE8OZkSBr70djfQ/0EyN08Uwtu8TYGlP27A52VuEok2gFkoZX2POvRzo7hFIDpS
BSp7omlfrXUUnZi+zDoeT1LSwtbtrmfpGsmvRwOevc9kR0vvNgozyE1q6k9JQsHu63ZU/V1oyIWo
XQMH98+JfCDPB6Jt6BMn15tLA+37zZxR5fkpcCqz+AOQ/8F15cUwsjhEV2HzNQ8UMNOte/zi93Xy
whYv3Lq0BnPjpqAtxIV7tWS1X1K3N3ZcCouHE4nISftHXWfCrWM5Q+xjQ3WrggIXvriShtB1dz3t
NXys/BOvKwWe/73dDQB3T4wmk7adwkZfCj+wIHM+2a15cA13sBti+kEAv394l1H8cmdVkA06d6NV
7zOy+C/e0ji8ZPMrvoO6DMhhvQBhmJ3UO8VeJ4Jk7DIROCmh1ipu7EcLOXLXifetGAFDjuLTbkSj
4KCHRxNQw54RBeWWPXtztvjc7OthJPjXTs/yUF9YHMMep/kB3I2c9WfWfQnnS27QzL4vvs+I7VYf
xYdpI8TpkoVyNVQp6+aMu4bA1N8y2cJAlVyZwNPEZsxCsblDJLdgR0KDdW/gM/zeij1bOcyHPayD
6uVCHMsgHPCMHYdNmzxw4e3U0YevFXhM7jvpr0G1yNh3nIqa9GI8UjwhMlZYJKnmVnMQ31PBncK2
GUvdUXJHbNhZiywQtyAUSySl06NS4fn1ePRwHNgzlmyAd3Djr6zuPWGziwFA816NT/0fgsxFgwOG
rLJemGY+rIrSsa/GjixQ6FOlSy4VujCTjKLws14H5Ir70DOmjzTNQfLI59rLKXEHR6bSjBISXB9/
JMfPRzRbi1y/AhCL7JyxaoNmDGA2eJDJXVmY4T017o3qeeVdZ08PSu20SrME6swU6r979nBC2nYA
QQBVwk84hLwJ0iLcX8aK0RfGx+C1NGFrRN8ol/wXpPlPDc/hrRoRQ7twuuGXNIMWIqHiqBwrQKwh
uiGinvIfl/etHh4DLCQ0+uT4m+6kXkeG6JNFvBFtrC2GhThz9WPwvVE1xfWbtQGuZnIA/x99Y3/O
BRRDEz32Bitl1ZM+oEtEifDfOdZeKeVgvxtTWfV+//OvfxHnhJCs6TVlucrX0qpgK4Hgidz36WS3
XePiMg0owA6UcUzvN8C3QnTZsEfZTYiPmspKgKudPqmkn6m3U7uPrp0UPzDfaPdex+aP20i3sG03
+qmqf78mGUuvXoaHPRoOvtrueY+lTZSr1/tCjPrUnYguWdZE/73ZKvO8BlrU+Ns5X4oapBbgJ5zb
AaifvQkMpqMOqOlDJTznsxBTgt7heAsWwg3U6uNxcHR/3QomG32ubQgqohU034eRUqmWJR+YbNn5
alXbc5O88PFxvod/cWhV6lFwu1FCTf4xlKxqWILM7bw6rU3k+NTV0D7sT0S5WOx89wZUzuiTEz5L
eQMDBoRI1sYS4rZstnuxUOHMiVdrG3FOs/LLkKuUclKH0Ay6iIXu9bvb/C0qiHwEyDOEuIitqt1h
jOs9NziBgJ4YIA5j70CCjyitzRpGSx/Gllu69dNTGAU7Hj0F2YuRu5zoVhEAT/aw3s+JQKMfyqOO
t9/zI5CDE455oJN+VmFhelx+sA0y1587X9g1ZznRkR9FL+3BNMV35YLEEL8J2awI5v6yy4uD8nba
ciAEAXmkrV0mVWzUDM3ZNHFKXpSx3PyZqKksHaVjUFnQT1YkRpCglvbrfoTpWif6Od7Xc4TMFW8w
q7I38QZLQGoJcapVZPTR1B+CPBe1RdqU1j/ntVXYwj2wNGzONJG5V9ZOCgWnIZjsTiV4+VPu7stT
u51YzRDgXmfEsGLs72tOLwBPVEzgx9Tv5KldyapxtkuslfWvP9pa/Mt1/xskxKXNTaAnJ1QA+Ii6
lW9tQ8gRiqS0nZv0ol83vvDb7CSzOojHbPgVGGioOws26fOIDIrBnH0LQeayJWpPdJx6+IziEfiY
mX5CzPQM1M2qv0SAKFFtN+v4Molvn3omMqiaW/FozYY5UH1ODpyfH1pbhnrOoJcsiLWloGKpGOLk
sq9oZdsF5l3FGOY/0Ay/yo6i+J66y1g3szW4/q/v1jtxy2obLyI+hcZhTx8DyBmEVpznf7irxXML
HJpWEEb8k9+gi74Cw1zkCWe1Z/l++SGUAesY3pBvif47Uy5OpkLICwrCnPj6x8Oke/q6MZRGUlqw
Lkdc+WjnrslCbVFdMTPa3gkcQ90pf3kvmfnjFEnmZWjgCyPJCAz5mpNR7mVkFL4uG0FSzrjalgB/
qg7A4eQJZqom/GdV46X/Vi0MxURAmhLOlzWS+cSdc2wa7hV52iKjiRbHhEOFRPyPTHaz8pfEWe6/
GAPcs2H0oPLALIQFbu37w1EGad8xJbiRKbyvhL0uNOSKOFPFIPniy/wPNAz0fHlSjx3VkUV+iPx3
sjiCt9sOO6U9ZGjZ7jbyQFqNTpmUPkY3MM1FOAudM4mJhwQW6YVsriPIA0lleTlW70aP9O8jaDvm
x/kLroks6ADG1yU4CQEuCxGda+1Kt26Z+CS4fuhYqRcr1d1I0aXMv+6+hHdj6qkbbfef3MvzB7qF
PRKAYopfyoFld87BnnDTxbMyZc1X/gTLKhQoupLsUU06RdiL7VtKFrH0IDyDJIzregR8QIvxFqcK
/G0tjYS91HEqnG139Jk/TbWzbM6Xn0vRlMAp5uWqH1UorxHSeCFpnKyiI3K86NpsV0dpLnbbj2cY
c8nMqb4d1iE7Ylt1XVvrDvlEnMxwXmM6QhoZv20jjrZel3ZLgMY/Rjm3oU4ZGkU9RHnwwzpytxGQ
403buCx44yjrn0ewd6g7wPRXl87baM0O58DDEs9BgRP+g0TesLH/cxvqQyX4eNvqCP4imVOZdBf8
z6POU358vcwILvSwGYNgYD35+IU3g34n7kcORS1udC/WdC5/zWedxsXKar3uOeumLN+IclS5aO+y
i2bTDDh4PB25MyevybuWVIRfRI/n3I1FXNX6SsQd1LOf6JYiCcarpjOJ6WCmvprSX5kSTfWo3/Is
DmjOoI/YtZa6VuHKUKDIQzKC0zV2P+puF71Tu5f3dIBBOW+bc8AgznQ8rTR+8gL7HmDXDXMxlRGD
XQo90y3DMYJbaFwdvjT9cnpkg1usFrQ5ilwQYz4jCdLo4cxUrC3/D7tSYHPh+BQYikbUILVi7qo3
BWi0oqpVYUH7kt5RIko7NYF2zBmhVST1lP2WqZiGEgB3kN+VkZjZ9Lk83P0XJA60UEnIn+jm/UK0
/wEMgHjUdUNZShwsoScL103sfvZh2leNHtW6EF2lG2MN2lZO/LlVp/5i6l0oe+xkDxZFAX1HqcvH
f0PukRMzll8hkyXtBgxxu6fduSVxJbiF9MaTOQ85rdoeA8PD8uVXQcV4s4Cny+ZCYpK2Txh4PGIR
SOWES8A4T5DuwC3VMpfebvk/rmG+vbYbeRyeg2GG+iEqiaWxHyz7LfyHvpI8gLve+zy7Lh/ceGqa
G+RmDfCve9jwwMFsFDcihFtkTVsflqLuFqipb7i20nb41GJWfE1oUpPTqrua13cFY9O1cy69kG6w
eoheW2gE5MjZK5oj7rNCMjXAo2C3o396tGPNbla7RVoutyRqG4BcrLnvSAwoupEW8aekzXqTfUPG
g4DMCARQ8X6oFDjsUINxo5BIC36qmpoWkXSC6qnlRI09rzhvKkdDopptJ5FQ5oWGeB7obI+/g8ew
YtFMiLqcQ7o/UAFzWVAatSa8qaYSoBoSFWt18ukFra3dETVYNa/8hXZ2PFWEAcBLB/YZhPyrkozF
V5sRuR64DEEDsg72q9qhFEeliDQzl4xtlH6W46cgWZp6lZZkU05BPn/WkDuKzUWXNJ126mu8oU21
wbO9ElIziiodZOITD1ASGVqOsHe76hFUV7b5+1Du6djnhOP6plUIb4OfQIcO5/wl0o50T6r4tM3/
GHS3CFfZpfXwKN0Gv9mbk6Fu3tb+xXzeQl2vn2/vK+noN7v4y+FzKlLHNs6n9oiYLHQUD686uugi
gzAq4SBwCWESatyQhcckJVflCJHJle56m9s7P58UDWU8VnVlDwZZyHt+n8wz9+2eWP7jXYYG4lAO
Zf0tTtAYhLycjEIw4cCrHSmzooeaN7xJlYYcQ5TsbeCvlGLm083JMnrscp5iBWSQ7EAKXpJegHbN
s+NNbjiWyGq8jHi2NLBZbN3hLvB6lUKgICrDXMA38zYMQi4Jsjw4CeYuybfgoAXzFiTjHkxhc6Tz
ln3aPbB0BOv9MTiqCgkz4EEXk70+oD62E0W3ZewDcGC+eUn9MAP817QSVFG1rlfyaeFwdPjWTG6C
/ZXUyfx1h6ttENZ9UuhTVJFiWzZGhE5hwBsNUhYcTA10saHPv+9c2qxvap4WwzHG0TpPOfWBdyWv
Ecw4PsIGC2vzA0fsf/F85E6xXsUhVuHqp5hd1KzXxMjEupalMvqCwyEi5tCAVHypQZsHaoEciGD3
qEvBnuI/ZtDHRhmrCMsCS6TqJnI0wpmlxguTJ/JIuf+Ks5oA1xGgZgSc7uN23shhtXtdApfV/G2b
DyX2HFbDAgH5o8BCTCcr4/vyXXbEQE2KJTRw0n6vplx7mlLlgkgUE+k5hizOu87lJiUFxfhdwsmx
RIhGwM+KxCMuiv4h6Urxd1IbclVr/FXSTwlxVrWM2xy3u9XNOtOceGwq4fsKEut3OFaJLVxSXYff
6VgKQ+YxAeIz/3B/CWU5RaeIGgutwmY2EuFDGZB5K9A8d0GTvqhj5iXzqwGYuXLGe6EOX3L8bqmN
qplMFQY3Acahb/zb92wQ0UDZMQCaL42tRK9+Y5PR3hgfTZ5UwahiX22RWBbzYzBgueJIi40DzW4s
Rkmw73F4HWDT5vrY/WJurqeGWy1x8xKq69gsi+HqoGXo/mNzVi8Jot17bPyc9cNuZUjtYOTyZTGp
oDdpb67UVJkR+grru21qcbOj14HNWk4tS0hFUXmf30iVAzAIbPbDPe3GZj/fIpNR4K+d+YI0lm+2
X36ovENy3PotPywYJ7yXYApOKbs4/4ows1GPFD4vACktj/b9q3kZEtVncFF08jbjlydekClBwbeU
DDRl5pWdeZMUo6ZT4njuvqwqroyBzpYigmq3mrTQp39ephJPzbiPUHK7XILD3g0ZqcaC/ayzUsfp
J+5AuezQ1aT6gzB6yhQyTV5NnalVc7GZT8YIc+bTb7ObHFa5vStRdS/aHGk6EGecjTJDoec38yL8
Y3KCXuSR4AErYj/vLc6QGfr2ola5Q4splF9QbfmM9UnqEW907/ia2Z6dp654XQwlQIjQrwATkd5d
e8OheMzkzfhNirRy16FODx2X8TtbMvLuAvV6VA63SLx7H/CdjxGP68YyaoK8hb4Wf9VoRdgvltYA
sViIyw676mq1XPSANs05OKS8n3xG5E5GdccT5W2OQrqWoCWEDKE7PhvM3ZxeHPmUSaVcxYTEuKyL
hT+J2tc4L2s11AXFqSfgsRz8nkjb1t3fjSeejzCEvDkTIwjr2asCRvACbT9RcD1hu/cL7Lg7PL3u
aSJPTadlc+C1BMrYknoilIsbJhiwHUIaUg86U0kB93IKtLxt0fZSDl+8UkkCgoyE8rv3yUpIm8t0
dT/rQc0s0OMjaStgQ/+A2aFex/0Czy08H5+1tqQ+48SqND346I4LmBidvzkDH56Zb6te4DdVYO/q
L/o/vjpb9VNshwnuyoG5CM1RslboMw/jjAC+LLioAJbJ6TOu/hzmKMmGw1SjqFQE48H6VdvAGEu5
b2+W7FhapUaETCOYRNBv4nY3sEwJ0CbfNcAUGn6YrFBLwjvVMLUYui+WImNJNFtma1Qd+TM6nLeD
DWTt3ESL3CwE4zWyOvqYAp7pqWQLi8BD/sfCtsIV0IB90zYl/2hTwjpF8R6j4rCUlqOPnkiSjelX
Y0LNxkHvcMH00GpG0GkiHHqpDrtrGE/3aIid8KYt0E2oz7JYVIFXFDRcR8DJi5P1Tbvz5Wrgyfgl
GIgtMP7lSb7HR0i3E9p4Nep2mGnWqU5V8ssbETdjk1Byu74B4VsCt9qRvBJP3qZT0JxoSm9dVa4W
bFw+weFujoa4ccc6t1d5UtapAkg/s2UYFDlKJQ1nMukHv83T706DXxspc9GlbMMyCKwIcr5SyxUz
biZ1Xj1H+Xk1dNvBkOrif7VrahRfOck5cEY5qcuRXqmHFs2ehYPBp3pTfnwd3FTXtVxpCaz7y1ax
89B5V78BjWlYJ00QzAg0FGzeMx+xwxTV3NBdoyVVRvDYiYQ4xQ5PIMBMmF+w7mc9RXpjh3stiijd
H+PdMxqoG2JDCeDtCUc48yxbULpgwrOmfsDpm7BTJ1DDrs/mZUo15oGWZmhTVHQfHwKH/apd5TIq
6Elv6Dr2xHBK9hjJ7dOIixEIR8SeZseSRw4hc0XFHD8wwNtc6k+JzoJXSdOtZuK1jstdt5cjomPz
r3QzFgoBc9LJ9EYEmz9eYayZF3/iXnGxTa9JnTnK1R1mBdg4yQbKVjrFJWdlfPjtmZUBFDzDE+bb
ZZicQ7ILHL+2tUKM40e3IE7fGkFMU+VpedqmZy/3YoVB9uRxjzK+mNbW7I3CdDsQKQUjDsN+nZ6X
ZhWhs5oU9MefGXe6IWJTLirhtcMl/13GjrfqB2jipwSHlrWGo0OtOTbxHX4wZtgV1ZlQPw3Mu7Nf
a9IAb2M+fzppXfspnls1BwZrq2BbwstbMw4AKjzqNYvuMegpOYCAKcItUgsVS4aOSpP9NftmiRGd
KlzfpRoJ09OryPpYO5gKC1b9A+3t3FVw1Z+MvwiFMBRIK1ps6qVuFLCQaPuc6XYONIOpXVJwbHoH
t9Tp/9WF2KqnqICs+SonWeko30wIHgpHRzS4iP5uK+J/8LgL1PPZb0JdpmcjWosQrOOb2bw8KznJ
lz2qOyp7Vp/c4pPfzjZraLyGomjI0SXC4xQjOP6UZrybnhzMo80en48sf+J0S0xLExAJygYEi2vf
DJEb/iqzCNx7813sQ2ln404x5AeHZ1a/ihfI6RZpkQBkE5tbBZJuMQwmK0UJQBN89P9gVdRK18lF
bkXRS/XjxxF5jFdnF38sR0WGl6jCe9tlkVK8H/xHLO1AAaauITJxDLS9UvHetx77LNfmVkyBiTjH
AFNWH58/NgVITm5WLKIOmDxEkPKBtgWqqtQ7N/S3yICsF0ZGM3IbjdddQANkvd/5+DDXcRWRTgac
5gsaX04z7A2PjT9kjoF0FDcQlkQZPt0GjvGEvCkhAmH29OlOjKM2sTKotpx9IYAuxOcK2zl3X4o/
PHmrbQ2ZZS59DL5TUG7PO4jHiX44Qc/uS0K8rQ2jZsWQhAjK4vUHh3l/nRyRFy9YkwynPLvdIUK0
6bHDkxzde35l9ao9ZePfNIMJQOzuWXlNE8wl2OSSNvKgH93N5Hm8uxy9IG/e4jdKSx+qOK8/KKDY
JY85WCZTgwTAHSuyIuvjfYY7S/2pUZxbGMS0F1xmzygB24A90HpvL8wEOHgCgIkynIAPBClM2kLU
fEM45ErrVOfGJQqA6Kvfm5LMyTVPCl2M8+d0bmwcNTzPbtsknXDr+M2rh34S3kI1VNKCrLOVqasA
tn2aZ3C+e5Dy8403Hu47dyZSYzbBnCtz3E/Xy+Os+t4qVBMcxxODhmzAQA9Y2C9r4MsQAkqvneFu
HXi0qVFhUhRvj2xk7jf/2R2n4mxtPtGrqXUyn9U7iamVhh1u1x1Vbzj3ljerFItFwCC25+S4VQeu
souIuXCs8WjwI5xkIJZhWZaiuLBkI7F8DmaC7NurpZIxRbiI4EWRLRki/zfv6wI3gC88YiKx6QFc
hBP1GzxA5GVBSb9RnFtja2AOmenCVpZF9vxRz6cqqSg6YjsfoHPs84pTfMgnRfn5f0l/Yrk9x7E0
/gSV26yfBLsbWt31HovfHH1TGDqBf798SBRNeg1eb1uB6Am5AJLwY3D3Prxp7/3U41fXSctqVAwc
T8wYyGSuyp8pRtcEPQlP9HrN1cx0bhgHXU1/F1dloM3BXZmMDLLIceMQmp9uizqs32pMj93UGsMk
xja7+bsTQvi2YAaHkuXFichonoBTt2a2vfdtb8aG0DgcSE40Q0SGe2TqR4yzAPB7oRN6Y7imKxUO
ocR7LNtV2EJ2hkFAd19BfZ6tEQynh6Dgk+Y8UH1720IwVRPbMBLvn8XvZgSRsmboOTU5xhkabiY5
dIXZb2tSP/7FKqV7u0xbi63o/Hp8smg3PXAUFp86lkpjYp5wXZqr/7ty8wcbgbSVMgdfvx9hlbCF
2Vnzb9hmCQVEBdP566GbTyWhCixc8wFbX4gARAyZmJMZSqsafSomviDtp9CI4aaW5wHeLaiCgBbJ
VfILnGc49sRQv1vNiPzFn/juywkC3BAj910E1ueH2hs3F2IJKAmT0ljBif+1xtPgfZssstHGAqJo
48PUrNLUFo3dAF0FHPffjBhNr4fEzgoBt+F0TVt2VjqNTjBpyUpoByWNOahCPvw5IR6347LeJqxQ
PYmZ4zeDlDgCax7zPM1PC56eie51mZVFXh1SlEYTAsxSarG0rBNIO6liL3A6PuPUnokc3a8dGxPO
IJCplerpKeD1XigcOOlbUr9wZu3/8EzJebrfEN1MWF6wgC96QZavyKoQkVr98dmSmqVLA1q3qA3F
GwePfPBz1xfd0EafXkHNwx88HkizxBn+9EC3LuofX4cYFmxzuFWX6Eop+DZ+Mkp1WI6BYMj7bF1q
SkJ+mthH0wCIOCd1ldVw2S7akskhUP+L0iomltumiRcysQeik+ZL31YCiCn5HmzzOqBeJ9fKjwK2
2LqoMdxVjfIbze1qNT0lHwzm8T+TGkNxax2UeBJMDXd0xaVP6MYdXy3ujrV3qSvfpuAGjAUAGw0S
fo2BVUCuPPyzW7c0v8rpbZlz3894aXhhH3OhZDU3ec3GN62ywG4MyaZGt2Q3pR+6DHvXaRL6PKgN
opAaGLACPefJJB7TM0RZKGAKF9QbbawdO9mb2x2Q4AfP2nacdFSpMxzrIEeonHYJPEx6M3y3ndsE
y3s0RYBQv5xsFRnFAWRS/Ch30t3BVACYQ3x9F2PNNShDpagQBPxT5FnDTDTznto0M2xtxBbFGPPi
suvccAO+1vF8GoIcP929KJZkCbSQayHuYOptrf59YJfxgVOr6dQJR1e0h69HgGlO+3vziPeQJ+gc
q6YskjH/e4z8HqD0k+qFfo8rRioO1MFcoI6witx2ZiBkqa5POc+mQE6EYS4Gc7tBJG9F295+drdv
5Pt/H0isKGq8nS0E+QqYDk3kmW2u9uILv90EwgvotqDpiclYWcsLN4+3i08qCq9Dsl3pPWxiLLPt
ghY6NLVT+18sSeMVdG1UqB8kaq0nLxh7nFX6Ccge7bIj0rcu6dlR9enjC0lUQLo677qe4GXbpit6
Pqi4zRil54FwXgcwVMq38c/yo6mCFyAaPJBEay5gbULNMQnUR0djBbGv6S1jjkM8ynaQD+MKn0Sw
mlV7a/bO3od3jGMw9WTp1JaTGxxtFyDLXIjYdbWVv/HlyrMpIsL6WM/+l7r/zP9/8HghtGFlo5eb
xiKWlF183GU52KThAJ+22KDXUWND5WDg1JJsQbpXILOtsp9WJkgguyhAearx1i3qWRRh8vrKpOCE
nhffp4XW9JuSvrYx1EGM9K1lUikJdFJvshTC0ADBoWSS6JXizuvtu1W9Cjv///UHN5Z5a9hEuVss
+5YCF5u1L9WLL1fqw0m2yydMB7aKYFmchflffzDIoSQIt9ao9IdQ8p69ICjZhjgCjCilJ3SRLOMs
E3pl0vFSj3YeNIJWrthSt5V0sIEr7Lbbp6FsGoC+kXCThiy4a8VFFPRwaGFXSK38u2BVjHcNyF9K
GBNkWe+dyey1bBifgHEtXdryMeJk5VvLY4w0fZGBTiZ/WFpIJfOQlZ9chKJePDD2Y4Psm6oEcY2v
7Nut3QW6jTPmdRJZW4prJUPYnyKGNg19DVFXPKGkX57K7av1ujEKj4Y8hrJ9HPSfTxhtBE/wi+sQ
r8qeI3JdU5rLoc+mwstbB4ZjCJ7Na72nwMVr48kPJunkVbjXGyb6dRvbzN3bHekup8MXmJm5OLhK
j3Rtz1kYho7bZYWLt2OAK/4ranqTHaF67G56Y4mCTW39M02nOHD4rwFDqPcLMfc+Q1cWf+0B5azA
JVdW0eibd67FUROJZ6rPIJ4F5EaNjoqYVOqo8XuKuN2LFy8ckR8I3m+gLXgSfaMyFfBorc1wL8/T
G3MRInd5vXZ2/Fqd3CdvyPRHFGyp+KSSqqKQTuirLOTNpl/BHTe3b7kyctMP8qz9nDeSIXau9tV0
TedxdcucUfE84GP0ntN7U/NpC7WtT3e3G27xXFcQsdOYJgWPKPLiBBOHkS27YFD59UqvO1LFk0Lk
UaGXhxgKRh3yMjryeR6SqJVNsTtrofuSfFnm8M/NeJyX0Om8rmmq1IWnXcdi0RRpduZvExBCkb7w
S1WVHhsnvcQzB68IGZp0CF0aRw7KAZjRbitAXZEgvpp3OIpfRs51XggAaI2OWk9e8puayxk04r9j
P7/VmQIj21DGkb/alHIc7fVl5+TtensqpmzvuJISV+D+wfEZcihCX1oCx0XfonlyhQ6zWxjEplr7
bt7ZLotpgLNYGeWlUX7kUi+zC4BJLCFPuf1GHyRLBoFEc7Kha6qsas1ybAgtldm284tHpDOl0RWz
JzystNWnXQMtO6D7Ejm+xzaDKIrxn+2pKOQdZ2pMOY9lJ3ewNq2pygen4wDgX8OVSPnTBoACB+i1
C2AHPw3Rx2rLMW25Ot5hbNAMzAl9thaNkCHj8lvmr4v8F9SLfhYaezwoFWH47HX/jF5L6DxeUUJd
YzzhKrtkvMGyw0cN3H0XzS8eG48aoEYwPm65EzP3N++a1IoXLTD6az8nvgstPfSMZXg/UlI5o5qK
/onV9e4lVPRF9hnt4baUZIbzvbTb3T0wUi2cQN/QfiuYIrDn0+cCQz5EDwDU2QBusHCA7yFBGz2M
C4YK0Q3gVHE3MeblQiHqjhxn1+ZCpmnVcfs+l4eqag4oA1BdlTmV/4ICT3qHYtjFllnBTbPRasIV
7QPOOOGBpjatKvnNhdHvmK20DC+so5JJcNhtifQZVBw6Qg5uW6fA+DYCM4LNN2qgkuDh9k5+D67H
ONho1CgaUNyD7m8N+/23mG5ys0v/aj3OlsEG7+7M0SRM3+FBrn/JViCLtNbFLiX3z4CSjljSCi6I
ks8FVxFa7dpPu/HZvXdRM7uOTpDFNJtMpIY5FDyv3kZZW2rYzdZBMLX+94wJiB2LeY/PAW6F5sSe
zJ8o0dCJu5AmrSy0oS78P50D+sY917TD7yYnS2vwd7eBwHCGXIQZT0oHwIzMIQZm3kapLh4hGHd5
iEELybOSKP5LzdNFQ95IRpLNN56NYQbf0M3smnVhTkK02ybaOky3pT/c0ftYsSlA+e20zShdu+rS
KIG97mlU5pLonWkbtkpcaQ4IA+HfACJ7kzJATuW7TQwTdYL/BxiP7rQNziL4Uu5MDuWXEi5AUhZ+
RjcOfLPbcPNrLJUiA5rB2Y4/1+Hd8WW5iyeh8GA3m32e50Cjtzybnet0RK6Q+Y5Ymh8Yub49vaix
eS5IABzN0pPq3HbLStVdzlvEpkYq8VboYa0R0KvK4JPFwpV6F/6ENZhO+58fBs0E2yDKmaSrvh99
ozYNbxes/LuRipCCqalDmv1w30kOG3AdWPxWrga/dQM3LsrRnYl7yZOdbtads7PfRdk5MSbDgCyg
EVvI/2rSd0t+5I6wo3fRIjGnzfvMu9IykZw4FjEHZNtwe5n8+bsnxUpat2gjnytt1yE3s6unPBrh
488JxKe1hGe48Jf34TTLo22stghIZF0iIA0Eb7TEyNSmKy6A7rMOEd3JEYBbrZJdN9n3Y4wHno3P
uv55P58RB1iVRYDMNQiK3Zp+cnkff/kWxVlL/NHCWlvjlvnqJIgPUn3Ri/gCkDiVZQ6604epWXGX
9rQvkSMjmHyQ7H6d0fy5fK9mr/npTdce+ECQUDJgJjDavvd+QySKbQHJMYPmyxtofuLZ+jAhnsUx
GexXr1G4EsGONNJ+skrBOsXsYdvZwFUYPRasUTfnI9gm0hiYTrEdTICBiIrQYSty22Cp+Wa2sB4W
eqFwVqOHjuUZbcSQrVF4qEaetXHCBpCYhO4wyeCTQ76Muwx9aECLrnvoTcgJzoZc03RCdSNMigqr
9++h27CpN/RkAX0LGYpPhm4tcVeOES2+mlWxgVT8za4yyFtPvmFlKVpdkyFMRXsr8N8yCW9eOQUY
9wkn+VZ/ieqmKrrtAlBrcJdap+3+hhjWFQynJTEmpnKBi3KanYJlA3lXZcfz0UbaCvjfDobrxYW9
bTMk/6FrnIQMMt5HezugvXeTehqmrdSQ4KMErM9A5YrKfYn0D3u4MtNajzK5AHqLVoqfq7ghapvP
xKnZmy/KE6zevonZPMzWfJWcI3MwBBXJi3U5dNdHZi6D+Ut19v/dsDp3WdcEHJ2kuuEcmitCGkk6
PMDT5frZJ5XyIoHJE+nISSwzuk0qSj4Gk6urNet9H/9HCtauiilECd3r9w4UxY13kNdGMZlX3OUN
1N5kwMscBbqG8+lTV1mMc6HLKoVcCcB0DVu/YrUqZhf6P7B75BeIxW92DvqdtIEqkWSS1xkcC2h8
IcJQZz0CWXZnE6vrxBKL9RfW7Jv4RlLwQCX/qDsUGf/Q+0C6jP14diKWUSWPYYXwnlrPAv+Qe0wA
jLvO9GUIdcmq6Xv6sGeWlb+fodHFS+0xtMKKXTZpcLsWumiXhSjnyED1mTT7NoyQRquWucgB3SSS
6ehs1WzjbKp8lVUmJpAdC6bakSFK6K19wW/Mvvema4KUD8a6aIq7yZdjZxW6vSZV8B9jfXVLCv7Q
Wr76szF0wGnF+gos+MHLYhoM5rW+WhK1Dg2O6BqnFfWFyKQbcTOwt4pWTKJCDrta29nWyEsEgy5P
5SOEQjE7Lqh3H5l40CmBsaleOn2EaaAq9kmaWrsT3Zsaq4hVIEcrD23SefzGwuhNyCvrezKe0xdP
iMejI+vmHkALoImVvnXi3W7NeE15RI/DBXdfUYYrB0T2Rcdjh3L3689dLGN6wxp0GdkjI1XVEDj3
94tmRdeenZFIl6WiLgVuBuzViPc3b963xN7yS5Y+LqBqyiFZZp245PemxHNhRpdGFwN15/AHPi0F
V+jyFAXgubC69MxCqpI7E10EnIAxK0AjJBS3MGMbOE6hK+kC+BtGfZSKC1K3LEWWQAn7AE/CnPQM
oxrnZPeEbY+DpkuhLfOOcfvyJ7kQ3tlHbwLV2JN7Ju2hrce0Ij0dQBlrVdvN048bGWPoZph5Cd1a
K4NlZzgJyLgJ/Bv3JPb++dTO1uopQgBkCdrMXTRk3h9bH7cD2CnMhlJjWVRv9w9Jxh/9naqaxY9h
bcL3sqSc68UKW6axHekcbgHxf6HOyxUp1pHKJoKScg2BWVSSdelYOD0VUxlCdINpetNMq9167OkW
1rzo9dGo5lOeq91H39eJL3h9v910auKlnD6/ky7nA8O9gUvnOpajh2IEmAR6xGodxgnsBmh2+fi0
jeJ90sbVSboHfnPWIMoDL1y8hXZdZUJeN1Lp1aQIpiJOE6PUb9WklNrQmFx+7yaoUQAGPUUSfMsY
J35LaVq5EYrsawjyFE7gHBImxhcPJOR/a4Qkibd856FmkZWNnpxrP/AHp4x+2aTLHP4N/eK09Hr9
nEK5or4DiHGZ8JukNV7viMdevhuDR9xHupCc6pazS9E24Cx09DJH108CWUtaSiDePtNdSd0KAvmb
LORuBaTOrDyLCXzVDkhTADhm12t5eMr0ETj3js6blkuziJaTmoT38RTt4z+pEZcZxBKdg6jVa3wT
pskfPYiraiF/GRKPPrzoBqta/Wis2E6wPHEyIRr2Kvc5/DVdaGeHqsves51qvPOvBlktTP4fSo2S
qn7Yj+Z8SqSrS9uQfiaD7NkaNDnNgvihIJFJ/BwDh2dDAHgrOMUPzFyycAmQJB2Ikv7SNeJ2zTab
1dRhT3HdW6Fh3Fp0eWaNsya3z5hQnmuI3wKqvl/eVxDzqma1UejsB/NfluXpJrKggIx0MeMBiodZ
0TH7J87AsxDcQ2fg6lDN0nRDcokZVpy/TFZUHLjRiCY1oEDt4fSz1iJcV9tBjOX8CYIdxGK/XSli
5HG4/zdUmpWc1Ae5wtoISrsFpo6dHAdZD/3LWvyxYrhQTC7aeuduPKGU7KhLPVqI9C992to5dwOM
GgXDQp589nr9ktl4V0TiO7H71c4qluSY/gA1v8v99KfunIloX0D9S7ukE2KFzN8B3hIjSpSlEJbL
/MhCAUSy5rvNaKcvIzy+30g4tMeCHEA287k8WZ0GITCqFOiHrA0mqilSHGlHj2MSgaSoZ+70hcTG
+JSOwIZqF2xnjXqF7b7tcjJgVL64Is2bpAaRHWP4D0GsEhI3tbWxKsKnj2FwECLZFI2mJO49I1VR
OE5BtM1zOa8hybnObCJx8limaxOd7m6Pp0kTYIQHHoY6Ronl1QinX7ESWETcXoQVZGYzWhqxFwjO
uVQjc2lvT2itwpaLBPMzk61jlinDevja42z7evLhg57LU42gtMlZ5tIwHpo5xRzbif9SIKKNZiPP
FlLyoLgX0PGn1mjYvwkvS57fXBtaV5PGIR+SgBYq9JEqHdDkDimV+U6szXYT98MJCsHExkwlbwnw
vroszru+7qzA4MLi8meHqBnZixr0ZnhOP17X3tMCesK9LxlWi5hBZbdnHSQR30UMoZiJHXdCzbbF
Bia6Ujx7ro9clcBzt0vO6UlPbnmkgESr2HuZD9efbeg2xqPljx6eiJXrkcYj/qE+8avVuFrkNLmc
X2nu4zLDtLgpPegfK68lL1hbi+n+jQqJbiX0eTUKEbl1zQ5Z4ZS1IllnGcR3JNmv0L/EY4kZ/DFJ
5iiL0J+CGIaxQx4UFfl5JNUsNcgvfXk/75w5PDsTYpSgrXjSKYLrVIxVmF37CxK/ekKK8H6yDq7w
1Li6Jyodxn+bp4FybXF5UBcBc/Vr+R+Ntdq7s2ERj7wYetmZaqfoFBQRh78Gca9pNgmb7X+H6x7M
sRGrvR9eMzFRD2tncjttjt48eo1JSO8Z2oYEFu/ovjzKcuuBo9WeD2AK5GU1dpyfCt4PVYHzV4yC
R+UKSW4XL5/2cjnrIdr4DkRMzb8DFbyhoKzYiCjiZBn/zRRiOpEbk7NFy9u+w8AbukAtboC04y1/
HY0WoWUr6zs+eYpc+w5Qyt/Xgg6qe/+W7RY9+fpSnvqbg7d2K0xt0MibjM+R6rMUVEce6TKpPZjw
dD0JzkIlRHP0U1iylicUgjarEQ8QTp3NtgSIWwGslNUJdRxS9DVg6O5ENlMwAHkWG0PKeVYAAbr/
VYqXTPOxxEjtWGolIXb/T7WTp8tOJTD0WmXFQkLwQDlR1wkGTs6HfVszHyeO1thFP0O1VU66yYCg
I1cfI/26LOkVzJdfBcWOdQsZqNs2sl2egZPdXJ//pVwPTbTBlyIm6ZgOz+Ti1oJhKFVOBvEgBfGo
QaV3T4bFlfRRwEdyRh9ME54ZFrWidxGVEDpoqDHJcZunIZwRq5rPc0XgkV4Kb6JSRGDhg0GQcZVt
9GjZwWaAgAFC3kTe03o3wSpHxO5WFPryVdO3i51Kf9sI7AgPeX3vpPTJAqj0XUVekfALMYTrz5/f
pgetiU6bSnTHncmO03BOSeqkr70EGy2YFjtKiOSVVnUusWMmrp/dWt6q9ZLYTI2XCUik4oUdh7g8
7zcnBW6O1UGVkm4i+O5HhOsgmJ0cJ/iMpelZ1TYcUYSydgOHUnWX2TBYP5DHEH0inkJL8VlbGVae
nEWpNm9KLY1YB9eefuG02wVXXQ7iu9Svn7YWElY28gs+iccpETm5RSxmZqsfispmqJVrTzbTDZ3t
hlZ8EBlEJOc18LnoZKupXKBBsEKQQrN/PFs5ERA0nDSUIm3UDBhACtg3nDjA3jqpgZ364RHOCQBi
KHN2vSRNonZUk7Jm6nin26Ju/+ABqlqQLCL5WAcpq+1vGXAYecje+l2Nu/ktuJKiQseGhzUtVGgr
8+g541yAKVK+8qLM9BbDYYpq2U+/qIa9XYJea7MBE2B3GCcOZVkb1S8ddXS1NgfAeG+pt4xEi+nw
bOfMGGCtquaGxGGrslpDwNyDpOyutjv+txOszHEQZMQWEsjGxbNGVg5aiAh74RCfcyGV2ZTEPREK
QTmPOTasENreiTwZpy+IkzmKFCJ5F2vgk5JH+eSnjfOEXbt/iWecBq463nWDt/Naru9W4CM42JX0
bwV2BtosMA7eN3oymle4GNKZPPgLgHTOlw4Qfsur6MKFSwl5BhffhglrKntwz43DjC4uiM6uCdMA
dREY0oRMpVkNndBM9zUT59I37FzMtK3f6XPxeul8O4+cH6AlyZ9KPh7MO4CK4YzAGd5ApYpUzwvf
AgcvPCKG1vcDODul1GlBfVHiViknJSO9qn6oCIly3QVL34NJ01Qw3BGrpaB2/Wr7F2Q6PDI6oaJ+
cC9mCQLLhzwKFq55ZERlU9n4bKezdUf3EnkOJGTS6y/wJznwVA/U+kODeR8ADrhAA74lkCojTjXb
SLbnHNFeY9fymWxnBjh7qaT8OFQ8K/R8GQjhO2JNJ8BDbVsvAwmlnKe2Ca+TENKBvFWXUDYrqNWA
occAf95ZwgdzModKrbMyC8ar1awyzQW1NSHDsJDSc73YfyhGYfodwLqHn6uG5SaQcm3NlTkFTZKc
IWIBWQYNzUOY2Y3V3qtcSpYpt+3LfIVCMXZaXKMEdVVt9BkTkdOuNv7HpIMqrooE04c2X5BROK8P
qQHRmjLt4u/wA2q9pifqozqtYoQ2Hz3O7vvJVvbNuxdUnis1XLI1OvcQy+GGOZ2AUWvNl264m0VX
toXhSJaiaWmai/lkgQi8kJbUUH8QLLb5mBG+dzyqFlSg6TAe7gH0gccPn8N18o8EaVdEYsMpz4cT
mY4HOwFUyJI8hETarzYLKSFzr7mfCqWNJ4iCXVL0Ri+QJmwTmWSzlTOxI6iSO6PAJqpP96nm37BN
5BMv8L8vSEJnbWdDVZvhaORzs7bNWGbBxic2eVv7kspwkLWJ+pcXnk3FtOkTH7V6VP4wdQF7UzGk
4hCRlloxYiRJN0m496g+g0lwTBsXpdz5ZyJvb4bRYpB/5HXzRAaqxsWLDFHWCU4f9VK3/J+9Wg9E
+EZ2oMTRYk7nZd1A3bCUBAxCy7lJD2sOnkIdesYFnYwZjZeBhT4PwhBYeX5S1cB/CWSmqCU3qyEn
MIUPLDAoL7hj3rqHqXhV+kvd+p5xQ79GGWpck/r3P3vhwP9JJsS4ndLDoaMnCryb5MvwwYP3w//q
rHhuVr9vRwuergHecJbfWHNqFy2pT236FwQG6IbbGggRro/IVOwlvVGU/YFcj9J5cde1mdYHme66
gU6ucmW6iAHRPG+10ulNp6TsYVGJjhM7awDkSnL1lVvsWxYWoa4cDthKtccK+b/W1l8dsedbrfeH
kfRWx/0Njr7gMACBHg400UcrHjJ+C2RkSlOaE63p8BGtp2b/dVkDcy2hqWMjfoznp4by1Qc7d24B
90Yaskx/BZhMd09Oxv92KK3d1t6gk3gUx9lsWtx7+sAzQ/n4sk3GIoxujbAA43jJCAROMDq8MNVd
+ouFzs3WXN17yWA2V4kN8k/vM4JahoVZiilhVrpK6lv4xNM+22me9HOIVA8hyW3jRYDR6ykSjRNY
W79J2y2sAXTLtJIGjzGqf9x0AsWM+IjZi56RkM4nYu2HDpPL/tSd56finw+UbTGV97gafVZ3tGEO
E67HwqC6ocpuKTcfROp1t5qLQlHaaJyO6rB5oYON4JL6cH6Oq2yijb0sfzmE271bU7q1tN32JVLv
zkFqlHeAxVgaaY+MPvC4VeZJHlqxUYmz1ZVXWsyrfI6GQNEiG56//rjiVHG+/QC+PrM86EXY1qQM
XJiuL1v21vySod9AC+F/NuAkz91hFJmMJbqid8aG4hErsNHB3mnyxOJo3rn1CESTTfafVLM4D+Ez
YenUSsYYcIjdzuJJd0Xq3Q6Dzep6/dlOn6F0ytLgc4J50vOQb1p2ccz5Ir4VV9TpMkgqX3VaVlIA
W5V5eXlh3SePaT1seRIruqD6lvIbOPSHhzecqOihLzZdeAV+oXK4Cguu+cI+yIYdjHvd4ccK+XKu
zHd6hBgEQXbnk3I7mI8HSnPYhYAdx1WKlc7D4qnUehQKatOoyyRL3a+sUcAeX8UamYyl9yG6kRnv
y/N+dWNPorJOFLcygdSxMqlStJSpal6AdiVe9pYpqQ3QE8h/NaBZ1iQxs7cJkdaYTiYFpryyEsKA
8GxcmYOkFfLtDTkA54jPOZFtGl/+8FIdJ5aEB1YtnyneaYpjeEZ+0SH1t2M1Z83GgXH6rshND8pl
CqHyN3kgyvKk+Tl8L5KUFKLcPHZfv30PJQyx7XK1ZCp6bDQcfxJfZBZ2hZ13I38jM6zDkGR2MqTZ
QEjyMEaHiVN2YbV/aI+eVwPRUuYTe7vMsIhavXPzwTcT5BMqOxHcE8OK/WUzumRAZXeATQJFvEgE
Q/GQteavXVC3KLInXB5Cr1Fod4m2CKs7LceN170b2i/Wis+bLuXlX/DMjBPUFH9DHaH9vIYHZvTp
zC5Xn+ODnwb6sUfZUgr7Dnyspyu0ewT+XdUL4TQHOeBFrmh5eqfCvZuBqy/xiTJtofUD/b9V9F+b
M760neG5ZpYxdUeKZ0gJ5llRtiVt7cUUm/peLAYrZWjzof9dmYaRRsmix35MnQfC5XISsJ2KVbuv
K/IxIfyT2EzFbVLWGmipRjS1LzzXx5xgoqUsrDDjd2cmvXEdoXn2w3MQ/B68vRUlzVywzL5hHMYS
sIGMC30TLTN3etdhD0ohPiXcasDuWAUFW9gEPEoeQNzUIhEL9Z9WLB4M6bC/VtiEpWi9va7hYTXf
stkhrcT2cuESEdPJWCYLeSciN9rZaEfGyX8j1M+mVrv/gh2SbjclA2qnoxasPjxG4+WwIS0U2m8A
f+NBFQPmB084XVNO8ckv89+No04O19/wPxxVGVQh/iBL+9TEqXPDiVuFFtqvjCyYJpKNXcoMowOo
cqzrZt8+EJICZZL2aD8eoIPlhNUOX9tmAotAZzIsPFGQ0Y0rXhHFhK2q4fkWo0QcsPRUHRKnJPvT
dNPq5uNA/zv0N9wTBvg8efIjwPH9TNXJ0rFtkLlTWtSjpHAXnUvfrjajjzp8493P0/DCFdLogF9c
6Sb7TIsgAWPAGqgK9GjbkrAr6yHoz2TSoj8QBRGMgacseocnL7jTNxEWM/7Igu0XgH5r8spbFnxu
x8Vldn7H2FJgKV86WVXvz8DFdT2tfALGkkS4hoH4swdRZATFcVl7rWqxvnt4z3INiv7wEq2amc5A
59Rhki64zyRDTq4o0zeUR8aIcCEIZeuAzHP22J35dk6pjNRNaRIaaNMFU97BmxUe55fok0+77qgG
jSjLLaPhgMqcJVBVAld3aaIy5G3goZretAo7zcRPYr0sXnsW/3+/pgfn9tMa/v8wfaMR0rcRSN9s
OxZ9WuKtUf3DUuyC+tyqWGKpiboKLu0Awj2MuZRpLhrh+Tm2gfehbr/1SHnQ3mKKNqBZJ6zhfexo
xoaEpH8xpWPQ+KZquvUpg+J966hRU5xydEycQ/3IYsPzevf9auBK463i2A7u6r0801bAMJWwA4x6
jG+V8DoLLTw3lO4wD3bF2VgjhjDQ3E9wIfgKVzYCIxEharBJwdxACe47kLA2AU8aqXYtsVS9kwWi
5h1KwK+lNRtXXMkE6z3SnDUQE/6QnFpUDvr84DI0RY7cwOJZkIi6iBZl72IraOUyLDc2xWTJl0Z4
3ew/AUqo6WCnz2YyAr0Jh5lre5J8+Rj3h0sd8BEaiAQt/QOqj13lx6Aps21z510iWGN24TlH17qo
01725UDaQ9yrMqrxjVtmszh3LHS+GeisAlZMTy4ve/MtMW93mYlnHngbk4Y+3sbLp8siAtrd69rL
Zf2v4ijrFq5QrT1fozsuYRTkLAC+ORrbo014oAMd8TU/uHP1fMAiB6SBNypKcV6QU7bdbldNKM1Q
kPE5VsqjCW/ECp87uhrsS2NsU5COLdUX4VuHNajMxHgzOcXJ2/XEgF13Ycpee7nI6fa8p2pFikg+
GxuTiGcP1NyA1g59sKlWiPwSrSqRp8MtF2FftAHi8mpV+q8L5H++UZJtXBXfJHZwaKH8VuHUstPP
+dRoK4GCBT7xHr6qC95IUio637n171pM+c0lsXDbDaBRqf9n7V6PiwLIgdsfnUI3L9qN7Y68C3TL
pGlaOJU4ODrGBmDSR6SBGH5YWP7y4ge8SKver7ortP+Pt4o5zoQ1KjqQooM9zY3bur/cQEwo4OZT
vaOxIZlp0nLfE6jHqf+d5UcvluvkXnCrRE0ESyo2nzuMgLeK4WfKPEOXXwoYz189dfTrPtSiPpSE
l1ZzVmeM2cIokVJUb5tNnb8E8FKKcdV/0QgDMtXn9yahTPHWvAONXIsAyvmdYgprqXoIaXCcPDjk
Umb9CCEZgyPrGyzhMM/Q0fPQUTc+2/fjTPA8ZxMvMyC0yhxLr/J+3a1mxP+sU/GGRzIsC8Qw3uCw
8+Z+MhO9JSFpe/UTul8RxQkgPzxbQnz7pX42BQysP+4jmi9CnCuES8Kk5yy4J6m0UrbnrZ98pWj3
7EO09/bhJ+DVs8TD0Ay/FqjNy0Ok/wby5ImWx7WEPdkn2t3dsFMuxaICDd1uOZPzWv925C+k5aY9
J1IDEBOvqaq60D6XOrNnL9tKZmsj9pI1HXezhsEj3wP1nX2uujJxSzxVqb0TdQYAHvAvIPx3AH9h
MTO/qTWJfDujsPdkA3ZMq/JOO9ueHv5BR0FBDrhhO23ZLX03ojHCE783Jq5edKPPxSwjnL1Osqig
25cmunXuHdixJVeB4G1/R9hO0caWQJIZEentJGvA2wMVwKf6HkQfYwFoIc13MJ3QvqTnGjbBYKzx
M38aQ4AbCgFo8zKGdQnD0YGjAhA3IV7lhK9nyeuE4dET547eQ0+KI8bWGXuva8VtIhULcqdyw/8i
VDAI8oX55xhF0I3eZervH5Wj/XjPWEPkX9omHVS0633Iq3Qx3BVhqUr4K1el87FRoTuV7z7zWHmJ
fFjNwTprzXo6rbNFSUOYZ9cVuEERzxegY4fIRlN8kchh7CdZ9YtVDDBPvR29zg13VR1jArwS7r4+
1jy9H6eENbnO97KEc0iKfFJhog8OzhkVAmcdmwHL8u5F3QZh3P17g2vkl50sWdJpq4jds4mCGX0P
JtoxK/YHwTK+ZrfDC81NJPN1WAr1xhp5gfcWodrkBBdcXAcHD1QOwKruq7GY1O820578dYON0ZJ5
aeM97TcVpyZNDl12/v03KSuqltGxigb54UK3B0EwfBOcBr+fg2tSdJ0opiI3UGy66XhRkfUG0ByJ
omxu5S5fw5qVitXSpL1siJPMereooMUdqq4fBINKnZcZQRVUeP/Fp7LDXRByJh/SUSlq91DADIU/
pdatJ+pTLTGXAvv5V9R/fKbV5Tnc7ATmyH/kFNVGZO1hp4C9ZvmpBVIfuYeU+E54l8u63M8xoXpI
HLnoSsqAhJaOYO490p0XKYJGwHqMIz6l+d1iMbzQyoWb9/6kpmZaD2VERjtA33dAoqwXNKHV0bDS
2qCqsab9qjhCfX7ugAJ5+dS2jdiOr2OL6jlyKUzjUKmqTDyK28Pz2djOwkr22EL4swRUDfJjaj4E
MTyo2k9ihgvpPTB6QQ3fnz4kzLxc2AEG2KUF6Yb8DVfk3WR+Jyd9qfDctuhNmR4ico6EPWOQ6zkh
I5yNcQkV3SdFTBUQQ8pG1P+QfJq9tbACodGdJhApZqtHemEJtZJSOGhlokRP1mULzQWv0avm0LS4
Ib3/DcO0atMSSH2O5GtnjkR5DnLu6Ch/P20hnxYxnbb3Qas+dsM+ry5Nalh3eOOQG3uWSe3tkyXz
hQAN0AJJkLtMNRIGJkuI1blMQ5mwXQl7FG9mbbk3KBUUS5zmnGHelQid+kwUcQqR0lQ/FF1hsuj8
ODGbkHBoZuf9FwKKat60d3J36nrXSUc4GyCb+NO2uRBRbrx7jLQsgTwk7y6bkCyp/9QNsjSnhmCo
LM5yxGbdb9iY1IQMTP5oyzYkgtCn0N6nefu/3AWZUUHaZpQqVpXxbzb1tu3N2knxCy8bqtfryiqr
zce3Vgt3pSyrYwxPDIqOwfmnZE8+7OcI3+k1PZPILIL7ToSOMuPQNeVNW9U8Kt5kWMWNv/Y+qWaX
Y27LVavqoZ0W5/zeAj454vpqwkZDpyM1oSOCGszoAK5U9Cihh2z8kg7Xeut1CE2gWWU2B2AEMh85
Bt1XYOWDGmmzxKQHRHs7Op8+eWeIhxRSAt9s8VBGNBosCHYRVi2e3EXYSINx0FaPA7+9vs34qP+r
smUBVtQ8VwjSpBdbJLBHRKy5AttqsKd9j9aPpLzailvjPys48lYRtePLpVO0O8a+RWHH0JPLTgNv
g6Ipub+jNLM3TodzHFareoPIovwHtsoh/7uzHqJ8IMNpkQgXyBzVZiwBFm5dDPrXhcLD2Cww6xY0
2qcXdFxSab1QXDIOces2WAHGAfzYsL9Q/m2dCQ1vdC+YNFCDTH7iAUh6syzlqYHAvS9Uo9uzCTOT
mcvSxgOzT/NHRVwbTQXcvW2uGTkWX3TSgGrPKMIn+QyWGUeydzvTdcOAjS1tFpm/2e6d+GXoKk2E
tGiVD46pM9/HgVbsSFYMeJnB0L03N9JENJcVB81tQFTUSeln64j4FGs/SoOCw3QFF/ldFtudMfqF
PwEvbvQev3/5lPrP0Am1gcHUW2hsx3J777+if4T5aig9dozVLD1ouFouGV8Evouj/FgrPioatTfZ
OTH8GiDgL2E+DxxFujYVkxKW6lWuJcBWkKOQwSLNmy5w314mgBAF/XLiuI06NljSzkWj/YaZklCO
ECMcS2PeiS0M5Ypqmaebcx3vdlXM0CrxcXchD/RImkiKNyzCz22zKUwZ6TsiO2AN/lARq1hP42pe
kOc3N/VpXDbQ+ARsMtEjDslOIIGngx9pDmkujmi9GUHyi3vzlKsbknm9VvCLUTH6RYclpqShJHhh
xS6JqXh2LGiJP4LtqmTGkV5FL4OqctHfm6Bs6e3LYB30EtYNx634+kXIlhjMewunboWauM/LcxCx
uPdrE8804/SC0sLf00ebyOg6nF8SCHIYczUnHXfZK3eYvTAuAR5lke87Bx5TC65XMyp0myJzemiE
f9S7mRuSp6icjlv45BLPrWUe8iNNDkm0YJaqph7CuBTbyzqeWPGnVxuikT781lE4AlTm9/g6purZ
+XWyfJAZmloVL4YSDLg59W3FKEEIV9D3CrlJXGDVLnZuf0TA6aTCoDA4VpXEV8s8mVacnH7FBVeK
VuG4s3lrWYioH//OnGte9bKSTkZt+VEc5s/0bTRP9snK2GCcXuNEEz3q6mW3Lp/B3BwmrA6en3Mq
Pdq0O142HAn+1IP77S4kPQuOVFz36M2/16GFCbyWZqZAMlipxWXW4rGjnC3g1iHz43KwGcykNJtj
bbWiXcbjn0qlI9efXV+qvgPj8PMq+/0FOdc+Z6TWY1022WnwhgJAhs7QbCFKr6YpaTCH7Oovrmhe
/CWcQx+2ayChAsTx18s76x19egcPdZy1cxEQm/m31wv1G8gXUEWVTIOvg0ukbqwYHiVJRyuz66oO
QGHqPVNjE+jYeBrHcHNRnzMbFnTNe8glIwpmuWS5/6ktcQbU3AAuFAD+/KdjsTUnNFWK85gh598V
SLF6Vdf0KEWtsjHZgwQScSDNSa0vYtlsiHsvbWb0mQ88F218bLI43DLDkdnhgHmvpb9LhX6c9RAM
c7sHvmhgOjSGJL8e7CqDMmh8OdfGhstp/x4Nv1/M5J6HZFlBrSDzRd8hDXxDrQFFC3f4QKKzYqkh
vfp9ZScJ+z0Ji0i8Bm36CxjuO2gpkA6Jr1JcdAmabYhv8FRs85uKOkmkGEgDJ6LRiOKauzhF1qlt
ElxTMfsgc1z3TIswgbRxOey01M0wTI3iswPsZvz+1ysEOqC9eD/tuqpzRcaQj+/4CfHh/Gs0Lq43
/23bNdvgidvuA/2aYYc1/udTB6D5FKq/ygXyivcoW79knY1UO2Y/5cq6rpS6LqbSBN7wP7E2o2pE
LFMIxy9dh9Nsw7giBaUAeL/XItmIstA1OT45qmeQ75tk/adeVPQrzcpYwn8Z21KHv7Og/jyxTQC0
+3Zek74wZEA3DvvIFmWGk0wJOwWFCZtYdUjbkgF9W3LTYVu0ygQpic6hdAduG+aUHIOamd7dPy2u
cX8IFD3qIYRr1MfzZywnzAVtoK7+E6TzXBvD7dTd90wAx9GACzAx4RYUfKKahavh7l8CViIfXtmH
9vpV5O9gkZxAPgiHlYsivKvb28Mev1AyFBQYNbsjEWEbHOtRoOVKxvsemd1KDBvIQ8wugAhspumA
SkjnpkSK7eotjpKFzqAbLGwtFryZ8hekVnajxh2mo5odmVImJ2fPqMGxWUVHs2v51gzMiWuSHLtH
2+4bCo4ACfJ0U42oPgEnQ/MtPmLgSYpUsCK/huTaTVgfn/EYGCpIvpH/pVcOkNEg5kZKD/oqtTRl
8B7qoZTcE0RcZMp9hKD1TObd4qnVzd8EByj4hYyuv37ryvOevErycpAn1IWcirvjAuw+iEyXeaNB
xcgHHsmOG8wVHtxa1Q/AyKBuTUMBGhGLbJu6fuOmM95KNmgWjhBYhTUKFYJB83LbEhOuvV9pe+eV
A2FbgPCTIodqmvnAFZmyx4fcwml7K4rI6us7u6JQfsiGhPajck5XVWe6KNKK/P0u7CmG3au2V7Z3
qCC6vhwqjr3GNTYN85ta+vqbt+Ly/UzWyaQ7yM9CZBGXS0ysbAHUtBoGm0ewDifN+Dlzvu6MC17z
uX/pRy82hZzSCnCldMQxGwcWghm70l2z91H0sNrcBFyfuzz80BBGleTQ9N1efuPG2leImnNVQykj
ghBhYnrrWAB0Xo5DhUGpu9iZKJzlfyDbkSMAhFeQ/FM4Hr1e/veZG2IRn1ncD36eezp2p2m4I4Kh
CuJjLkJ/0026wxbeBrazf85K5hrUS1TFIq/41KZruzxx24cWSuuxxLWM0KUbwe5W12XhMsIXOcIr
IwZ/fCv1z72/1LWopCCC9CU3VpUPsI5ctZqvm8dHU1SkdHI3EtwtXAMI4b4NU0PaJ+qLOheKLNM0
6cdkT7vTB2wFNQzrYd598YK8wuSu4qZs8714X/w1EiQ7M2FpAqTVCA/hAmzLWDRiGXMhQGUn9kTw
uDuHAoXsYhCbEbGj00ZewhKLnwcfNe1uBtvfyX+s3IX8/UuEH3ohSdcXyZB077PrAbQzy4bAvWlV
TcPAg4q8WJ/U0Y8mGRseN13VRzEnC0zZ4/WOcB1RiyXHAO44xfdamCxpxHPO7gOmgNULTs80Dp83
TjvFLb7t2i9o7bp0jDEfHhwlGMMEDNO4sSLzZMN6yGrO3Vj1t9R4E3kBXSi5tMPsXncNHFIU6qMP
aB9YmRCR3m9j6qAn/TAlJtkSkNUAdB1+N6NVE8HmpoZb8KX+o9GBfYqCbXqLxRum6LWvrrX4mTlp
l+qAYmPoQncIpMv+BMta6i2VNvp5XTi18EX1uAgJX/bORqq/Ww25qBMn2yOxC6A9lrU+5oFY+yuI
gE2/j6YR4d40ROcBpJokKGnyRJsg6i6XC9fLJ9Ay4qamUqmwbiuvFGy0uPXhCtcXjkmWO9eBTTFt
p63n4ou8gJhtR0WyAbt8JRUkxdJBTspIGvKK3vxK4KZtOkKSS2b3Flgm2DWfc3zo98WTqJYdAD9g
wtenPQsAGeWdhjGL9BStKGIQfqih8U/7li5WwGC+4VfhQPU1iKJuQjZGAv1m97bPSJzHzh0bf2qu
GQdUkh7kyW32PHsSs40MH4YurkUBkCmZzON/HcWw6UGO3CAIbbCv2MM+r8DM60MUmFZzCbvnwKLH
Z1W46QdRf/jjfhyaMvgc1ZDsSlbocU0LlIpnvKbhVFXvR84R5GtHMOHhSdZM6A0czj2PsKM7YfI1
3WkzaUsNsd+SM9rfFZpHnhDvpIpQtF196T/5ZjvcuCN8ZgQ5WR0A17XJu5o2kwgo/8bewAIaFKOM
g22K4+pHhYzIryQjWqzLTkrlSqNjS1MUJ+LYAuTLjg+iJAMTUdq7HQwAEP4OL5bDdyFTsRa8/EgD
YXoNraQt3VjbkwmWYNVyEyicxEJM3zvAiGx228uyqDHh1yfQvXbNhSWfj+Ql1ViJUZEq+ax73T6e
C9Ohik0ZpvCIVmkIUgiiMnisyDLNqyOIdNPsL65NXgLI1zPbenkV83qJmZqwpBswe3IHpEzMAhue
pQgKukQ1OxhZqDsB3p7fIFbsf/yMBTtuevVGOYLn0KYzbKqAubOlenPKQSnekL4/UYejcUkNiy9d
iRf9aTyuc9hZfV93IrNQFv+aS6qJeCBvGlDOdpsrdOiVOsVdU7eFygja8p5HFqWL/IUpZl4KLGf7
9OvrPN+8K5aNzKi+mIUGQAVjvLGtRQjjK8yEPw9vahdhuvI37cQ86VwmD5LMq9AwFNM3jl4NNb+B
ob2Btau1S57z34J6T+SA/BrCs2YT9Jme1agk/KcJoDEME3SQxCTzHor5kr98wwrdDCt/VcHMddz/
ws9WpR5Mlrz8e9/d1C/AHRiGlLXqaWIfw7lg9TDtRpyv/xcH+WvggnbBp1UnChIhjh9qPKjKt34z
KpH2v2I3XfqPIvz1FySQiMeYGRYNNePAxYjuD+1qMGwoVcGWUy2gvwPgTj/fCu85Sa55LlLETz6L
qrMA6RTdDewKkcOUvNCxu0WH57nbYxurxoU1mVXkraSD+ng5/+al8EAbjQfxpfvpCpHz4tb290PH
5w7wTIf+Z1iPQLoIF0N6RgCazbf6rtFVcrx5WUnkThY/C3AJURf/WHPR7tFkGOYbJICzNs2r6ZhB
Ki3X94IEbFOkiJkQq27m/DPhaXFnPubz49rgTyd6fl2u6hqg1dzofMk2LJUSYioDeIuwsit0Jyas
XAeD49h1lYK84ZJKBOXrwNYNN6C7lRz7cMxMILLuPMX7Bv4JGlc8bCT2CXM0mlGwk/r2f1A1Ouyf
FYMj9dFtfEx5r+ube1J7hPM69Wy0OkEdwr31ReAXlsLwm9HKoK5CClrykFtBS07p+V4+Re8kSw2l
Ha1pejmKSZ6SUipVozH40ceLEDeacFEnMkmcLRMUcujBuLU089DU3mPa+sl48sqz4TcY5BsteLdI
kEmVfflNbu9uJjTlQeoH/Fk3ZwHMxku/BHu76G6I1qIlWNBh25onlhDEZ38tiYldvXJo86tZI/tU
mRpdcBDkWo3CSRwEzM3OXro82zs2nd0idOXaVCjIdfFQ5WtoLeyZpuu1NZbE2ozNfwlgc3L/07rz
gvpmH/5eZs8wvHUhMHjyWALWO9J/JsxHdxEt78q5YKDre9QtT4vx1HY9kfq9WDQ1PcZbNcl/ohAe
JfHELS1pzvldnYzNR48rEySO9/vBqqBRRqjC6n9jWL9u7AqVulnf1nzD0eGNgyHmMTfoTmP7pPC1
nD7My1+EMd2jw2LMkmnjvhWk0Oomft7s2N7/GOeHm945ZFtnoYxFKczD+QrIGnLvS1pMB050DGG7
fLpYPj6yb+mTjuypFKK1sqxM5IYq7vYF7jQVdbuuKVCYcacDHPjkGwKAssMUnjy2FtR2/28CjnWF
8cj5T+6Fruzb5NKtMGhyFcWA2d5pLHPZmUZdfkBnKZiF2V+D5M2K4AoboCOH8uHemCostR4RYOx5
wAJpKsL96e392MRaQ9A8l7yynpEgzn7OoTKxPDUgxTc9C90tULYKNsc/cpYaIaAsh7aZ9lnmwctu
2KEIsuE/d3K3NNnjw2Ssz8LbLrHuc2F8gbxls4wNfsHGb7/AQrPAhAJfxkM5YeLgffXVbRuStLms
4V1iedWOGOCgHiW1s4ni76oVeZqk4V34mto7CE/b2KtiXCK2lREQqVvEpyOiNv+5jteDizGDZYNc
jv1YyBjBQMmvtjwk6BaQCD7ax0HyTGwcEy/KEYmgIrl7Q2BBbNGSk3Ge5IdyYVVtVKYsH4SkKJ55
yO3O7zVL52g00m8BGWxOiL/0OZbNQe1KesT2MVJIXApD48aCGgGXFUTNc3K49z72RLweUR1wYdPG
bCLNADp5/ir8qvFlSD+ybHGcgmIHj5C4+0OcrQ6sdVD+Zz/+pJxNTePjqiBuVuWFl91djWBftSyu
o3kWugpyVaer2g9L9UvKVXmqEfvMNMP7ZjzcUeouOPcdu9zZ3CD12OkcbctC+xrdEqxbure9gPAD
bGq/13utC1s8jmByHgglW6dHEUAjpp9TOkgKT1jucham1lrJZdrbBUQNFTB2DsfOHFz9FcuL1c0V
OV1LAVd/tQ78GbHM4vQe43ympuQHfdul8RnyrKR8CZjp5Nz/TIJibbLvkrD2AadY0+BT68fVEUVp
l91r99MDqHQqpdxujYd1G30l/TdqOgu7IbpI6ehr/+MBXqe4czDGXawQBLzppwHlZV+5NTFr7YFz
02Z2gSmN6duCuMN0q4KlyoboZLs6LrBZGHqFicI4DPfI7+jovRSHEiR/aDr43iBjBqPaJWP/mL/5
Cx9UyrXCb3+uceuq8iv7OspsT4YlnzRUNf1e/xrzye2Cgl8Sw73jlusbCpYkLVjoCi+uuHXP35j1
i+9xzU8rdNGlyWGRJ/Qzc9GVG9uZ5iuCwPoRKknFWdd+vC72RHknp+14Mbans8oN0zROkRx28eY3
wxeQC8Ds8y0IK6rA5tJW/fHdKATCcy/rT0npJHjgJTOkmfFFT4fUCt8QeBUoe/EAsvJVxaQDJ01P
IZuoEtVpT31bwWJ14YhwTVTsPOAjSN9nVkkWPvcU3OPOz44cIq/jDe7/jj/1rgT6zwJzin3wAPdN
fxLaN/3Crie6pHRs4GHbPJHgCL2vSsrbfaM3jJVg6P0w/RA2YcijzZx1NzWHol1TK4sltvRwtQ/C
PmUSToI0oC0xtHK4zjASf++N1nJ+4SSN9q1YTMDMdAeetcQYjJ+Ibf4jO0+ln3n0Lr0o0xj6WWTY
Wskq9ef3T4VzduqLK1l9lNI+8yhWTyo/llzJzG7K5CMRBv9qEF6RMbDgxt/c/doH1LGYkF0lmiB4
+EntMuntE3cPVpFhicwL/8od/ma4bM5Pv3KD8L2txFw41BCOaFglDxdXOYV32TOoyEuJh6TMmeGW
lzwLBRyi/ux8fTSq/vziFRX2M5JYKtp46GZ+3d+c8FW6XjRbjpqgtKNvvATaVRxojbcuFk1GBT1+
rQ2m91QnVkfOdiBafotl7jf497LHw2GQBcxg/1vQ64G4gTOG1xVrZHN30bJvqccCcLQC2BJ2guUS
fnVfAKZZ8mpPrRzZM8FqHVWJW1Pg1Oe1kXZ1ErIGeWkcxp9Zv8TyezjyZkel3/oFg/Wov2XuYRqO
+8DBChFYooTZhvM5PFbLtL43ikPtKEs6A3Z9mZYDh3DGmoExlsZq3zMeFfPY6VSv6wM9xHGPaudW
iI5wmis1jWWCFR/nV3NPRwKoC9OU9Ltj/NUCqUT10mobAtAyTazOonpYj68yYEMSpe9u3lCWsMki
MILoHas7D6B0OsjgtjOvpz+2JvzVHeGMrRlsW79KgqdqVAG9h4oWo4CzNajM6iII6yNFbmW5j7Dk
KjJvDchg93xacynz0n3rWyj9+tUHNlTL2XEvCCu8pvflUcOQ2otgvb8YchJFRYJCgK0hOH1WGwWl
wWCukVW0C1NnHbtHwB4QFRSzbvBK9tCfvfTArXzRLTbhmTO1K3McpvW0rQJUi1u1HfGiouzAXb/H
cSV8ynDl3IA6s4djs8W0yaoLo/s5L29IRueIq+Lcs/HzR8jMEGc8wPCnGOvuschagXhyjvVoG4ng
mTu57Dd0TvTjHySLe2N7KI3Ai+W1L0W8eoGiI+MJocTTZUKE3dpVmTQF8nQqDuJWEZWXbvxngPPm
fth9ihidpyBlACVUMQNJ7rE42Lv1791h33/s4Fzjp1Lq1uPTGXWlCbLsl26R6/+5cfw17krE6fKZ
iTkBgqGJcTKvcjfBwbG9KF1v0SIoeI6PHQNBxZHdufz5sciZ33uBofhclJXCPMMvQRTTSmtJNIXQ
aq4oKh7wghoQkKhk9lTsfYY9zdTwi04cs5xFkmT64RltC6v5rcqkMZrXs9uRJlz+trk92PVPfbhR
OjPYW01Auzp9lzoQHft5IbPquM/yVglMJWZdV6cfc4+nH4M0KDXfc9RtP0pAGmOn1akkXJmz564n
4qtgKGZDtXfx3kOVz81vqlRkfOouHZWxpDIkRedBcVSocxR4MM29Z/i5Tbx2EMYRMS+/I6Sk1Ncr
laul6pvVwEDKIgK10o2726TiHTN+2m2jHFoXWlmIgqvjrTU+jLwRFO9CDcdPYJSSL0rwLKyDUslD
DtiuOabet60HjcTpQc8vkEp2sdp0D+LjC4GLO/paIP7BQ/ZGye4nG/7XgkXP6DPSBBXwbwLEwzkO
HBAtIva/lyKkS/lLxX6Zj8uKFS81o67wtZ7NE1f1Pi85KjgUfb/f6/mq5Ne0j4uH9lVxmzC6A8pp
QN0eDxEl5h3IodqecvSB2UJtIrDbcorIgVoVKOzpyOkjKasRzERQJK+F1XcsF6B5GdevKc2MlR7L
nk6FfJomJ3ecDSN449eB/t1krf+N8YJuu36kB7/3991v7eUekADYU+I9+BEVY1iJjWGJhox/HIYJ
TEtwzs8vgmmY3LYZzrBIrVfs2XVkCm8jbJbH6m6YTdh1jgl6+ro46KY1la+5RNR0BAfy7XShhVUy
3Q3zetuopOCtQ43MUrVFnLY3fCYBwugeL+hkpV3frCt1s39zvxdSAjod5TDTJG0VS/7BK6W2FMCb
ZKEToGPgnu23di8uKu9Q1OfTsvpNyfxdLoE+gDR6JBk4pQjHN+wjuJx+qvlhaJK5/ZxYXQ+dBiHa
30+3e2fZKwXEEWXr1TDPBTJwlvu3r/BGuLPnmxABSNedT5f1i+f/5kfc1iekdJXC/XeJCBnBS/9N
Socpi+jG6pNnCUXO3bbRfXWhNFHCZVGRnfQZYchVOWv9lMpeZREWB/duObwPD/2cv4aeYw0X6yoH
JDrnpf3O/zX30eM8gU/HerI7uAxy8PSfoIitYa/Vvwj9GyOCt0uQi8ShtFi+eec1XMEFL7QBt4Od
LdyQbpEhttUdKjXC8Thw+ksP00WQ1g+O2o5e+Nav9XVeNJvoghTjJnYLJWiBXhnEEw6zcHdKxXhW
5w9DFAUuSLYg1mq6LkmzNzsN22oWOjmz5F+wj5dmrok1URitAbd2NzoSy5SvSesI3A4JpAMu8tcW
GTlboIyG7fKGcxXaIHYHlYC7n1cCUzOAy/C2FhV6VR306pk6yhjfHw1I6OIPKjJhZb52ODuysWwQ
OfwF5v+TAFrkfiU3X00W/qhKs09gf9LVUsLtmkWZ1w7jzfLx57hz22iS5+toX4PtXt3LWAw6b6Ee
Ghp+VfUAMtd2O/gpPGWUysH51dfgDL8fCo56tMcmq0ED4Dv8bTGC2okO1LAM0E16PuKFlhkyW7Rn
iKgdm/SpLVsZK6Xn+WjnVE5YNcdINFxXsJTeHp+Docm/Sa/28D5hBCRINUxsbSA90F8jH+9Eu7aC
FFcAHZmYYBrSTpvwEBBdDJSD87DtgLoJLLVdhhRKnW4YLfNYh18X42O+ZJWBRiSp4OzRL7gJAbQ5
CC4GWaSTynwaGLETRknjK8g6DSXWMFtcyaRbTVo0ZO1jW0B9UEQZmLXOBWTkpdtcH5myWiLVhSWs
1bEopfyfajHKaFjrnljA777eoIRv1QzYws+RATvOt5cW3CA5NacERfgrmsNEvtyJ/yhzJ8G3VhEG
BQOUFYgQbQ+nG0APrNYaYH3khdo7rRvNrpAAuKf1BrEMYDZh33cGjqG5F+HYeGEsOog2UYRAVA1o
VlDmNuO3YBe6qqC4Iqs+qYrN8owW4ndTOMv4G/Vw5J2G7vJYNJWFEOZukIA6JRgLuWJeM1/aelW4
vUaJFt5QvuBBJTL/LvofVcoPbjsv2eaI1zagv2opkumbTzFDMU9J6yNLfCy3Dy9/8FHRMOJpAbLJ
lxR2X5pnTisRbAH4a4YVPX9fVqKiKYR+wrUslT0Zc6KvrosPzwb2iWutSia9/LoYXYn06EUsw7p9
ZBmj202mDhhg7oVspdN6NMbUZ1fF++5nMg3A/MWy0oEbX/3qXG3f60ILO0q1UXhGTg7iS77iOOlK
hp7WTVHTdJxtTl5FAE9QFzLOMTe6XLfPDJgI08mtRV8hjCRuhp53HdWC4cIr7mBw3xo2w/khstZu
go/tR1n570j/Y3YZgJfH6p37KjTMyVeZjS+VZ8KACx5sttNRSo5Cc+yPd5xo7ZacPiI6QI2yJSkl
JuKbPGqXPKwO65ojIOj7wLRGGl0HMe6PR/N8P/+3pgpIrspaQLR+RDkjSRt4Lm0hMi4/3nSOXHpv
7J89PptYxTnQs7uIrYTGnhnZXx7T5gjAJW62/dGTXV9M8CG1Q74lSOOdGD2/Il4eNe4PWwA00bnX
aO76m9WXq0l7TDXsBw3a45SVFJdE9deZaH3gOaMlJl9Ntcq/EWzAZ10AQqNPUk+yy03ZR7juvoCq
vk0Am/L+XDcvm8/urX1bkFljGgFhKeT9v1NFes6wAhgC0ldzzScc6MtT6778sebPIoj+T5nn9M8l
TWiT8wAqU6YOUMGATc1Rz+8l8vPrmbeymBSbAI4ymLBTSBnJsH+jE8N486cQ+pQCFpABICQ9Pg8i
Wsnx57WJhZC/xOeDeSNf0h7JqenH/Zy355QiMc12vn8vjyZq1Q5UlZG7wAJ0T0q0c1BLn23N9X0w
YNGPLRzxSnCwymUHXiRSVKbc+Kcx7DWqv0uWEtNztlK2U6QUg0nu/aCJYvztmDTN4vU9tD+/JwtJ
CpJjoX091/Qq7JBDUN5+IUhpfx36+e17HAVFZsdg2stgmdPssfRFkwUpXnreJbieQh6EX5T+U44/
9w0JD9KrX6RBmRjFX7HJgKJijyP1gJUxgM/KdDS326ia+OnUNtFe3r1IIya1desuU8n6yzrH+EGh
PMMtrpWxU3eVXtK4HVmofBQBsiK33T8IgfPxfpEkq3JBNqn/tsOXw1DXgezt7Tz4bJ6KlVhExerm
uGVRwnCNeSggzi8FXTgY1EhS+d4ebZs0zCweWZhP16AqFPreAld4GIAEu8OvkBe/WR9OP+iTqLHL
xDC0APU+/y76DzZn0Q6o4WrBpmLEso1mHoKsjTSIQq1s0eYmX40DJGNV0+kRGya7LVO1ar366ZIO
o1NVV6toxeAfJ6OkiTFlW+hNRvAIyMsPRK8mjcDWQlt+l2lyHK5P3D3XkcB9r4CQ09WPq1KV7yel
tpBtXPb4jAtbdk6xZKr1eICds6XoDLkPWVdTD2Q59ZqOFPW33M217x2JWEqKK8NlXLUXlq4nAZZe
UdxEHFVfsqmKAnyqd3PnTJK+1zyfM7wcFh3LnZKW4ihT7P2WK3dHr4enhJSSuZZ7SCh0Id4E0tOw
raWPnn32KlIkpXjZxI6rqbKNfryCkHTg8RSXJC9rQ9/1Q3kYGmalQTvhKoVViXsjwT1tlSGE/4iB
Or75NFGlNQTiQUBF7+3xnCRqbE9Ft2I9PQlvohFXR8LTtkGzBbD6Dec7JP9f4nPjib7rNU9HSxyp
5zL/BXD1uXGZZTrHg7+3Wfwh47GmRQYtqWUf9s+p/0uZhNApa8FKWJSsLsCGL+VqfgHvlczZzbyi
KqF1IYHOd6y58n7e+ufr58S3qDbi0bbu6O3oORSRXK9Jj2924hDbtIBD/8qTSI+x2sQ6W4SxjxFP
VqJ1eiO9hM5UoBpZ7A0Gxseu6cbDDl1fcr4jfsSOOldiYcffuqxZUNCOr4F4jG6JVIzFfvdVKUFU
ghVF28f8GtugzjmPbK1hsWxXsXVS6fyOpmeMms8Kz2AeWVlXIwWXDPDAm/up0SgoovpqBtbaSMSG
g/iFdqpp4qRfXJJ9GG0BnXgd/bKAiLKWAvRjoB+0mimVoXRYnVx8U7BFaVd/w18w7QCfTCYibwHm
1b/IR7WvcFMPN/fSuAeeJZyZx8x+3WpaHMbkQrCBLFM4Q1gy1YpyAn4j0X9F6/eFxGgoJ5kiS4SO
VORWapOwzKw+T9tZs3ToTsLC9bMDpp5rXVYOOJ0vJn8YVJqKNKmw3O5sy2A1yaSE6PRhTyLuQZOg
qQPWyrCapzVddpmOR/hb/74cvAz1rDvcakZdCfjaJFXj3HXwe36syYhVXohUqBgHV7x1fQLrf6tX
DuevJoh/GtOmc540c862pxvkWQAm49J+8C/pdM6Ci3s6Z0GuOg7va1GE1HIB3DAzUrUzsw04l+Op
ia/sEWwjSdPIh3xHniA3D9+J5Gand6kAXxPBnARTdUF3fFT3EheInCNlQhuKJWL3yGomlTXgNHjA
lU1iiHa7aZss7pABRTd/r07TnLUcI8zD7AtWWvB+wIRXl6gVx4kHWVVX1vrcqjon4yhauoE6Wc8X
A6162wwQiiZDodXjp0f2z6r5PDR481P2HNbF+SoHo47781nYriec03+5jTQ/XCGaNK4XKVc1qgFn
hONRqqU7ZPlJSQAszx5TYH1PFOQ4v5wk1Mund+7feCPOQJKEyMCAeaBdXCYOctB8Hp6QI/KsTUk9
PfTyoi09FvyaBfKytWBz6hkn3mwQBeQoQrV0j/4ug+OLBnmMKEdatToBbfI+pR/FuiELcNNW5/oU
CCj+aIeEA2wfU2e5/IYMY0uge8hwXnuPdrD/xdDRBisEz6J9hJq1CVBjLDiGUFFqbSs1WK2VxvYB
sA9vnsemQz4kiOdG1E2NICJLP4IExO/Bu5MYWdQnKHReENMZxEeZxoVLkAdAk+BtAahEbtZakajo
Wttf7fFiSmGvMwLSPtnwQqpUTW+bTW+gqh1Dl93fZyvF2aR91+DJtMBDHfplhPXhs11P2deOAaXM
GwAge1ANe/FrWLuxdRR0Leazyl4Uza7+m2F5LMniamQcuRCDNsxRMoXoeXtLFsLMa2N0a4dFlbjR
aL9J3sRcnY9ZPXew/ohcWRWskKVWVdEn5EzyqJjAWrFm8qrJOTNBPUkjEYAloaV1kRNMlXfyMulz
8M28hlhHdA3fmkyFQ6H8dwsim/E64atTakHOMTZBb4LKbCLomBCDViYyj9UYDHBl9J82oc8aEGP4
MPdfcqjQRRX5WdZUQ0qmjbHwX2SRzxHp8p1++5af17ImCoQoFQDT0R7bMH6Q+1ZbaRvxJqElrdUB
xjf+RA0Fo2wvntwOPGOKlraM8Hj9GVHUbRxc2hdpZ1Ea1TOj3BwjK9WBgYr3c0Y8AVH5hDkFA3/e
/r13eM3MNwFFA6rtaHw8YPAoESKhNupW3BtjrrVDkx5e9l/K08wBbpWkmoSBVDbKZoZQEp/1xNVx
M58Vrqhk+/D/H3O0nxX8kU5ky8OqTR8PT2CEh4z/UoRH+iahPDiaRDau/2cmkj66GfgO3SSa3r8u
63jIkj1cLh0CzG49s7lY+gvNgNKJPOCErhiDrRGB+yeUEmdXnEWTGIdIbA+zRQ3pWt2DoG8koQ+z
WcntjM39ODe5f7rDeE84oa3Q1JTm1f4AH+vByv9wmHVfD8VSl760S+oNlvNtfRJGZPGNHneGqYjT
/JrbPU8j87m1zTUv+4d2KbK4Wflvk40JCMjb8WddNvP8VuCbhrIUy9x3BRczGGP/gvp94xHhQZMi
4kk4LnFlYUTg9O1TByetI1aIhmqkTeWnhrMvgf8hljjjcAu31WzQm/0opcYFSaYICTHYa9PkxQDY
wFbreR7NxSuvUpkBKHvWrhPZBODlrlQM1m+Pd8d7RT0Nsq2boJP0QZxjaDv5VmVCmY/QS972hhNo
2JbEO5zU6YTTGgZmqj58zICLoFjSrhkCDIHV5KFIG9h/RVrL5Ur6ANB/2GvTYsDHvOoMLxwqackQ
1TBjg34ZkKg9EWxJ5JH28Fyt1HWqzmaYV7rYv+pPFV11HaRO6stTrJUSi+oXyXsdeTUuKDShfP0F
yt4Vk7m/6sdMRn/3v8TBsNUPWBnEGCbkbvEOdsO0Ojox4pwZYupp6qHE3wh+Ht0ny8QNo8HNlhX0
kvw8auGW0aY4Yy/x2iBFZLKR1KpINmT7JM8qAW7lk+benmjfna+SEywHOu7aLphkSQk9LG+5JD4q
A96eBWPljyDxjkhE5z7XvaqjMNgXV+2mFzuBj7JNEcjgk+j9tzWQNkcAc8uKeHJlXuPe18za1zVt
rnSLABVKLc7a6g9KhoVGM1n16IYfzlqEKFlb27TDW9geasNbDXDR9k5oaDuPLl3OWMPTBYWWae5D
8KyXlN7y21deZXYWVn6h1dCGtZH4RcKLvAynNoJafwprBPWzor+snO+CWkf5+6BXzgnqr8WzkYHN
PiujOOQD4W1VTwHLTLdP/thQFBHMY0mUHD1/SvN1E9Zc5C+p0d2YJI0SYM9HRtmTK1pBFOr6XCZK
9bBHrLjuejPQE16Q8p0pbbgmTzMVBn1IKpMk14FKDXwMss+6iMf2AgnWaXpdAqibfzMDbNyvmd46
JxbxVXMyyQICZdSlfiSkD4dfbYxkBBolqeWyUiqB8wQ+rzwTMeBvHbLSdZkBKbGSd+tpLoP/LVji
QrI5nmlCTwgsspUS3OXmgLZd0kHFRWug0TBUT5QQH4ciq0l8p45dAxa0tLl0XCm9bxILfZ6RsgBq
AlGd38NRDXUym7jmRrU2J/tUUIUivDr6jAiPxCu6qzYFEoSN9PuHhF8tMfoZSSent/9kcUOEVI1S
Plzi/pPeyG4q/N3LNJglxqJ3zm2ie639eGVWoER1O0La9eMuJ9fVnTQ1iHQ6IULFHP4Ny8uVPJzL
sikg3Z5TUAMFYMSqNHDGG6EVOe79KqEqhZ3SJ7txLl2Ffp3nmjh56AZDUuZLVIzD+Nsi0+I+mSOJ
4CeDA9T2ZeMriEiSbFMW+1W/Bxx4EOudXgVqrhTqs9sbgzoIhNcdlTygzhIiQ0Y/xGoxSvw/bZR9
6cdzuYnvsyLjIBVwUw1BaoMgIF2BLyUOFwjrqbAmKEfNATPX9SSFheF3zFyO6cVKxi3/Naf2q1lB
TQIWazqwVkM8nwPSz6n0mj+A2Nu7AeWXmRoS/1ijOt2tV0NkYXtQ/z6dwKXDio9/GVEeZnsppqZA
PfnlDFhVXFFmi42IzeclZYVSRBS0YJU718XC2dI3EKWoszkDo12UV3uyWoAtDGdXhzvEI9HYNlxB
nzag/0DWpipFs/trR0Rf7oqdIVrY8Krg7+hZlwIcD4SWCzv9+QMMTijnYim7WQPLm2ZiTUH8lcMT
V+Ahv6Gg+7A4OQB0D0eDLdZ7z8W7vfIydLEf80v2W9dyDVPxX0J8LmCLfdlGLy4LfiGDxYYTi08B
Di+9CsMiP66T8Hl+jjJuIPmL/Qcc10erv/94WYe4F6QTgxV6hR7+xqJC0ACt6s+JuPx+CBQLiQZi
dL7YjLHVyW/K/AvWb/R/FJghRvuZ4ohfg7LZr1LOxG9m1qosHJa0I9xMRLEUQ9kLnJLIP7Gpteri
dFmN/RYi4JsaDDa+zWEPFq+o7nGn07ZFFiQ/eAnDRQX1gs9ne47JgX3CN9EjuQliYFrSwfsU54JR
NQLb3g9roU7jS5TvSN429TvMDSTOxZukI66+SvJa9glwDUYhFrEIWP5nVKNNGIIRemgwJd/HDqif
pK1a9SV5AaSE1Vc4GyHhlzbMIllveQcDU5suRCkbEl+Du6HxBjPxYkmgvVTl0kkpeljnSHdX5V+q
N4SovsusLWYLnnz7cqWBg6iWtIOdI3pQYt09cycjg+U1nJRPcxN9naJyv9/jkcpzYnX6rqoogN2C
YjPErUCm/3KUtx88elZ7Nr6dENN/UGtOu+p0/EKrIUQ6qQmzuAkjh3jlNoCfPxD4qwomAda8TZqi
qVUqpsavQMlzTwKq7eyAJcQ7O+6o9rPLU5qCQyJ9jNfdsYe7W24rK0zDx4/Voq+giH6bTsEeg+Bt
MCOqqKb9e2zdzztKxl8gnTGX/lszoIm5hEOc0Qoga1McL68r6Ck34hKf4wcFGD+rH+qxdkvKQzHC
P9cigoBjXq2+Nvf4uOp+n9kn5mfbtyillZkaiRa0wbYQFikFULQQxTnUcav4F5HOt5vB/eMvVwzU
7ix6IJLiY9DdUr4clwkN++FJz1lhCSOzySpYjqf44h0k40Vl5dsCtaAJivzC/t67urOGZt73St7X
hHAVf5lSurGoWMDE7HhURmIBfgEa9MRjSFtBmjhrw1sFYkRM7IBZlw7y6eL45e38R9iBNSBPJoPR
Bvpj908mstsraA3pwJJBRgEBluqeN+mT+sGFpwK+jTwd7hH7Fh2n+HkwhAnZhhG5Vem5sFFzjXkV
ZcFJ1b+20EUK0Q8m8e6y8Y5q2tOIcKONXtvqJLWSB0P6wWGJeGrHQ6YH3TEZqqWDe+1Ik/9cIejY
BC7s3O9M5jg4oev62LYtEopGebDSz5XSxqegrCT0LCkuoiA4xU4qTCxaEF3ycg7LmhfPTKrQ+GfH
A5g+sYtPkWpDJUu4aEXwycC5hqhtW7JSkficZ/baRDSiadi+rU/by2sRJlbxPfIUNkaMWv3V8n42
oOLGOwe2TUirchmo0HLW98XPCiG9F54AZdO++WkS1zHJRBbcSG8ac9pjF0S4w8FWGbvVffy012hY
orHBLQJIgxZmUyCyld/mg5eMtWZ9gmYL3LvFshRhUJ3dHxu04vl7sENJ18TgJlg49JVv0/xjmguN
e7lihRfi6aKHH6RjK4IE71iVFgYy16TEStUuQ1E2iXBbJ0H622duO418JkpePLMg+4WKJ7kiVGlr
fIrT54WOhwMwYQvwM0EixlwhDMDBSznUMqe/B8BMimzm/MbtE/AjnoVZzvpNXu+9rYisW3gIqmPw
Aexooac1SValB4lVujZIT9VqllBZKSXGnxQYKadxYe6HuBLBni5AmK3kypYGqIq9cdwy9//bT/+s
0bfKQ36S86MT8KwR6EnbPuuNOaoekoSRPRfqnPC709epeMydH3yhCLBQiX3ptwMxx2iJQ6yQM5DW
hJarofckkC0iv/aBo9X5Jd4Do8S1mi6kXvvhnwkxUgW/tZWd4FBCM1Bs7WnZthsK3fJhYj5CuECT
Z9i0sA1KY9lwliBhjoJr+QKK7c1Ig+kurc9uhE7cij0occQllulZHKRG6b4WoqU8QwBCakXo0fQg
/T2GjvyTpEyIItaj+jX3ntoiBs4W1hD3AkaexxaUfzWFfU/Hs1YLeZq3HmqWulsMwVbra9KweY45
VFb0JomkPJtGohVAH8EPGQASyKBTATRkeR3LYZy0SPTe+3TeOO0aUZlJM/Jo3WhBgIQOYcBHE6sj
unxFz8BNZIWGuGeRs0MNqL1UpQnxHz00beB8bU1F/9Ib2wOQXWdTZZY20rJhST54U9U2a1zVcgJw
+Ki6xaVKKKcRdxc1MHShbc0uOeXgQxjOI0MCnrGDQfYJDNbs3YSW76nCtd1SopQBZu/FL5JI5SvF
925nPTqUpHroshm8QVJm44WYQinwuxVcB+mYTlaQOO8hMQzqYuSqd5QNw9KTnBvWxKORoGp+1cuC
yh0aablqb5qUO2T36tRHcqH85Mh2Hgik7tBCSLv1I3mKw7e7ma48rpdScFaE7LXNJ6vhu8rVyta0
4kc5ARTJ4DD2M8ghHI50PzNfYEh6TrZ9Q1oQ9utVMiTWi6WWs+RnSmUKe+KMKIDQ3Ki82x2B15xb
QJ83XGkum5iVw7ojfBimRdfykV4ZhLHkTcS9lpRLVDIyFPvIYsXVijDkcJ9OLuUY6hqffAFMcnFn
kp7/0hBfxOg2acu0qyPQcIZ5JqPQjOZodtkugUTxxwES/2Sr+YItaVIVPylwhhqtBMyr5WGTSwzh
2hMZFphtvBD3Cbz9N5lSPaHCjgKz4wA2pIP5PtRWOiqvxPL5bfk5zjSsgYwBEj4yJlfw7so33fbb
i4hweSudwf8xINpktZIUHCiHJhMrcaH3KvIjqMItmC4TVbgQBLDIXcbyhhxgSm0czFD1NG5UwVyk
F7gfP3PgVLmV4IOt6j+8jdL3q6IboaEqm0/Mi/jF8jp8cCptsGbWfVzrPHW+bk6ktIM9ENbG6Tr+
KQsvc5cOxt3H5rTdcNUBK3nIgSLzArFyie3vVy4XoDGRhGcrLQ4QVXWKKq89WnmHdR2OTOGxvsBm
YRNWuEFOpwvxHojNjO2HDzMSLbQofvpzo8JflOyS1e9MnNATJMMxXgAc82GSH8/XgrMF70u+0yo6
LqQIU4cKvtKKBIXgLBqWj/4nOEe7PgTlpfrkts0Mk39jPGU1D+C7EybF8ORAZTlR+FEHWxYSvjf1
QS5itm9gok7t9w6pn7qaZOVLjsz99ybC47ejMlwBAhmudWnAcG5W1+9KYCseGL2UsXo6WM44UPxm
5eIJ/O3wxbpZxcYY3t2fp4fVJfOV9ti7J/sMBSS5M9hyUNmlYbzNGBivz/M8znvNKIALX7dETysl
vXK8IfY39GjV8Jd3wE2+nAWz8VldzThPuctRPqXe+Ne30rJTNoaI5Txhg7tac5zg5CVHAHH5jOP0
gYMQexyJ25jinRwdrCYCR1jWmCJ5qIpqUOwudEtjpOUHqo1LjtOLXBwZiEZhGUCvsR4Gv8ZlsukV
Ry6VshH5TILS97mJ4xP/QpmuebVt09XtxYUN4gLNP9ThEIbEMTRLccYozmPy7TYQo/rK1ezMcGdt
yxJWImgkGEx4rsabpojCiuAQS0zdvFLiFXWcANilSOfHiDShpXNXB93MrGWPFhjq/bBbrxEAVPvX
vals3FRes50BLh74Ef5Uj8sTIy3GuDM7YmRCJVdiGYJkcMPxavAGEpXuuT/OOOSC7vXH4CXPFHZg
NicKKxURGhcftKhJaKpwnoOz3Kpf1p8DxW9elxm4woo0lJsuvfY8ARQzGo3CQxYYn7/lX4ZHV6kk
zOYQfVLp9hhCYW7bmdBYorT6DcG1k+qDCr5oBybYZxpEQgr7RFzjN1d1vRc4R6MOfXZR3+h0s7sN
Az87tu2TxJ/hsBSLieUrkz0dVd6ZBmp3Ex8ZDsechmzPzR0oIMAtD5IWFDF47BgboAiLMqm/May1
EEOji2HjVxxRIJqX+wRf2ElYqrXU9+ezjq1otc1v59jVslC37kzyBRoirzqOJm5n4BsHtRziZYnm
qTVIH3IFN19cgSgHvS0O/ya32JmJjiWpVBDADj7OJk5BSb3xLJuwOSBsHsfi5Dzl/jENC2meDec0
dCGlCIZ17DjNTPM+Mt5tN80UNCob+oU4qosRpZ1eYtPy+MPI1kykyrtdRju85GvQcujheL9YBuZ6
scSqU1Z+Emut43mxDyiADVRnEW8EHywMQ7CXGP7cxwMnLpOHyFbyv5nG8eTgGP7ZcbgeouFgMfaN
9akvu58Ku9/MraG6hWcefBDKA3/Y/Wth4WPdiCR7SAgHsMuMEFJCF4Ttpns7H04jx7B9wW9i38Rv
qLdUdYkU+/F42+A1T1eVjolaFnqnH9RVjtMxeR1IVX34zRg2mdngD8Viq2IitsjT1uhWVWeieTUn
Ssm5FdPbwehZi+ILYdJv/TxkoH40sZy8nMsOhFEn7xfMeNCfUOkvb98ECIsAVMR+ZyCjwKxjo6wR
ebJ3Xnr102ATEIjI8GyNdJK58jBE6qlqY+3fhiUpT34rZumImrxS477dl8NDijsoOsTMWq8R4/19
JCptvqgLMTrjUJHefDnRYKEAhnsaE7mB5h4gm0HtLPtTR9OfZn5UtLvphbq30Us7x9HwAOlNAWtv
c2TyKZ59BR2fJi6wggnmN8X1l5c0iV3TJAxwS5X/AxATDeytlpSZ+XriRD4S8dyc2/mwK7UfdF42
W3ItpaD6H4obx4K5weIPon/GSkz9Nr8wjxnLa9CWuVRzZnSbiDhojjmxKnX5n9So1GbwFD0t7Lrx
IKF9ElKp9SPtZYhX6TCIT1cMOwZImyGot9KvLCA0rN94ZtmwsfOSQpBCPJk4FPfIopXD9sH/9Ic3
9GWcF3j7emN7ozrpqQ+aXUSZ9Wia1JIDQNdzvDLz34mp7UOeXi4LJwIdWhJK4wnCLxQWWT0UDZDl
QM6MFdWaSFYd8Y7egjEuihsqQ+mr2nL9V7uXbj/VhqdJqIG+3NqjACHtjGTioVyxH6clgbJijztK
EbQNbRM51tB13DA+pwQtsCMWV6yEYLipA0tuSrj0puGubA7T0zOAwwwsWcxHOP0ltwOmPkxigMtP
2Y933mU9oY9m/mwn1/bGMAnAhzZbWcUNgHURmbpdcknleT/tlBObmNigqyJDHihRfwbgnRV9QzEs
Xfup7qXi8F/M5ULHqkn1MKqNUqEncHCoOXp5d3fZXJ1A0QrgqumiQlMM2PAjrofTTYsiwGxGBEGD
gRQiV3tsFUBZaVy4ZLaBOTyKykOj+SNiLivxMnuNQcgndumwg6cyAiaUDhfrxnwylR9T4kDgVuNT
aW7dh1XijXz0fk4Y3e4WDwncGPZZ5+A1VS8rmMIYpySyoVRk5m7UP3KxqCKHWJiI2/BVdz706hVZ
ceof3FOSqHuOQxsv2a1RlP2z3tFEM6z1N+wMI/tdadJAj/ICLJUDPjqw1S13r8s+Jb6S0C9/4HoL
F6A1QxqmgdQ4Oey272uEoAudLCwtFvoUxxlM/jyeciqyWpJZLhDPKI7v+xJ0mg1P7xCL3fd1qNZg
uO2sEOce+W5OZTQVohkS/060+R6Ry2Uj4Z7fgHtFELSmhSn9mwoz2lN+C5FQhcQDCEL2I/P2/51P
yv+J/CGnWQbhgGjBDOSgUAq+326+EX6XI5+O3cEgTMrCSZwGikN3708sKuKs5/KYh6cIf9QDuoEQ
jncl2AfRSgfvLm4DnwwIZizDqoOHTfEFyAuese2AJiynptUprZzMj42oIu2nJjqbtnrIgXGyss5l
zEsDLi1IDKi48zY9wCrVECyB1dmi6gF1/LsXT7SBqNlu+o+StfWs8RmvuNd3HnQ75LBmXt34kp1J
tucvSZRqAHU04LjrvmUKSQ2IS6VVIEYkCL6rHmXii8FRHV5iyJBcayGqsAQ9tEIAaOlckkJvibBK
VtREFjOW17SAyQzzLQ7Jq+kzIsOFCSfYvPMlOumaei+PP+or9TFO6wdeo7cHplo2Cb3gqX+Fbklw
f+tlwXqcTl8kAgoxbEpzqL0WtdKc2hNTsJtq8Eup4psZY3iHDVCQ0p+FYZJ/KyGrdagGj92kE39S
id1vfY/kHxSwQq7hDbwHQgscAQF8FjXoCVzALjLJ4wrGcJ93wB6ZPFMs0WYpWryT3XIKRy/M4la6
VlxK4jMQEmMBu9H62EEhrajLABpLmpMvQs12AkFZrFWmlTFTSfiSxB5UGEnBQMv3cHRiAJNV6/ZK
1D2bPa8rWv/bNzI5zIlgH+1yrWrdBG4aTJt5+Cfr1Ge8WSCqynIyXz1Uz+azF9aWF4xfiz2VchsH
gS7oBRN43hy7U50ZYFva/hnZvXgQSq7g1kLAT9tf8mptc8QzjJ+wduoyi2Gh8osmOf03T2StfWoV
XnOXh90kSlDKMQfywDYVlimo0ffXX7npR4UBrhZCgcPNjGLA7kopaBej1RRxJOYxKzo5/Lm7vZkO
YdgVblZg2bVklsxxDYf1ICC/Gje8JjqCegf0ZmiEZTGuyXEudaF/0CN0prqtDh55wfIToOKAfkjO
pyzrXTjycHZ9fyPR2Ib+AonqQFM95Y+OYCywOp9dlN5pCCaCSqpIlvX0QVcaPwB+zVAHH8ngFdxJ
XpHWR8GdP3tuu4bRyjtzac82FvIox4Jr/6kwJPqlkiKQv/vAgGaT7bvg5zceqtdoSU4akvb0B/I9
sT0fgRzjWrS7DLky/8Nc68g3cITLhjcpyb90DYkYUnoLceAx917traYE7zi84VbJfeMei+glELE6
lVxcXBZcTNXBySQIus/riVys0GVRGAJJaD7qMcOGADTxW1Tpw1b+/FxfGjMQ26d49qOmTN9PJE7b
WWSvph1VbUQ8R06GnQglLwMQlFHtMVszA7buPfeVwDfzPfEJ0i50oo6gEGA9FtiaRlFdq/7v1jWo
PwvwLkjj41dATIsWkuomOVocknNa8A0s3p/jikctD/dCCtP4tvzNOJItfGJ3PIz1CFbA2m0qsL0x
1pJ9twLHVc3TOWB0/LhDVyVxQv5iBodOSPtWl6y6ujeKay045Yn2Mz/UHWz+Svfm+PziJ8Ia4ahN
njTtQ/EHd6dg6S/5wUKI9LNAnqxTsre/ilJwW71lLIQGkppN1bBe+E4Iid+B8nbXcWlP6EYvvzkZ
XzfmCgx6LekV03Uk/KJ2aYZsNM4idG4xa7vh/o8EWijnH+47P4dDNzxqQ3hECN4OlWgPHIbw330v
xzSIBwwll+r9vtoEsZbo1gk8/+HPHdqgQteJPHK+ayc0k+qQCeb0okIhEqcwklmWWCxrFPxrEf1k
JQvTSXBgQrIJY/PNFkslYh6DLhjF2J7b1HuNoCPUtyO7Bi6Trou4BUP2hPh4HyG8wMWriVFQANgB
hBXdCQBhGVlaL3nF7bG2+ob1kZWdlJ4CWX38vIz+DtaWfPL4p8Icp5jMB5MFckkTYKGU1bG4G7zQ
Qmy99pfGKjEpDHCScu5OcIMV7kPbvyEp3xLMGD0BPyltaOzFohNc081ngNAz9IaPllot17KRk6Yz
mTFG77f6KFIaJEwqMZ/aIBKVuoz5cdJ7HCtYZ0AvrESARB9foAzJd8iSpGXHneY2fywNCmoGENj/
0KkMglYZ9VCN8x2coWsl1UtnuPeN5JNoIx/jKlntFEECdxTU4GrTEjpHZpMRwjhM00pGawA6GHjw
LXLnQQaX358DPAfdX0NIOuqn4fRAEyrUlshe+T7ckTGGCErX+T0TmvfZHlXap55kp0s+tWHqLwvJ
+LLvUDYv1pZQtS4ghgX2UG2e0RVDBDZI//HRL1oQtCMNXUwjpHCAwcU9wJslrC4iKiLyyn4mlP00
DzC2+rdXwsradkkWZj77l317IdtDcdE+E2AHwytZgvekFhV7b91kBs3Ws1uO6A+yAHtbsWU9kicU
c6Foc0IoA3e7QdYQlAHJPWsl1/mzpySy/e+TuHYeeXHyWi272nJNZEABA/9GiLL8mk6u5ZZXuF0a
wn8rUZiHoDHQprZIiV8aCZmDZ+asNvU1oNJtstQ0Znxzu+96+ja/6Up+dQLsj1euP04Ic7ONzwvy
Bc+EXuj2+hY7QUOz/FbIIMvQYWcfNh5mYB3f1IrMd0x+u6XczkvaScn9PxyTagr9QAFeIt2ilQHk
9zrRZGDp52Aj2d/fA3iH3rZyvxn/5sP71gmTX8Arow7N2H3Am1vedHwB2cwSqFoEyZ7QEUjDWuK7
jmddpV0oaDooprW/n3EnZlAPnjr6xjDTchW+aK+XFjQKk+P3mxA3u96CZb9KaFcemv4aCmAHtBoP
w5Fb6vEohv94PcsbeHPLZnnLi2uGGe9oWdyrDH48cYhTubwx0vt9LGiCfXdLcnRY3tawCdYZpOX3
iXAeYj0Qr+N77kSj05sYQ8/N+89lWBybX7Ytqh/8iM1fXcFjb2sdqWijyCJNwc036WzKvU1TNy9O
RII7N8QFdPSNv897uncEDb7/cw72GV7wVXBk/Brxzn1l6khSz7QMxITSXXPiWKtskpFXNxVG6vhS
mNZvdSTvNFhFQKrK4UvnWw8Py2ULQiIgHU8eDZjx0FP2DXlhHgHh5yXvBHR2mS9YrZCu863tHt3i
BLRcj/9wwy2rNKeqjh/iSSOjTiexjvTyBK4pHzRIzUrrEMFflhjUMwBXm42jVnNJHdCiXO5k0tFA
y7frO+L4/3CT5jqmunKLNVtfsoBLiwW6mS8j88pqPeYQGckUm2eRq31+AZkgEq+HdST0wEFJJ0Ds
mQ2hrZuz+uxccQyljw40e8BmXRn/7Eq6K4go/1Vkx6UrJpeap8vztXaQV6cPU6gCcXT2nJbqngqz
yYJLGXX6UJ6Mzwjz5M2DCA+OSUpo6G44SXNiCS6jwyZ+v9dLY9gehS7G8yk9sFufRbvSOCpeKCz6
iVQ7yfZ/9v4B5LBUS4RqUCTjSZpgkY3L3cWHrqwG+U9xtHRK5pahuNPqCW/zYFpjKQ3y9krOPzRY
vs6UgWj1Eyi+lmE8jqOQecS4ZT2WojJ8kvLxGCj56wJSyHWZqyqm1lQMxseRAV9sJKCjExvlelK8
G6tev2qUgrylKa/mq9sfD7EjWgfo4Hu/Mc0aaswWvR9ufSNPZpBQA9TWAhx7enWyEU1yIo4Mb689
hEc/KV2hdoNKMpwoFMN91ChD2jmAnhzQ+1NfTz1EQyabaN4YmOV2zxs/gEyjQWFlqSpZs+jGeB7d
s1mnmvpe7gk9eFnRft7Fq1jp++OkldIskMTyWkNad/zDqbxoS1h0lppndu2tuvOMqh93Toi7YGTa
jmstMrwhJe+GYrbCxsVYMeTBoSJjx5vpeHDffuFZZZRyk5uXmdWGufTGdKVj/QNRRiby1RAbBFRB
fS4yHjMdE0ERADP3MtjZ3DklZ8Gj/Z0DutGqgC0YRwyHTLVOzlu+Gss3rUYMbIplJI9wDCAwNazp
IdqkwWtisMbdZcICEuTGuIkNlWi/3xpEcI3OAvQujgNQgheFVb4NlHq8EOt1v1g8Ii9nUopkEhSi
mwMuYb+blvXd+EfmAE8A0YC0Aa8UEyOmlvH6jT5XCKsD4pQ1uf1FcQPvGkYsk/upY9Rvn/zVg78h
2UbJscg3TAVd39IOBLJTLRn/ruIDt465BO9er0dXlvMelLq3Qe4sj7IhmiGkqaOA4xzwgU53Mj4S
lOUIgzLhhbsgK5XmShZMiDD3V+cqIhjX2kl81XQYuH5XrbAJERa9/7mRqOd+jtxVrSshM9vMxTJD
GroKWZQkWnNrJvosn50AImMcfvnGfKdQf8dVWELj1zizBl3lc9ThUqn8qtnMhVHt9Jv/8Fx6LaBf
mcVEh0ZNn1MyjTw5YCJbsiEbsy7HRn+VpIJ9/ikw7PEEwfne1bTc85EQzV0B1xepC0faBpfukeGF
rpMlnD1sjd1uYszjCqPX4hI+1N+S9QEBvBpR8RCh9q1Y0Klt9Du2/hJcEqc9Y4UlzFWAuWkGqL8v
YSEnVmGzWzc++HzRrVeYKWsneJOc5rcxtT17g0HvHcxf+SF29D5w4N26nOQ95DczsSCpsw6KuuFe
hiN/nGbmOc+13o4bgdaPPOZ63g2bPQ96T1Tk9uEJoZLXEqurbWXbIu08T3Ol17JQMzdOCRAoGgRX
Y0cEpPPpmmNQJWCKqrh5BVr04CbTwY+BuJ1AVxCBv8KXDBrj0P70VA908kaUnmRzwWNM7FH5Ch7p
VKrl0a+F49CY1QWPLZOws6Mt4iP69rnhckaYmBxAWvpJ/KcAAyC8bYtMdQsAMMlY5ffrWFCSwKVm
w9IJYm0c4wdbfm0irLz6VDfVdDBRXhsXcJq+vT1I3Ys5JNXlBz4IPe09rN20bwFR7lmJ9bNYoCC0
i8jM5bsd/E0GNWhm4LGn/Nggdv3nGoGQF8V2n9PI3R1i3hpSkTyECS8TIDyG0/Gx7S/h9XC3SZtl
olABU23RgXnAAm8dh9vKXQVzEeFrmnkZ0t+WPihPl9LKxwm6KCQTW6yd444RfVFTVe5MgOcm4B1f
by4Q+mKr0TgJ7GxAgCrRX9GcZdqBUQoepOc9AYhfOOuKhqEk0gLZYPVo+IZIGM9H9msAUC3DDdWV
guLezWldV4lgKkK7/AaT1ePEK3yhCfH6KsLJR6KxxiPCs12tQKCnj6THcwFM3EMSv2Tm1b03KVK4
48IX5mFJTc+qFP2aGwCKHDuEWKK6wTPLAbrQq07gT424sf+7hucxjU7WanGyBYjnFJvapS+KWraL
g70r5TBDpTjyJBtDlA6aAGw4EbM8MyvMqHjdeBqC+Zu8MsbBl7McBDTpYv7u2zGQ/v5TksupL3jI
iREBGxe7fOzhxxeygChiiE60c/49mFZIsjVbc6btFBOdihYDF0MtlyX4uP/Usfg7iHwASFHMC9Ut
Hix+X1xOSmztGH1CBnS7kEjkoKVnisXCs/mg6Euy4fZvViaQSQzx9UcX9vVO3VQNtAo239Y26QT+
0KL2tL6KztzoRZo4UghMqUW5NtB2syAYMjFyEWF2dcX9JzIL1XW40/Rgamrc5yoKn0HRhxwIoM+s
2qc1ZojureBgmhoezO5YfMW3VQz89xN4sfjJQ5FCRRV2vAzuX5jQjJdIOEGw6Lc5Gv+FifZWCrm3
0eVHR+dXLP6/LcaIlUF/Wec8HoqXHFJvccrkg/BGQ1HXZixVtYUgsj/DdyJvrUziL8Klj1pkIobx
IC0inGFZK3ic5BKiaBBAAWLCOOnugbC2pr0i2Djt1lZ5Jlz26y4VLCVHBT5A8tLGUx8mkJFQ9kA7
oKBGa3+kbgQLIQxQ4GgSx2WkPMpfGaS+63pILHa+blLZ9DEDW6PeCv+SBN6OVhlPfx7ssuAWPmJv
7HhOFZNOLVZB11S5gYu/AIVb1wjYbjULZKaFIWB/tO4Y0cCP+3Q2UOLLq9R5XZYTA1xDAL+Vfp+G
47vHSvee0Nxtf9mxSTZVlkYy/YFlwAVkA8fKZgKtJNlRwNsAs04yF9FVC3HkNGSrkwVWPGoM0WrA
fmG+FYt9sa1+UDuULlfEDKAuV43sLgtif310lRb8bn/Kg7iZqQt4tuhMwFvuDn2y/kUhtMnUZ97r
Qp5qCBCCqWzogKCZpNiOhW/qmzExB/LviYkgfE1yOH7vUYjWhLbO9zvRahzLXV3v2of+yV7chbhs
P/paTmL509bc07VlGGjv04KOhaCTtzy8DJm5wQ+eRlBEaf+t3yyqhBZPxWkzqSXSwPJGiRiz7gda
1bjNpfyODQmCZqxTDFiaBu9ZpV2E2q/GCsKrUKA/ONnJrs2aXfd8izrG3fu33n3nY0JqoLTEC9VQ
Qc0tmpidFAVs6FkUxlySbotOsbHJigLyZuP0qy6EzZAwh1v/7kLdt4CqjYYIps+qKnfdt1fijULp
jITFiZBNAQBoEH3Kt4/R+wk7hgXqwggtksiXAtUooVzx/yi64clippVzYGVP+ahaiBN1BUMU4k7f
3g8oYidAPgDQ1IZOjqeW8VAOyAaAt09ZnFAgNnyTbiuroJue4aHX/65HiK9Ft4CGuBq3k3AB+ViW
U9W70u23H7QByz4esha5UkWZtghCcSg886gXTmEfaYjuo1CN++D+o26tNKvR6docnkCEKxCtZmdo
vQDi35y+D8EX0iNZGk0e4kcW2C2oDqIGZDFCbQ7GAAdbX7Rk61xWr+yoegG4IxsfeGIk5zo61VAn
GTTlRbExf6jyEWCe9L/m90ZMWzkO+UNuP31AdeQaigdzllqvogi5wtYvDVRwf9ZaqDInGlWYusy2
c3S4Gh+N3G/T10QHmrHnlygDS3kzetYa8rpbNnC3Ho10IsUg67lsxRcqVYhcWc2wI5K7HozbUK/J
WaibwC0YCkZwOiYKr19lhIM+Srcvf2O3A7a8v9Bu/NsV71N1u8S5vZRJvr9G2S+lAOjOJ823oATu
EmgUHr8vA63FQaqFDzoRinEWfG8E6cbF8lZoHA365NtyLgHp7H0nfjcSgSm6ST21Yyu76iOOHouR
C+QfqhMdjDqt3TuRH3qy6Qa6+7uhQSp0Wa7oTTwlVvbsCAwNLHInObenN5vRhMOl9AI95v2BfMF0
fbkwS3kq62vC+wXyv2xhGw5qovTKJ6uLO1vOyS+OCoFkhCa3jOrl5m4JCd9Ub0BhoZoCfZsGG6+6
dlCHkDTpwGjXx9WiEJrhAwTaeuNSAxCGiCNOTxLNY62g5NWpEo0ysf3qzSAywUrF26O5BgE28ekn
S0a6bgNn5Lefxx2HkvorXCOeVSoQNpCw6fxywuVMh3oCFEwFjWerRzGifrjFl6zmWW/Qq3aSkOrV
5whCAyhqaNh8ghFuEWGlQEHyJh9RykQCmasozHG1JYByoxQADDpb0Hp6x1lFrziy4zL4skSHaw6F
/4HhQECa6KbzyO4kbZFEMySaATCLDhua//TkZgnEKQRv/Whwo7RmXS5aJ2PBnMsWDdogcnIAmjlu
8RpnE29uJBEPV3D02ERDiErsxGN6it7wXzEUvUdqfCzXcDqPb8LRw194nhL8+fyIFcYmutSFm/FI
dxnwDJrtrN/N5TecLFt5pYbycDZSH/4o2AzXq9xL9zp51o8G93pXh2V1/zy9Z+qAZ5oBdfPMNEpw
qV1QbkHOQWTMFPU5Roc2uqwCQ8YTW8eb9JFO0XzzIMLnguycgwjncTT6uPP84yK+MUK1ZGl9qkrv
+RzX2x7rPy77oajmIFK0PagS83aWbLFY1mJECmjoCef7ecwAuNFsVIGK5YXuiun5cIyawriTk3TZ
nLEDzp6dcTissIwGgrDLwlkg1ZS4aQEaPcMzNW1hJNivxT9EG+rJNHC59Y8wV1c30wepsq1wabwc
VJFQ6kuMYHy0vDI4LGXv2+3WEBpnKaqGQ98ugLSQVn/EFn6uxdstYIJL7VmZPBdo1FcSV7IvF3av
lL8A0FUcSKhiPCPt5jzzMylibCP55+YC5EgrTOw7HKJ57WI7nSJ4+8cqTbJ1+c4I004Fa/OKp+kQ
NFAGYAQxxDuPGQmuKZlAdtj7gY5Uo6L5e5FlsN75WZGWx+9XJMwM5OfYErK9dbae7aHnW2kE/iLO
RNIb79VeIAB68FSnBrwiQeoBUNHqUf6iGWhEAiJ0djdSYxlsm7en6pq5KCSpo+Imm8VvB0CR/K0i
QAVIbaPoCLtzKW9zil+4e08+zXVYtwf9DV8pz6Osgyu5alY3wsQhISuKe0kk25tblGf6ey/gtkdW
NjrAfNIL/zea6WV9DMOao2va/Wvm+0rk61Fm1METDXG2AbvMN9s4dmzKXTUPOB9SA2/a2YsLNPHM
nX125nvvTG2mBOTZHfXpHEkRKZVw6IDHLNbsWTaNQTolGvSjNyf0harSzuqAcbAetGFpjdjvXMUs
De4Oq8iQwpAvQPHlSbgO5jYagiWQlCAjHRVk5Wx705ENMOfFJTWsLsfV/xNu3iJGvO+aBiVPmwUj
h+5ta+3zl4+dMeXGi1dFU3J9gDDbv2LQTgjKNBT7+Nwv7iEIVDJJ6I2diEZfXmHfwyc97LqcgX7p
NEk0E0RoZwZf4GutBuUSTJxMgZpX0zA/WzVEW61HylYTJN4bkS/KuKVtHRlL45U8wpTYmb0a+m3N
omIvjBhV6RYoVRR034+zlP67ZlA8FmsRN3Sa8t/iT4frZD8T8k0iRzRjj+IKfCYC1SCZlZycQEKS
Suyc5LCFdstjTb8RCbYPeFxj0ZoGnJHo7hLq5rrgvz1EFxLlVn8MIrYMok1GjXVwq8eVkHH+zk+r
V4PHsT55SDrW6n/GB0sxBzCn/2tfO//r9LCMbxL+byovVO8whbdNi6hwUOrLP2uQ2/dJ8axqG/gf
RlUphALymC2C33wX0bRT//yemr+1TOfbk+K7hAvJs5mU+vilo5LhDC1TV+mX1LVjcHNMb0LlXCyj
6mTXdeRbT26N1AYYFm5qINMQsPvaP8swDBLLR91uxmR4Vegbqp1tl15qOXqWawu2o7/HYLhhfGDq
La5aBNgH8gROHcf9eQvqcyTxT2wV0yic3hXZaCWnNUVWF+HJEndceJn/lg1UAc94ejT+TTJladHt
fIMgNgs62hW6KNOCLWpdlusRsrKuKyez70UlZ+TqlcvUPX9FRRGd8QptAhGTH0NCB0d2SkXrw7aj
5+RSmXk06oCAqZA8QZ3ZAIb0BHxIBB4guYrn8hoOqfBwKyDs5169ufUpA4kgljGMmIfnqYt+WKfN
OhgFw8+2o1oylHDpV41QwH9Y2GHquHtO5jPBZmEt/zyboll3eAsIQqXvXS5xI2aC9s34CfwiHUky
5QacD9Wtj8/LvVg8rH+GPHy7YzDu/Y6iS3Wc6P8uHr4mGniWV8jOubP3JT0FIaO8d1ZTZU2HCGe5
fFt3Lfq2zTwVuJn+z44nuw777Bm4la2MJZrkkeCHhPNRwpOGvXnhfIpyvrpqzSdP07F2sClao6D9
6pRb3kc3vXxs6nCYwjl1/grsm8YSA+oqqodTlYNqA4F6zVEp9V1xLwZ55bD/Istk6m4PkZuBVLp+
4sNOZ2vtu4GtIUq6XCSYEW0kVh8R0e42glYD+FAar+31TNdJQb8AzYsyHZ3PSgDVZXYUf8eCgPQ5
s5J1EaKq29ZOg5ERSN2pyPLSdsaHQRthRA6qZWUrP7R9kBbeRD4YhdotQqxeVJiPO5NlQXm3C+OR
4R2+ijT7SGL8bwZcd4gs3mQlTjLC72T7WPBG05Nxveihan9DVFJ8BizQQD8sbi97SIAuH0px+2YF
LTRbcPZyoZ5J/B0FjhtC5WR4gnEuBZXJ8b0OmVpaDzOUQcBs+Wfk7AC4lcz/0k6oUZO+KBAeFXSu
cTnonwV+HkPbSoTtIJyRVsXQC3EeJvvj45lV59XJNF950cv9eQFXbtagZi/WpNBZUCRnXDIucnhK
DWfQn/y0FVzZneeu7geGIFqeEOLj8MeR5OfYYfhWiP7phQVkONoc6NVeBKooJz5uo4+KA3DZxvc7
u+tVHdcNcT0pfnhAPGTJJycFNTezUtV2EXvh4PpxRhvKoibZKixPzKZryN54768X16nYKBC9YWAM
jXD/bJwn2HngA8vSCCSRHhjyfHIHxz7gRY6X1RzQs9+M9D8mznhWYhAJrfKNayIPgYHvVzCwg4jY
D4itTEp2T3baHuM+z0Q6nFYvpOxnsXlk+ZWbnOoQE4PPhfQ1m0/kwc3OAmic+PpP1z8CuXTZ+Hmx
uLxbyJHO9RQJhw65Rmb63PyH4ZyNO1YSH09uFsnmDpN6u7MgnA/gq7JrhDiIUjQqQlsZfon6SmDN
s5oDJyGYVL7A1XVY2r/U8I825TixxK55nKxtYsBVMetmMEMA2gpJxvOg2GaE4B7018OnCsS4u20q
DYJaIiXROPuJ8ednO8x1sQAnd9ZmnV3v+zxGvf+M8vF5N2iy/YRmvUhzuPgj8gQgrFHdnkK4RA+2
HgvgXDK+bh5D0RCOi2ll107i+81kywNNcOHWyP3EiRhZZqGDTE7SoFx5x0UvDoJC4eKAfsdUwr7y
Zh9ISm0zDAqKeRK3IQ3cBUB5jW1dZIMYtUixpqRMrZ+iRUO7Cl4heeTw6BRAgJHzZzei/RbCxn/c
vBZeyQGj1yAbTfj3kFMwlbw+i+340F+34K2fsVeJyoQXY+6wn9beq7RIas+AgtuEc5Guv35wdqe6
zZzxDDzz/MGfmwlVixb22ELzRZ2JjtauJ8UefwDNlZD6GNTAx9b2en5+OPx8Lk8Gn+c9N9iH1WTE
bEdItCwl1LlqnLyZz8nyD4SyXmdFS+vYnR8CMlMrUlijDcSGyuM3BWJdWObfR7shJrmzw2G1wPjg
mOGCdfOF6vHr7rBa6n1oJxC/oE6ROCz7+gKt8d/KGM6u3n1ZHWrbHJY364qny8QNODNqaKUQkNHg
7hzmqlhyX0HzeHa2sEc8WgiGTe6q7yAOf4SoJK8n9yL+lRS4WPLcYQOiY4L5on98f9AxukHSGlkD
/S2Y/ghZTOo5L5+j+IqJTu+bpSqXrgZiCqN2ymMkciRVUrosNCglQubj8iOIiihEDnW+VLFgD4u2
Q5Nf6sdCp/jzWqhXYg7JL39VFp/vSqzLGiYkSr23dk5gCl7Kd69QwgYd8IIBqV9yrFwWluvV8b/V
xa9+uOLLYSIMQSu9/NpSNM5RKw5xvWTHxjwZC8s5OIQDPMbVZ4qV5TlxQq1PbXHVSQIG4D6FyuBV
CBwvNv039JA/9MAlzN3ll7ozYSmZGuozQOYBO6Mg8hz+Y2FB04aaVnslo6fQit5lgF4fSw6C50Id
xAW9qC5i2BNLVPZc7NvYN4k3JlAaF1vR16kDjVKJCK1yGqXU20IrX6aVAi9OUxJ+o8PpFLcpSiS1
0wh5OGpsyT+X17RTVy+4HQJE//tKotRLnTsLe8ybQhKkQ6DsEjzI3+yCMSx2GnZeu6WUqf06ldMk
vTAwLTqDJC7mdxYFlTOBCihLGE41aumMA64EUGaGZEgNu7y/EVzMl+POalU1eB/3bdcZ6AC6PKeW
jQkfGT5M9yGR+GoJ1bT/Ru/0M57CJjCrkqtd/sP1at+BsevaeR0X6CNj1k917Exj3En8QoTATwL6
8ZIvcEOsFx1q7k5PadtFs7yV2UbXlR67N0jFQrQAaUHyOHc+8WVss48yA3X+8OhUBDXVp4iuGkHi
B/dCLqjHzdjAjkMAy2EcMwhksh/2H33ulyDkp5scxssKhid115jW3i+ndxqARJK9bRudPDewu0op
99CuSvEdL78P2N1Fq8ffjrvJt5h5lm4kV7UBqy5Bnr8IyyjR6WsaXk2D8yLjvQoJQmptb/pQ2a2Q
42jKFssaDn+6iWOrQNylJNwUWwgDDFmod0o4FM+JpAFHEEJ2HI8RBuiaob3edh/HwvxtA8KizDT1
jsiapdUadQZjwJk7AF9KxtQWDtpyYDVfA5Y+FFveUV6yJTA0vPkuaz7QuddbmAWTgR87MrXb/CQb
KVe2ZZlTxMvGuzbkh4XDoqlHprUWnVclb3VTCouIeje8z/RR1ydDnpImQKtnTBfUbrs0HEL6aq5e
h+nS6jXrAknoU4PmX0QmtIc/rO7plXfd0rIX0edjWLNyCxyo1EmGy85/4x6ow5smYnBex5gAtjqx
01LIOJGs36Nr/qAzQ9Ob7ViqihkKB5nRuv3PK6ZWvkm0+5rXmNScfWZaUDcl559GBa3IRDLAHChv
rp9ZLTPBTduBt3gvJZ2MCTmlMAX2zlucniN12Oud4nmbqh6Af/umySlBAFFAmFbgZP2ZlUHDtm7X
FtP/KCKSkim06VxDEkrdn/0CZt2lXBs9xakYWIJ403MrmIBzrILjT7JaQwBkNSUQPmiFGIF0Cc5Q
3oKDPIlj2kO0i+x4N5QxAnzASpqg3Esdlo+3qU7DqoegNAXW3j6PWMciDzZGdD9ruXoAGARwoKY8
V/8P4y8iflqk6Q7pX6Y9Jq1U1H1d+J8orRZlXS6T77HyEW3Psvzqi9WLEUHfub5qNjshK+01PTkl
k8cCSLHZQ5DsL0TTmWFNIa+0uwueuFQPpQx64nu7PEmHwLs9TyY6R7ikcUzZ8UJ1JFyOL+zMSk7d
upSA8mlUvYNrOwDxCbWZbVudwE+8xjGuV4+/AiZDvnbIgAerbgBoU2vZvPb+E0EFheofnoB7Tz4b
07dgnYIMYcwBYnvIBey5txcjsib041zrMEudYGShXco/nvHtGDd++uZlDEUwR+fuCw3gH7siOkD+
y+T5NqQE5g/g8dVa3EPbXo4EyEMfzy6TMs5BPlYHUlkn7VQhIV0697HsQfPZq7Qcjw3K04c8vsjY
6i9O0eHMcuVCHPlmzh2AVC2SY6GwZa/eETDNj/PWDZivdagxtTdAf72zaP59G/Mow9t8W3KZW010
FyV7u2cYXecbPyPzbzxPsvUSWBJomWdZYHbPsPX0gARtsHyNxhtNIWrhyjJiEclui5j9SHXBlfFx
evIBTOhrflbfxm58vIzi12qPwrwHgUfEKZX9LR7Ju4FguhsHh5l2OlFVJuIPqzo8qxHoa3mPmIvg
JOzobyFaHWIHYWcA8f84LExREG9PbRh05iFQ+BjLjgqIg3vRfKPpr40ebDJm3o7kne62sK9kaj1r
bSWrClC1BFD+RNZKRupLnKSEoZZASzQOK1tksJvk7RJH0Af3R79nyvAc8JgDyanTShcOXqO3hvT5
dXbQFsBj7euXeoXossUmS/YjGk7JHiqARcN59woUKqmL8YFyNbr61CEgL5T9NpYtMduZ/wYwuun0
UnlOA4bOkUUJEDN9Q+NDEMhkiK0vLRCNjtgP6OlDJ0b7u9eDB1cYf1LkcNbY8l34PaAPfOurHwsQ
mSRM5K7Ujp6bbFaAjqEYWGyUZe+mOXVbBA1Ds0UPFE8dh61InlG+RHuBBhWGWjwz7FSH/GHb/bkA
tbFiw1MZf6TEpPPW0+bwfjUWHcuUOH8ZKSQg3ioCT8GC151RakMinmfePzl2Xggl7ZeIHP24IPVk
StyyPTmaa5I8pdXuaTCgJkCFP0hrnJO1mBtpFuTMUV2MLs/XWemXVLuTIRN5EtJ5J4r3iZ9TDjRx
gFuU7afC595jrtblUxnDzoCcdz9bKFb30moQHbS/3hg5H0RkbUDFp8ZUZIe6vNEpfScYaZcxWB2B
AOY1oLaMa+iKuWxEy2e4gI9uJnBL9CRju5SEbD3HvUa3oit091qqpAyVrKapusql/Dt3humejm+M
SASJrWirzI1IWq3I/+y5qGQHXVCIQMghZpQRF7N/a7ZUZtHKKTSSpo9h56pEBj0zdnXv+OhXOuze
3ZJzA4Kg+jEzV80hjE6UdCog55u29UPCf1QQNs2zYJFvww9ohNgeaZjh2B0XbIkU41XMR/dVcdCQ
QD7YIosYHrghd1t8xUQURdC8i+NBanJVpdb+12nvB5RKa7j8Ktq3RphGyTvXKUrZTMyEXbCrtjoO
M2t1eooioMQOGMXMPboWbWaL7rgURUmmIFvyOOHyvq8MinxPtTkujajc4ibgJvKgFw/DJg/TprUH
hsaoAejuZCa6lMyZOB9/CBD7OwQ8NdLn5K6MnteyLpVlDcZGokDpoYDYJPYhy81ja0Go0u/pyLkP
wOPr6oLjXZzbSfRoFqMhdC/2+KJHmC+wIQDJgTWjh42lk33vStq1dLFAd2yhZfNOeGL17w0drfie
d1D2DXhRKtUBH3Gyr1LYCdyXmZeKk+bt1VVEH63AzaDqqVu+BfCcEgo3Rz3N4u82WZJCloRYzptF
ggXfsokruP+wrFEzHe0CgkC8ywIirtQ8YAmya62K1/2wkW+SW+ALDTMj6bweizU7p+FV9GvVHxLw
8CjzCpI0kECkVBGwpyj89+KvfRbY1GuYQHyFyixcVX5oxDeZXoVPe0wMpS9KP+K5ov05hhCXa2Gg
4KrAfQMJyz9Sn1jtp5p0VJhxCjzNhe4aq7Xv/P6R6zzKSHm9EKUTlgsrNWHMQpWRqee2coT1MECG
r4ksfOBTfSsOV5ebuDPdYtFJox1h0W3eHjlz6llpNMoEXTC7vQuJbgrfukF+39r7qpKNQEgmYW1G
4zn63JLPCDIsUsLSbKM7IwZdCatYDYENNG5/0FHalthIK7/wVaP6LkX4u8D6slDEielViEn1glSd
cWjdkcnTHpZzE6fOSBJD3L47Xk/b19e7CeWbdsiMNfbK76iqV7MAbEvyDb67p3yEnPdoe/N0Z4LW
SCqvTe5bva+X2EoQYbtvTMSSZkoGn+tFKPCtn2yDRS870w8zSYf2fPtrGcUzX28LT7b5DUM8S138
pAhVh4satb8nx/wfd4/ysUOR/o/dhHf567ruMOYIXCsF4hfrCuN4p/Okhaoh0/9sHdChA0UmCwIq
0zTvGviNAGsLPrLghSBHsJkFlLHUs9v97ph/92oun6P+a1T4a18vzrnBiRxOx8PYGVKsgx9I8tx0
qcCkOmISMqVOWuGHpg9Cb7WG2+cqTghiDm5wrpKivG6SpQw9/xP6lg0rzkGp480LUxMILpiewfUU
Tlk2jAz8c8WxPzzw4BoPvIwHcSUhLS87vxFrz6QbqeScCT5je4+MauBAhz9TmxUFQa9jecNo4aV3
gvFCugjQIoltZZ2W0+wOeaK4P0bD4cx40taBYEDLoqGn9wXzZb4XF64UmS8VTngTRtR1kFTb/aJV
HcD/LD16EondpsRc0a2L5Ezz8jj+LYZPIQZgwozLV4g1/JSVBUrFeEqm1wnH6elOlWoh+9qktUGE
9mMyNRerjOD4yIlMYJSKQzK6vdapDZSDy9umNVM0BNMqzJWYMjMCfg8aKpVw6eCCiM0s4PP0b+tD
BG2wn01mGwdd+R7iXgNhN8wlT2BjslZMUNUgcuZp1swohfgyoJFV9LL9Ai0tJwunHh+obq2u4rBT
KiBvI7wkyv73Ci2kU8wggL9mcOUiBliY9bhaa+OHDLrGiknXg2duVgWnx1Jnsp0GbwP7BkIMhjlE
h1NzM6glJ/8aeZD/VB+/bEIhIiQIUXX1vXqgu5uYvJYmkB1/o0UkojKP/Xs6iwfXVEtTlQdlV+km
i7kN9ELhs3x54saLIQshL/NPc6lMF4EAdk2qoRnz4sBAOwz8ZzMGAxUFLM2BbesclEADKpNUORq5
/+hymDvQIYw9o9Ta5GRkF8nOzIhKTbRLXIOUGU5smY6+tCqN0tSuZJo3QR/fyp+psuO5H9/ZJqp7
X8zjd3b0PjIpgnQgurMudTWjnwICXb4QibhvwJgTAqro4IUYgrZRlp/f3XUt7xEF//W0a+7uDF8x
4e/0NYmrWgOdK1q6W61/2p9tz6Epf+nFTosVqaLqWnVaT02cvI9CnoY1dsM3oU7F1hhiqNCXigx0
ydG5DQHOwnTeYNf7kf9OSXQGCnDvN5DU4bbDH5+bnjWIb998hmQvnYaEIa/XhBcoDjDhBcb+wqCQ
iFGUOJFWRG/pOulSSt+X9Jsd/Kj+UDpDk9+V4OzzSvVdC2SffYPSoZBu5dlEvv7RjNbYdy1uhgCM
83KU+jJhsyssOEzrIclvypk9CU0KG606u+ykmKZW49OAdcT75EHqgUSgWFytfrxXk1rgFPogAZaX
MVuRN7iNzN8WS6iOPjZxxrxcOEqsIserhL2uLHH0pPBxq6LF5ip2i5n4rpMgsKifQKbWaXsnKhop
cG9wA4nuQBy1d9fl5gwy+PJEk9kymivwsO1dY2E6n9Tb07SFL14oTETGkT/v/G2jqQP6jszdlFFe
N2ygh0bO0+KN4hV5Y2Bs16Yx9Hyu4Lf49HHCjJAhxhdDCO/AJBPqHMf1jBnDPefIRTntGX4KBB7S
1vTtPrkZ2d+OC4DHdnh20+MNBaQaF7D8XgJs5wVNfN1Vx6xZkxRvzyC9EhWeUGcrkc6ZTQTUw0vi
dgdPgffwbbUeIGLVKlaNwteGbXkJh8AVFqTWTqRdNdWZ0S7ecTQ5SHZrKbZerl7PwlkskWYIAU43
w6wpBs+EWPu8F9PMw783qKm+JzmvLTG8cXA4+/rqNUMDiTpVE/gcaCaDx4PGJ9YH2pNRpS0Y2pvh
L9ilJgGsvMnICVe6goF54q6UDop/HvOO1Cl+Dm3ev5Lcn08MJnRFCJr/vyVF8HU0Sa2LrtNZrv7l
PQmIBiv9qbVhxs1eb9JD9zgRDQL9AFsPg97Axo3bUNJDY+jR4j/mN+Y+Cxri3pMGxJpNtFVDeUc4
dUZVNoHXj3D8z0MmiID+T/1uI5l//XQrpzLpCVhjrXWQfQgn96gpxThI5U0FvCaOMZZJRfdrQJbj
QOsv1XHtSqCtw7dLGwTUsWH/5dKXfJCP5BWeFwWmnLnY5RzW2WR61D2F0xXSKm44h2PebEqBVDrI
BUiDUzGlnOnpf6R5k7PkzspKxUG4NlP7f/laBXyefsPSzkafMPJw1yYqomDos8n8KHnWA6ktl7nw
TWrWLppiezRRRSKnK49EC7PxWlU/HsUhJYMw9DeeXnjzQzB23+uAcKYKrKHKrTdRPHs6ih22R5ML
3ZAx8y7yRmxogG+nmdAqtSQs/XNZsDp6gSksVNUuAZnFB4MGPWCe+4O4HIKDkKZl7aDsKL8Zo6lY
bOfQYxcW8myCVFCB6hqBpmjBEWq2XPIYQ2ZpEmuZLrfIzEUy3XOdSCEApBwBeeWkWR0+aqT4djOk
bErFShEYlHHpqjwRLFuVEfGtKyGLU5CVebnIynRxAi9CCa5n0ZuRSwUjLVjfbKInmfS/nho2J0+4
K7JAK/O77idsAvCynu/cfbYrS1lr4RldxjANsm89DRlYJlMkYSWwfW4dQBjWj8c8GyflXsnxBt+d
1lBsRwluiGNNDLhoz3OTk+jMG1i/mxIOrfQ+L5ECGdhIUSdX9JKgjVJ3UHWBKUdAhfUwhL8cB5VY
ByueYdaKqTNL3rTExsYyjdIDsDHYoSQJgqjFAEf8VL5diz5LrMGBx1o1isNebc2qs1AZobNqrr7F
/KvLJK9FIIvtKFA4xPQdBvsh5ZCHIPkPQtllLLJlwmOZXTe4Pi7uZYHqoT0fhQyEf+d/TEu7trHB
BOyhBQHnbnb9rYX0VSOb/5yzP7Q0twPnDSeAYIOZPIlfV9K9uZKOZo83lHyhBmrk2MMnL/zvfqDL
agzEEeaCgSreVXlLgmZNO5YRraau5Coll72EJuOcpW3T93p30HrHNwIdddkhcNKZ4PdSqp9XfxtK
9bpko90/BXMhVrWPyw9bx8N6ixfvnHyXH6bATeZW/MAQqKnRFJXQGoJLlRPmPw6Zn6hom06XA8Xa
oMIyfyOSTL4rA0xmsBB9kPSASL+j2Q0G+WumIlL9ZaWjIWqgkEXhLcmMNa7iMIw9bZIQxlO44aHb
J7T9O0sIlbG7rHGZORqAqMvxVJRaXabIEk4hS+74oZhYrY2lf1Zt4yidVUIt5Iq6zfMjKsVwC3wX
VBH3o/hXxShj6F2k4esj9gyn1GEIdjpKTq7xkdQr1IexhP/AZGPXKJDunfz7nwhl0QFoUnvKnD+v
AXktMwO2RublEiUMD4VXVFlVVAmvTEEc/Tygiyi7xyRWSX8ZEd7NnqcHCwQbtOvITw38bTNMj3XP
pxMbwePDUuIOp7RCfsX7kzeWSY0gXscFus2Xt/Tz/gha6O3g/+0k43/s/UNhWMzaJVy8nD2BtM7b
/tCSyrQYUhktOwKIL8i97SxGuZBiIPpGQmBxoFRKmiqAs6vd7UNlUfSOxcsQTtJdrPxfRnxZYZCm
jU0YLBonPlwjMPU+UUKB/nHPjXIDuCnZ2rT0ImwNbFLkYGRRqOjZJ3tWosZpzTa6cTJthDAn0Pr3
SUWzLJII3N0SB2h+ZJRB/ClR6eUb56n9Co39WwRlB8o4p6QsYKCqgezsBNqls4/ODoNM1lZElprl
qGKVBTBKo2fqcNgi7+pazGcO5DNpEQyaA++RwcOGcVPw3FKUiFdi+TGB1mBYw7EBHQWu4EkSnSeJ
wjuAGCJQ8pp15jOgFXsE580koOXZ9kf0bpz4KtsIFXJ8TtcABm90qwBEhsjO4sToOJHzGbfZhH1Y
h3NjhMh+im5L8xOE/QzZK+YP1U1Rbnaytqa59gFB47eMQ6tu1IowMr3VX7xQ+NgVD/3dHfKsoJvS
nD8UgkqP2/wm2snERlAhyd2d2Kw2JZCpHzjMtV6Y15mIR0olTLILpUn1s9gBg5tIOIVBWRzsLhmK
s55XfXwSFZrUUDQJJpaARdpLLpmTASQJJ6j82/x/Q1cc0Lfl3R0lpxDwNF67K3I9w+QdNCxK5LtV
WsBMzRxq9LrcjFtljyAz0TsTLxASpHnf1KR9E8MCfau+NAkOXrbT7B+/F8bbUfGFV1fMRCNFFNkR
Kn8XjxQ+3DAKuVGmgS2v5TqLpdW3SsLiz+x14YhKIUVgVsBu0l/6f6Mjq3rt0psG6uDbIjq4oeGM
7xxxub2XLPaKliqwn+FX4bMGZtc+VqIkv+aqqkvM2UcgdIvU6MzPoVGLSjoe0cpBfU3HnVc1R3Yp
ehjDZWU/krWdEADqzB9CrOGHfje33nLEb5JD/dUF4wwJbossv6xkbs3Ip6tJos+P83yjOcZZqW1m
4/feJ/rKcRuIMXy3vPjfQ6mjNejuLymk7stD+bz0BJVBV5iC7m7UTNwnVZYw1HfCiBZI38ctwEHB
9Th3+7oPwYr1gqGs3cTn9LsQhTJKaTT47vf6Pfd+IdjQbv+fGEpEONP/yi9IrwxfnNcQ/1xPj/vk
GMhgh8DAGsPsPLsQwjAJhMloPKvtadC4UBkWX+xMgBNcKi+HgeIbSwp/U7oGhDgT20ijZyXSNJ/s
0P8sfXH82UvvoNghNbQMx9j8bEMuuWqqrqQGtIMYl8Mli4qNEJsjXTfSwosu26ve1hx4102AGpRN
FtU3aBwCc3zSc1V1YhYjnzaQ8L589/X28jJP8Cl8+5H3BymxZKoNmsyjv/vUAg95D7D97NfwXura
dGrfK/aYJgGdDBshFx0KLuKaJ1cQGoHWsbUivpZ8heoqhS9vt6VW5JPp5L6lce7sGuGEO61V4ZcW
dOEp3qWwG7eSrylFrJsOHZAZh2ysRQ1nvn4BfWnvIlFtITapAmSoC+01rnUTseT/vVhU8iR0sAnj
fz5RUh0ZeBzOtvV6NoO9ABCzQVdov6vWVd3WLHcSSQVXboFk7jvRzYuGPfZtqYy5En72Gzi9feB3
QjJ912y7ECkMwZjQqDAcHD/ThRt5/a7ABmwf6goKD0YgXxhXsBlzLP2zXfLdmILDm/GxvLS2umRb
b6NGNN5NOjYYS2nd1Df+lqCibGlBliWd/+35O+amuFUR9UVXcJXujBjKf5ipBNBI8u8e2v8DSryl
di8TJKQAtVB5yMNM16MkvZWJHs6cQQnNTPbL1bhOhKhY+92h8mtd7VlLcsXM7mpCNS/1x5qgbR3d
lPiefMGVdyoAcY3kwacw+vzSq868pWSZvkbdOVPP7/BjGkwbXXAetPUPsZiSO/bkbWbPE8MVT36U
fwuXSP0F6Dhs6lILxq7IquR8NRHhROPcjzZYbr8EZW2zEbBYPxUYzmefD+JGM8UhbRfb0PHzmB4W
pIRoj9Wkz0sfvnDoKUMIYJj8bDCo65Os+ZRK8csO87MSQP8/ijBFnb1zHP3CfKkEDcSqNy2Hw8s3
SHUHXxA19Xj6MsV5MKwai/VrwcDTl86asWNPXdUV+UhxdPEyf7RjzqOmWapciaw8pr8C6AGGRbwx
HtXwDbhwcxWgpYLmt78xAFxfEMHTzbQBAIGK6vZM9Jr4EqnzLkScRo02hYMe7TGMBe1xbZavBY+p
Gi94OB24tZgPOh7GoDMHoTRmq9fPsZAyHxrAGQ7O+KpPHRxfnyZFPG1VXAarMirz6WGpklOHgUAO
2Amg7lw9sOL7ZiBXUGSTi6cijOgwUrEx4RjVv+y2AXspc3gGPb2vr1aYbIbQhBqcjTQAfhGbm+8C
hyFlcGBspYzQDk4LNE+9YRCmlFIqU+74rUKZej9GMP1vWh3iVVnMYgn/TkXibj2JWazramcyY8Sf
Enxa9p7e716Nz7WEgzCBlIWLdVeJ2GWQmTBcuszth9piMgntTIJI1XfSGdgzIIQN7Kqvhz1RKOtT
jKVa9oEjkVXihxmYvrq0ZnqI6xBNbnvucABnTFS2mtW0R6nuhA3lrqv8V8Z7NkFQiue7iE6EgdW+
PbPeRV7jbZ1c9RscZ9JdKCtOnvpLsP/orCO0EWoqyGhdHIIj2oZYug1OkghULtIS3A5W4FZ9E2kf
WPo6Zmq3/7sIB+YzCDQ4YMolIrQajzmIFesQcz6hKoEn+czH+nJOU5hnEm3J3y0XuMhtQ0IaFPU+
WKT3JtTWB/R0CIA7tob59GeFWipQdpQp0zJ5vBVX0ieLjYiWe6YlDLnmwZwRZcqD2D7Lg/2wIzXq
Rk30dJ8GZovdS+1NRGX+9wSrUBZUoK9CBjiTdOV/79gb7bTTBynkFnVWIUABtmmR+YEYqdnMylLv
yumibTa/nESiQEKX1obw9e/1moSz0tnIoyjQpuAHa+Fjz3/2bpK9tVUcUgtoCA52xuAlAvkAhRUu
fhWXdtyBUP6olkPLOwklhFjCjY0SyF/R616RqCPu5PdBjAPBrBdPPDcdA1FP02YVjuEB6emqryFo
JRMJkDSUet4S4rKs7rmaeQsavbiy8ETO8M9yk0e3oLnOmmG+BMZnDa7Cn3RxzjMgDuLnYAyfoAxE
GCWz264uQQNIBaDoFb378QAhyY8syKsjvcQCXbcdCIgRQ97bIV6vKCHIGClgRzBjoknNc7WBPXoO
iytInwNMXNT1oLkCgLmnNWqdMz2Q8aVCLnvQlvTQB2PP9ipqeQ4sb53ezV+4wTIrU507GQNVeWDu
/TMRt+/RwZqKwL/RvZ44pCZoKJBCegZVNtiy0oXlK12SjUe47d9uqjQJ6gT7fOsApDEww+qsI3kT
u4Z5HbuVt/cXlglRqMH//zTwW1w+uYZEtkNuQZbfd9pesSXU0HLr5k2gIDAPJ9Pubo1cHYd4QboO
mZqb7vRVEHcdLHLz5UytYHzRZuxEj8xWb9pmzR4s6qGikznhNZu4MazokZYwp4ZEkrdUZzm9kJqx
v6IRMAsySH6hLJWfTPod/16wgUpaU6pFj/TqMhVixKKvONtqCx7NfIUyrP1BTypRcRH79HAFHeii
9rAXDQ5CyWPl+VjBY3S66nhsQx09TNDIsUKaGgMY0GdOlSgrIuTb3RQ4G7nEck25/JR/imKQQoGz
0Sjp3wb4ECgyuI/qrK4OFmyk1vRlXoR/qcOZ4NOksQuzbHzXLxt3hUXwke2Hppng29MwXLYFNbNR
YpQvyK9A01H6n47K1q7KD0+20GB721/vgynbOVdiU+ZXOsuFpYqbgAp0xHGXKHuC5D3jjkjPdLbw
BM58yb1bJtPjEGO2YQvQQhSEHp9R9mcbBxPnI9if76d02OfBJsI4LaFO+f4OA4AzltXSMKhX8uJa
XVVRAogajju01H/ucXUSyYn4/QmqLj4RTZWg+TvAfwtOhd3VWNPptRcW8u6HF14wjZy8FBFN//Sl
F1UE/YXZDiw0AxbBGy6MY86xsZSiQjp95B3tLu5c+W2LsVjgjQVSofhKfazzkSJHrj5Xg8bBcCyK
yO4DWf+6Rqn2fTzYlp9zyV+OjOfrbBEb3akBQ5O//+z0XZKig54YX1jGm61+opBZQl9mlO54YCOo
zGkbCUP6Esb8o87NSgsztLV70m3hPsRsXUKIfVv+FBnfo0LfsdVxPRX2ltULY4e5N/gmzhZoNo6x
X354shBZXSINhKOGeryzVintDLvp7QFUz5OT+NtS4NpTqTHUCkfaATTRURlcUcpl8NA5lwdE7QZI
zMLzdjshZBunXKF25p44PDlypgamvLm4gNdSceAIefyKDlJrQBc2AsujKbIoH5aDKvdu40Sm76Hs
0pP492zcXzdKqefZyJj0BcOfKnwxJl4qVwuYMf0wXfDoKjz7nSDYzVTDN+coYg1FowplF0YC3wjW
tEpJ83xEmteRlRxeOFTvBZOekkI+kIzsWZGUQ9063uEln2aWG7V+XxZoVkKl/guMzosH4/RabDmW
o7SCydYLpQRWyQKcUF5JsKPzrxVuTepJbLJPAfSVpRQGsd8DkbnL3u4g94gNoLIbsBMgLWSsrWFj
kbCjTDP8UK1n9eS624OgiYP+F78U4OG8V7PefCBIB3GiLXRUIPQYnnNKbvVia3bPTKF4CVurgCKY
zn+WT40fItMlZhBjDSXxiskBqjqGf/b1BQWEoUgdd7gDUUlDFfrGKXSoRcKhxORX88HTLMX+vrnv
/l0xxMbIUpSGA61jYme0kvQRrGXYuRpBpwpN6Thx5MsLNZgS5P1X+zwTmIZjCM28Lgr/p9vYn7ew
aOp1lLFGj5m4HMzQdz4Lq5RQ+lfrHU+seK7pbSm7BVmz1faH4nY8cwsbLIlo7LEXlIOX4QiuKzCN
SJGCoeB69y5jnZ6VDxkgDD+ft8W13eTgeP0eN9z0LjNOAAa2+xHl+BZZKv7O50DS2Lz1p9e1BCL2
zZ54URy8Rmv2+Xz+bSlZGhLi6wvx99SYq4qqjyY8+THKm5RQV1frrYTD97xA2lcOqCpCHA/Auq4y
fUZIoRNy9gGxTvjgIDnxQha+frMw2NU4APffTqMo7N2xghR59oneZW73eET5aFVHtbLJ04kRqoy+
sAsRbO114pM1BRxaLjPFoDkSEvTN2ADarM6SWvjKmiDbaINYzj6/znEy8gVMH8m/HDW/XA1yA9tM
iiuW2HeTbc/xEyCpivIUFSWaWXj4Br2j76eg5gMlQvjacVp3WADSgD6J4Q+lrornyZrU6q1s65bj
9yhU7jq+GnfO/BsgixFIz4p4h8+7vHk+UP9Ur036uwJLs9avLFryDMarVlMEpIvgkhqctcPy7r46
7ovSX9pIn1FUxvbnWOEnxNUgoX4uU+t2+a8UylpQ4+cFGO9S9k8S60XyBLvDe+1a5mgIqzGdmQ6o
hozggcyWVj7mgvoEs5sJGayCfjhuSLDJuz8K2vC5i+2PXx9JBGtNYiduJlH62XTdQlXUomejBYwl
ca5iIPauOZu4iT57NbjYd1BurM/uRw84+oSVlIKlfQGyVvnC+VlHiS/yZCPJaCLgbXs5KAqYfZ+m
uT1j+xYRvu92VWOx1M9OaAemNzH88/ZND/WzHfdesVS69ZNG0kYLHH4oXh1d5XapezGzSTRZkxht
y720b7bV+s3JY39tIGdfUr0qXEg1YD7c1DYBTMguYxwTw6JxsSaXBq+rVBW15dk+inV3jnbS454o
KBHVBc2MBgM1jZo44DxAP2ENee0hRHdm4qxkopvSA8BYlA7Q43xTJEDfobBmb0HUdQkPMhv5eFFq
EEGs20e1xbd7IFYv/uoxGPVqACxvLfV1RCz6LolLC5n3bmN24b26H6KkuImAIsn2ASvIHnhFeZkx
Ptbi8h4O6nXRxv+/znCjyKWS4zqhAWrzgZ1hw+YhenRhl4CZxsVQ1mxVUL38emaZHbdYGcD/DAzG
6QUoBBVB+P2YiP/BVt+VfR5U90PSvSuZkgUfOrNSlsAnoETtMgBXjp+OEei8r6kN2iTTrLfCyjOo
KC60c15yn5Rghp0y/apA3hweIvDnt7hHFAffsoyIehsntwPbBkM0ecLex6AS9j9cyaYAtxQR2HnO
Z1aAF8ZlLJAtGNxeivRAlnt5cuF1CLHf0rxwpxrS3e4fpy1YoXuBFsZtd6hWGYvTojZf8kU5FJRZ
DHw5rFnJe5t7JisW/lUKGl2awM8rOieetb8L1pRm4s7FU8IvIOPDnZBV04jpAMUM9iGr3kzrMFvJ
9dd25wvtSi/ezRAommy4HyT53gu4ooxmjTPMRcLCddfuVdXVW8/+XEUvFp3Gp93iPvug/eIvanSC
9ykL4pTPbckzx66CTpHDT6l0zPy1AKw2uH7Y9KJDxOX7vi7ET1Srv1ybydxzcczUd+prEiazfDJx
SJNbgGWcn/fZNH2MnGKJSgOmOewywuTb6xcpRz0Ue+oEsFpw60y1XUVeP6ovawKdgis146nDKbSM
vz5mLHEbBLmtB2T08Iag6WOWkbjwqgmqvPocP4IYI/6u4/FCpMnIY8vS0wYPK/JoI3h4mziHj0Ql
ryiy7oQYmAeCfqax5t+5ncOD2zBt/tWWLOiIj0w8t7FAPDBT0QT1OcFfCJ0QVUPvb28MdtdqpOyE
DEb6mz5Z8NhqcMkz6OD2bkCNkyaK6A3HdIYJI2pbF65Yu+faJPzKfPeqVOX0CMecjGOFl0yIDd71
w/klOuHO40IfgzoqzcWEH1WcJb7FOdV11HnI8YDkNqEHb0g/nnw0rMlgo0vvO+OJkuQ1P91a0TUd
POXxkvwP6ldmYxHbHQMQTxDGptglKKX+2Ev31wx6ST4DG74k84rSK46zMLz9TVBrulGP8IHUwk0L
CU6GKzoXTTlyTbCAucVBOBZoRtsVM3LfVun++crmZ0RZ+j9tJ+mLkQTl2Y810NtggY4pIw47JVs9
zu/nUxIEIKVU6A8EgPTW8OblEW8s+MflirZ9mCwWgF8sVcvXv64YSYfokbmCA8PeYSrmnEI80dba
rhgb2Gt6cNKgkJGwRpxJymolDj8WYQyFzzODQnCxVUoUx5KQIiqxqCLGTMD1Q0jGbkVXDggRCDmZ
wv422DHjtOFZ3itsnl+xBiLLJVsJ+4gHt5OoyS9Y8BguteBYGNNv13nLN9e993MBXlUQkcXJ9pF5
IIiI+B7/Ed6UoQVkk1O+nk17h6xtHSxAJ4w/uMA/k15pLKMdgo6I8g3ZyNwANhNchozdQrvEs5ve
AoS49p8kvJHFwjeT6Z/FH3qw56DApldSf6kNYZvGav1qve9+IkodL0bRn/8UjuPWur9yPVWgPX88
um3wuRyPVODIT9uL+wnZBvJclZ8sRhSrXp13HEZQFyH4QZhH6mKHnL57z7gsdcznjjzllUl7ce2X
kc31UgSR7hoNXeEPRcfJQ/8HVZsga/sUSdULuRPOq0GB21RXRrAC0fijcGGjIAOLYw0hDqKB3CdE
yPsIAKBv9Z8zTTAsOhbXB+JuthyZ8Jgltzbjm2DIzt8Oinu5tdUq+HN/VT1J8hADjLtVHw52Q4ha
wUareAdsGiJ6U/Tbi3T7K+im3iHejaY9Nn9QIE3XtUuDGfmAnMM2OSfJl21mhuDL1K458AL4mB/k
CauEP33RJh5HukMUfjzs8NE602T+20kw0zeLu/dKp4p5HG4VWLvCgMOQTYh501gN7e2C1F+5b7zt
d2QggsrPXhoLhHWDKyIe/I159FpUygBegf7KJQx5BimPsjRi0ltgvWF8lbhGAdXjSJ1Nyz1M5OPd
8/2Mrc76hDvJK2/nPHCP+bVDlQn9p5fL+EmsJWM6tuIAFi1TWSQbo5PcZ6mGk/tq7EgCMWorFAzZ
MDPKLExTa3SVCRGUXTRKWHb5jUm0hgZKn5deDe5VXVMDNJblRXrtgtoCIuVGfPuDdBCp+KBiOyed
ZWxbBMmWJnhS/VnueF+hcPMbkP8iq7udBc9/Z8mMn/ic5UGJ0msvKEwsrrzyGWh5aAQXLce8vjqe
my0itWnv0Os0oAg8ma4f2lvU55sgzKU3YPiOTeVTEj/d9wlCpNZ4xVnaMIu7iWxLSbt4VYtDpjaA
Md6fh05cwTZEw64ga+ruY+q/n3Ep1AwVH5OW5Xb1+nzkmSpMikKn7I90FKRSFrmqw/pne6poNfPO
B82BjBmheJfTE1W8BnAtGJ2mlBFL+09FdFmHDOb6fbNI0sJiObOz4G0/ifohOuGMH0vsnNHZhLjX
NgAtWR5XwUHZ1s4UvNr8+M3omCwMkLF+A7oQrTSr2qwQeAK8ytGQ+nsw7enOEHonFPZ4BtPwUmNs
UnTL8tU9ijbO5V6gAmPuD6lACCwMGInvWDknWvAGK1F4OtGtmDjaaj5B3S++7PLlvDDWge1VXCvF
R7pyS3kRMztoOZhOXkkgUEVuxQEmT8K7QErY5pwFIxeuqP0VzzMspnqdQUyJGjjzfGOxOxUWpfz/
mfvKXM0sa+DltsqyOA6Kk7c9oY/AOLHppgS3Gan7VM9KluiGnW49bjCkOl1w0hzGQQQMAw4DkVho
9OBEoqKECHRazwbZcJpT8+43y6UatHbE9h7hpFuBNiCD5Zv5Sf3SYgDsX02KRiwq/K0yAYjcb7Bh
rBZXupp3NoFgt6gQMYLS6RNm9WoJ0uRFQL+YO60qScLVXbzJ/MRziO/dyWhRJDSpzmJkg3NwXkYx
XQAYjYM6VclM/vyiUBif3oiTETUUoB5/hrh/9CWZg7ur51DZo0LH7pKi2s57AtfAMwjfaSCYS9pg
RXPlCY+hS6Zzy9kownY3VAnyYbhYEGj3wM6pswpbgHV1BdBAATZNPnCHk95bEYi1/ZTZJ2XjL39b
2kb/YgHKdZ9ZcerTucc7XbwPftadfWWWEqexZXRv/4tgA+3uEZTavFo1iRKvJFQCYt4hYX+LzubF
U5ycvqaUy/RNDMAeaZA4yPGMeo2ntWaFdi1QrwYX3wn2SuiKppbHQJWdhv2LkuDmJ9ZtEWBXvzFI
Xdn1uV8JLlQBKtsGRGfWzTxefikIbO3Xr4Kbebxf45Y7+BgBE0Io7OmwTDexSdS+b5tvfO+xBQVc
nsxZ7+ipOqlolJ50HeCQWx/6asKdUeh91Qd3kfOvXKUoJd5X+n7JHMTY++SGSVoI8XA9/yyg5g/o
tf/mQ6Ih2xiTGlRKUHWROhd8zP3YysHcmvspu9pMaftapKigRL7FPUTNRzpPFdWiCFzqOQ2cswe6
CxiOB3W8K2YmGaeKicyQB/kidhBzlITw4c1cEf+MEdGm3pzTfqXv8HWDMDJQy0lQg87fZ0U+LbaJ
Exv6y+D3Uc76eDf08U2MVyhCJxGSAC6X4Qz6wehLCN3MDH3ZwaWLoyY7ppOywKiG0SLPEDwGzzku
fELJYoVKTmuTRLIaXpEn77Q0VMdHzbKtQzMu1EFuUXINrqHl6jmQwhme4Ryrjrn09nou+sG3Lg03
ou3ZcCWKTODIUQUjfrl35TZUmOEgdZH7X1auo/+x6jkuVf1F81QiMwa4L5kIDZbhLGdN7g5bxokJ
LTnJVII0BZaEXr3G24wdL6Uda4+bh0yQKZLjR3x6mI/2xQV/Q8ohmrOJno+XH17EUa7wt0O7FNFK
wh/nf3rlgyRKsICcIY/ji5iyupPKMsl8rMMHME9f1sIahRc+D7Tp5326MTvb5UAUiQtLS/FonouK
fjcDOBRi8L27TbaV5OLGNFZVGPYRUBfVl5eug0u4u3luGqKKA9wW+s1x2YRDpxfoaNwALBL1Z7Ho
7CdDzgoxGuxMTplNAFQGQSTubqJMZybv94NQqdV31NG2kExwRfBODt6CfVzU6MZ3PdP6WQnuNcL/
5QMdiaue0/WM9HsZWqJzaS/IxOq6Ze/2v9eOoKfMLXZbnWvYyyhHTJf2LocZx+1L2T71EyCg+SR2
UY7r0U0BuTCMBe5ZZQOtYaaNbUfLt11bQ/nIJKR8Kxio+iUiRw/q/VoCQS8PMck7yaYCEGD9b2bi
WX/TvKJg/0b+3ij4xyQBTM4KxfECHo2QbJA5aArrzQpS7WEAqyhb5yDxk6wtdYgc8PoQrStT6SpA
7X8TvoBPlKLF7y8OikB+1G0K1Scs3meCpn7lZjVwlMTZwt2lRuetPpg3Bxp/J7ow8ojfkldfMt4C
m5vPakwSusfEyXX/9dSTkRB1r3jGfUQwwxDO16WgKiNCCDdc6ELAPHR3ppkYydeBjX8unO1vCd9W
uF1HGuaIO5BIXCmBtPx2yPKT1QX/3CL5QRo9dfag6RzPJS1nH+szncJX0vq0YUTzFDq4wF9urEy7
U1FsIWFEMBR800Xx7i6L0KswddceMeQAjmKymwPNjumXbPn9Jt+RV1sQnZ6XBuu9stiH6dxSO7E9
d3yjJaSxT9w0JNnD54xYLNFZWj3x9AObWQwFciPLMFXU4G4kopNviGb23ix5X8KjZIYfMLHY5wf7
E/SpilI9SUpgAmJeXH+D9SHQ1ibnR5K0Ze5cR7wrIESirCi207zSBxHQUWcarIDpazu2sjp78VlC
z5ERQokZDLIC4yDVvLcm2lc8ilyjCTpNFAMm6HX7ZNUZiMC2/XBxVl1isv/2JvXDMm3LHY5gbp7I
xgjURTOEFv7H3laljt5E/ZIZKk46qgi++j5TYDhsuwEHGE2gqAg7k6oxgw9MbCsIFnkhqHazhPJQ
dC/rFks3GRVD3lNyz7XMIWPF2CWK0UJxaQ85dpYy9xhVY7zGgrjknKMvHK2UwP45SmyQpWv+UYVk
owdRCjHsg2PD+tqF8aWYJmY/s2SAnYemMel8jl1z1tVDyWidiWBNj+NwTqd0NZKxSbPp3JvsrGQT
C/yyMDArGfM/YDOWHRLDE224N2EzAyBU02M1pWgSsLUgoDTvNgtpBVUvnFk/iPcjt5O9/RnRyv0E
MYVOUYkD5M9+XaUW2E5KaXUhBJMn6aunCRJsx6G3WcU6Ypc/xlYSfYLU7ZgxXnWY2Ut8SfvC92BZ
fiE9NfDtTZL/uWE0e+3JW02IiXqyFl1CPM0gRjBWnakZt+DAo/dPeAqtubI4Ec3zFI2Rghjzoa7v
UUOMy37eE5PUxf0viYrtVuwO27xaDGuKZlXfjPIIDYcU68D+ThxGMcC6TISI/FnkWafWrcEC8DKA
74mqeYhoq2y2W8ZQfYKKGb8D8QK6cFJ7CVtCNS6ETW+1yi8GrbjswfXckN4ZtwUOyQvfUzr72ISV
SDiimuvuaUOvaye1kGreptiwOxraXp8MXQw5Osh19M8QQxnNGpXX7w92TIJnMsvpqQ2LuLhv7ZHj
X/0rBtexvMzifg7loBqIU/U6PRz4DFrZW/izCSK19A+sDvHEPtz98lmhmDesHW2JuesZwmeFIYHb
NHUEGIaxz6wkwOHjZ4kcpDM/xXAqrJZIm0Rjq7j5nEtT3BpJJ+JDjcfmABMM2yPjOudbeknR4S0b
ZzAfenIrPq0VDnPturLH1Fx6lUScyWzJi8n5WjjNolK/bknXxejYqhvYcW1HyrHFCje4ICYJr8dg
hN3N+t+svE8jbKK71Bo8kS3dZwrj2Ie+s6QOKyhIZzhrGZZM6RMPqoy1PLaq9GWYKRDQph+fqCC3
GRmI315+P0CXrr28qq6MlKO48utsStYrSzcKOYn+pkBGiShSNMiJM/vA0Els2eCYOTGk6lK0aE6K
UXTgku9KVoRMrabASs197crt/NwSrNc9UqKO5RRT7ubhcAxbYi/t5safswBdmBDJkn6pI8iBS0FW
KnfL51yL6TIkGXb6ONkRWPtBLB6sWVF3DT6mxxvoRVm9JIdf4VFUQfU+lrrdq/Lz1rLM7CIZR90U
F8q18FBIyH5wbMuEvCvDoapuC3ZB/U4n/WXXejHFzhkPb2lOWAMFNoQ2UAjnJuqVk/oFrbML5rvx
4fOV6kYcoVdBUbO8cQastOnSXdzMEWKagpLIpNGRrb79pEVKYk7O2bS9WWrLZS0w/7nbxrCBbfLj
y9d+tDATz42MzsYkWC3W5Pk4glO5Y/EEWvK7AdRa8A5yye6lqk8eftOg9P9vGPWW2ngXaqHfJRzz
VOhqY/PNopkqsGNv8UvvRVeelLPrQVGdc7Fobyu8dQH4LsS0Wh8BmsaoqDV7V9l8bspdaMYIJLzX
xvNvAIeSGP2mu19EgpGa+vrhNx0vdiy3ODCyj4LiCfUYygGGX0ja+3Vr6Ns1rex1/EE+7ablp5UQ
0zbZw+UmPSvYgKoE+4uIULsbepLdFDo66MgwOG21ZfB0nTAm4Ojz4lHRLutWDGiHWXL+R4ufNjud
ZjN9lzcoLrc9sIdfOdTAVru8Yejc4dnqUsYf/0yE8Uvg3QM9GMHuuWylvmYQwBJI0kcuFTG19JfS
YuCu6irdxieuQUOGqHhr8lkMKoCDlqtS4XrKbSBvjuMB7CRxvATBo635FK3SE7aHNI3g29nd2OO8
Y3ERtzl+jEbiANYLe/7GE4nGyY3o4tQvQ3XCN4cy4IcqNxWzbbiW8csqFDz+kRtKX3EYjOT/eoC8
oTqurxBhq2VC7v9vSbDWykY9NlaB8hHVfDE8GV9dUglh1E/68EqBBc1/7VM00cml6ptjzj9EgzDe
DWQj+AVATeaHdDC0sm9x1O5ab6CqpNm0NU7nWDwQX9Mb7bP7Q3hmZ0/Nvl/ZnqGDGe/3J4s6XQP4
G+8ukddKyZUAlSQlzPv0uQhZU2eiPATHcdgNjjbmPQYxICRCzV8MdL1ouo8e2VOHzeu8WKq4/kYj
AJEe1QG/GJpYlsqV8F/wWf4xTcTnOSbAtRPzNOPm1i+S/fRNPjhEkGdCEMG+uV4jtFm9wUtNP+Fe
BOeK2jdfIre3+f7bVevtQ3+qktAR5nnEdBsu4Q3Ikm23Xx4vvkarw4cg0LC9xl9X4EUEWVcbHmS/
Cqa+88zNv+hkq6T3su1GTrCB33Wjrjn3thxy/Ipsd7ks/YVDQ2IJXbYa9Ui5xmBgEYJWZ5kK3zCf
h1lUl+roJiwyRflZ6cJA2nGBDqq2/yVwEW6MCHSRgIzHCCA5ZTgAzFmrFO83TkoG1P9Jwlhgrp5c
yqNbYXLrQ8Q/e1gxQEGEK1Y72RAXi27+7bQs1710+Dk+M9keeHRFUK43Rv7H+IuGpv+VUmdtOlEp
T/5fC0qPPEBy+74L8DCKoZTocwJcT4uFl6Ew7jGsIFdeYagBL3Ea60zPdVTjVRy5Hfm4wVsbYYuJ
YCEuhuqi+90s+slFwNGV4ZhXt9XmKAYKjhUvOD8Ho4wMMWhAej3eQQRSk38uIv04DRFatNdik1cD
nW1Ft7nOgyer3u35tK1R0AmYTdcD6pXmo9MshC2UiiA+y5LwY3mUie8uSssk3EXUeQ8bRwT87SPa
NVgCuhuwM14UB4w0MwW9br0qsRa5XbZrlU8chHaOD2eaa2ryJ9Gfx0F8f6N68x/QwE0Y5TkttscP
8isfWPj3iuR3MX74cb5TyLZEbZ1IhYVRIX9SB+FBbMWu6ErgmSHVl5OigU/sQHZWQlAcetjvx+m6
zEgR+Yy+BVnHFl+ugSwn4oGqw5sxyqGo6nwUzcjaVQxKJXUOMPm7L98fAVgdBylFfLgtQtO1/dRo
FsSh+eXhNJuWTrL/DaM0m1uTtAbonaNdTBKbzwtskI2W8CRXryGKbW9dk5gzSqryFTvu+m0eWHnH
32KDUl+8bD2/q30lNqvvUA2dTsKr4bc5WBTGcy/bmWdlMviMvtyAcNTjzt0STYqgZpxNHsZ8fxyn
5+Q7TSTL3exebyrChkpFDfVILLy7xFsOpOBbPMNqRpxk7ZKiS0vM8uzweQJORWTfIJutjXlX37pK
YRpPUrZeqYPmImtZ/5ugKSGTYi7yaT7mrUWM/GXuRmSJ7NYYFosO4WzGNUW9JYdaKgLnhKzuK0p0
Nb8tCm2xjiIwZsHc7+8EQUsBveQs8mCW2f+uzayhvfu03EBzQMrGinb5VNDFNWZJ1d2yE6ylJaAL
ksvR5bdCAFIY4vPnrD3StRUNcsrN84W8m3m8fCcXXWZ1cifK1lQx1XE1llKGSqCKpLrC+6h3Dj8F
w1kvN/6VODkV2QM0ziIKcZ0FX9q6NiLZCCChzyiFG7aDc8y0DyDEllWnrJ3RVXSKgIzPNeDGnHUd
hRmbPyUJoFIKAvfNESxfqXpDJ0+YhEA06RGyB/n5pEeHIo4MqIH+5Bh4ouwlVAFjsaUkVbsDSkc+
ZGU6E+O2+bcO2r/XMAvAshAU/UT2ZJtUJp/rUSZPb/K9APp00tO3HpkJH3sHHC/tfyZ6F2lj3hAW
IoaSBRgaS/f1ESJ9B2EMez/9bQ4Q8UgWQouSDkmmHw07tFt32t7ydy6l2l9F/03sIJOouPjJkKhf
B7+HrkE9BlPp9rvg9yhP/r8e+Lx6ywOi7mYs/oR0PIgHStHbpvKQQnavrJrlDpWAEtT5XLYzjJL3
6IG0Eo8k5v19mXFrqtiqGcAjuvFc7yrH7joVFhGO2Pe/sRTDYZQfD6xm2uCnnsekXrR/ISQw+/UI
FVbVhVkj+Zq+ySBQ75WOCp/P2l6F2FsObVMH9qC3jtOiJ4U/OAJwhr/BRl180N7g5Ywpf2e3PY+9
30D0y35HujWzNHkYAWcc6AtlIYLfrIMjumeKwEFm40wQKMdgrWPGS9183ToJbwxMgpOSR5kh4CrM
pTLQMj8EQdNbBzcgqChjn3XhOamIjhjB8XlnRU5MrYgLtFvcMMv8VyRO83lIeCDmeqBM7pbsa9Nc
wVSfWUZkjVBRpSpzk4C9eCAsTA5BeyLNvzM3cs7IV+O9U5T8RxeeWfN8E+7y/RIjcw3R//M12lfy
kXo5Bn0bXKg08/VigsWWRiswoPQmykUMyDRBJJviSDxkVSI7RCfSL0EpA43xF8FMZwJLf46rnrNu
Rigbf3fdpEf0Z+G9Or78+VuLt+FJ51kEmQz6ogTUti/JdDQHDK31cNE2ccm+jIuRnHjVIirkuY1i
VGwr7gdqh7ofuFcdHNSEWhx/rlmYd+JydrqhYch4e2QYwxi7jOfIn2phN+ZG89iGIn+f/688diL9
ZMvgTBsPoNczhFC9/TmbZorglymvCFe+p1zhnq+CvQjo3VcbnT/0loEETqOnqaGOX5ui83/+uiRR
db8da981AwLKzxr93obyYnTkdcWQ3RZrITwlwYjuxTJQHn/W8ATQnNvi3fSNbOWffAAjRmrx1Nce
/8roNWGWi9+MbtnXJ1v0mAn8oeHGOXRLbR1arJRMzrKg0ksscWNt5dj4yF/Uj5vm59hgkt6gv/vS
v8aW9uVrQqTi9/CoTCIMsz/tU9EWk4PVD2+0rt+71kLApjxvuEzkrjdAJohh5T9/xUf8KONa9yFn
r+0/oR23PIJEPMYks7JABGziYuuR/PJpRqPZfJxvz8yQzYWJsGKUdAmdO0Uihs66jh9YVckjrl1C
+a15zPzSGn6fm+UR9ENanacj1CdL96hPPi5jiZsYay+eMtbLkwD3yL86VMhXhG7ZaBSSEoVSN2vl
mpS46nXcZhxEAhJQicA14oxpbr0+F/IT4S8tFWTKQOJPFuM2FbFLI45UCBzzKjqhIbTe8dIouu/O
FUkxcLlT0R/M1pnPbLmONbMD7EHc+Czym/cxLTpbnWJhJ+YfpmN1KUUmQ1+iYEC6WaORGq3Rn2bP
zaYxs3C/L2ZkSo6kYorn3YKt4v+pZM+3fnyBlgcvtbNxwpM1LDjXGVrVQbu3u86l7j8rwt/yW8Fo
KstxmYpQ1d++ouaCl0hE1tEoWgYInTrKIXYcGjoLfpMMNHBSGS6w1eufd1traGmOuOuEbUVCZzkE
HfYwB1zJx7Bon4WPuN68fSU1KdMSgVKjDwoZDl2c/3EPr3YAEYbZep8qqOX78hBLAwDQFcttwrr5
TIdif8l0RUy5odJAW9gitDn0DHI9lWeF6bwoz5qyFAUCBu1qVPb05X0NZtlhMjSgPeUl04byoc4W
xPt+dug1cVTu/5+orKMfpGRgXqGuqsq3BWeyWnVpl2zcntq+p3qkP9KR3cnafu7dKlqs01TlGqCr
wkVe35/TnFjmbI9kqFIjsodGwxW2uvxuKU4i/WbHfcvSE3/iFT+ytb/gRhp6CPDVlE1cWa7xFvk2
XnTIEv/N7k/rF5G3EnjXzVAIX0rydtj0lxJ3DvLm8bLHBlyWTJl0WUF7dW0howes9XjMWik1T4I5
h0lV+nrlMfqyXLg2FB64diqjTB70m41Hy8mReyXlzZRqJFRXSqSMqajb3BNeg5WmajWa3cPnF9aU
me8CuQUcjJoW1ACxfJs/2ud+uixgEsTQEzx+FfJty/VWgfPFjlR/UXvPAKmEFOtRwkZ59YlA4JXr
U/aAx5oaFAdR7cWitFx98YyL+w6lt2LNnaTbC1wJiGmN7nVZ5hEqrGMr76mnany8XViRCIF+7cFV
4b1OQaoiafSWfyQGr1Kr+piY4wJsfTbHNNwmpX+ycO0yx/PJVWHTBXpPqojfe8M2XCLp+NO/FGWm
9Lgs0FHW7M6Z8lvBeEP4AT/bTo3cR6IU+hGaQwDaIaBZcNijjbHRlU6lkLzZBCZPF4NZzGCZXmmP
BugkVveZAgBhOZygl8hMRccWlorj9joB8afJ9a1BVdH9aUPsahgjwlO9Tch80VB/lfG3aky/Ri4i
BYwAE+zJuyjv5NW21hOuegPINEK8UhElb0L94usw3TjiZ38JpXZCrq8As2zJm2Bz4wwXLIQnZPza
Ox3WvJSD+BeeXvdCjf+iOd5wtrFhiJEpS5PTIFvIgHKU8a9M980yCCGFuikjUZYfmKUU+37F/zXF
/UtZ2tdOEdJ7Bw+z8I9MoLgWB6R3qUT42l/fhEBhy2+hu/DuCmzeISKledN6e9Pm8cgozXgpDfMf
8Q2AeB+x/8/xihfEZISqRpdY2Vd95j5cjKawXcRHdzG0cxabu2qq0Cph3tRSR3rSyOXSTkPnhSg/
fJ/RPZXYnYjqcX8jpjhuf81piz3SKihRsdGI4pm9eoG7HirT8eLbsPA3Kf9wmGcRkMd32ng3LIo+
2JFX2CKSYl4UBtxSzm/lbhWZMoAi9cQzFHIME667sobTnFOkAwnby1L2UE2Np4ksnvcHz6pBkCUj
Ve+2EubbeT8sh9oQU4geFOaY2V5BbvQ9txMMPUFRyn5ylfp/0+ThfD0RLF8vJOfkCb8mowETv4cG
C7SwEa+B3RtooXfOUAaR+/MFuXSvlH8gWHGMsCeIZNK1k3DFYTlOrIXE+y5hwtB6IU1ddLCFY99n
Xz6//c49W7UsEDOPDfjb4xeFBgg6zX0z8gRXcPDPeZPehbc372jK99H3VaGahOhsVB8oLapd8eHf
syGe1oC3/I2wrvtMk+L1LTbRT3bk7UQpsDfAEaHc8CE4knVl0eLvu+gsI/CTKYBYTgb/uCP62xMz
bL51Ov8NM0lYrqN6vQPrefnu5e8y3pztQiokY+/qeAzR91+wQOiRlxfaXTM2Qcfp8GRs+tSqvRS6
77uzb4D6fAKl+sLyN/Y9pNTyOgFrAM5re6RJtx0stpwoKduLDUm+QkTuMXQpGKxqfiQtF8anB2gr
WgaooJ7iSSstcMytCjBb3blBe+89vzOVIKBXaCfUrSa9P1ygoChb7GAoUmbsA1bw1mgb18qLlmEh
VdPCdc4n/g+T5Q1f0/ZQGvjyo4vL/CP3GJMwtVGSBW2N73kyMpHfOkiqTl1cg7iyrbhrmzqCO9w7
TYwlfp11mMI+9MB20HYuY+AL/Yiu/gVeXR1sRwGkIRw8gDlyNR8Hq5XTB7T7oHirjkiyVlCheYSq
qahXG7POUdc4PsZt8V0cWqs9jtokQ8GjSnrLL1EWVCr4KhNqYBZS64cUK0TaHyiuWNJtXTZxHJL/
YFKkBdxjs9pxSVSwptJIh8cl1EIB4PFRWEiQpq3JbZCWT+6ChGICY6cIAL0eh8ZO23jRPrI2vRC9
cSmAy3nkGSIzxxeJqqjIhAqRbWhe8XOSGuxlPnt5+x3CBQnlk9IcBx+AaEqMpkza5k8U+EaXRe1p
47XV7DyvXH6p3Abv7pEIrF7mr90PQHeRb+ZTheInhiZx/P5IjR8kAiodlG8cGHuY6i4J+LtP3dQj
5zCWn2cOmByjaHjzD0Y83sGq9zso75P6nikYPErLfvNIe8Jfradi6lQkPsmaEflAAsvcAfv++dvA
70sVJnZtwIGIsvi8ZQ8iSleOvmAWBj/Mk/+2TwkzzOrTEwFtdOBFpVmPJ3dsbbBytBIlHRMkfNZ8
VbNW4ISvt+LM58G+2aVCz2Lu8ubgOQg/zXcnOFN8vl513tz1GKFlUpTo2OAH0m29gfUuAMgaJH9Q
RXjPhj1P8QXEDp1fU8pav84isB6gZ4vXRTDw49myAF3iESWUS1JLnhdUJDNERl1d0G93pVWwO5A7
ThWCd/5igaWEHW+a9jJIrQy2/Dxac/qOoCnQfTqz0Ga/iOKYGWybIGhFc9j2O0WvBCOpmSAdaXLt
huJaL7BdsDiFR/7S3jQuzLj3wQTvAodU1gkhBkoKi80zzxN2WddBVz4ByfFeNVYSyUOa8e+kUFBk
emM7GwO8IO3XfkaIX0GHciFAlbsBNiuhdoeUAzT4//10rOdPdBV4OBplJ00d5gYk1wMCspyiJYg7
D44/dbe4YWjez9BuuwpgsssGiYdOShI2NH9FoeqF+mOqIbXY3F3vpLGra4yfVUGTwCWaGC07u7U8
4BAtc8LRZUL/B632vKZmkZhWKEE/EhOloKVhh5cbHQ5TBfmR8IeaSRyVryZEN3A0Bp5NiWOvdPw6
QKxEFb7bJ8AorJ/Fhr73N83mwsKj0z255+hpvY8I7FWJWq0S9+ewvYQuvJBElIB70HzsaLL9HQGh
nFDllV3dtzjmZkELuStawuoUPxdYb/QbvRkACZjvd0URcUDa5IBdgh58xIem8SCIRViIhRTVyina
LfLlDaQ8RykL9Qp6l3Vjxl0YJgpvXXI8BHngt9uqzlOOercFtgXhrLtnjm3/NjgF1KkvrBQR5Ekh
7mx+hi2cayMmjaDT9hYkKaP+YzXWV671LehciL6Tb7jmQQ/AN838Hc6KpyeERktxJlCOmifmT6cB
lfzGjxmG2fU5sKsv9ze3ROgvh+SSRTwkFfvE8GvhvXQN302v2JA6fMabjzsdRQto6ughWLSn5u/Q
Kqa0NJIr7kFr1HxHDUM59gfzKZnd0yt+RaYbj1Un3lE5RCuvYMcsYaGrK6ZypQ4auk8PaVE+8cxw
P1mwc/EbSdoYxEMK2QrlnXBun3anS1MqBxRnknV/c+1WMYCkBNKFVf7bmpyo+bktDVW5BIKAOrcZ
HRTxFzC5HCHu50UuYYY9jfgBsXe+aLD3CgJgOhxDtx7kb5JaZy330BbgimTAoHj5oc0lmroLhQH7
4ERlRPO3T8ewRhejHao84RzFUQTce9V6G59w4rz8vl3ehHCmNtBW93AzpzEVjBozAl8Mapq/1d5S
Z68acO4vSmZNxKjrhPMEmtDkVsK5Zwh7XYZJW/OkDV0kkehHFoCOZgR1TG2wRj3ffHizNMfcCq/A
eyVLqBQzz3bIP0A59kJ3ossDLKvJ85Dj1HHGG7nmUSL9mLl19wlKzqr3DxIWxQXFlsqIh6e5benq
L9WyLQwcL+p8/U4SBq1N2siXKjV6GMnipVnFVDw6JEJeNg6cKGx5RaXUrSfTBWYcvIoHWlHrhy8u
O93q8vcl4YPawHs9/b7XXLwzxLZyEx6+rkJtfGey+x+gRs44nJ+edJMD+0pX6A0JeTxRTllrrl0p
Co4u6u1jsyl562+z1ubg9iTjAKhgsVSkABRQZMPC9DEnypWiE0WHcrMsMJ8W4KQ9NOUOhYpXC8rG
dZVpLeEj35f1OimG508tygzgXII4AX9ZFKuvaTysDgWwyvsH4YIr09vSbGewJTuwUW8rrDQtZPxn
oSQ/94ZqGDGY0lf1BD1EITC6e/0+tRHF2YlROTQE5ZOqO7gVMzIifkI0/5U4Eisv3btrsGOl8PIq
+vEQ/zCeVbZyxmccERCIDNMmthLlU76slbYYrn/AUei2b0UaZKqhne4eIX99FuGDE5aDbc6XES3o
/IwHbjfVQKwXfnpc0uNgmxcIeBTB8rbTFaO86HC0taOYWKVNPLu/wa0rOW86Zbi32JO5R0BnfunW
iVSJpk4+uhhmTL1N6QNOc22Da6JYr5wsSjtDhcmM/Db5Xxhm3Pn/jXtSg8KSmrYIBQY28j4Zj+jO
iJVTIXG2SVGm93vcEcjspOQ+d/btZVkCcoV1wRJWdbWfoZtZY9edUUh4TbadH5qcezcsawvF2Eqb
cTAg6qse3xkkWMgxZC9VoxZsyGi1/tRH+K35WM4W2aN1RmK8HDrj68eqGloMiIjroWDzKwrXhHOy
fs9aOYpFQfJwbpPT+cbffLLFMZoz7th4xgGE6xHt2kAazBJIPcarq44jRlfku0/WnTNfvQGyZ76u
CJbIAzj3nAyd3c+PaUmZqyyDXs4Go5H1WB53PwiBP7cTlx43QsjG09y6w69Tt35sizbH3+J+urWN
5LWh0dIKTOAXiTLH1zNIhVqtM4y/6SUOeypbeeK2jHTuFffTTJdR5h/QbmVyP3GRpV26DKho/3uS
lU02wT9/VtAyjG28hxj73MDwTmpIL7lKo5l6OKgGZhFhYAo0lWc/+dSEMn0zmdXNZYwrRJfxl5xJ
j73m2l1SnYUdXx0tLkqvZzb53eTBPMW/ON0tO0UJgesqS91isvC2sPIQX5xeh1CVejf5OBaJoDdA
mXQlBCh0FlgYlfsXmyRpAv6X5RWODy2RB5COyGrcHAr8bOzf42zCv8P42vdWWHWbqcgy8L4WqsSU
Ap4zx8HvBJ6MfF5r0KpP7TRTkjvk7Rpm8zr5d9eXXtqFRy2mMy5T4ORgy0YdAzm56scmoFu/y8nJ
4hTj6G1gU+LNbtS3ooGeLvlzNFHWN3RnVCMJFAbNjlo032fYxehZ8kHhODJO21Bo0LQTAApo3D3C
lIe+RW6f7bJGds5WzrMSYkzvy7qDXRpX/9Uf/o/hOU07cOqPypKf72iiOIuXGQZOnzTHX6X6TGrG
cRyNZpDO7xGL6pKMmZTrhCmZrWo8oNz7arAu+ncpGqqZ3+tfxoq+DCQvJaxKAmUDoAKB/BC9p12/
YQvmeQZUw81V+nboiMds/U6ZtiYpSTiUOF75raF5d3fMuMWtSmsyzgybU5rjABIfa66ZkbN5RHuk
1CizYs8fJR9cHs738avOyrxviFA0vDiGLBfBsVY1qYDhkUE2TXO1csmJGVUMUvRYNrUaxfl2rw7c
ljAzeOh+jYsx7gC2WAXcqOnufGipvriyI1tAaSjnECvbOogYS/olUHTjlzGM/E6zJN79Q41geXAS
ZyT4In5P/sYNoXmMGtFSqZ/u1Km7oRI2oa0CIO9AAsz9B2Ul2hLDoGMJT02NZIdveaALrGrW4sY8
miEhl/UZbfa5KxTtA66pLUkZxqlyrIHFy5l+sRSEg5k2WTRwXDEgtWkzSAR0HsAqt3gMOHbiGHqU
2iHIEBanwOhUmDlZaw2IPHRVGWQf8GjTdFPeBl1Mmcgi8Q7m+szoXrlAh0itHc9OjFmvh3MLz2nt
E5fnd4/h19Z3YPhmjFodQQIfre+1RM3l5nNhHJ2zfCjx9HV9jUxTuOsPaFTGSHOQHPKzfqLWQ6dC
H6zmrtwW8VSeYRxef8ym0ILgfD+1A15P35U1dmX/NV6wgJ22DaeK8bjP6Z/EfNIPMK9iVP2gGiEx
b6zrRZFd7OofR1Ml7rjONhMkFj00GNXDQRLlwbKBqA1M0rtTbUdUHvzZscPwt7hQHb5p7CRNa1l1
7oEYURUK6nvYeln5bBFDViKRfwhzNWKer4Ac8rc7zLmrA2iSqjFU7RcGYbZ0TPJs0qmWtlDKtnC/
vlW2zWdXgNS/ryDolY4Wu8ceZTU7n5yniQ/yAgBnmlStGq++1fi1eppMh8sHdLqp0ct1MKTiVbOD
GgnkJqcoUP24sL7tgFEOlQKxnFEpL9wkUtuE88bT+rxensDb9BOy+SWOA0OQn2VlO6s3hLdEtFMH
ZDfKFdUJH15X6Yz0OuVla+K+6EFd/rBxrml6mChMfwb+qhsrMzcxFYoXPzRXGt4npeD1mWidEByz
62dT5AzcadNHWUpIQGT26DxmTVj8IR6SI3VATYsddGL1YjAclPgPy8f/LgloZJ18LvkMlUW3KJhd
yamrEAUi5N3Lgf9OStRQbK0yeGiPkj/aPvE/uhyZGIX6aavovSCJdZ7JPrrCWohtyfgbmxFcASqe
WLndos73INwBMRauO7dxESx+pttWy+6s1CW1UsY0aLdncFgEvCOTxVdZpeiuo070/uACd++WjRdr
utPKlQ4RduO7fItwdH10EA8hI2SnkAgohol4hb9aGi/08OwwJQ38aBQp08GWLBvUSxmIhUV+9mYt
+V5cTTrcWIkzHfWghUQ9Z44T0Ri4ogLOh52e/u1cX4btWviYzwbeRoxqDAuqXxuhiKtrMFWp9+vC
QB9YQQlwMsXg1VU8SIk+0p8j8QzEsmhEUyhk4Ta4n1DuG3N7NQgQCKdKbdIHL/zJchbNVc0PEUP1
N1FrYeQFCO2v8Gix5m54/nDNVvz5Api4jepCCbHf84HxT+LFvCgL+ogq/4nvNVVDXNmrnjJ9Q+Hz
Gsk7w8GwcA9zA3abLBq2BUq3RuVD7PKJ3fs9Z8h3oLinl/1sl25+J6mYpNHLzRdytM2RvfmVFcfS
v90THPURuvUeUME/9Jn7F0tTOPueBf5xQR7Q2IVoDU0/rQoPBfU6y+CGGFxugVM8sxFT3b5lKBje
jZ1QpUBv5G0Ti8r5CaDSNEW2rlyESjpwssdDmS8447/tiPIzvDpb9WLsn4vKtSucLL6Jzk9wq+K2
w994RLWGrSsr2bSxUFiK22kf2kYhkiFRzd6CXpxkM0QzgsrY9Qa5cfiTZFdPizyBkZYq+RStQKf1
5A8cI7fcIAS6E+mrrsn7FlLHPXq1bI18qS0EJidp3v2Wc3joTvGQRBI0BMKYSmUqKucb00beKfLO
KhvJ/Ek63n1LW6uchKPGt8DBvQ4wj+pddyocupJQH9rHb5+eDHe94NahNMiwsn9/eRqeqPHafLwI
VoN+eLvs2lJtAHO1FFuVOSY4dQ4qfE2CUqzNsfJCEaOJnOuhdG7hGiOschNNVjDdu0ORCvraWq23
xbLEdvtWoyxbQAXJU6BUcbG+BCzHVIJwY6P1qVmJ/OKuR8yUpi6Q0GD1uRtvfix/GZNTdKYwW33h
0XHtH5eL3vivkzsDuzmWzOv6T+fc9KBDEDouaVU74/b0zvKi7vux++xRm9Xix6BAPZFGkAqoSP6z
SGm3FMaRWtwmDEouD9lYDFbbCAI3E84lG84eRtJarQ3VLX5kytbaHHG3XJaorSJ/Aztq9ty3kS6q
yG1aP4sBvdnsCiow0nPdUd4+aQzN4VYaan5iTQbTvAfhgegRqNnANRQSmoq/QX3FpAJpjrh0bSAr
qh1SuR33WBeFvueyYsRLF2NGHRC4pw6op4ezgm4xK/z/Dy5RcQg/sd3tMigJvIqmBwBcsYn6bpLB
0K0CAgCEAmg8bHKnHExs9ibJlt5yCSCf9DxAsvNPigvDT6noaE1DQdl8goMrsZWD6ifln0oHDKtn
Lq/qv2loQhOdX8QeYHfyu0vytqaRIAGNiDn1yDZsymMsMlRg+X7OmXew+rnOYscuiZ47HFXCDgd/
zqmyzkKrQ9VUugmh9iYt/2rDhBGxjIviXj0Gvq7sFMFSdnNow7sF5jJ5bhhgm+MeG9pyFDC7AfwM
rMCwyq2L5uRi0CQ4Bf+5ytGy3XNv1fIvIxDiFS7s1wBYrCfOX9MA/OIdjYHXB2hqezOuAWCAYf5I
MeHMRqbS4f3CO7g2uJUjJo6dQ7stlW73wU4uxn4jFVFL3A4yRMY0gmR3GhYN18uwhpocW23gE0CZ
yBVsgHbDO1v/ZE2KPTcJJIFyYzQa5UvcBE3ZwLlCkcIXcfHjwXsDbgiDLF1qmV0Gdtq+DIjRUa0n
QWIthuGQoTITc8V2urW7JZdb4DkP83V+AamVab7xxEBIafBDhhdl1on0JIs9ETw+Tgo7KfESXpBO
2waz7yZXIQTUNEsLBRfhxvjd1Lzp6L8JL19V3qXBPju+aIjO+j892SXh7Mgg4UQZfB4ARdHnUeuK
nA0n+c+wX9FCAG2fP1KYB1adl1erUoamh4CFDHVF29tWFmFJGx2O7EhqfgDmK6YcFJzHP2MOu6eM
s/Jpc+Cjdu/jDLi4CdooUMb7VDTHFIf1tkxDqEBbJYu/n5kpr6GrZrzA5h50v+PUajSY2hTJSfx1
RAxDhiekDwgIlaf0u/nSslWBRhCKo+xFGRNy4fFwYtJWGeoS0wtvx3f7yvtHldQLGWT2Ng57U/Aw
E+YezdX2JVdob9Ctrzl2TKmKPlEiHQmWQ6l3tI7Ybu4KfLjuHAMNkrB+jXO7v9w2xDM18PwOoWBR
KdhOkjyjQH8rQZR6Zldr4/2YDDeFnqVtSw4nzusuaKMTAqjb6Ccv2gwAgGNMlpQOXPJLREhngyac
0vFm7oW/P7R4R2rYpP/W6sdv6bNn2OGmsjH2u2prrbzOfs+I5RzSs1CYFM4aVQ3seDY3IIEo8017
ZZn1O6s1ZrFIpYE2ud6rIfRC2eybEyfyGgv0yOAv3YxHnFBiIvyw72ACndYeAkfdoto8z0HrCtUS
mKdGcuYXeBGVU5MI6WK0t3PzrQP8zfNkdVeGaYCLBJb34yL/ew+suUVmelTBMtr6kvRpKw1RfoVG
3kNezS0mbJ75lyEMFhBPxQPHYpQsJyPnkCYhSfoEgibIMCZNE71GRrfGbIudF1toCqKtWs4gBk0W
m47TeczwN+Oc4X6SqeYN6/ch8VNTJjbLRp+cC2+z2vm73lG2+fRk2My7RF/9eaSeSe/QGU+/Ulu+
oLmyw2ToQPrh3vCmIwHsjEOPdMXd83+YAlkVk7pGxjtWCPH0KJVBkCicQ7GyAeieXPsLLNYsr9FH
JzJg7xKK+AMUok/tSHIGcZueoQJvggJ7o4l6QwNP5Q85+S1AYy74sJ1QERqcip2qgSrlkG6vII4q
w3wrP6Gtkp+0zZsMBNlsx67a0yfUuvDi9m/d7N8yMmjZiYdXuYa/kzV3TsRakVQVBImXL4eY8iC/
ewqtaMunsTm+5WsJFbH1CEib4hYm6l49VayQieEMkLepdQqgvIwuh10FyBkM6KbNfs9q2Igo5t9U
M1BvSS04/E6Ilu1GBBuM1+BAIAWsW/gGSch27fcUwbHX1lQPs4eKs2j8n/c42MRt4NZCiToYq1bY
L9lya3hIXKQHirW9r8lb1E0kh+Ochg/aRZCOAkaOokDybg9MBplPDBMUg9cqnrbzzr1GV2JtmFOR
isaqdzwLMICNdNmjcimh61Gf8989WgRaYsXa1W/WadbbEkEgrVzX4I/kMnD4G8avPQY/j2ci7LA2
inrHZCO/r0HUmMXl/fRcLZtqrKSTylROpaIR6lBz8gxUTIQOC4EbkTkxzV1JbjInCuEfAZzvCivM
5qzzVTLCp6iYXSbOASMK+M3K7v9dF8K/yQSOIM/Z1uzUJfOV6LiBur4AfRu5uVctk8wsnZrhfADi
Pp956B6XCfQNoAVI/wb9ctKl14tfkMYF0mj6gEzKrJwiQsG3EZjGies6VMWFjle3VvPY7rN3KlzC
q6mCY+0MlJZXw6cQ1+KFogZgIeBYyGUf9lRarYFZwC/35bbSKEXElL8G9gPwSzpmoqYmBK/LuBuE
F+2yzeS7cCk88kD6drPvLfEEI6r0FM2P6Cv4b8HM2jL12QbSg/OSJlXgyLsbh7U7LrGoRWvfnPeK
vQONNJxhTlyhzMMYHbnVt/akMZll2fAqWJfolh+9yZDXSACjXzVMio718L7hq6ThB8505yk/Wo+x
8ttAO/QwzEJsjRGwnNWEIoq3jGVQa/T2IrB+Jx+l2Vfh8EdvNTmtFXjl34dCQLXDB7FYVBt/ASZA
zcY7FzOOIrcrQLGmaMY60oAnJGDbPGdGGJrtcdaubghic+V1YkJAMfNu/rX0Fo8eA/3h7KJU3d3s
8XB6029yGpTFKgJ3n5QjA48CkangdrafK3JAljAPW/fQtkiG2zvodr+gE9Q9wCvqM2CWKAbLyULK
wgYyY16yq02BnJEgoz2uxTgd075XBm0N+6mhN5QLOfhlST4gy4uFuNtFjLjaSDYfiMANJEdZP0Mo
9Tffg1fxg7oCpD9r1xxEmEhRJavaiIFFYH0vExnWuMV/dzPWalndLlLXenrmXXH7jkivWPNJXKDQ
EQuXX2YRoWHQA82dv52a3CTx8Y8gxvN6N1QXfVfBNML9I7+9RGqeokiVIePQNV+AmCWgAIUSyu//
HFgsiLMSgdi8rtaBNWpUI9FkalRPK23wUq2nE6ivFaKbu46IwL1cyk7Sh7Pe4ACpSSypT7LtfwA0
lUN4sp2LJP/HXHvmQokXthrSCqYyQKF31lVx2nCh+lsxaCLdXLIrZd5kftesV5VHHgf875WnzWF5
sbdn32lSEOf3xs9M7AhcuLxIvKIQRbrWtJf9ajDlkERcKGBOnMuKAZnb00WoELpaHTbS9q9UE4MK
rmGxi6mjUp/3SsGq0aR+0MsW6/+omBb8d9iBjeUf6/JHhbbMYIalQ8E+qYfaSplmZUAo19sdu4vC
T2MXtmxeosUemEilyE8Kd1LqVv5LsKdYKOdWosns1V5DNMZlXf9QfspBtywQ3xVpnWeAOvDQOdjN
QyXT+BrvuVqiKAy3MrKIA14aQkLTpZH38zcF2QbD0TygGXN3muJUcbV3KX+r1C9JueI5UT0S5uQt
EPnq5n/AS3b0sV9Vxyiw3a4jYGNu1xQXToDhe9cQ8+0nJFrfcqGnD5qg+0yXnK/xp+QfdIhz3uTR
YSzH/rmfhFb51xuvTT6rLM4cmBMuGQt3jQgn5GjtIptO+HWm5V4wYrMuwhhjFvHX9V6MPzPZh/Tg
dQ9t2CmHMaJZl7D+w3kYpoSJHPZexYgoIDUXfPk8gCrRbBQTvNvF5xOk3B57uiL7/G3gPkxvjWKb
tCbw2xNVPhHpTOXtljoR7UIi44w3UtmE9hYNrGNrO8FqbLE0HmrSVLQm2lL0hEYaV5H9433Mvpsn
4bgkmv+Dtko7VGzhW0Plk+o5brNV9thO5Rc+iWGBUO9NfbPFWw+KQvfnV/Nv0JVAVwzFJ+09SZqL
CaNGgi4RsYp9gbbgUulmBXXmgtDToF2nsyJQ6y1ddad9DdX3H9N5dRgk07A5sKVtq9Gn/nThjppx
REe0ruOM89wW0kJSR/L47zjI3o0FjZE82r/3xYXtEnTy1yc4Z3y3yliSHYUgxHIgbJSAct57aApA
aR64LKXjNg4oDL7vKYNGaCsiR6g/wFDVp8qy9xnjSM6byVdMEXRnXsW3kUwb7LUre1v5Wr1U4HyM
h0X545/K73d1L2SksxGQTZYaapuijj/gaUlnuj1URWhc0iESxTVqPCYOCphaWXhgv/2DWHUni+a6
ub3Jz8KUgm8n6L+mI2di9KKP3Q07IbUJ1qg5MY0AFgVvCxpYhYjOqeC8+9HRGwpW9yprsdwPr3Wp
YRlcwfQFsdvWp9lm51Bhj//IWFy71/ATXcRTcSMFP+bVtqvMjTJIuwfxnMTdmJCd2sH+i1C42Ud4
McNmrOYZ71IPsWOnz8lI4NKsxsSmMB8skzuifGExk8FTJVi930h5K3aOa3HFTOIb+nx1Unym+wn6
/3JnLIdwmty8LrBYIsh6ecgvJ3smKT4RtXm6DfPHwWEF/PtZPzFzpgz+t//WUSNOQR9mgcysCgC/
WFZJT2W/LvebcRRpTJ7QAUshewcm6tfHl/QedA/98RtMh+O8fzDAFkpZV6Ez+SUFD5yz21JmVCJo
STuexv2D1xp/xSQqxcZYvpifJo1XNvRBJY91hP6KqQYL2dadMRSdYfKOZh32Bo3JehY2zrjyi/Ba
2rqDsfYLInwR8yrrDgW8ds3COf19WdEWid0fNSzP9S6o/gjFbEX4RNR/CfQQ3izunVqnusmJsz9n
MseuWfzMnkXrTJhODUPbaCmAgNvXjEtinrbsdomJMJ8UBoTvDVkHUR13E7bSTqxER5ZGG0wEVBVe
bqSWPt60nznizUL34nmZsEeP9P8g2Ud7hoox+3a4RTveTC9+o5o6RE9z2aTWzU6X5U0u1mPi1XU+
heNlK7LwnM15xbpnMVGfSLTEVlCC7TTWUnOVcubD/f8BZhBdk3QWpM3g10JpI3YnnCexXtILipAN
T1wumURBi78qyliMJKe8DUoIk57hDjVof9sRD1zTdX6TZTqZ96923+2FcPkdWDAzyMlodMc0e4X3
d5tDQ/tQeSvFqIHulPkxPowqbQMCSJONSLTQ/OJ4YMhe/tn6Vpf9R6pcn8edGoHFhTMKrI+Y66fG
8Cy26WJqXFWvgRZhOLpwK6MaHNJKjB/b0X+a8cHvOwBYwRo9AS1k3wh049YuEaI2VzsEq0qjuLFN
jPu6clv3ghYf8umCGF2Q+FH0aYVXOwzaGKeWUHYvuhqEu0zd+5PdXGligQxz4zsFcatwUv4DCFod
Dx8Ovid5vbzegBpz45/sfWgDAaRJoUqR0wytIFDoyNE4NgtVzfurpRj3I1YHwHlFNuBDccMyuGg8
77JJF2DjXYNIWpbv5X8iY0S0r95+B1BIokNfhLccxNA4/ROx1wgpjS5ICvDayr5TzZF/K2Qe/Xto
lOoK0W7yoZi0c/0RmA5AWtuA6L5Xl9pQwcrVz/hDNSlP4vqJLcCrD74GGeok40T7rbIA9WQ0cEeS
FvVcY0R/5Cs6XYZHtj/7l7S7ZIX4IgFIxVx0SWW22PQb5w75WMetb2EOWXqnYWQhtM8RQyh0SjrW
R5cLsVowLrAS48yjluLheonGrzh7SX4/ww949/M+It8Jyx3IJSwtfNx0Y2CHNDwdz7fqP3od9OJe
ihTbChvJYmRpuiJ6mBrmJ/V7tyM1O87C5purLjAxYa3rU7hZlIedjU9LO4OWLyYjWnkdenD80PL9
rTVDlmZpgUQZ3F75REaQULOpMpKoainvtDgAbWG1fBBKbBViv0IVnNeEbeVi7rYKHYwM/98SxZvf
gEfWG/Smpu1bSiAruk/FrJ23SyVshkDWPV1yjw2qfgkga22om45k50tLCwDpC8NKvoxm3TB4c1e9
DEFCJvqynjUiLJJkOlWS7dTidKQ3iPtM7vFfS+SQ36UzPpMSBtfuPBx8AOmtcEmezBCQvp/iqY9j
IU70BmTvhxbeTZy6guf4b1G2RqLwhOYaiKx/ikuES0RtQlp6h+TW153DMxqyNy3+NPbgaBonJLuG
igaESAaHxyPANaeHyUhlyq6YgodVnxv7/RPxokQEnkDW30W0+fWy7CFgTmf5LDUSkf0f8mnu9+wH
/geNVh1qqZzJwf6yvveimU3aePN0Faa4r0CaAei7RA8NwBttF48FL+trwDXYc6n47KuvtyIzyRdY
xpDol4VrUm9HIMVHX7clX5vUmHL1IsqIBpG17izQq18keciPjLeZ7Rg047+3sTLHNKNaEHAA09gV
qajJA5CO6aLH3o9IH+uG9EFRauHFWbwP2U09dC6vN3bEQRW7mhmgoi9WBtClf/rPCKZIAxK1z1il
RgBRvepAZStlMpxyetJlrZIynzy4iyz1Y8AWPImd0Eyu20nwQXr78Lb+RYkgJOwjEdjMaDHtXBr5
psdoJow/NF4sAwgodwjfVd7rBJId4GsZWyx/u5jQqyZhSV+e0djF6zwoc7wWUzdudi3J/U1CbrLL
qBdzuYCK7wptlSAKzUcwevG2q/8esiayiIzl62yPCqg+9DZw2pPevRyLxNlbcd14JYkZkJiJysSF
hDO4AMTiU2f5KvZ29Yod2ntgQpnMok5E0l2bG9GQeMcAlVIgn4SNw3c6jh87nXN8XUo29hJykaZE
vmzuKHxP3tnbVsVo9GpzySsAlJH/W+5X6oz+jZvE3VgD4NefPXLiao8CrF1kvnzPxpNBiQT9ZmWm
1kBlfI7BSZ5NlK1CAbZuXLetLan8LfBsOO6LR0JlhWLp9+aUtVUOCABTPYf9wC5bYLBHobdL83XC
G63aKa+4gMJKDzmeMoCDI6k1xvtZZHqm3GHOUIuXEMc67mq0ccFnc77XF2Cc5oMnAONqUscLSGCt
npV4fsi+F5sMbhCK08TmEE/yVVNHitIgP21ByThAQJIAdiRUEg7v8J6visJvbbVSK/bSSVUnayWl
AAqGbtgVm9Pgp2gdEUeCBjXhaMo7X8Hap0Pv9J/uewopEvhT4VgLTNeuaGyzkipggtzug0Ua75/2
soqB5zs6JOeXKlw+Y4onstcusMnlO5DKdtX2flxAGSNhO00VKMF3PqSZQuoGmkfqAuYzHGeKmxgw
c1JHWKiyYzgPXBsFymBPA7DEisXuAWrOziLIb7vNuh0xzwKDj/gqjraumy8VwrFm68rXep31Crj7
8UM2YOZpAcjPLgUfrnVQDKa4Bb9MMGjCdhCD7NMGQILhKfQGI90skjwX0gLooKb5r9U7sJs6S3JD
3jQCLy3miLnpf96qOn5MUvZs3tJLCfdj21hsvUX6rhhgczKJ+NXShRfJbtNHiRedEcg0DXQjzjyA
6Vv1PuoXQpb5KIvHsf4Ex3OI9/QIF7C1iRAX+iEV+NJIlbIrsT8xIBcU2xIUb6o5/x3/CUJc6L1G
V+BXwHV46c7aKTbPpbyom38dMJeEkWTKdXtecV7xs7WKSVc8XyphI5AaIcFP9IstQ5VKIohYWRYr
wLWLjmCQ1erzICvm33jkQVe9548TlCc94vKRdbwcuQpCuKPUDLFINIiKeLq/NBsVyp7w4mfDGS1v
+t8lihbD+gWwvqOd43VBNUM8LaMH3eIpzXwqmGOdTP4RiOq6xnfVl7FcBfJ4RCHQEQZuED2g70M4
01xoJtimGf6IbFKcjFr53Xx7eFChT0S5w1/DuTg8TJF9d5qrNSO7iz7jOEannuRuDEuxKqsn42j8
SljWFDnP2UM0Fj/e1CnHs7D7ErtVwpvI9NK7cQIGdh5r9oc3qpU6QZsJyRA8JVpmzodWHjPTtng4
qcwPGaNVSlelXm5Hup60g8uTLp8dprj1R/eUL//AI/35eUb8s+WNsesdelC32T5dJKwq+x3fiBJY
/z3jaFbA2H4A+VgOPpLnYKZeIoicvBOgqfZ8+74VhTmpQyCBnXUbmflSUUg0uewtsHQUUxlCH0mg
y6G/RKMmz3M0t8evAN65OBJM41DrvCSO3kaS0Gwq+FCVI4tC389UoPVi1wJ3c9Ohp48IUze1lVUq
cJhpUvCgdWHMeF6y3GqybJeqVjDRsgiPHADmzm9sKu52VVeyet/D+wRla/HEXt5AP2jXYwhYoHH4
CLip8mNwXRgxtI85rTgwB3NuM2y+uCvWupM0BGkB9IJANF5kaKe+NMJGGqt7L+EvJ9eJVXIrlHFo
7MKDLy94ApfXO7KieIwaiOuKcIISup9/Hih4HLlyAlwfVl9/y3kqx/pxq3z8zxfI0rN4V6z+c6pf
StuT3IvWcDuiMhTMYYw7XBbjZeLJn5u6fMflVy0p+hVNzXcmlua6KW4fqjloWsVxDgS0fY1FNORd
kfp5ypTZswbQgjdWlJ7T64KfAJ8aoG2j3aK002iQ2IzKcRDq/zZAqnGZYD7xpwgZSaxaKZsUZKzD
N6SmRIGElOCApqgpy8Sxn7s1AkCGRU+nC1mId7cqJmM/61TjhXH0jX/IGwAFkelz6wullXwvlRzH
nyaMh7qpcLhPaexpav/LWNepaKyWyB4KSoym5/BCanL60gDTEkmdYVia5DG17g1qAasraS/JZgAz
Afm1lZAS6vTJkWMWEdNOQnvR3GUHdjsDiLVTtn8a2vCohKbFrEo5MJWJkoNV3c4a8uamai99quUF
RYm/ewi6UXf8j8ULgN+zoYTp+pnJqvHOsr/PDSXrl5Yu8PcLEHeHaDU2kDOcf9RmHaZXswV/w5VJ
+qV3TTXIO4QA8FMnPPxK0Mcp5G5LSno5nPaMEE/RQoi2wsynJoEnUR16gTULir9Y1kirGP6IaDHz
MulMu8utV40m0AKhf0eOhtJEoKfctCRFZ+CU8Pu4gac/qhNJOL5UeL60MfqWdoyuZ0D4xnh+PO1w
0Z6Z2pRC7H0wte1+PvmIlGITyd0r/mu7krKpBWtrlFgNFS+bECqwdOLErlH9GjQZ5hwvaYBeNI1N
BpdCYEKvqfvrdZhQD75NGqzak7Luit7a6lnqT5SeKpZTFxId1VjIGCFyBzDI0X/TAOSX5uay1qM3
K0p5ef9BxXtVIG0LJC5iXPVRWDiUs2CzhZ2AfVPAMckJmXSz9Q/35yc2eV61wFmi4kHLtLiXHyk2
fHtW7PeC2VFH+p+tDMQlXIK5Jnade+kXb5rhdwMZ/w1qpG5QwmArzd2JwwErqSFY2Os5pfhFVH/D
CmW7++yPlcpylvnbdDBAO97b2ncxmjn8MedSYiBXdu1wHqr1pCzRy97GGVgcje0iw+cuCgRuePMq
oVUgSwDoMkjEwzqtWlyggHtX2cdJh2GKKa271AFH236y9hG3Dj/84587Wv9JANQbIVuxiOr/kV2i
xdzuUcTr4wvav9WM+YVCZH6SFIBeb+CqsVUe9kAorNmL9IjhkKkbTyN3hpT26ZArWNSCe5QOw1f8
BMMsCBK/B14Z5QGF81vrf73eK3V5/soRhWIFtzC7db3wWoztbWsQCjASjYU6WzH0tpXMTYXRVWfS
UV2sduBgY0CkUZgx8QFpKApzaHcoep7rKUEZJ87TQhe4gAxqq5nUrHlCFdbpJ5svxtNmVN+xC+e7
B8DEc6UGsl76+E3fyh00BbJXJK9avV+ZVBtJoWeaJiiCgFW7vhabNFmrTHrJl1DCi7xuhjxy9n6T
FX5CohBsndrC5J5mA0Cj/AUECUivzlvj/Om0VbV2NwqUi6vvUqNo6RgKAtEmNpQRMbgg6QKVdpL4
vniLKLVlyXi13Y+n3QDJvkLc++i1oMvG3YqsERwyjS360qeNR78qhy/ws/RmJw6pnVm30WLMQ3YS
lAR8q7cn+cwUY+Bl6FaXI/k6yyVI2YX5Hltje70MS+Ro4Hm/ORaPIPPP0xp8I+PC2dt/jpb5Qnz+
03deESDXpsN/+L0tupUffRpB5aOS+xa++mm7lvZSn+ivSsdKtLSJMQSuOZvh289I2qybJVf8b/fx
CuZ1ihG3AFtAdmgA2a1a/0fEH5oI4W7N24otTvESSSL8JGcmlxuYVFjhSXlk1jce2OLtXIF7ufij
nIHw3uUswG5YyK5zKPOzLIFAw8F3TNhPjN7GdrgWU9Y5iOnt/iqF5/8nya+SVF7S6dzJPJWHz8eB
538t43IvZAGkzXL4uYMBWKfkNUu2gqaZU13ov9zsN7a7m7CW02XHUthoMuW25jFAdB22gf/VeAm4
CCB4maXlxCHNVqdEAqr+pFMFNaCyvLjdKK/ZlLKZbY1ku2fU4kTosTdMR9SlN96p3eIMwF9M0lOA
PzQHwNpQSVfbq9+aKw0HZ7Mhxt0252OJ16ZWp/WVtA98lXHRbDu/Skp15azcGe1csrCp2MLUv4y9
Vfd00DDcug3ypfzCTvT6cL34yU11rxBpp6quObhvYja/bKdJZ738cZU5/YhUBSFzu49WsRPp1PLK
hcIf39jExnDjBVYCNdDSZ43/YD0iBfymsihCG8VxIhpv/whIwzs4Xw+iMi6xAjVhYo0XEHvB4ugE
WVy57fBat5k9DH63PAyYAjnxUVdr3oXVFTW/EjUfOLzZYjU4CuHQ+V36J0HMJak9hs+1lyhw8bOt
2Aq2ArnVhAZdZ1QjAo3x5a4bG4qQsRKHemarEraIuYnGVrFiqMngE4ZhrV9m+3ZPm6WC1eVOTrvp
jEoaHrZqkvtrLqgKBBJl/fSUWL2WUMtPMTP1vE7ql5YA47Ve8wyo12iscAbCqdyiUoGKpzSCCirU
2JovImmR8TK3Jc4Ep97C1CDV0RrASzInaf4k8WZA4FIdtqjNRVb+BSWJLQDqCJIjxaTWkYgk19cw
eR7E+0yNhNfGwRsSxXoLLWVbyFOObeJ8n9dFAJKk0apvkHOaLfOzhPqX2zA7D9DecHXXPvIeGYV0
oChohgQaQpNjL0Nmo7NIhUPPA8du/Ew9+JnP4p4rh/8kv0jJAKBolgfitjPPd01Uw5z/2zhvonFm
ZD/mNpL+GOHIB5B6Cz4CiKLOWQGJbRmrBN5ul9/HOp3ZbvKGGkffH3PQu4VBzPx32ZBmn16HYFG+
78WH9lIl/9+Nl/ZbpUJ4LG3Hk0/8HOaYtTvHjg6NYhYrpMO05pdeJtaip4lXfXT9HhYvkotZHOBW
vfk7ysl/I8BYVCLrtUdvZySg73OeSlAK4NcPcI9YQYMjIIAFl2bjVZ8KRJAKJtTx3+PG28aZmfqR
SmOw/jIIv0a7/xarW0CPXvlusPdvUbHG69jGsWEwnIsxyEFdXeF7h+PN7VHz8M5T+VLHB/zhAhp1
YixFpQRG7jySxA6PBgz4U9ftmCpnIq/Y7hHwFJHHXDBeC7pibI20S/2E3nEZvpKpUrIKlY0ORIA4
EZK3/t7jTD+4Vy6xtd3aY3wXF8nGCiodTsZKoh/qD5SJMJiem8ZcWp8wfwmuLeqQnPS7cMhMmReF
icQUnyJfWnuBYDBlfJwk3gytyYJrwD32nCIUvGi8Fuyqq4mON2xEvcd8fR2IdEo+6CnZRRGyB9p9
ccRoEjTr+F13L/C4X/2Q1UNKmMRg6xl9E1s3AYQqcW8SsQ1CoHsp4t5AhxQjgZqLReJe8z+RpVDo
YaI1gX2FKlobfEH7oxBFxgEZ0/ls7hmwRJn3e7iWQD5o+ZKkkiCtQUTILZ2NFY9rddmtTvo8nvrv
zFOx3D9dTu/aa/xd5HTJ1FKHvV8Bq9p9B68NuiZsn6PNZGpVXjikxQhVtjo6pJdss+UOSTbX1LD2
dSGkCnhyQeu79EOb04fZTJUMxrFZA6IA74hUmP4ELi6+5jWs+krDVOtyJ3/oR1YWbqaNk7x/j1Vv
otXb/GjMuEXi8S//OyyLW2nmXsf9SFxNtCKDLwgFoT/C0m73mKxyc7C9w86i9gFCdD8s964WjG7Q
Gh7ydfvjXcB+osQ6mTQoS0G7z2B73j0OEd6L7QFxML1tQ2q7PWLIt4cARS9r2hfVvsQ1Q7sSE7dj
ZAporwsE4IwoTmOylWTTTlbKNmLf7Tc6F45Tn404SrfPHW7hHgEp2b21DKl/WqWaJOfQpggtClDA
175AxYX+Qoqn6snnbkLZJiJFyJEdP6noqANIJX5QtBlwXmLqpyqpMdcTldCPrfuzitj9otYwwsMj
KGjr/m4y7FZNoe5PZCyui6pcXhkSWSvjxioYxgsluCh+oL4XuYvWmkLOTZlfBzu5Xc99WiKlzrm9
+5CP0RM3Rux922ypdqEhqHbjoL2a4LOCantvoZLI6IWkTBKQv6rSQgUAv2IZjBl2jP9826/vuqOB
8bCI6kpYAkse6CF4rztUeLpS8j2HIYvaqpUzLMFZlEBfKYgjaBwmlBfcShRWx5Ciaw+2zT8WG2Qc
Vy9nS/pqSKYTmrNZ9+UI3iSUWKbPZOtcsxNU890JBLf2H6n4+Xw+0PF3EJ82FvAvxcU0AG8ao6P6
LTpJrRTukZzixy+9OukeGXh1FQGecls2zB8oPb5c3nLDDe1z+iOixHkbL7gB38HIeAxVK/0pE6iS
x7dCXVpF2H78jkWDoIQ4T98+7LFCDehjm7GINJSaS3jOPa+ZIhzyTHN/WAB4JF6OONxXq1QtziEh
DpKebZeTIWfSaufbeIKj0KIkAWjvkTcuEBHYOy8xTL9N9/cXQKV97Va+ryT7xdFeXK4dZVKzLZnG
EqJcEuwkEhg8CbKA3czfugx6EfDuPo1KG6hl8EZddmBFRYh8TTwKrtS0NKkIirsoWMD2/4j3wAWA
C7oy4BwSGRcVNVEOwmhiX4ECE9Uz6rCPiubJ5miAMv6t5DiiEGZZFQd1l7jZWp4M8mFZMS93Fa7o
rwEBAJ0fob7ZFYM4IsXw1ryb6y20PkRbmybDibmonsZmj/+392pmrk7MTY8osbj/CAZz0e7zq6Mc
v7UJGlY8cMJM+IhWrZKEIwtn29AG3IlaIZVmZLyM9wvqFemvyHCS0JCudteEUo3iHzixJlY8P0Z9
oKwuc28oh8Wz+coaaqrx2qLmtxSNpeSqN8BAzAZIztQO8z6mbp7ZgIuRQAx+s9eYFPsaRNek3vjb
fkhj/0oUoH/CQNcAYJbujcOg5m29vJuly4TX+Ag/IIeVocJA/AliQrdGW5D7zrbkx1guyFXcrWEh
P0ygJE4tCp6WooqwmekAkUyoZ3CjYwKgV76AsZgoUxSxUYgnvCYCsNyvs6suL0nco1hxg7bO8pf9
N0X2BEbwgumImVjxLQSVtLdLCLyx098+kUB9AWTr7TrQmPjFpO8YVjNCus2X8kGdTZBjA3uyfkHq
RfdOP81Ce6hXfIpgsXgyPtwhzxH0UwztXUZqiD9qt8nZ2UD4a/5soBHJhnNZgjy459sVYy34taup
mwza4OrBtrOM5TluPLYuUJfyI+i2Dchpw+hRWL0tMaWeWDR/nDa5jbrdVElspZVWX+frDFae8Z+0
JB7+A+wWr/08QRy9xh+9wCHgrQ+1FuG2yVMzBdJzo1xL/BrmlfW2KgOXzoDs+XJDRcvxoVfRZuLT
BxWWf/4/lVVlGrCxrBXoR8BQsyF9HRJeuAijGM1w/UFCkKzASEOAMMx8A14o91b+wvqBhg9HX1x7
X4GuCZF+VgF9LYnwDlNMxYl14vePBLAgocxneTezLTJxpyKnAdx0hrr5RgSRK5WdJQmV0LUlR8Vd
QlF1rQirkc30C3NO0ZhPvXM5pJWP58NNH8CawAih6WkyHXoBjlyoIGTEoz5JaqZSp14iG5d3ZnHb
lAfjRWZYEWH0V/rNKzKgjoUeilo20TLhg1WWC64XolDqRsrbNwFddd7nAnBGYjO36MxrAGfo5ASa
h8Vxkysa4PJ8qQOse93FIXyDsdAfqRNTk88InAtcuj9Y64VS5vMO9KGhY3U30XYrY4H+HOQ2MhbD
IjSM8jE4JdJnNEKjjv3SFUUhUv4mvJsNa3CUgjL4/rxRrVVnbAIiZa75qsO8IbKdABtH+V4fDT4/
Az8ibFenS+QYEyfSEPtT1UP4WAd+w8pZU7NAST4RaxIAmjOUr2BGseBD5C4UOhQ2FVzmmm9UK0N4
zQu3vKUdQhzW81ryzJp/LzhGGOyEIWg9BjKrZlpUpGOcuJfKLfXEGfGlH28V5E5nNGlt2AS4JY6o
ONpE3jo34Lmhvmcdwh8uD7HfhZMfH1BhcEjfPaEpBLu8e1/N9tvmIZir7ZKIxZKCLdd2ygi0K/hf
e3cxrsK+F+bgDIk6RPr5rKiO3tArAuepyhfLSocFdU1wP9IYpehO8XfC6nANX/agWznC/pznn6ut
yDino2L7iU2ybuOyMhBxVK4CK7cysL7IYQEVv7uk24AXyyDWc1NklmwdNdSIS7y7gmk/OiHEVNjx
wHrYClVRX+bYyMxI9BiW66pPgki/6HHSo0r+vashD+gXr9m2fESJ5ycc286Xg+/iQmJIPbX8ElaO
BZulF6xiE3a7GciwDgIwz5u816prx6uUC2Zn1lTmaE+nKZJukshHXIqDNuSn6wbeNiKktCWf+YTU
2gCyH24BR4NGh5LNduXkqdlObzZpcFVXSkxdyvaLidArbaLf2JAqnS9Hq1c25iq5SgECVnUWXTMO
Ps41c/wc5Q8//yKkHlyICCREBqopupJNtwRqWHDNXSyk5pZJ4tXtFcotlnNxqtFEvyGgLsnv+lVM
kLQBODETVKSYL3sa0YM3+R7kLSgF9fv44P1rwIO0/8otV/NwCQlUmhu4FDobPBIJobskB0uvRSDf
mOu2NZkcQMapq1Q46IOb7Cr7UKkS1bHDGTGHJ5MkaTQjYDc08VbD+GGCqgWRjyMt+amRozcv9U/4
vsWO26z5uztVSKjH8wIEfgjiuomQLnh7aqdCDOrQfK91AOS20Hd2IwGbKqX3OS/9hZdPtj9DVX9x
g5OqMaiQHLMFSRjsgAyCh6ZBPvt/nGA+Dctf+Nua/5pq9akWvQyRyeRwA+xofg0hy0LvUHrxLbGU
NUBn+oveYVDrR2nzlGDblG6LwbcmbIMWcU/ytAufLSMe9ts/yXCHng4XfSaKrhxyMZmwXHywOZhQ
R/PxfdGZyh0elTLSMMvWDh4tSv3Q0hHIpiovvTFykZFUt5GOYuCH45A0l9SDwowOBvGB1bz3CVdm
k49oTzZLv2sagEi9E1fw/feh+Ebn5kBRXlYPIhmAQcwO21VQ3Xvv6r44eEOgl71pZYRcHKnKt8fs
JFHp1r2wJHbuLqXE6ThFrP8vYaVnlIgSg97qJ7Ev50B9F2rsBzQsZZopxYLjzWjNi/X9q9Vf3/8r
duua4zuBD8f7lRzR3s1ETayRHRUIJv9szsmcra6g79DOlGUX+er727LuY3COt8DwAtM6GFSHBKRm
qDudAk17Gu3ek9P4+ietmgI73fTdMZUltcQXkHQiwvKQ4e5mJfQPaOWbT8cufb2Vsb8loxMz6nHf
ODeVQKAcyDPkg//TfzeQ2n+Tfh4OVexi2sWQkuGWwU512xWtf5XoqzufN/nHsgufxqyrPeV71gIh
jk6h3US3blDHamKd0+3Mc8h7gCfB/40KcDAM63It/hB4Lj25nUEybfY6zVVfemZIzx6V8As9uGKZ
X4EkQPtspr2Gkl03O1RI0AQHEPu7mWEAbPjbVWOt5CXcgTgP8OlDM/XXfBmx5353RQr8ceb1+Ewq
d0uVnDHyzlvDcCJF16NbvpSsZJ4QqCoj6x/UQQCJlUGGqkOKLLJljg8OZpoT6G/3byF7TOTd0qhq
7utE12ad2nFgBMZ/5CyLOtuaiqJmqyYchD0UJH4oiEowziTOm5ihzyDphoKi2YiL/rZI0pCR9ypP
Rl5MAQAum8El/73YCItIt1jDlfNgJ18w/NbqmJsg/Yodv1Qrilpp2yjuWY7tSVJ4CuB9MOp/c4sL
qdgzIZddVIZvQG9j8MSeoWNUsEwojLgQ1h47aGhf8sZdShzhvDEPbWE3pdS56cBvSUIO0bDMMHLk
YkAieDSsXjiqxsauNH6f2+jrySP1s8ts2QEcjEPOmfSq6wJ7Rw2KXWL7iPZhjf+L1J4gbKMdfXFB
1kWnjiE/0Qs7huXwQ66LhDqC3rAQOCYkdOKDTIMp2R/IhoZSTpU/ZjoQcMABRKSDIuzEoqPYYDZt
r0w269zDdH+KoYYZylRDwZDaCRiCJLq9t9WVI0RoLqv1qFwXLtS06ov7Fy8kEj6bt7OWYytwv8VF
Muq6Ubqiyn0+lPL3OUJXKxZIcZe+KL20l6SXGFGCXbPgg6mPTtKiXJJOdLC/c+U4oBHxOwZIlqll
65MuiVniZyXxUUwzWz8UJz63xfBOMWoOEJuMgvkltDbV89nDNHWH34GJjRC5/CZB3v1VvLy5RMPF
7MzZAq97jEQgL6PWKkRGrM5egK0n26Xsed5M/nfbQLBbZmrN/7AD+HrWR5cbKnDUzfjKD+dD2SGf
29fhNade+fVFg0TmMvz6SjMgmbkzdO5jCIh4AvquqGcfN+H0l7VFv3PsRIGGgLZ6rMp3zFfCPMkh
+8o7uO+04cxsi1kSCwnhtEAkzuhMRU4uLbOXZJQEaC9QXFL3tABak9hhxzF8vQd2RI9w2i4A4kN5
JkHJ1cWqMO/lXfyH19pPkgkLUfsE/0CvB1erVKHH8QT4IuRJj6V0kkDIJoF2QnwdetuPuJG/LT56
X/idAlXboqvnUod468MhQO0MUssNJCUFaEbEw35djwMolU62oW9bC1erndoq2R5lTy7W0c8Sg5G0
v4JVR9D9M/O1isnLLBW3fk82vgWm7pL85Xm4XTURava1kQmK9iEoF79Ck2v1pYL/umhIRr0Tn9q7
cxUWidyeriCnGo0j6pZDmRXhGLPOvgZ0FWWpysvI8v+9I+/8gbTahWpiea+TsZShAZNRJ+WRnbnE
c2ZoN6+a066ib8/8e7Cmn+1SB1eAWuRX1Id5OG3Zww9lpqyKQ6nschfYRuc0vgAkg2Va86DX4LBS
9kpDzuvYbwT3lPn84sXO2S1C5ux5APhr3A/S4XaKS5icqqlcLeiwFG2khP0i9ibRHjE0p6EmxoyB
uFei7e/1EG/CUGqn91egF8U+yjNhKKRiYEiOTzvZbENiafmDx8Li5aX5Dkb667E9s3FR946bLFMe
0x2ZnLxXcXqLEcrFPgoDSX0uZXQQkwVISMmVU6mpZusD8yEwTYlvbvS77jM7x8K7L9jhN58j1ihJ
uI/tfpKUQPmy5JYzQbGowDCB3WU8jiGmOTHfOTq9/FI4SwvFrs4vlQICcX7hdBijG7g4NHPUQDxL
q2sFwelkaCziceMTviRqGHNLg+LvGYKRh3M/60DHe0D4VPXsFG6leC6EZl4nwcayCKpeoE4laq8T
1s+G/TiE4Zn2XaRIj/hV7kB7wnhdbICVocu+eZd84GmWAGIHQ9DFn4smgzw6fGR0hXHtUC20D6Yq
x1lEEqzmqjtHtQzlLui5v1M2cRekneWtYFxq/gix6Yi0uvNQ5/nbDcGDLlYfyqWmiGzWv3XpUraq
31v6TgVTxrVamm9MB1bXHWWmcdNZuU8dMpQkK9wntY0Y4+kAVJOg6MpLr7RNqlL0oJCucxz0K+Q+
cljxhui+fTh6Sdy0e6eUPNBIVCS6kD2e9ZWJjWAV+4RAn9HUhR1wO6lKIH0fuyu1Uu+E6iWWQn8C
IpUQN36elldP4jNiokFGwotrlJCPRgIUQeRIfdQqAI/TQVZ6eBOKwETuwL0wCkf3dsx6q6CboMbd
9Eiv2BvOKzOJhPxGKS/k/dhHTuLRfkt7GLdmdjTE9Cf11Lxo4bziGDV2AE6PPNpKhynqkEWmgoHb
k+OczEMSZD/o1212YWUTmYxVi/VHSIYmLyxa7TUZxrgZP5/M2t2IA/flYVJc28s7IAfOPM2Dz+6u
NDvAANsBZQQoSc68OYcd3gekatx3nbEEcbzYQ4kQvaQvFc8idv/rrtkdWJ5NNsyZU9ShqbXPi7yt
UVrxbIO0jAR52+cNwGD4ozBiEAEag9vv60KiDS+QDmGoPW4hG+x5kM+VuswUp2RxJjjiWaRr0g1k
g5viAhSIM9OL4aUoYNl0mt460bq8JKAt8zX9kAyJVYAJlMwgEwi5ec5gDcYKhwslEeXUxRy/pUwJ
1QNQchcdLiALafGwWQv+djdIoMblsYg+je/gZ/2fquLrD+sIfgDCm76sF0+1Q17pjQoaw/pa0HEs
PSXdbhsnOxVEqNaiGMedsRiglApeuL0E/3uIxTawyeanPisNP1HRaOTORWtI6k74Y1za2PQrWdcF
KZENwWy/RZ2cMmJu2we1atuLJCyqy7QXZq5wRBqIVaGmXXHoEFZIzLGORCmXEg1OlxU/K9BY7au/
KQfhjoSwv0fZTAkzOO9oU0JqrrFo02V+4bDvSbniny183cDnIHRYFkuSiOdzEPlNXFGSLm6cJYkQ
NA3GsOiXeiala1Z1PnDPn4nZVZTd/nxaQM8kugPyf8vExHDTzWIJSMYMkGLgDzGgg6JIgBVTro9R
YHT5+KW7OvROsZ2/vZgF0n24nN6m0iSqZIJoJBJgQrxfIE+SybygQDs5y9cxNsXB2Z6HcgO7O7GE
ODvpX2zx37wqL8Z+JTfTuDWNJIGR5Jkl59oxh35CJihUwgLGizY8EzH3Hw8jc/DF6dV6MHvXQy6X
/S36znenrcVZ+XidujvFhZKWVmAWshmCvl11FJ/XPtVEreMiyuigWUED6j8cIuuhbG5EuXVVejxv
tC7dVQQyTmfmVW3qCegyWrx9u9kiiDBn8mcHKm8b4xoV5MTCGg/rX7DREC5bpiVd198CPBnzpjxy
jO+DBahNN3SK3m11G1tALeJ2KGpylNnJVs3EpIYau093kWBq3XCf027/rmZFR+6+SXSNL4qtyQOP
JdovBFKOSx9i+pIYTSEbz+y1/BmUgts1MNjnvGJ8D3aWWhEbklu4aFCYPisBNZnxFsx6hWUYBJLg
7MVyhHPVHOFI8BoS2E5qhlYwLYqQFkvpUf5S71oTaEfCIkPKl85A0zHFWSiROqoGOOpGYVX1J5eX
vjJHduOncnnZ9rL47gTaS4O6Y1IoILT0nYzc9j4sXOTHHZWuxHsNJT4pa6zV8jj3dgu3yVtLIhXP
qVQtbtkSLkRCarRZPOBhk2/eO++sQfDoqKaAWHRRHfePKL2fGTZxwNVAMpSWmVrC7P5wNJcpfBgj
gJLM0oIbWqsfZpvC2qyjXhL4OcZEXyF0WPdv5+l2dNdDLftcpfb1ymYR5xbqN1W2Wjj7km9Y+3qx
yuyJhBMnYvRGoZWHdsUWyBnWMatIDqzxiipypmztH2YjLr9W7M0Eu2gnwIq4cv9t0cd+tu3eKr+S
xCq2wp6L76MkESfDKsOTrvxlWzYJCfl6kXaj9prHdtUrIm/a/qx7m6UHiJ2LSF+U0Uc/jM5tw+nH
BckMrP54JwMDo0bNQXCja98RVwMmEPepjGOqjessta5S12viYdqWyE7OcjJgQTGHan1zjWJXQokH
Max8g1jO5S+3IrlpNQ0vU5lYZiseOyZzt2t/YzlrntnBI0n6v3ky0NbuhFSqz32a5fI36ksuJqcZ
yCGsqO7agCK/W1f6Xif1x9hlE0MRwJVGLPFuo2xD6oZ6RGwsqg2rG/t8L79TE/8GEOMH+xLG/VEF
t35JuN+VHvN7aPtzZp8lIfZwldI4WsKTRH7iw/OYm92/PX68zLxQgKSoldJKR648wvpznhqWxcrl
VWk8Hbigm4QapjGqV1k3ekIswtK3zo1ZQdFyNXxBjVG/R1hAYe6BG8qg/5CbDbIrn2stf1FOZwDn
PYYA9cplPm9y/v0RuUSiTSvEVAqfLj8wpF78G0ZXphTxhBNm6bHDmNVRbdTE7T8hN4ci+dbkPO73
kSz2zIvDXYoJFrL/lxjIzGT6U5qrN5ljjiRweYeCf3m+0Et4Ar51HXXLpYQX6xbAzJB2Ltifm1OD
54bieRtJ8vSMwvKLtK01pBvCbMwG/sGDsRcnisZTm2PUqvIvk/O6ctyJ7a7TXSqTH7vmXwn2AKRN
+PFvX8IiPd6uBHVfu7zCA4XOoI85UQsLszLeW/AhAgaHXqhU/+C5npo3MGHfDHk4O5S4mbkJmqez
b/k5POxu+dDM/mBia9mRKNqYVJ0ekw1BJoN4Hx6fkDJvslfW7hsYg9+Molj+wEyoSiRrchkwNeQZ
5x1QL48ROVd0/+Sv2lUMEoWEZA7o17HkLYmKNBTiHgm8xQ13gP5gi3PFnvpwCJSmW6joKOLS27T+
YIQ08yjVxSRCijlHH/JH6W63uJVDIpEPzHwaKeEl9ZUmKKnyaQLvx/rdORcKbQWr22TUPLN0SVFP
VaqLuTUQp1W7cJ/c5BiN4dnv2WeWXM5vO9AkrdcHiJibmVg8FY8rZLR0RadK3urCj5/uNe33Qf57
g9iBEZ0ZAbg23gsQdyPq7Sk+OvrVmuO9dyGQjp/N1M/rYwUQr2yQEiwNRkCHXqiDUC7ByxNbpUmI
ss43oikb4Al691SQpiUMDYWz4L+m4CHiw3ofBI+V/Pra993kUNx/Jrc74eEFZeluE3GX054H2Y0t
Dq/7zOPHsE9WISJfh+veo/2p2EeILRurQtHjJ6/iNhEq7pwgVArRU4WjnIEDW6FFs+lqL9qdf4RY
hKxW7PfywxpCYkZ78DVaURBbRMYmDCwIX8as0Oq7gwVxJ1iztVnSVq7i48PBxtvmPgLeKBwPH/Hx
xhd3SiIA4lBSXpgQNStCipD8wthaTEzfM7r06iyS/LDuG8omCtnpyK2d9wzc8je1A7O7K9iuxqa0
Q9ftOr4VH8pJaAKOl7oD3y4x8ZxNTb+DNHiCB1+e3QPB6pdPaXygcu17fi7AQ7B/Yo1P6swlvfXR
bEN8xIkatFmtndPYJp52mR0m/g1w7uPKHmAiNyEkahiu098D15sl/WvIPHhWVEsprT5ywvh4u4d3
hKFzvV7FcLN4C3u8UZc8ywpc03blt7hneyqQ994VpOBUWw9IoxLVJeE7FMpOUwTrfH9AEK2QJz42
aL4eMbLU+97+NLwtPVA+vSM1+fY1SJ6qqsW0BQNlZmbiphkqZvEpUhfbQL8nOEPdnFlBuXIUZ5BS
tijgQIZ+2qh0wTD7TLZ1lXzMrHj14IoIO14SaYs3TC+2mXoNqiuU1T7AErHfwige6/wuHbww4+Zy
nRG4TWfeGPLt5a3YpIXtnu80xXUdpR2KgZwlOMk3sh3uw172Sy2WdH9jRa5cxcKxMUfaCKqoYYIX
m6uL/E7DV8h0Ijae3XpVC7OtoEMEnHaKo+GIKClp5zxXF5ODIJAJUxQqEdgt5SZ5oMA6Co0mreyl
9M55qJY6LRoWnSKQwVVK60OhOXGfbj72sZ/eCq5izIcfrHpWvf9+AgFvOXlUh0ayVqUm7tVymskO
h6X2g5VoTMfJh0LGdzlIUCI1Bg7MjdKpqKqYs0utrZe2NCXpr0bTx7LEZhYWQK5hLFbqzjYfCGi6
Ey2o9RaYhjSpWfMKSaMuvlCi/dHwRP4YGM3v9Lz4U9/g4zSJkQXjnadmkbn3vOfNOqucoyneuS2d
NTfwFewE24pIKUF6jEec6JdHiBOWSTr3fuh46Ssx9loYTga96I3x2tsJlu9SXewBT9vn44F6FZWv
4G9XVqaLo1n0qEdfxh5TwNc+unnyNOmVZ9J5L52P86C2DBQXpUDHDOAC9kujN0SzYFjIfXuRCc9+
inBGglWiso+MUsMQWShJA2xAxuVLvnzE4kg3uSnxfmhGi/JQm+gNNUsLLdyn4ZGXR4m3dXRA7plQ
Gjrkjtkdx83nTzGl7TtjJKMXRZp+KKr8PfMgp/zyA5Nv5agcC9OjJwCBS+DqRBQ37WiPy+9lTYjK
Dop8KpG4kfhzr19e1xGTKpiuMUo4tJFE61eJ+B6KBMIbBBepaV/iyyumlSb/vmpcdPq2EFWmoFsI
Dzq/dET1iaB+8ZtBZFj/82vOjyiOBc9qONngs/e6jKIElpBg0TLSF4iUSCVw33vZu7QniXCYYWiy
3Os0qr3vn4kijotCUsIrU+7P/1WgnxDuRFnAa7b4bokXuXwRA4xie9ZwIEnw4xt6Wtw7TecdS9cG
z12gUewYUWn+4dWOWSzEgUqKHyEdTCL6pdrdoxYsvkBo2ZeiqJfcAZRExuqThjiXK0/QjaIUA7tm
pkHpP9ZEnBRUsoq3kbn+tBkKQIkPezPiYhNheUYSSjVx3GTao42fTCZlX+V3CsDtdQvI54ctrXGt
IMwfg0ZrGGSZv5AnJlYtzD4ziw6ksuBHkgNP/R9rWGuP3FAjC/OzQaJcD6oSrz1NIgw1k0Vbfszm
yYufgbwnOZ7BsevUQk3n0OpsNGQA7tEbpauC4m2GXxCGymUFvZIGeIwX5pZ4PlE11nIMO4I6seeJ
1bCkzT1IAdrrJeEvfu9YRYgmk4m1n6dzOMYlvZ0oIXV9HAIW7XDjw3eY+lALFhgIU7KM3GvCrxBk
qksqzmFPqYQ/uSkeQ0T8Pu+NsY5HufQzwWDMB2ZcP9QJL3oLSkTgxuhxxIFwU90W9VNGTrnQ4yNx
Te+DGBFlAiT4J/qjP6iRJnaPWE7KmLlRgzblxTYyD+sfocYBY6EpCMHzy6TYCeAvpOrzYWGZjuzz
7YnL+m03CvJ/pMAFGULOwBDWse7jMRgx4+EpOFpe5R5wZjm1fR5BvMcbagxMFB5QDzV09VD9x+0g
yvgWUR8n73fdyQGwclVaPlWG5ou58BHLHJEOmIF6fkQgXP0kRjUmAUTGDHlrc02WZP8IFM6vYIG/
qocIdAEapWk6VcwDISAFvH+6tVACDZRyHsvwP9epYYNL/FA7zo3A3A20l3aR4qZJibY1wL7rAuVZ
QdCixu53f9TH3dPwnWRqXbi1HaqRuFBnNFetU6VxMoyh1ifobQBWIHNX32s6mT3fqGd1I9vBPDWD
uDuVMNO0FLEVRzSbySWj5Tf7CuPCwcUF6xOkveQaox/f0Y2gg5fWF1RYSvXN71UJkZNDpPEvIW1A
H9CaSkUbnyr6ggGpFGN5lf2/sJ2+6nMLTqi8B0uAlIXwRqAsr150ZFCuuSnIzMpE7tPRe3HipWsJ
a8YYlnkbvOOWopB09aj8S2ofv1eE5UeVxQ2QjJ3vqnpRls1BPMi6HmCycwEdl0TxL6x5Uwh07BWz
MChjlMItM90NeoyLOAuUM1RzBNW85idB31fcJ2vMNg7DVMWYe43LvwsYeqToFMrTQxambZzbfH+r
giEbBa/Et69MrQpv4+GELhvPNyZDdOC6YBb5jP8mS6g4YW1eUVMcZ1HJ//ujGz9edSkNzu9ODeeP
CuZvlCFVE5dRRHHz4tR4edGr53wafgZbOJeSx+YFTGHYG7g05Gv37+DiIvah4EhrTshZ7o3LlUM2
a0WEkZaNoRe4g4iqdV82bpVTwWbMZGdn0MD87zTzqxMGLGQIxCIh60asgrwpUn3nyHUa+VbWwigy
HSx7KBHD5ZAfnORRICVrFUoNQ0WV0lWr2YgWphSMXPRA6hC1prxfsnX7AjmPmHg+Zoj2K1xs9pa2
mBrEa1THTdhd7/UaAkScwlA2QY/bOJCyjDhqTNZNhk2l4UgPH/aq5unJnfSOQmeAFEN1vRD8WvMa
MLKfEE9Sn0PDGP9nltE+Wcdkt27NOh8iAzXnSEbq27AIyxhM2fTFAFHjQBe9JWzVYyxaEg83ntao
6v9PuFdFrXPYqhcd0WinjVabtx5jCH5D8C0X8hbOq5di7k7YgwWX4+LS48fX04AX44mYHO7w5yNB
Bl2ePEObeeyeScoWJPCWvl1PfFJ2UGflJE2R0SM3etRkS4kvee5/DewkbbKaCjfdkG11EUizM3Cb
R6lwmzJ8ZbMDApOyNO0KZeQEV5RHgH3aurI/g2L3eS00KSBGk57S7p8+qRO2hBRFM7QRrGBQBJWT
2wrxD+4QvikNGmmH6i85yY4WU5mfyQSzJ6R1fYevJhT0UejKgOzCuC7YslJGokSPIfs8BNiUWQly
Okiodi0WXCUGroOqX7+es6b8EEybNfEJ3V8l7hN0J0LF95p/32mMrhzo69o2WWoT2kBxnQwwsQ+u
8a3C48aHnPIej9jh0VA4G1u3m8bHovW6niCXf9fzcO+RB5q/7My0bwe3Fwl2JDrBQ7M9iqLEMrrq
uLd5PHcC4yCMEXe4eiXHp2tb/FY5EeY0P9cN+6Zkly9s//3UaMjHbpFl3MGbJBz3RPVUIL42Gehd
znrJFNh7d5mdF1MDnBZANr7X2tZmSk49AYigIT65m/jKeN2Pty/lQHrHQHldLaMwY7oSI2M0jN/+
o6CU+EY36iSyBdBlR7JEq3z/kjRTyZ2nX1dnLNXC6F4ohRZIbpvckCkKBDMjj4SBh8NtIRpWaXFa
10F/SENB/9TKhRJl6tbe1yTqWNakaBPhgKkfnOkJls2U668TT7iwHbydkkZBfYRuqhZRCOa80FlD
Le3eOJCOxT70L6OYfB7FP3MFEsNKzfgjwFIgSzQW0tTF47ZnCe1zk8Uldet/fA1t58gDeKTnuiXI
QfESdEC2Gr2sXnVZhc3LaUVMEzWvJJ3Ap3zTPcXcQ2ZHL7377t+JXaOUAVSHURQzuLLk9Zcx/MLa
KRWaP/E6kvpcF2wA1uHWgVY+2hEk5F7lzo2TbHEEyQCeyj4l9mF/CtgSQTNgeR1UCvcW3FzfR2Yx
VaT6dMKybpAIv/0+X9F312XRuq+mfL7ZO3j9XH0OGo9WtdfV74CKuzjfXovkmnyYyyrgdpv1qvsI
wV/VhZsK9n6OnciKDDf6EPXTU2TRmTtQ6eEKAMAc44JkIhuBtz8r1qDkZTQZijOo5Akp8TfUHWe/
pbI6S588O8ByMt/NkijmnGGpAbqMEpAKQ7LdlWUDI6wGSIGNr4n868VtVEsXLpvak2H97jAm2+YF
MhQslBG94DIudCmxe+XFaT1O3yOs1ZW3CZy01HkOo87n8QkcJXPm3izfpEX1b8mYv/w/Kq2Z2S5p
66Usyw/9nZPXXKeWAcJLuLH1OEjEyxnDRf1fFBl55My0NsPo8RP1CHW+daSxhR0maJw4N6KsTiQo
nGZTx3N8/6CmvnyCfEGAXJRQ1pGUZy1bP3ih6z3RXGEjF6sJugs/W3vT43bq/zcr1QA92bb4Mnv5
yZyWtKWagVzUl/6VM4Xt5TvJi31rTo+Jd9SR+JhJhZWhoHZdqvVDB1S5I/75anjWH1fHWh3Td2mJ
IowyMNOySGPdH3RlJLLS0wHnDrU+1R+FOFHVMmNf5HkXlxD2vi6TQmVovWhMDAM2J5jHrzN2ZvOW
rwHJoD2TLieSUy6cbUDMu6omdQiZyxdKzOpCjYCPK48/gENE4JD56hDrXOKsJNwVKxylvaHkk9hm
sP1tV73InDNitouEySo8cVgPSxCW5bHb+fDXtrhP6jvcvNGUXF+ejGSqTwACkHIun3VhvA2gw5YC
kDnivJNLdr9InR5zpcbCbZIMjdcGl7R4aS+Po1/5Mz94Ei/7PM7bTaCXsPIWd9Rtq+/V4yG6MWf5
TBt4oO/HOzvLPS3FWG+akWLJqJ1Ybu6/lCYyFAOmYf0labpoLrYVZjqFlX/VKUOAQc47BBTeJQXY
0RlyfN0jN1/bgOLsKSjbUsgzsXl9U+HJKKkz76b/f2Ms8HPXLkWsKhjOk05NncO9D/or5cnR54L1
f6mBFNtJafWwUiSzBKcPV82qYscX5sMCXVf88I3UKFG/VpKszv8e7DbD1KOfAqvf2qbS9jo/KBka
aexj1Hwh0eWS4Wl6tJN6tt2lUSFnuUV/xVHQSjc1ADaojkLrmLMvIFB5jQ3eqYUOcDcOcxrmWqd7
ycmP7IEMSZOOXkhDH5H7V42M4+zVvCv8AY0xzPyiFLov6jIe8DxJpD+GdLEKb8iYYmaqdBQ6OloV
hJ1fEl02HsJ3Olsoiu7ybJbcoPyadM2M+cRUZbi3TNvojOSAkKYTdxXLbReh9BQQx255SKi531Ee
BQMfP8l5sFokZQEYWpL1PoGrCACgjwU4xen/8tZYVrvaTY8MqlNNAXOzSbHjKXirBuuyin8vtppH
XEQCIY7wCsVZ7tXp7QjI1hUXh2SZng2ylnaE4Rbj+dBy8rkmihLflaqA/KEclkQkaASjcBfMPRvx
N8ItFe336PLMxVSyrL//Se2PGJHI9jVlOpeU8p3CeuyFs2Wf39ZflJuRW8ygThHEYjCzLFeUaYWe
S7csTZTgWPJYc2BXe1+rpdQIV6gMY1n53saf4+29V5MxIryA5cGRo/CfLL4Cb0UvJgn1tVDIBDI+
fR6DOa7GeC78AThkm1WbIjSkf0MtoSjKyTc5NQ+c4FGSM5t8s1ZZF74M+b3QHgITmJ8997uTFePC
UM/KMg6vKeUu8+n9fr0UzznvXMBBo7oBc8NBgAJ68Gp0A9L8NipCkF4s84YV9I/RKfVd9rI9AMW+
mgwIJrqe+cnD87t5p2VOoBcmK7c9iRMmtVQZ6wOnH1RMsR2d8KP7NXAFKGSaixVp1rejpV/3uOv+
jlpBU8+jrItdmxyRXpPLS+21URw9Pl4dTagp7x9z7ryppkTBQu1ptfuJQfXRAbH+C2amobWktD0J
NPoAH9Mkk7Brv+pONUtq+3SVprOJTVRHcAQIiWRDhKpVfnwcoUoTnLYlgzn45iOu0+pXqGEmL4SI
CqIIf/cU3KBy7yLW65UDZpEnB8I8FOKuUAzGE8NVUch1I66CgBszhhyegeG83rY3x/qgnG7q06Gh
DvkISjacptAo5iOZsPy4Aw9Z92DE0+36xwhggq60NjI97A2l5KBpdzFwdH8hjIyUD5rr9ycaHonz
PjTa/uMZNooIdSZ3diOYlvpZ4bHERQrgu/1/kdGtPuuYseego8IrdAUz0w2RUfJ4XWS2k7C1O/FA
Dq2+2fGYIrLGq3XXo6eXYjUK9ZG0rIOITFn/Rn1XM+Xn0th4uBwP1q1G/puAK24s80+keOu0DZIA
dIup/dDa3fvQpbAhZaxZvI91WQXpRRo2uW2m8ISGHo9PpPDfuRDsc500gYXckJwzTU36+hjo5jq7
18zCSgtyJwkAgZEsoXzRe3CjkuWEUbcKJqE2G4R47PSyg0TnWd0qD80GpL96v0hIfQn/TlLW1MIk
CSfjBQaM/fM8nownNoiMPBsdnJp83ur89p/I3/eLrpMGpiWCjcR0uzL0U/7Ob+ez7Ri2F8l+I9h4
PXmMSkWMAvpiaj5BBjmc/Ffi/qa2ivwMMt+UvVFlqWh0dmZkzYKNbncj/rAasv8co3xirQ3GlVuE
I5GHIA1Do4o1GB9bS5iH1OzFiCYcYox7RcC/om0duqYnJ8mQEct6+YHxNa6cLrvHUZRg3cgKO8WB
N561R4vX5Z9uVPKdppmJXPctLM8NHFhnSi775eEmpMHXdMXnwFR45jrWPzOMcLYqkYwAIgXrEm55
X3WL91S9Ee2zD+wVwW1OnjtazLZ/Z1mOv3P1nD+PD4+wGNkFK8LCxzbyGwrEzcx6TvKmNSe5xC5v
ZMcE/9Q08ewDXVaAb6X6bVaiPrdV2OOJXm6z4kdCmbAJVPk4Emkd9+OT5L4NeTfZH7J09geXqXbx
mw+aHrqxLSMTHpLcHGnIqzCTctOb/DmJb4Tjwfn9qt2bvqli/1k4KhUtia8qEb2X+CZNPJAWIPj/
x1Sy0SvMxvNqJZLfmPzbZljDNQO+a73jjr5jHXsIMUGMZRA/7h68qFgMTEj0G9dlu8m0/u2pqJmV
dBUpu7ALRiALiI+zUJ0mkXoRSahBPCV8Nwi/tITyHRbCkKX3A9/8PsvJaRBI+99tLBve/7sj9U/9
N519Zhs8iBPXcyAl3k8+WVlIby6Em8dVM2z1QnNwXeDf2Y2Sa1tUNw7Wf8ujWkRGHsC+vVttGGIP
Joct94KNLVaIKSjT+gzNlasYENyWwyj/Anc2CLUBZUghJJiVsEECJUQUgqJ9vBBp1vWNgSV0ZylZ
MLP/fv0xql5s28mOT5D+LK8ocZz3oNsQbImAmxn2PrPCIyPlK5KIsACwkt0OuGxej5iueX2hhRPX
QwUKI3UiKb1j46/1bc8Bfx0SQsR6kfEefKRNc01JueLoiKF8GFuYcwqCfVFV7v38f9bKuIqR6loq
JtZEOZMLS99ANRb8syDBYKUh7iEs+g1XD9EZMV4CAcxiWa8gzNuZvCcfGcWtjaA95KGG9cFxZ71H
TogVZc06CZDRDGM0gcjpgInfBQ8++LP9z19AhAQII3PXNIL9iaUVYR2d4HCeiYUQVCdby42yhow6
1tp6yHFqCVAQ1OxP9Ky9G/dWh51DK0+WYY3jAFoYadNrVlnoytcjdh0v54ZYJdaTDRVCGFnq9vgv
HaDxXv6V0MGqAIeu2oKtnRXsdkMmz05pr8WjYPHvgUsRZ9We+97D44Ud6RRhGirZAhB18ezG0hu6
Syuj9nUYdFpWNZYRLvjbBadrdanJuh7Yu7urANWsuY0RNucJiSOVf35YgApYXHb4nZANiA/lNSmP
WwGGYQ6zBZoYrOJcWukbnzywoUOBBNoIn4mvxyhqfy4+GQ/z2U7fSWOZgY7e2mDOCG5Jaqhx+vof
z22pbcQcaX1RrkWx2b2K5Jp+KovPNi5ieslnw21S8ONPt8P5S02DNUIcYUBFJ6e+tNT1bchndCRM
SZt6tyTRD9zSyG320aePGwhKa383G47T+nFP8Tg3iNDqGmVjCfKR0ph56qbG95c5jUb59mcBtyaC
c6RX8+rEdo1IyfHVG2NKgjhnNaiC+tvoLzNSBTcU6uDaQ8kk14uYTNP1Kpg8tWgjGGySPTZ3lqSu
gXBz9bjnQhEkDie+wnOSFZ6PdOkg2+SH6PrTAVkWu4t3E9KPIJvEkTF6cPU2Ic4BuEmLz5BdP0Lq
BHJpAWx1M4gdMlTnZmt7P+wWuZafAF6VIL8tEUxSOHgb9GJxoneCqEYJI04kf/Ta/jN/o5K8wgrt
OIXzlSwR19DRGk4cNhtqADfdg+GhnexJ1411w+g1TPfn2hAcnWZXbENaYVEVTN1s6g4Ki+QEkEJN
jU7Q/M+fOfVL9+C1SDBAeNVWGc6uxfsBsvu91BEzK/O4pY+f4K0HKVP8i7MSrkW2IH0h0Dk+Zf2j
XaEQJ+z3Wc6bwiP+os/6lwBrUMwaaLFqo3MI0A0a8TaKjKBXbnxd139wNHf/rK4vyGnhhKNh9PJr
nlpeCda8O0MJIOcwc6Oqfl8M+AbtegQUXqGAc8+jCqkzOHqcHayyzUChPZblDugb3tGCMEaSc7QO
Bchu4g+q5Z8we0UgZmdmt45kusK4ZLbG5tesDQY1oz+uQs3bsW1k2sW/+w2M6+U0ggFxQl6pKSQb
tUeseKgn61VS+QZA4UZvc1MEHnbFtYmDgQnO/xBtl+4aeSDTk9rikqWzFR1/KlnievPlG6Wis4gE
b7+qGgcx8fz6mdLhF4HeadIVQes3poQj5CU6tFfMsxf0ByqG4eNDMdMlwEjwOcSfY/n+JNL7aF42
7ADc26xQ9iHM/8W5WsI1TwvPW61X931MDAkhxuiPmfcP1/5HH8VvfKRt0gtrkGpsBFE1bropz2Gc
KCeb8aJAZD6z0E40wrDZE1kz/R99uT9dEbqwSCsVBLVKe1H3rl5iIqZTiL3czAV2X3ZHtLZHFKy2
6Co+RkA+X6scUb6Rc/MkCn+nVQP3oZ9fBB2ANnsyqqyRJO3GJ7uN+K1rIsrhnxcmhEJuAM0mfOn8
GO987gdJtaYJMvciuSqB/6q7KaEFymm0jx/t1+Kcg2EljFksa9MW2b28BkUbh2vmq58C+nkEGBHD
H+t8+dCEV6w4Q8TcVSfRbthOasQcWDYzcXOHl/UE/qlvCTSGYHofMesOAmccY1HGEZdajZeXXLOm
7gJvJtdOyepDpQspMowNNZ30AxO/By+N/DccZzeznAtNURQATpcQRLOvgTq6DGJCxdy/56pl54VT
+Yz29oD+eiJmRRbGT6ITGEvEhARtgA9spop4zDlAzEnFTf2ERG8ejzF5bjVyB9+yIhQf7SLH0ftQ
HSCvrsm2MpaGKsLI+aouXnylxWXbz8h63WIjNlwAzbK7M7ZswZECP65KSOXBj4pkp/899Baz46Pb
IvMnWO5yUvG7dP7G+L2iqWwJUBwHlN/U/63pj7vIFf8nR4yNKptkh2BrCfATFyi1v6nErD2XOVBg
tIV8WX5xWBSy0EVekUeZNESnvBBycw2huMiNRXRjc5L3cOXUIXdPOPYI6/E+RxnVXbSkj0PSLEoG
U0dleGLCjrocjyPaPJoHTkR4Dwed3x4V92UUfgCabvHQ0L5YD/pKHoRjU+Y7Nutxt1zg9IHIC5YE
5Bi4CJARXFTk9+YXV1uo2ceqk9DnZpW9aBwkXEoLPyuUPUA/jfdaDlakw/7/CbJk/pbcTd2fx+3w
LQVkOEHKNNTl5caZGbvnN6+42VEre/tDFpASV3soPavTWWNcoyGNZQDzoAn70uoqmlcEGhNxy8nR
GRCB/X8Rur4oseQlVyKUb0d+PKcibdxzcygqe9n0PWVwW0UTZmPocSqe0XJ5mB/TKVJXhqYmwPih
KdqbG/1XricOVrhVKPPxmDnjv21RsZsP4gITpdrs1bveA3x+o5T5KdN9UMqIjjB429xPqIZn2kyq
dxnKgbBBPzQz3ZsjUPckNb0+C1U56jZRYw1+rxqsg5rXGa5h7K+k+6aCimiXOfATC4FV5cjMjzbQ
pTRdJmp8kGHR+rq8VbFYOovLDUcHmXGHQJ/t3PkwRmNKuLElM9wq3/7mPdrOVsvbBDuJ+jmoCmxV
/CfnQWzoDkanz/qfp0ORc9rX/bCoYH9YdVmaL3YyJG+e43xxwC55cpuWyN2QglEN5vGtDUnv8LAF
UkRgTC1ueM1YYjGohPjr13KCbHGlWGawQnIHCiWHFTXdV30k4YWbl7b6RSmQMlHjGkVq3sAtNM9Q
PJWLqCROkB1d+neTbtr4YOCqGz91qZYAdXpSjcP1fLxWrRy6vrChcwNVG6YgyrzUokgLPK+e2doU
kh3BBNEqDt4vOd4Bik+12FpW/UnoVya1nEkgS23ehQktjIb2r8E1RqCZAuiYWOheb+4c7Dp8KbBW
fWv19fcXLAGmtMtDqfQRM6iPUg+I7Xh8Qg1PYEOQ9IKeJ1SduRw1WTWJeaVDUALG5Bj86wXxFGgt
VKX9Q3FhiQla3OhzAiV9lPY2JC+otBaGUnqhnOYm023joZrBcvDJesyXTMpiHAQae2hUCQt9Ainj
gcBD0FLht5XwXJsXK+AZSpRpp1rpsmMswt/Pld9l29xPzF0R1TCAsQ4KycpjirhJWY7PK1koDuJH
APAghDroQiVD8DdlZvFYxVDNncDvmCIryqfbdqmI4aVB5Xn8ZdacxAEA1379nfAKNE90nN4wk9xP
2p39Z4uDRKmrbt/SMlJGA/GCU6HkfvkVzYFU0pP42DgZusQ+LZ4LgjnyYKV7FZC7/GIYGVgjF4Yt
3KWoKU6gZQa2JokFg4eUqF3iFgzpv/iMm3bA1d88v8ltMx0LBeLjvi6xK5p0r3UzLmfXYGqO9JWH
3meQE42LrfI/C1Mq0Rx7AP1r1aDUmIystzC6v3k30eWMh6P1eer1aFG9JwqwEkChLRzgxNxMS9dc
wv4qtYYPbwWNsbVLC+tnkUhyXipJKOoPw4Fglgtupfv3OsoIG9LP/FydqwyakrAKvc18MW1qb25D
QGrBhHXC9lvUvTPMQ+2wKm8Yp/rMMHbqHabeZeOCV4oLU7/Fi0CnC9cwxyOPAsuZrOzCYqRIM5pi
RUa4+iH3my6luqVtCD3OiE4fd59g0sXptyAjJt0jWZ0a9TtgntIAMkylhkGdgv+HUSAbC7AQYVBi
KunNllQySbqAwPxTlGhQElrBeVXMyvsEStub+GBfX1gLCwej6XJZwjZtud4VAoY0obiuMb43Fc05
tZu2mOl4xVVuJbL4mW9jNXdaeHeoEHlToxV3fkEjO9D1mrrJfEBgnhRxorV6FXFr/5jdaooHlQ3u
SJi46WXzWFp/Rrr9ZRHQc81ZdHK3wopbfIzXsv2/LVyw0saTNp2H8OHrhpQVTtm0vdSukMmRCTrv
E6S7LRkt0njm2rYFGvHq3UIiavqFJofFZKOC3CO8a+YjO8WB32jGXfgnrgjMS1485sgZf1E4GwGx
hnm9J8PwDYcTjZ+nU9uzwa21CdNo+MJm/T3Uvoz4J/qZQtVEITH3Q6PAXrQz+qZFCxG8r5MZzkWN
BevH/+zH4osOUs3sgQyylUItro1ikF1e8qFJcWYLJl/buavJWBlbf4glh8Ggq1lzfkNW56EvrXN1
JNrNss5EICSGKs18JDaLCbWYJhQJ3A2/+YQ4kHaho19mHYIRWmyEEuhG00vBEEKJulBHox3unGD8
/D2O0eXBUF2UBYjJlzTQGd2IbG/0rQtxphyeiK9kT6YNbxPGlpZb+Blqs1rBZvqTiaZHpSHgSBUe
C99deaVKr+0OkCmXOkUeyLGdylWK3FhDg4OcJMQOeFc1uyp/eZ4zx3dvkYyNBF/5HVJD0JljJ3d0
a8IAaWpxHuq89+XRV98G6+gQoZKCtoIe+6sYfrrIo5nowv/Z8WJ5zsEXPh4Uh9E+8LsK5zep+olh
o9gfrUT+i+cxTlOPX62ahoT64m6TimiqDLm6W/OdqSyYt6yNH7V6hJVdztZEw4fx5eWCP7O02hdd
ahOaCfdxeGahcRpfmma4ZNp9347pJea2lvzpaYqTWKihl3Pi1daFE6rJ2RjHWiLyERb15frqjjXo
X2SbogunCNbsbbagnPBWGYbdERA+o2rnckhEvY8GkWPjoAYWIZ8brn3KZqC21t0GNt1biVTMSYkP
ARy1ECqBMK/JYzxleREFj/+ABWWkwqph+Ut8FX1pCODEBVY7UlyIxDrIyZ+Ii+Ug1oN32/ghuu79
pOsa1xM6Ck2DGeHRAVBzJsU0kxi8c3LOPQffIyZe49aSr4e0eT6tlh2X0sjH3SgfXUPDY563BpTm
nGuXTwnczEeEnCSCTNsUssmtnbtJSu02n2J1hxN2STKDpU31ERSTki3eY+0al6TzGI3HfPC2IdDy
Ztbrq4/GVIE11CnKwv7UFOUltA7xbFCQNInALn7BevWtBYFASUfoNSze915EHnoXBSpcci9tY3iy
1XHgLREthRMTz2GpQDYikE+lAwDmMlC5S7i5Qei1w+HQxStM1lxEUxvtFX2Ds69oWO4qlBhxKUj5
PuaOkUW89F0JwcMuf9jvl2oKSa83d2AvTqssCCIvfjI3a+v8cQjVPjM6zx+EdhoYVM0NJiyAjPk1
1CJb09Pxm27fe5Ym+uc7GE7C01cTyToH13XCJ273lmP4/MXXspppHIzO5FJNer0+2c9sAKtQaUeb
BWwG86BQVRWkXiCIChKBdd/YpQu++t0uLNywWTfQ96QOiIrvq8vBnB90cVT1o0LlaOcTMyswL4W8
Kfo4EQThaKT8WP3UUdebvSTUIyPDSUdtMlAj8SM+hAXWefh3/nSfyhh1zdZtBP3DO+C+Xc3do62N
/xFSOwNUxNi3wkq8nIA+mRzo344SNmKUcRdNseLwTfiQIyUv7u0bjLYIwsh8BRBN/niUmwqJ7Y3Y
QG4bR1tcijshX6ICMHlSiN6zYEYE6tNQ6xflkx6vascXX23zn8590snBwqIMkXE/xfuUiHE8exbR
8suakxQikeEIT9jddyw4t1Yu/4S6WhK/rEIXDVs6MnbcbIXX21sPdRNOT6P1GvVza5wDES50+cHU
ZgOldRzhsQCu62G7rdulI7YAPLvAVL8x5as/81mpuz7fDeDRubOQhHA2kUqmpj0eOVfDlmd93zpy
sfaamTnniEnDOKWUBEoyh0rU3LIn/4I+9DRTW9aj6sHhDBl1z254+MHtdsFjeTpAwx+ce/hGKoQl
Hs4ZDRfhKPM2Y9Zdtt5e5v6ITNHJnW/KyRp0lluLmE6YV3rvku7HcaeCnXYc7O6Oei7/kINvJD9c
wdHNTGMbXkYOTXldnNkexLCqfF2UkrxWZEkOlpBvaY40mpizYlP8VkFi/LGDzDpKV9fQP5v4+I0a
4/+LjeunluxiZh6OzjmhzCuZz9d8MIPvaJ2y00Kk8bfOHHQe8WbzWCrhBZIQsVNWh0LSxa/Xo81d
voa62gJvj6jxsdRh0nRzgm3yigw/OrPjCCR+c7MPPZeo25SFE1NWCIIJIoGxpVQvaDLBDG79tH8v
vuX1ZAAg5Tdy6Vw/NKGVy/MkhNEs3qfnpqBCDBf6aNir9hG9smAoKF+kq9az+N9OcwZXCthyiuyA
R/6y5wH/StwbcvdFXBwRaLZh1zNCLtUyeX5/FTwO8GfWysO1ijK4KZkYuNyRaz9YGUYs9UONel5Y
9MvAzMZ4SOSpQjKPCsd7T3UI1PRt7nPFS5WvNAZ5Z1AxswsEURd+2q1b1PI/jKlk4R29wclkwZzP
FfJMjaCwOe0m39KZ6DflWbN6mGVUEmC3GxOrbpomaSWd06XJbZidMVisrd7UPgbVKqhbzASFMqzW
MAeNrOylyWugPs6voFV0dmA2a/T87V6Xze1SgMkPFxfmKVZjKAZI6yrHCmj1VOx3fuM3JaIJBxN9
HPkfmIZOYEGRcDU8ePAdNK4DapBCcvo6PaRQXuXGTaKoZw/Tv0/Uw7Zkala4Ge3y3XJELtSrkV4A
stTHqIFoX9fFVjTVIXXKGhtJQpkRNy6YBgEwRx1QXgrk1sHQUaKUihQVCO8VW8z4Nl+svUYTyofg
H9PsECrfu7zeFKHbuNeJwE2+tMzEIgFrBJSXrBugQ7qrJqS59vTH7Z8wlj2D0b4vNCowi8Ey4rYc
aib6eYp9/hoHSnVHD9VNsxwn05aFU+6h/G0obGLqEaTPV0M4PyGeGZx5GHa/8TX482u/Jaaux+El
sVsFFrvxVYzO81rocwrsKfhT64tLwsbMjHY4vYc79JGgcQ77QkH9RqZgh20Vs+PiQYApefkYawLv
oeA0lfn1+d2yOMWf1rd+UFkW1IowuPOEnnM7VmmRbha/vFtn8+PXVhQVOHFhSb/FbRP3a1D3bwCx
7B+g4JAKHXAEmHR63RuWmxs+RhzLmp2gOBSnk0gra6scXgxYfmVQXKaCvA6k8G6rN7Qby8nnuiuk
/lQ+aHRbugLmcPctmYXLxtn0Njz0pWFQTzkXb9t4MsRS4jLRHz8NaVeCbhceKS+ARhmyx8WSVoET
m8SDsyvxsVe0apuhf/nVNMOsABp5t2oljpxQfJ5FSp16q269hLPFbSCL8RS6SWajUSbq5/rK5hgG
kmvwFo9VlhPxy2tPoNxCTWSQvLYU4e6ZD3Rg1NJ01zrkKhMfH2n4xVLbnY/tc43Yo3kbXzgzs4e2
GlugBjlspymjceZOyVkLWR1EOMhsgRk/ou5BSPe19rzwH4mgGNrR0RjJeyDyLSXiFFUqOYngdUbT
+rXgl9vo2PGOHw9FiZgDfBP4xM43ck+Ob5ThFJpohnXNe1PcSZCuH3bwGmnrSzX7A/5BfU5p5/dW
KaaJQVI/4tojaTpg7UBjx1Mx46gWuN00kPkFartFpMVb6py/R6GpcTKHVKUnQfkZhj3c0+rn6nE9
JNzq0EJYBVLpKybtSrCrFWBqzVB224lTMYO27odhKdHCHK2k9FN9cwLsf2RH+2bdl3ce+HHwPP7+
woZ99t0opPYDKq3eGmXJseatXgNww0zkkZ/tpM8W8K59eqUGQ+LSLGZcd1W6Gczr8JYMP2pz4FZc
NZIEvU4QDi9BEJZRoIqlhpu1h6m5zPdfvtm2fpcy4WbZCR5k1uesnAPTSyB0F597fO3oSgqX/Ktn
pq2IcpCKVWQU9UELVc5K7dUEU4gkr/HWhr4sjnnRJTpQU5/Oxbw+LbNI99j5h+qF8/ukZyvtJ3mG
3+GNb27MnJYxIAenH8ZSBLLwcRqvGFraPXv8/m7oGQYT1EKEiAhvCmyjQ1JMefie+VK9qjnOPlhC
kIlBrITtm36MVYdRUuf9rtCrOSmw3tvPolV9S4zWcjWZ+4l9s/v+mpbyVtZszWO2/hACVUjzKJqh
oePVXg2WCIsaaVBYJ/CJfx+DMOi5SYZuh3u4y5nTT5TdQ3RQcuOSHlpSxKwOzNYJ2D9niU1Cgco4
oalI3CezjD2szjpTMl4uSwr9LZA1+1B+9VT0QVIYO2EexgM3IHhEA7j8Gk2saFe8bHXPgD3ddhXg
lbyp5z66Z6ajpiJRv8YV80+HmiPcKt98iNmz+7usJgA4dINKRE2BQYdX9Ut9Hq+FglYiqhMWjEVK
707gA+pE1k33Xuqpus9R5YLCxaNrm+hs3bBfrAqXcd/9lK8e6NFq1KvAeFwYjk0xUgUUPFdJ4cHw
+5AUM8Q0yokUpoMXP0E3iq2PvaLAEeP1S7B0tjNnp7HDVAac9F33h4k2dfEPBLDevwif1K/U+Sjs
BX9Nz0ySrWKFHCH4ZnvpalytQfdtrYteDmDqnZgDDZB8nbr35aOQn3aQ+n7Rh83mYOUDXRQWuEWd
XleBNA1yjEavNy3aBIoGro4sXFD40dQrsmzlaPvhoeQqBoxFjE4HPBkBW6ydnBjP75Ta/RhKBB0Q
ous7Lj0MF5erMrcUCKyPyzNIO4KKsHemZtWXsQrhiKSnM5WEQNQ0FeOkL1X0qN+HnzHclisYYouo
NtKHeJPWdX7gSxizXTRbQXclJpnpc7lc7c/mD8wH0xIRB4CWYLu7suIZ59ThvhT80IycQyE7X9Bu
J3wRWAo0ub8iVQX7/CRW9sy32wYoGYcBSX9xLoQ+UKuomSZdhbDzqvxZQI5sTxVTEh7Raw/5ehSJ
eBf1d6/gZrVSscDaVAgJbBq1dQSVxgylfAsvrHHV1Q2/uK4sACTMc6gXbtoy87lWqc/JbLWx2UoE
lhq9cEMph/oFrk1zhxUBIjYWWRJ8zTR4QTxDQ+hjvmSkluZzQlSwCBARKAdsTRlgEt5pAWCZpFkr
+CkwIVfycQKUnXZ4lbHB98TWj2/gjCkaAeRMxxBiqQkv1+4d0cDXeDm7CPwzljJCbJeaLvtgSnvZ
8B7l0qsru8JSfZsbtWXgVOJIy12WsXtBlH34/ldJsG/EThMnfoZVxE7aTad9jKnYucZKeFjTzpXZ
FJcMQZso8uCBp8l8bl3qfKMrnR3OKMIE4yJP+PrWHXclmwktmoKfr+UWUww6jj54/ypyFruxxEzy
39dROSAMm5pqSMBiMCqchi8+mAWW1MHQNRP+dzDxbd3LOltOdg9FUe9dmSLRrQPU0FETT/BGt42E
5Lwzh2Qj2JJRHAT46Afj0XpxRjFOl83QDjbarPS6sIv8BRFE9APCg5x2vxRXd39kaZcxb2FVLrIw
Tfo4WzKpWnVF1BMBDeySD6mzpEuvawaH6ylGvoSSGzcLmSfoXGTjYCKvt5CPo1CNJ3sM9A3o1vZV
CSwTsldo0IxVEo0xhX8ftccq5dns/t2i2ycXEdPrS+CEUuwZnODWWHOglYl9hFIboaJAGGs/3X3U
q4Vbx43BjUbbttuqZnWFHGmW47juVkw1R6K5uJg8TaIErUXlpfMCCZa92INauvdn0hUPreeFo8Q0
lencGRaDNP1FezPjrF2o6yvDFlchzCQKA8Vx0roTjikfmqHROUZkkVPSzRZNe+fpPcJpqMqVmKhR
N7KEdmHl71zDQq2FhFQBKGwSGSRDZYAW0w/CFTrkwFZQcsW5XsuqFAJbHiBFeH73cwkol6i1DWGM
7qMfI/3WOaEvqK71wP8Um4/EEzEXRn247xth68R+S2qti4XEO3joUJychiAYTRtpiwUwXfGLe+8A
zWJLnf5X/MuaOxTER1yasVYVHlkwWHfoDmjudNsG/nux/XMS7zHawT4YfCaEzGuxHr4MZFEbJYTd
C2bobC2R/AuQ2nV4q42+yB7W6puhL3zjT1OIiYkjg139GgTKUcw5dluy+F0hFDcQe1fuoZnEw8Gz
pV3xOkSIF0A0ZWwFktjJ0L7eFZMewwubcAz1QYAtq3MPoRPIkvoGxl6mIjv+FKC+0ByozLURQTeE
gq5O7tkLbgB6PglvBAJcgEb/oLxB6sR4NMkORM1y301v92R1XCDa3HXGdSOFwBwv+uPH7gV9AOZj
9wOfgPY1j0dTOrRss/y6a0yYNUmYA5bd5MdObwR9dVZfZOdDESQczEIwZtZXSVGdPJeSULO2kzGU
ft25/fPFinGVQwpUcBiQUz4/Px5fAsVfrV3EYQwUbnng7ooenvPv1303MCLyLrgF73tnK3UJUe16
09nP91OZZhjRu/SQuIXAG1dX+TRYTYCWL7RMUnDfeZAdTHRLCtI+O1KqyKEVX9oWhhtnk3uWxtSm
hy6pBe3VA6rNc9WyvQe6ZynBcVVj6LZwv8JVFAvHe7Q1/JUm54vxX0JtpcSmxPkg6DWJ6MsNbHFa
hukqvocCoUIs5s7T/acMig4uIQjxKiAZTyguuT68NkNSu8VGH6ripaBHUkknousC/+mWfOm3s54h
VYJZeX64djj+wIZf42Q1nuYCsAB4DlEl8/DvBEwNFgRjoES42Un0dcRVhjMhfliur+Dvt94zgY8T
fNgXDRxygkWpvw33cm0tbKlnj3A0BAoGYNhct/suGEuk13J7Dc2RYYsQ6BNelrNOxxTKVuzR6iIo
zbw1nFPFz9dLn7AkvwP6VKg3tO9qwBRI0XeIaSI3UWjAtPH7QPDF97zsXff/H33Oyc6xGE/rIAkk
Q0L64dh/cZtyPLpLAFpOCMAN/z4Fhs9vXgoPhypQicyeSjRmy6U8dFyGtleOVXGneZ2jD5q/Wbk6
UAzMegWl8ElvHrMJx9+yH7EfgEBu/8ztBu/+G+b9jz1HxJreEK39/jsDvo9IgGhDULk3Kwd/Xmmy
U18uWDZCuubAmd6IP2QINmlTWpK3aqRKwsHZDl49qEKyJpuZ9r10tP9L0SnRHFcGMpb490Pz1EdS
tnYKoHaGRBK7eJMpGYEPadlfFdF5EhOneiut8a7WDjwYZP8SVImxurgLK3IOyfEXmASH/hqJ1gp2
jmC6avaN3suBd6vMsPmmgT7anPoZfD9rU0Cfn4cyuVto4TFx4WavBwNKg0hRqK9fIOV2oj796kLu
nqXzn1lj4lQxo6MNGxjq2b/7HTd1bJ475bLrV74s1o/0rPtn48MPItXkDPHJvELcdxAraWcDbhwF
rDKfs3MwHZwgi7rwjvIKsax4NfTCSdA2Arx1qA32VJDrpZpye6rhjRpPXI8zOIZNvzuE+SKBAAAt
QCVwTc/FqmztlGHjwlFlReNeu8uAsOHDv49ajYzeKy4yBn/r2unfGGet3ZIuol9wgU2vKH0FPgIY
yJM/YIVQyrvAuDyGP1piZ22bLruzGli1vkojOYWWWTzHAmUyjHl3hl54NKKXwDzULKX8zaVsJTPB
llCH2v90MapXUoV6OyRbwcIiW4jPq+Bue3gjNNQYFZQ/T6i2pjBr6LZQTVkpPApuqFRF3fAHZIxD
K50LB0Lz3WOKrNKPRyzHd7Rxa13s+KMeitVpBLeWcKZ7ZTKd3wDp0C+IW4sXWw5ZM+i4n24sqrkn
YnAA+STbSy8X+qlQUnOlxthVSGMD07Hqfyfcnxs5y8X3hX+yAsbGVyeMfYYAQBdUH9XkY/n60KM9
aZ1r1i6OVhVOrL6aH/2FqvJaL4xELb45diy9KLicwK5HoMrWpIhrXFDvxG7/aeNFT9ccM+ePPGva
GC/ahUwbUd+mxCUReKlu5dPoEisUgr12HH6BRI+BxBHIxWiktc5M6545QZrud1dRnYEsnnWFTypj
AH45pjWf5wsZA1sXBkAYoT2ABU8fbuYmmrmXeirkWwIPN4449VWRKWFZ6cBQfABtvuvxU5naUhFN
IC2vUcr44bNLtQrI/WcIAhSTlUaXLgc94koxWiIYErCMssBY78Iqe3mJbIDvxOjzmqOXJKWOgDhB
v3JQSoGw99yVdND/9yLEHDxKuIEphcviDlZLsLJMQrz8w+RTZRGT98NCTi66yig9gX4VsXZzr69K
YYhXinA2p3R4KALYJ2LIQ38NREgdpenmFk/C1uLYVsN8Ovld59LJr2xbKDpmoZF4QfFU/0eId3MK
Jeq+6+Q6YGO+TrbfRV3BdCbTGKbO2tqb5hBkCJuW5AL8n5ROGErvkGj8Zftc9iWWBIsv/lP6wKmB
ekk+FGvsLjSqeVnyCu9ic0iCdK4qZ+XwK1kN6WmMfvAB7ES29kYyZ40Gi94MQGaE6u1Yg/O6HFoh
LXyvgkhYMdcVIgAf9HpLVXi/qbw3r519DJ2Cmj1DpbS7/f5+vEfryIobj+v9y+LkrvvakIl+WXHJ
+z/WpZusvtIn+aHinEbSHOREh4ce5vVEAObo9G/okf66Ht86M65Yo+6772ZTDKwtYx/06V0f5SFF
vwn7oowZhOeKMn0KsGFCpjLOZxaD1Xw5YDadzehP7hDzQvmNv+HGySQFmVQ/BmQuSYA7ZPqnIf7s
O5VTifdAs4BxfV/F6VLousDq5qAQYdqqh36Ugl7dtwZrtKmGlK6d1HF8GlTmZtWtFz9o9L4wExCi
MSt9r6W0ClW1IAboRn+iXeW5DnlyGXiGqQbMGued0Wy8W2N4Ds5g6nOL8F6DueDj5p2/Dc8yffWm
lossvwOcnfDfq0zmikLmFml6ihl8jxSskYmZF/gifB+lDipTfXYMFs1o31Mv9kUlgaIL/Nljd+fX
b+OGKl2DSY426r2+q/RBZDG9M7Op5M7sfPKu0PCQQrriJEKxLtsRQM+f3jANy3Vi1Ksfs34HUHoE
ug+08W9EVcKFqx3WSI8OkR4JG3UVljirJo7ErL98T3jvjHWQ2/LjAVbBr6MDY/DWj/CFUNELTw8o
HJmaMODCmbH2RELXqfPv8XSUbNkDMG8uMGSvNoLFc9WdkFSSPXV/3oRPPT7PnXR8xt6NQFl3hJA6
NYXfuQuJmW/v1q7nkni4p+pEB8Ijzu1Ar3XY8SpwETWceker+d3MjFMFO9NZBJjMireN1NK/udOu
yq6BOI1CXJrmK0PuC3hGISHD/vLOGLeXbJHoSvJrLOHpVk7JBe6X2ii++E+1SqxCHuvNFGkrSVnp
swnpxVmOkeoCfFd6NKpXMnk3P4JDM5wuKHZ9eldT0jroWjPOt1TR2QsO3Fe69zFK9rbViKKXQuGo
XNTZUgYRM0hgg07MjdyBIhtvfcSx8L121g01gQbmT4mH4PORZ6SuteAYjq13d+7w4ketriIwHTAA
M1/NsfLF3PNNKEQ6t8io9zgHbzZ8+Y/lr2qhmegSFiYI9+0lpikKBQoFDGs+UXWzZNczQW5ceNJ8
5TqDPMjLOOfSNcIwxSxPpWWomIiDcxGAhL2f4ns+lXw3JbCdW+P930SLH6asW+qXkAopC22urYxQ
u1Hp61cegwEfFC0AVto4kgCplC2QqwUN0tL2wcUmuOUQHvg+qpJzVLLXD3ezAtwQGKQUJeL2ZFUS
rRWh+LxKCZVguwdgyvNlJK5PbOSJAODNAcMe2mJDCpGLN39DRk8gy6gX415q7x7bkeEfKMd091ZG
DNORIB6gIi03Hnq9Uqe0jqSdeRrB0uWCoNAL1gFb3t0IXAhIzkx/G3Ith0QXp4DtHgbnsY8UxdyE
gqtBtNCv0jIm30tW1/DAYgwSQ3UL4c/vjXCW6r/nd1+bjf+zOI0mVTLT7Sir3QREMPYaIJgGQp5X
pYQccWzs8hpQuX13+3ffIpfsMKQ+l4xGoUl3Am8MECaaYPyuMSbsRpuANMskzJSmY1/xtEFmmbZE
+vEiE9cZFBThUkXR9xyOzoxdomKok/q1dbmYQNSLS3ugy9gZkPSJ72hctdFaUFvG3MnLtNgcj/5s
Ms7jWcAcZrRakQKO0yoD8WQy+a1FzvBFPaMP+TNGJHxTqrqOEIPztBuptjJGjtPagvDcmijbkjfg
z6EfLuO/x2m0lV6zXg3OVCLeoyncf+4DYkSpp3XpPIXytM3whHv+1v1B+NhOTgXUgj+YFHAp4DQE
tXUngLKF8e7iDjB0vb3UoqH8h91jg2Qvib7h1Js0XKOBae9+nBMNsnMZdv60CmQcwAFly5R+hmtW
vcXTtdETEcyGeaCSC1zgjkehiJcR20Q3itjj183FS+w/GRD7SenZDrwjqeD0lzPwTnE+06hNYjFn
7AjDTdVyGqgJcVgWX0+ZDEjU33Ny1svG8m6GF5qADboFOErk3wJMXL0L+qQRLCFwurOPYRGyG/TZ
DNg7gZbvGWYMc7ww7R1xhnKoeGUo3TqFvO+tmbufFdekgSG6XBSYEDxqSz9wHpDfIgoweRJ8Ca7E
3xLPFt3vSMFeCnkGKuDHv3Bq/U24BBZDPu5HFMcUwvI2z1XR2KqN1woz0Ug4FYB+SUoKcw7Ec8/9
zthtxKNFYdJTICyw8awUZiXd8RG5gTV7TJs6j3cA35/WiZpxyZPRD3iRCd7Sxo/EwGhweE54Sdo5
enmDXEgyY/UvwPULLI8IQeokoGXy1Y6IoOzafGCEbV4ZhSvGcWHobrKTZlC++8CC1vzZzqNxPeMc
56Wu+o2QwFv2nYjxkjrRe3rA//Dc6adHFqDbjwUlfnPr6zj6CPZFFwNMKPX041LKRKEcHUuWA7ub
CVJNYDNq9HKjeJ1kfJVm2IRbEHlMB080pBx2t0+IWekesn5atLeUfeqGy+KyRXiwwF3ECr+hsv3Q
aSWfsyvEC9bnjj7mtk9Z7rXteqAhV7qc51PEroikJkxpAIeLwm1CcixCS8ibCUUNGhUsUWejULQO
dZqWCBf+oqtWXHFxJW/Hj9gM12gclvjyb75ECb3DnMYq3srhntNXxc+drxXXS6XLhy9b8V+piGuF
rBefTXIhOmlI6MGjhV2zufSdI/feu4gnA1ridesCuoClh9elynqGT7bgj8yARA+FKOl7YCWZjeiy
vUMAyP5M9q4FLkmYE+NstVL7xEOLtzuailj6WuaqRb9bwf6J9GS/CQ+IsI9QCHkchaEtuMLBrShZ
uybhnslBzXHNGHCKxF3bqLwhT66X0eA3UjZxgC0t4MTPDlDKYJwt5dNlSAA2bZeT1zURz/3tnZzL
E0BrFBBES+ZXhMkRfOk6eO5xn2SkX0tXd08p5nt/gNZf2g/NOC0UZwPb2HrBLGOw7w/CJbMGuf9/
7u3qi9AIVxXnjj/rPVrGsoNzFZV6vSGXd7UfHlJU1GgAmwnd29Y5Uhno9oKs1pskea6MHl7eQ1ug
5c64Je9aaMHjgaH6YJPdHrFwwnD3D9gTped15kXj47qiFp7lOCyTSqxbbHfig3rapT5ZUhVRtPUl
orZ5550zLzJvOyyFlvCwWwMqdPE/gUzvqaA2JBP255snNIutOTeO/hJXRO6Mdc7CGtOSF5u9Y4Po
0l1Zefc9IrisEuVHDJEMgygyRqeLIu9gJXSyodAINzkljVdoqcpWjXL3W/3b4ddQijm01iLKYRcn
o+HhKoNWJ44FDsiTPJ0L27250igSM0//cUt1WqkYWEuJAggLzAxCLpAY8fREETNF8zvXPBDMCTT+
1iBf4vNGxFepeDSWKzGZ34lvv+Jrk9o71yIg4eZUXVv81JdPudCzhQfzig+ap0lHIHa8ndWSwZ8A
KSMSUzFvQfQF7Ff+eYoN0QaGe9xddqE6uioisC2kYen6QVRpCaQBkv9htdlvWbwsV+9bl3hncrhg
3qzw9sre7KBnDNVG38nOJCDr1mroZEZyRFVnC8tbpoYYhL47t5cvcoSVCb2FiGnuq11G2DUeokvm
m1+eWX4dkstrwrP/tTpD7+smz9BjjFx6s+owM+itOqNlVopfLZF2S8wK60PJwqka3PHqTAQT7zab
r2RE4QzE1v7QibRbR+K6Lx+gcw8akUz14s1BP77mWqLncYo6Q58U5wuReWu7Rs55dDICoQhA1XZV
sP4ZXKQNnfock1UjOMN31wNHzKSesN8lB+hxS9vH5pvdpbF9WDJxtE4yT0cUy4ycmGj2wc2OguI7
/Vinf8PxgMHps2RABq/5zx+BOPsMwKEoY1UwHzlPBGu+FMmwgbZTS8jKzsdL7PZ1lix257JomO9+
O0VWkLe1lx7sXjgj9iy5ZxkfIXZ7kEQZGE6UUDJODLi3DtjWGGkeqQ0Zcbm3Zn0Anpemc860NaOx
mYFZkM8CLuirXQHeK8ZOzWVMyjW4MrmprvZMeNedRqdq2h74GyNLrJuKqB72nnW5nzoYnd/yUqUI
G1tBKecW4D4uHw6tyAvDtHeGNlbEuEo1wLYUmC9HealURNeCyD8gS7qc6IKRqvrM2xRIBZKOL/Qj
yq/8RzoKmrOlIxwQmwc8F13DWxoz2WvxxQd07W471k4lhx1CxZGhAE0kD0Y/q0OofWofK/629Z3g
EM4siopdh/wzmTAhY+QtNQ0NoiM+8JGtqjM+/D94qNk3ZpG5GNHdYAs46tKCV/Hhxhkx+N+A1Ksu
lmclgLrfBadi3fjOMrGWdxtYyHfMTlFqVh1V0PZheazBA12dL9424Vc6qtoAMrUbR5FEAp/ur8f/
/5aOFzQHyQwnq1wnARvDl+a1id/KEHzQy95+9E+dngCLV+WYZ4b2lohFG01DOQYiQAfkQ0SpXIxa
sZjsg2WP5+tqKLJNaqbiQ4ZwrfmeEVlpwgAa9G8YG4h17KPnvdroeaTW5kn4mKQlU94yvoxFaF1g
u64GVOZy0sumshzY0Lvsm5Z9PmSvzk2F3Bf0sjF2bKj1bwMqzp86Xu/fGksuEAFwgmWPbCj17b34
MeKo3x1Awoa8YsJq+J0EKBTlNHjLIp+YkGKc82itZgd31Mqv4O6ylo6miHWOeqYDpuj0IUn4WBNq
LhWrrkJZs8tI7KohbxbOAq7rGxiiXKDXTiG0LUQH21P0MlVHGCUiHGHt7Yppad00TIUdEEzodYhW
7lUuGez8cU4FtElF4X9uC/MsTnMkbRelQupYdzknSTzrslXURNk7euL86+5RQ9ZlYLVE+pg23FKr
dKzMn8Wm+Mht0R7TjBx+t8qhjwtLD/rN6I+V9/7+33TUY8s9BtwDkGR2PT8cdjmOm2AqMSo1IS14
P7YPKzSmz1BF6ZZEpK5xI1uoAycLRwDrRQBc9x3WqY0FLnoVrJB1PZXWByFyDccCOfgmVVYMFLcA
86WxiFTQ4sbX/Vaj88xwdXROZXJ9sCYT3PfzU5jB3VPOoFpRCia0enY/atZo+eDvedzFkkPvkFD7
CdC8vkfqp3LZSBYAzaSrsKcf92QWxegbdTqv0Elm3t94KKZZKK7kbiTNW6U/Kgxv+T3QJ0zzb2sI
v5m1DdwBUb7jIyjcVFR+KMc95fnnrvydC2+as8TQe3c/cBVAoNK6LB5TUx5qd9Wsd/mIrX7vTbht
fYT+TtnIwezr8jaQmgF3ADDQJ5LOPCMcDRanGl57kNOgKF3b7drqfvqBQdLBU12qe94i0KfVJqN6
BPxX6QJKaociSwdtwpqcHedVcnULUXa3sE3bIaxLcox+FI2XX1pjKCkioCuqMiZghNREUpJ+0CKE
jtTxcuDwLNa57vCQYcaBUC8lC0SMnBmMFv/NdBv+uYHQypMD26EYZqHG57vOwTYplb1FpACe7C6P
5T2iI72Lq6JkToTDdellWLobgg19LQKfrj3KUTYBNFiktWhtKZHu0+PBkOEQbzEf42gF2es7cCIM
KRF7k6TtmEtB6QwkIgooAv8Gl/CgzYmsIXfNiLVWmcyPdDnMPn4H55YRf+aqPLgn47YQfVwDu/FJ
8A0loDkdcji+qNZYMYLhU0gIXyPrNoawyPQsRAiFpNUpUpGc5CXzwfOwqVwONf0e11ye2DKvo/XC
xoVxfwM/ztMLy9Fyu3rg8hLB+VfsRm74sAwbQquHW1XrVXzOPZHKVEDkUwLn4ScfGQZc+wvu6LBI
g3kYs1dbFPdQLtVzL/DcZ+2TavIUVJo80txBuhYjq3LbJFin2fQjXYQTdTIPQD+HMjH3SJzo/Lno
DLUUEwitiC/oM3nw/EnO0LPcZdISRjxEVto0WoIp+1e0lmPwgFSjRCR3chmG26MwQ6sQ0jbEa/9l
NyQeJjeXYEnsvrkvejHuBlVNNWlEZj5NbO2oX4md0ywqUGdTvzDA+WU5dmxNJ0InnpNBBisMnM7c
s7hk0Xs5GtecW47by6t7KV1p2sxm3Hx9wBXwG1TE9A0QwfH5V/IDOwqbPA9PA4zWsaLj29+TL/bg
Pq3yXwsEb4SUss1rYTi42C8FcpsMnOR9fbUpJN0hPnfnX042EZSQnjUnCaDmJWIk3Cd7Q/esu/PC
WXDJUWZsZrVE/psyWItu6WD1H7tXG0dhjhDjY7xL/YhC6SxhDqAhTbh3NqropFpuNu3Wx4Lst4ab
2dYu6qVp0ybuxtMmMaq2PzG11gf3n27UxHlDSyQdW1+0o5CdIkXlS9+k5jPL3SbXa2gryp0gpCge
K7HFREMt07gibio8vNo6K/ysBBIHfwbbH35HrW+GTBfFUcGUtMc2i4GilEFU2JKo4RBOQnJppYfh
FR6rmi5Z0KIOwEzFE60E/XT7MgEsmQ/FX2ZVJZAdC8h3Ohvg5Tu1L9myHI06rqJwQevhEB9GYUWG
R6pCKt403TF5UG7ylJ+OixZFNouR08SdeINt78k9vt4ow08HBjZV3BW6KlJusIbudKNmvojarPM4
HSWM60PvNoKklTD37JZeS75lNjaqqE4jGjsUlIXGeohxdJ4+VBcBIiN9gbaCXk5toIrfTTp5zSLs
tR5pTHY2L/Ys0eydkD4WdDbq+PCIkrhAcfJPzLPY0xZpgmTGx+v7SfDYv2ruQqt9Bw440yPjv4nS
6u/JC5+IGYi1NTWL3hG+TRJZTrfrO1Duyx4KpCfr9v5jqTQap12+zJMIFCT5Hp5ZegQ+vHoI5Dkr
j3VUNjET9I2G+p1XPRlStI9UAdhxkPllgKVC9c5A7mQoLzWA4ykFYstYaaz2ufjegs7kT4TvCTHK
dLiuJC5tzbSvEVw5v2X2A0ic487I6LGr/CG0KKz3/FfB7YML0YJo5eECoF5boG2tUYYYciBRV0Ji
j793+f+/7ZMPowCHYLfYthfcgDbqerBVkhn+tgRyaW6woKXLOoy54VjiFQtVPtJoWkZh4LghFftV
H44OinsyMHJjBhxtpUh58YGcFddDzTc98u0IWRx+YHbGDcZ8kIe8LdOScuinksv6osgwJjNWsg5j
lhoJJLsNT8eGnnMb5UEKWyhnBwmu3V86PBR8iDZvx/g721xfOflJyOVThzXp5SRev3sRgfKQTsgG
rL0/loIo6z9Ij84295HXmZLD/+xXzX0HpSkl19SnhhNV63gvxjuxWHZz2o5jW/u+Nk6j47zpZ26U
vA8/UAdWAbgaRfLeSgLdTkp30OgcAs10qmMWoOqwUKudc6ydGUZRS+gZ0Hc4NPj/EUyfMy131V7k
jqOnh72LwxwQmUqp+YoiZLIZuRYzYxHB8HyVfuVJSXVSf0xkw6nG3AncmmvE9Jh7NehKtnhXhk14
bQY8p9+J2p5gtWWpA6i2sVp+H0dGAg338/U6LA8wzTOyYNLU75jQm1Qb1YTt/FrbzbTQ/G7wETWn
bqF+8N4Tyc7ybf5Je1L8lg91xZASFRDZJuU+QNHdidqanyvzuizK7ssk0RjVdU2uekucJczdyUrh
u8cDD68h04nhrRgKOmlfkMbfe1Jm6XOfjSVPApo+pKkYe5ub2BEHAwQPOSiy4ZvtYPosUR4EFFrd
qBqgOxdZKU/NpfOGQTcohrBLdh96x9c3d/Iv1dWc1FHLJoAr1739BnLR9gaBbSAaIx1AkBo/t6Gk
PgOT8OfQyD/YpHmox95FRpkSZJbq4S/BWcJjMiiSe1AclawS6vIDU2CHhhdS6R0uofbh2UYLWp6c
AZhkT6G2QjjRTKTYw+44np1Ai23W4LksmhvFCv0dcvKBYTX82j2H+DQvB4zdADw065Vf7a5sGa/J
Rf2m+/zve2ny8wYoeWqaMrsyM6RxmYTRKh6maf5pa4X37gNjny/5jCIwMIO3skqsnKuoeemM4FhU
bEz9vYNpDFyVWFQsPFgx7AC43xenGGKxACvTEYrozE+loVQEz+jmTXvuQryGYfgY3QZKh91qz9IX
8VUt0+fZWe+E76e0CFRExorvq0KL29ZFLLtyN/OBexoeYOTUDJe+JGOnGu8J0aIjaDN7d27kAaAW
GvbP19CwHwBuz/FVSx+Z2eo+b38twuPrQraRsRpC7bEfEYg0A+W3nW4MJZDDjvVmQVrXbkf5Wpas
xj6ewLQQFPK7zugL6mojyfoUcDZTkkyT+n6/bCxye1df+oOLAfEcu1fBhLm7+v4mrIukyQ8moqx+
LbzMujgst92W/44sMbfO6z8UgK9MYynfJfXaZU980/RiV43XXSj8ISK1gsekX8u6MUXcByjuXIob
JFILaRbWcZ23+uCv0oPeW83tgYLeesn2lVX7sChdxgqaDAnEQDTRQcWvQfT//lgv7GO9yk3mw8VH
vFlaAs38y3qXCWuN0j1ihgye7SmEIwi3WWJkded4wjuITy8FuzbCpCtPkmwC38axuswGju7LfK00
8Q18l7JsIKNtmYFccp58l2/ksIECbC6idVwYGoFy7SQBXiHnua4yrqrpoxQqRPc64jrOCDXOqEek
3xMt4fc7xkgKaS2rahQNdy37ItHLJw41P+CW3eHh+X6rzy9yB+L8fZtxy5xKX4m2+jeRx9RzzoZB
2BJis/P6rVla1pnriFp75BZaYaGVBizsuRyt1LYOHkJlgcH8tDjCXfQGzPaOjYIveRRpdFQLeQVC
t57Q00Pvu+Mn1hmukqcfHwUk0SoKvdbkpFE4TfN+pJ4IkjXOkEpuOJOQ7r0qmzTR95XSLJ0Ovm+7
Bnqtrl2ArB5z4e2HFuKKhXWP0i2ti95U7+E/cSgiEerq2qR3cvU9ci63i8sWxSA5K0Cy5rq1znLb
wqDODcAyXNJaJXvDy6go7CEYhMA8TCsKGH4CFuwH1YKXe8RI/Q6f33/ik9TWFoYodxYNHOPHfvQi
7WE4uGY+3cAzoTK3z1oCtZEt5wTFxNj9bJUtT44aAHeVTcRweKmsDzTL1LEzsIvWGj7qn1aZCPEW
Zyu+oVMI7YgJJOUgr3ahin/bWIj/UX781xD5FDfaanAALUDGOvud2PXZrHx1THWiKjIoWFsiRR9x
L0KmMjR/mYKLZF9qfEz1MBp55L/iKg/JtKuf0TiN0MfS2crMCU6tjNprHStCPJfMqf22g7ei+6RG
zFYleqBMF+AOGMkPSNYwO4NjNI4xIjjpL+vhC2CG229TEi87JvYb7+6BEvWiupmpjQP/tDbFDmlA
ZPWZqDzqxikdQz/TSHxmq0+FqyCCudoC8Og/0P6GSdMxScqiYk3SbIqD7Zzp2+41TKJrHhOCcBaO
ZPZUm/lkRBtVjcqBRZPFPIlnmyenTOeLT9ik3+CsKW+O2FOu43ViK8G/H2r7RNdzMpCYBl5CR7Cd
LZp/wzfyQ1EBYYYOf/oXdqIBawGu4zVfJ65vVPVrX90pgKQoJPLp/ZNo5I4yZ5JV5ZtAmwI0KTZ/
+15yLtzaWcxG397ZiupwASbZT7Ftkb9vN6AkYEC/DPMwFvCa6rWNtjJwSml7NlFYhvItApFZxRkT
hZhN1oi/kimor+OiP7C1HeMh1pTTMG4p49BCV3XkN254eZwD7TPEyP0sxYhd6FzypqQQekOfAOOs
ngA/oCRFwJtVOscuA5xIE93gky1vVvC6STbaYG/iup3OqvPt7PrmIIT2QqL7lzFG41fcRgHhhFOM
TkoqGrcoQhDZ9y58xBIFgLqtX8vjGorv5wK/iy9RHr3Ej3YoYkno2No7kR1Sw2uVQY/fpbEXsLdL
iOsd6kcE+Gdd9O5QToVVAfuOdal+HlAiV1Kl12Od0qAlYWYy6RshxbPxwoAzZkctzZxXHlK+Vx2Y
G/PTymrrOGYVowQtsKowYGNZZ+RuILUYyO/v61EoMPUp3ZlGyGrL3OaNjl28fcJyFll2iIJMvugP
OMSkV+WRsCWWA+BgeL58agrc28TbUKthUl9jDbVf1jHcGovXHx4TjKK2ZqYTAkfkT5THkeF0+9L7
i3xxkpOWsG/kjnm6w0OF5Eeh+974t+q0QWUPBBaDOC0qxWq4+YOXU+GLr6PC23+XCeKTgW04lCfg
TDIJIwy/GW6oemV3BaHWQTSUWHqM7AbOY3BOuknglYlmxVjUEPZSX9T9XPSRy88ONL32h9wVf6/w
exBIcVg3wotrjE4rjDxhVQ6XcI5j/EE0RV0e3Zy7qFgVVVwYRbjGITSjnXTjWi16iWx9Mk1k4qLl
gUpF4qfxNRvvIdB0YxUOA45qae7vaXBjGMjEj8O+RJI/gEJri+OmWNvBC15asUQxI4GZEXTlPpHT
k6vHj9kYIPYC5llnWxnAkAEpyHVFSQrDQzJJS0boowXMQZqgmfzYJNk/GgcfuCM+hx1iRaR6yvat
zSOib5vzfoGhi1OHGE5CyX45vonEjGjW/OsLzGfnPRxHoWYwGrHFgWL9leMpLi/mMNt0A5M2CFgu
h4H9MPeh0xdRl6ZAb8qawtI7YQkA3zTwd0tvV7GNpYlORPo7nXKa3CLCYsyQmdy+bsmDd2sX6ljv
pQ3n+Bhq3bJIt5bPiMRVUds7wCVRBBPfOzrD/RT2BOiXuK7Jj1pASA38Z9vUHv8EevbvSsTxQfoy
6U2J1cEJxoWODRdeeyKw9CXdyCBFuG0b32/E8QbNUDrggYcKQyyQF/cejaGcNOMGxcgLvV4sHJvL
oc1gFf7OX+UTEEFRn63ku0/cJ/lP7gvDQ2d8dEZ+BksoLzHkeTgCi6AuBRpddX8WLG0N9OtLg4Gb
mqyiE2EiYojvFk44505JSrqmxj6AjVgGFbvmwsrTMMRiKUMJ8pKARitWP7CiLABiy3dEJVuLZfYr
8gQuyodJv36JCEFj7PoY8WvUG1kP5hp2XmSQlzI1iWs6+4IRU19DoLQf/vwoC34ETZ0gm+tkLagN
H3OG99iQHrCM4QLBjJvGOrBvnSab01GZSGPJK6FZzkZV/WJiv+X8u/ufCPvR0CWNFNyU1xyVa76t
ueNmdX+mHP0wkPur/Mpa0GHH961akhyLLo20d3sIfDQ3Uteb9meSb1TYcU3t0XLYpF6TzjhTM5Oc
0dz1n75xpk7keieRNPNDtuXGFhDKWrwGLuGd0lR4cuV2nWzDGg4KzebXMoklEAoicV2iV+3FERkX
qzIYSUQ+on7W8fxkLuUN6DTYAEnaoH/7tf5oFixjJpdRcaUHx/dD55dBJcj1ofWJvSfofnRh2Q/u
Lw+wgjZuYexQDQFGotznfNWoWQ6upVNdph7XPVQXyeAzKDg+1Fz5PxbT+7rltHxtXkOEN0Urkb3E
B6O89tRjVAWO6KwU7p+GZ2rZfzyAbHg0A/iGwy0a1PU8YlaD8iKokvyop0xgwc/cbiKt3MjNmQd+
ktVIVbLOv23WBgbkXz1UjrQV+Kfzt3F2M0RgLKsnVkLM2+IYDUjfNIWhC5LwBn5CpY32MrJN/Kau
bYftsq3RplDd5sibfms4qV9qKSfVQL0CtH9cN9+ap0sxKug5L/eiM6IahDZXqyoqXT/qUoCzvHmy
+vBrtwavmVq4CGAlukjN3gyoYRRqrmaHGlJMcxxPQSmWj10FthsBRZCrhzZbwHJNiPMOkLyHXWix
2rdO2Fputg5wsHtT+v12+vbY4PtuHqlcJ9Uiru6hl/mnTca2IiRa4NI2IWPfL/zSEeWhRrwhax+l
mCCE8GCW+iwnW0hal2t6IkyXx5+FScdloQn8sBvWJe22cjtma7lR2d9vhB0HgnCoWHJqS6IWzjAy
4TAlzLLEVHq6fZYOkv2VlJOTFoikdPXfEWIE7zAdpWDSiHBRiGHu62hfxCFjvUSiCBQ2e0AaNVnx
+6Wi7EVSfhntPhN+QDCNy5OCZKUX7hj3540VSXqGbKVI5kKUtrlgbwUz3UZj6r4+fS9uVJtmpQmy
F2v1mV2dznonyuxhi30lq7RxeSeGYUrYFjI3AukmsQQhLxI5JUgCtrXWh0spLVK0ToGsMAC/viFs
svgDyJcUdJglJW7xntxFfjDnhcjSDHdcQDjhd3b8Fa72cuvpp8JQGJNU8DUlWxEu9lttm/nk/7k5
R49eOKkCRrT0PqluAT6vXG1BFXp2PY7xqpUq+wB+Dw7Lt5/9MMHbw7jmiXJ8oCVqPUhVU6azN4kd
9cJVD2yheP2ema9nZj9Y8H8aghw40lQKyUWjc2m5iqv6DUpC4KMnvXvhccRxJUCxPNho6eH1PSEF
G3R3++TUKGmwjkwZssNZAt1+Z3Sw4UrY+Uucu0vMHgZsxAcezJ82IW3HJ7pu4bNmLeH9E2fVimXb
rMjS6Am7TMsty8RRBxt/prk01jGfETrdnVrfWkD6MJM+j89OFCD0cK4Co+rsFnk4sUORChW8b2ry
ndrXyOVKLt/oRr5pTwVxNOcM2MKbUZpzV6MOzKlwoAZqcyGi5zxMUwIrizZ/AtJ29JaTKiM66+kO
99oJsBZi49kLr9vPjkrOLxq+wfInw6qeURFszh8AZQYL7sVUHWPGE0cZW/CxVL18qcsz7WfwdL8I
IglBwFkiWTTqNwDGLeTV4a1Z03ogy88jvIS2inpKN6I++YduY/JbZU6QhpU/BYyVPU++y50Xelw6
mp6g+M8ehW1ifRrZvUxeW6Y5OS7VwXpI1itzK5kZY1RyYnKKhn+Sy1qwP7S1S3hVUTM7zKWd42rI
qctN2AgelKfs5dVDmrMpB4/I/Oy6pFY/x90ZA71iUDWMLIAA4qMtPF+jdJmNK2EHFOCVmfGarMpv
8DniXrzVjJ3fWaXJdWrgkYKfRGRnTUXmqyBEcCWYBHEEplx+3/J4z1KcnpP1gPGgTlx6S1KOXwi0
h6571RgWj4f89D0nK22oAq6ltO0oIrRcYjuEl9W9VM2jcF0IXTk9EqgcFK8oTH+VFdlGtS/kHC5X
4IlvLJEv/ND1KHgghQUTUdytKkGy/Pwn6Yo2WfwYyduDtHykOILvt7MDE+C5aaKRG3+X4XrzJgFS
jnM80mllc/8RCLAXoMSkJfWemxevPBrw8OUZL6MRqoEUknLNiXrQCW4yb2leeFSsnex5KApv+yZx
l1bAVYK4M1bPlZxdTghPnunLxrnOmmlYXUemdT7COZboU2obLrKqI9ZUXYz/Hx4uDst6A8bdPEbL
VDpRf5YKabnk/zRjl9EN8dzBFfh5ngEu3biVG4BUra+xyPc9mJl/Tm5GlVCb3+Ye9vSYXKTpdPr1
Rlxwj9a9v34SlaQDnElKZG/WsAM46glfAxZVbkRupN2De6dvc96DKPs390Q2BDzP3sqFjp5eoIBF
Kd4HZvJcRqgK1K+0n5I6yldnyTDAOKtRUu5WO0XYgmbNfYTS6FdutmGuvAALsVFjNYz6xa3yfmEA
Gtu77RqkJN5zGzjq65n4id0QSnQgV7FE9qbBFyr5uYmbevtMsaOrnVCRtf8B+rPN/Y8K3zbvXyeS
zuyUdekGEk8u4I3Yucydf0MnjVcwaTOPr+u56Vb9CF/y7f7j/HWr8QJFzZp14JXENyoacp5UF1Mh
9ufJABPGbGHPe6eOIOhwhfmRrWTDMUUz/nsd8+upBo4/Us4YUFbgmmQk5qk48RWywYE0yJZZkzRq
mTyWD5AvXt8Q+S3mREK7v4qB1PgXs4ERQRjG5X6zpgwJWTBozlO2PwC2YqCxheSWfIh9toaYI6dd
iiIU/sHdXUpiLuEa3SK5KxR0WpCnHgpKaf7Oc9RauazRwY4T10hnLKqk2IELusRtpz7FrBOaEDTh
X/TBBgrZsfkpdrTOYboeZeNSSmwfd0taVxuv8cX7pX0fzOjxIJNCFyI7rAUAZhBo4Yl4gxhWm4Zj
2TFrxkBdXLynZUBq5GKWSa4NzP9iXd/llVs9knJnXXI3W02XiTpX8e/BC0/ZAoNhori79KA2mL7l
kaW95FBHgqo+cGIFgrTT0Q47EnXMtZTXqBD3RyAIe0lFuGvJoYOoFikwUd3MTJUaa2jNraOO3oll
22PB9rYpABkUmh4uH1jxdvrRqvePDgx7stBOz4F8PRsAHmpxZVJuTxyau49WATtJLrd+ANJ6sz7o
JARD8YxlKoqklJbAEoeCCEGctkT9qJESR2Ing5p6HeJkOB4wx6zagvLdFx+7WmnoS4JDFC2u7z3q
nqZ5wBAbGvyew2z213fDlTz4zw8JLAqxJqxa3K9O0u+mLr5JN5v25yAn5DmshML6h1QT0TJTCh/9
eZ/2HI/Io18Lr2Bi3pQSRYwWZBVQISIBZe1b4wzPd4PBTuutGHrLXWgpoQCoPgN5MObY2Ez8Yikz
6pY/o2xa25wXrXhOsbnhTMowA/Yrs23uQqWgp4v0PnL+QnmNUZ0wpRswXYbjRALJcwBkrCIEiwjr
rlKxplIwm/AG09NQhVt4aD6RJ5Vv4JG5k5/aMVskVirtC7g2fj4BmN1NX+2wL0CViYxfLQF3SI44
6vs4EESkaX/N2vHBdW757j9UycvOHNC/LQVlVP7jI1PwSPhzou8ErMwSVM0LZZ+PlHPhhvEjgayp
UMLrEMZvaTz8sTrUjhxFH6po71RiFLy2keaFkLJOoZUpR1gE/AXHoONisIjOcHv6owXAcgu+8Df1
p1gNdL2PAFOEpz1b2C/c1JZTZfJ2rHc0ks+0TjJ/BDf3eNiOm8ArnG33kHHz6Z8kWZxQT/S1yZ/n
37p9Gv2qBVuW89Z26w2/5dZHa6vqxZAR6hr2vLwuRx/fhJwxIwAve0V8jWjXMDQPFPj6m1Cyo0oK
Y6Bg8MEc0Rlo3MFYiBdDt4rtXnc3RMQSce/yO1H7OPVXnHDNo2x7ghUsursDQUDWR0kHLqGjgjIN
mPAU6xf5FUReJ4KGuYpawaCgvKusWzBG0xauk/kmCo9d25KrjvwpgN+PtmPKAkxmveqcBPwCdqww
dmVsw3xMivNEtY7arYexiTIIAsjiv4pm1auF3vWKenlzvg8ulR0o5aHx43h486e6ZjcrIaNjCEzr
DUX9tZjMupy7Rg80ds9iWd0ZQb4GLlSbUY/lrJrIDjAGOZBG5U2JdPvGnpuhLmOVtSi3+joc935j
m6Piv2anRtRnv3a4XAIuv1CM3pNv+oHyAhfiFQQIiDhwdJNnDMARaRYzYjP1v13hRkEaDfBEK6xp
oUmNn/TJBaK4DwNvFHY8zuOn8chb0NfABR7v0oXzw1qMBlOu4L+VwF17vka2aklG/IJrDJSHYc6o
u92eqgcka8XKo3L4IlVWD1ZrvfgR6tO4GxhQXSVi0VQYcTSCYALfu5WgB5E/VcNzHsyzIHaUBM2f
gh/fbl3KnvbRjgvdTlia973Ar7l2NmtuKFMzqqi2B8ubM579kCOgzdYkTxwn1EHLwTtRE3SN+yYF
rIiSvUfrHtlYOwGkCQcHKgwaZ6I3GHeXJ6iBbLe0Ci3lRNqeDene62QcJbFc7fn5/9myn7q8CDEH
pLW+dzkatPCfRck4KilP+6CwOuc9pohUA1aYF+O0udxmX7igzr2hWvOrOFO4ac7uREJMbNWyV/IK
niMhpmsn7QVdOMad962Xhv/bKj6ohm5JkYksAlIo9Vc608CmaVB2ThWDlbStbG5atVQPh9a8Rw64
TyegE362GGhFG44Q/DmuPSFZy/m/EojdZZC2nppWUbgxcBKNsYQe8qtVkjL2wY0aCzycFQ4I9A7a
giF1ZB66gLkNnuSmCCUOFNHVJ94SnvGBhCCBdLKERC6NZHUBMqejvWnvUCh9suLMczdwy7FDeirV
3lGwPmeKn0PoYGAmrlcOVBEDzQ4I0ks/wHSH9j4P3DDkbiRfBFAMgqDJH7u2TxqUvK1dTjDn3veB
CA1cB1tzaSD5WTU6BsO5VggsV0F8J5RjQp4fjyX9chGDvwwz8yRwYD05u9qwo3M3gibbJ1Bgc13H
6UAe1Mtg92C5R2fQ4JYslAI6E0unjaY67DYi/xcdoXR5IWjAU3EdE52A1BhTM32v7u6xhyt2dPpP
Y7dxM0en1YsjN79rm2xdRddHwjCJilA6pegbr0gZYnWEMganGxwGqDeLTGIwpW1RUIf75FFF+Y8h
OuTYlTATJqJeI9CU+94ey0WbTSRo5rZomXETXoPMYwXC+WQSaLiz7qG1jKjQDORf/AWvtwSiqrkz
gw0YlCBVS6KPXfIX0KsRIw5v0Aion+Z00JlXo9kGXpXcvqG7kzuft4j0MarphWNqdIVC0SlKusnQ
FQe0W/PW3kn8HR/BiKjffh8nayRGTY9sWv+S6S5FlrGndmvFJnd/Folyy3s0CoIENMI7Io26CEP/
WtJLgNJCClpCTETV7nGA0eTLx9WecO2svbQbKq4Tys0mmp+clVHc131k1FQztBPL7yacyQZV5p3e
MCeLEo8qRtQf+q8J/exM7sYK80MxdxKdKYyFT90FwLKJjh9BCAEZeHgPURmNWImy/XC5clEhSVMP
nntBsyBUqeTcgemG0/qaCEXbDy4Cds11YUDUlU8/e0Cq3JFlvy7MdyQh/txy3iTldGuSPsMQCQT1
FiK4dNYNHDzbJxw9NpgiEFUqYWpzMUkkXPhhCplJ/HrstnNcMgddSgVWNkYRGcjHAfBvtuIHZn4P
4YEFdQzDsQJ0MdRQphDbiTtangzBAz63SknxERxDIyNVVthOp07zpbPclSwbxpuFYnPLDI0qhk5A
lzkEwmzsrCP72kH8GdO7DCfm2ofxRqQTxaPXT/DSWzaxdeyDNTNU3aZcIRubaqLNSRDUkUAbK5ev
BzNfAzLKYKK7S11JKhYDKWqXbnmiObb8D8gV7zKVc42n20+v41ZUBHBBTpBsZ82b7kR/IbqVlfJ5
1EdDDIHddhM0QM+c4oM58sWjxzlmoO5mOSQtxlarnj10bKfNoeslUUF2+INE1maJlYS5+D27D39T
f5x8rx/FjQu0TZigT+VlrT4tMJXr8REKIKEldK79lEYVSLYGWt5mxt4Ms9Xh3o4fKY/jrEt2hrMZ
yn2/YBAuatHi1JbOhcvWh5OAZWH6rMiNWV5bqP4W8a3g3L8b8DPba8nFSJ8j6psdvXl66aJhWrtF
eYpwWC0cG4PUqwlNxk5OpkIGU03qqN1NB4lkfEJlTs76Z9tXv7aeKGHI7ojC3nCpZ5N+SiiShA4N
p/if2hWz7a7aAOcYdexsLUcy/y+p/KdeeQ1iYqRIamvz+oE614rtxJLtE6rAt5rNZY9zKuaGqos2
T5M9DJkK7TY5QrDunVrnmw0VPkMg/GgqdWki2JoF1pac0x+KBnVC4cWy6b9n1ZyNO0ppQ+Mh+74O
lMjitSWLUXtrIuMscRPI3COZYS8zy5Boj+x0/00N67ZWBWxjPM2NjpLWlOxYGnzDHjnVMXha5MK+
J3jG9F0rVnI7HMr5ggjocHlR0Y0CL98cE9KtVd4vIyC6Q8/gr+VjtK+Wej//htqjwE+W871ZfVNM
ziO6cQCzFo3NWd7zKXova1XQZcJj/F1tn6ruGjx8SsB1X/P9SiEzHgq+Y6c//X7DxLqYFsd//IBs
pQbuEI8fqA7A1UghliuCr8tptLqaDZ06Kx9taDhZRIfQf+eI5gkygePeDNI9flsDQWBWCyav2KTX
aMr7kW9j24rEXbpW3bDKFB7zvq0X5faoIdI3LzpJO7GjcioEUVabOmcpO9MZKx/JelEDTnmuQhfK
l8IYfYvEtA+i/p/cq/YWK6LSSsZxkAENXWP2rjpOjdW4KYDnDgFxFUpgXV1qpF8wl54zTJhk2UBs
71hRGgeWSv4DFIHnS9/V/yusi8HWzZ7NQrEAFqL4B4m4SbF724LojmD+WLK2zm26i1tRpRXdQLDl
TosSelVhvv42XOpnxxoeOf4PPQroQjT8KhojxmsWRbAV5APJfrujo+c9SNzQsxqK1Yjc0LQ3Evkn
8ogaUbjWG7Oi6DkTwBPpieAYcsL3x1eHGlE6ylW1d/32tG51m3F5lSIDLmqmiv6vHmakBk2t5e5f
BLtyPEJ7ISua6au3m+ll4pEcb7Bhq3H1VgrkY3wHakQ9doRiTFf3SP71/7SzVP4jFkWkj40AF80z
9ROXafMlJSV20iNG3IVaDuNRpXuSQ6w6dnqoOjHgum52HatqrddVKZWNGSQqTrzo1FoOqdCdzavY
u1bC9h76dSG98TNrQoSkuH0qahop1U7liQ3xAosdSQ1+vd7Ho4D7CGmQLJRPeKBE+be63W/PxgHv
5w01fydMHLY+YUJ6eRExDkKVz3NZW5I+gQPyjAmdkCWHGPVMsZxEHCZBzFaOeGNEsEgJKlS3MMPw
G8jgRyRtNp73aeTV9SAAu28TT+JTViRzket585fJ8WUdi2yGG/eBe4HxcTDOuXSb0QoWyVUGjVOT
sqmjPRVG58J8p/xK1nFdjB1b7V8MLzjBZ/Cg7MIJiItSB6+EM/1sdl+F4LzcyGldv4m4OhAXKIl2
goWSEQ/LRPCMsGjwbrNL0cKuWZ2/YVDedy7bf+SDUs5/Sb0KJJdbHmufZvUFhry6C/O1gFBbxI0y
HSff6sczJMEHvV7vleZUWTEFs/DjM2qilFXfM8hZdhQlr2ttnc9h6V6VCeHEgCZxrOrLxiLeJsuS
0CddzYEFce+0R8MsItx3Ugddn8PH2KdFYnCJiMpIAVUkLQFq/2Zp3BAwMCnX5nrTSHKigeUk0VAi
nqG2KYyFeEg2nHeBp4gy++T/mW1iMIffiJKIx6Iq8Y1mHRl9mlqLzrxUIGIg7Sq1Ey6P0B1eqZT8
Ohpn3ujQ0C7ujCPNLe4sWTmZVAx9D9ENeVv99tH9IiVsI8n4J3ileH8AAtc7up1+htHrORdhiOBl
2DJvN56ZVJApAI1aoRg9fQeJCIFHjIj3xjg9HyszzmI8hcuptSOnWcfRHxnsFuca1rM01pjpQVth
Qy3yquedXpw6+5mEp6dAuQRSma9UrDRTEfzbr/+C/p4/OUydB0vFehPoPeZbo1tlaQBFaqsBsxpP
kqoIn6iCqDHA7wtFK4Kr1s47s6syYDLYr52ztdKg/5Z8/A8UiRBMNPQJZ8xMMaYQGDmpHvAZqgyC
wEVuhval/UrJRqssBKEmrBa8b3bXa5N05H7a0O8oaynAiir+303gEHilGBdmBk3S/arzddXyXvAD
uZLZLC0bvxLj7A3KnDvKMCjHLIhIaoGKviWiCo2z/+RPnXpEBk9SOJpqdzWd81kTe/YPEo9B8ECY
C3cCWPWuQbgVSwjRhtnQ6yAttnbgSYgCeDM2eiBUAv9LckpgylOqf89EUB+I+fdcI7jP91CYWjWx
SJMWgfTlORQBrFYVxndEj8tmF+UOZsCl1G/Kp78wYBCv+rXopOTRUoGMRh4h3Nczj+zTlcLkuuuD
kArDhirsOBtplsNGhbrPfKRH0xQUyp7tmZe1cYEOMOtpDzaeEfsCC+7TYAqwV6RCmCOKxeaZmXLx
f2186WOPjQlzADAOT8dBbUfF44JinKvzlNVPVmy99qKovgjlSdITiLNS8UzrAcwqTWp15FJnhNOi
XSEIfgqKP/nsFog485Xts2XyxvgHbJRGUzF79s66Kce/3YRIUqTp11cF/506PJHUk3txjXXid0jp
AmFa4LUOxqVImuPPA8wUBvZ6bD6vuss3FbCS4sgimalu/yGbOvChtDFgBZ/6W8g944e+ikVHkJqZ
oadcnj1TpaIbJX/LvHdUMPXwFSLfavo0x03vUnFIZNSm/c32TfGJKxkHdfJpwwOSiaUepOVZMYVm
YHw9kycWkqck+h2m1m38dqWGjjszJqGIu95ZvVVtRRvsutB3VjqD7HudSu6oMlL/ytAel5COGXUB
//xcZTAF2vjzYoZaq6Oz2RA6csnJLXsyb8MJAPdEzye3Ef9n68qpN4uayABvGehhc9U6NbjPKLkG
A2xZjLZO4xxjfLeX6ogzWSIxiCFxB3oBlGLiBe1JBOvsTfKOXQBNWuFO+WDVyZAMbNCSA40w5Vmr
X4X+nD6RJD0Hi7BgfsibtTvLgfETu/HRN+FHo9IdjMZqTUtH/PMpbfd/YWjICZROC5VWoF75ub+Z
1Z/Va00URZAXQmyJ5c1dFhZrriEPt61KmNyYOWWwGyd2csCIHsO5dJDTJ/fFh8w31EFIWqPFbTOP
1opFzAb4TKXe/trsu7U3KXyqsso7sGfWEFvv2EAiPlmsLZv13uR9fRfF/+U3u17FvM4l1VJgUTXL
SHSgAnYQ79MZPgWSf3kuChN0STqFApfInMtmlzoVUJ2Lyfu3xlF0ealaJEKUEYwtJJlqqVT8hkmp
xdBYr7LyfyPdzTGLte3kLT8lnzhoWk/QNbQMmyEgNnzpgnqRmHwL5YcxXv7hxoHM9T87s4l+A3+b
9aJUK0ijxUijwDN6wqt6sVs259e2YrDcVkuDPjTIYr/yff/HJKUJ+IUDi6+3oHSCs/8DcSc6DMnR
NF4ekO1UoqD/O6ks8fyG9fLiGDxBPU3GqB9tzBLB7DfEJ6tfjJQrFyS+ciItF+URAHXIqd4PBSa8
EBojmgQHSTj4xJ3YAMRmQYNUljQEP+AVjwpJLYl/xWponOFGRgm1ZPFzrtcw7HHrxdqg6ct5g4nJ
oE8tul7ZPzlp//hXwntLC3huDimWbhrurj8nWHNCGnD0Sha4npfL5oH8A1xkXIulrYpV+vULzaEy
Kw+dKZLVGheHVlcNJm7I96Y4BNEv1FPd0l0BHEElS8eR7jBbCADHSBd3pp0k2Mxx3O9QNm6bpqaQ
5HiwsVqBleXT3D9mY195k9lC1/R7w1EyhqXj2GhxjaecII/W6fymwV7Zz6Km2P7XcRLEQ0UyR8vw
En6A4a843/riL/p6wcCeHPzlNphK5Q43UTUrnFx9Fbbd/wUi+oO8vvFwDSn5N0W5Su2gOS9VfaRC
dMY5va7JNCBTsVXRkBiMkx52TnZiFcmOFjUNrHemdUkJ/EJim8N7x/61P+SQ/KLLVAL1L7CBU4Dy
JWq+cpJP89mTn7//kJBUfq07DoG/CH4Xcpx7AutaIloqu43NpgniEbQU+zhArM9tn72fNAglU5OM
A4xMVGpx1ZaORLL93tQnctchOQhDP0fqlJXOXe+y4W/imGIK5immc1gr89M/jsOglbEo+udzQ1u2
4ywC+LSSsSetsdQ7ZxJZr608JptwG3k/Wl0Waaa2o24W5nPOsXNeUrvu8Bsn3fdO9CXLbPC1X6Xv
dKfVkyeGJY53SShSm+15JsITgrneCAf7G45HqIK7FPY3iDxKTH5oVlgYruLUdm4PTb/+SGUDVxYe
Eq+ToNt4FeYQ9Cvl/cjySjBOCVU5xxy68hhAQ/odUNeqiuDlSIC8VXm+z1bQzUKmoL1zVQ4u+Ogn
N8gzkkPWfYquvWpR7ODH27rwBWt73JWMM3zjj8OwTTW3WkpyMD+2Rug9FDloXfLKLmPJ+R7EOHeo
NicZ6wqhFnXXVOenov4uuH2n0wdxClb5jL5YhCwKVqiRXUhyFFCnmcGhFxK5B2lZ9Qn7IO4GeMlc
TIQLArI+fTMiR8KikpeMti6EwxeufVy/KzeRlZTT5FUnQ3ybhyoZkQ8UeJqRufcN2Ufr29szI1fH
WqMAhDAKkGbkfTIVRd4XTZk1BOg0M9gV7p2KNO1RkL/98WjBQfyth82N/Fn+Pm6oNhNF2N9q1rij
bhRca8ZUaRmJ4h74twXIXs1iqGILneg5XIpEzW4wOq4MOEKEU5KdHlobtSKAtdkp1vmUf6/WJnpb
6ORDjTDWQY0/u14p2IhJeXZeimq5bnE54Xbaaa21r/MdGvtKH7cPYgHandBV3GGh8X1SiYUPYFGP
beksuGIxGqQBM1tj6uPt68YUAGY0jVjAlxl5hYLlmBR4hvW37r5ZrNnR9fpBJdLxZBaZtd6ssJfo
Wa4OGSxS7ayGHLkLZ9+oZkLDpEptkQQ+LUnjxqI4lRwPuqtaPhsLbkBACb0sKg9AU5DXDFEnFuju
XFG+Gjd7RZ0LBTOiKoaWOiKfvuqKnmhy8zdOd3hudJfv7wMqmQQVzfUvgCWDv0hr8i9sfRZDTNdb
txBkGsIQ8I2zS8mDPVaUKnAcbCzgv3WCz0dTpe2gmn24edAPsQpZ+3YF4tCUOMLkxMOFQRgNUHI9
QZYrBmIUMNzLgkXt0WhqyVCnm14dT7OlM3cXvKMfHj3jB38eSCGksECO18FZS0HRokcLg0UiBbGp
mrxYZGjoAkRN2c6debmaYXk6o+C0TW+hhmzeP0iSJkYvVEyskazj4rBv16ETt8k6lJrf8/8BKLy0
i+tkwxLkT829lYOTcwe+2wXor0mJt6CKiCLIuy3Q5ktPfzoPIpGuGSLFsf/ki1D0LrQKWtvo7gDL
WCUXjFw0L/dLRNYQybPwdwhHgcmXVnKGxpYZP7a3Dq0P2Q0m9W8/h86tqmFh/j1OcoG0TQ6EIKiC
wbxBORO9E33JqtS4M36UU4RYcDAaqx5dJscyPDbBJby46yYuCZmM1dK5ibTz4/xdBGY897JeZwmR
MdmlNlZaSnEdqIe+TubmFatoVfhKMWQ+qbCN/QEkJFV/UDVgeWFfrUlBLtAWWof7UWdbpOxhFTJW
JB86u4aNiAq6/UtyAM+TLr31283SFZdLyqtmjIYbrUQK3+4y5cTMsB9hk87SYpp5C8eXI9pQhTUk
cwCtlXgzhKI0nMNZQ0d7rM5jfRRyvfgVvq2qh5/WpxvUooYbPr8YqCs7at0woZ3f8WmPtZ7mj5Ii
1wuj69RS99/yE678ZFoItfX++4zbiE88zInItexnejYqFq1F7xE5KRIit5x7UeO3EpqkOnO1bWXe
SS9jUhEzYxr4eYV2o+VSkIEifeurS2P2QtYw90ITXJObhujcavIUyYslwUb6FIenDhMLLIVnIf2m
twtOaLoU3sXeIA6vux3uOpfth+LdXbcH6OM2vE4SysWoK53c8/Wb+C95zPoIE3mF8+aP0YR4b0vi
mDjG210CFNs9xjfPAZJH6UlWkfjCPgi2/dmr0QExc8gJrD9Fe3VlEMDCy8iEurAzL76KcDF6YVGd
tCw//uo3EzNXN9JHpWQvsjnqYL49O97vs4srl42fKOZTEa4eqaPUjx0C/g3QY1W5v7rFuqpZ7k+a
Zf0Ikp7uAbgDOrM6y51wWZYTvj/yUHuQZzdXX7n7ClrO7mDniqYwoyFClxtR1pYGZpRXNb8vEU1+
Y1nM3M2/BfcqHjPYwXuV6/xmQJgoAzCIYEviTumGxH2JDdbt3c82ywhqZ5Tl9x3Xso5CyAsnK+mb
79u/p2FJ3BsYLO7WOCU5v9+DikuOB95yJFDv6k1AxqNF11o4P0CySWe0tQ34gtTltCsf7VVpgKBr
QlADmQxZMQRdiaiTsK3TwfaCJOec54qunwkq+izGA8MWNtqmMjynvd4WwJ9PQ2Sp4It9r4OzcVqc
LN1ip5RIFF88zlp6Me1ge3VieKyw5J/E3Mb3C81p4t+hnzbOuMtzHUGzuOlWEAI5Rb1yT0dm2RkK
sRIxGjHZHDXZDS/Lr2Eiemqq/vTpzovfWzV3ZNTtbZPRPQBU7iGO1+rbgclIIh4Grfau60DKhdT7
eKTJv0NiXzZEcCwwsAAxvfixgzHy73zzo5slbVm85yjPLCCKepvIRBUw/kEa24ySWCR3IVV3XvqI
z/C7M1mSxFHQztOhvS3Jo/rg9WBmgHQcyI6Mn9frru5mNEiBZ4dV59dhviR6izXKMJ/uwYeB1S04
KuC/zEwa4ecxMQBj2Ha/omoRWJ7+rzqmBhZkP/RRjsaRhUSsNau99GwHfSh+SJBIr3hleCTM1qKK
wtiU/mA223gCbxXL53B40hu1qFoZb8y2kfAU4fFCL6UAZ2XkIr8wkuy2ThTznRH59UfCE6XW/O2L
ZUR+zTcmDQwHqKEYpBw8EOngXVCCGPhEoP+QaoKqJbCxf3I3jUj+fU76rcN2jUD+1W7OjflukPNa
1pRatJJFtjazjo/8tqz7Pnt+l1/71AM1XeTtFxtvncx7tnnLe+mhedHDfCsOjsZkEqkQtLqlcTPF
bQ1pGH2VaKvkYVGQpbpu3qHFWfjOedG44N6RLzwe/e7QaueCkrSa3d6wpWpiwH6jdRi1rqecPXnT
EZZAqQ+UnCFpiTH4UwmI5nIJBE7KGuLPauSH9wlKRlglOgZWs3IHrln7uSkQ5xv7bpFv6XnTPwtL
e2mX7xIHIR4qqi8tifDveF1ztq2RBB/HAtHOSJcoCi7yjlRJWLb7WfBQcZIrMWFCuet+++dwU516
ibHW6v5AxrtMgremeKCr0Ey6U5NEgyjkam/ZS81swCAtBhHrO3ghmLcw7mhK2gTLKbWvKbG8P3Fn
GEIx0bbe/o+oRql9vjm0K++TBrqS/HugxF2t7Z9VWmBPUIi0kfHvvBjYO+ENYWYnv6JqMUP75UqB
DO/FZOskxgZ2CBgbVPsU9IJqFMfC+DtrX9DlrBe+HzwyVrGEhkt8KVReXNIT8urACULxHDsp0Oex
SoBZ830xEgmokW0CTwWCYqk84boPaonqLw7Uxao4eEPSScRgQyjOgt/QUzLqDfE9yyIFv3RRNAsw
39BHmY4jMUEd3PbYOhMTY/R5ba05Y+Q42po1XiMOeY/QbcaBvma8fy/m+UPkWJB1aciLmsHjSVjz
E32iSjFX33AHLd8Gf6mYPodr3Z25LRkjpjQQFcxiMLQjeMiJEeFlhJ5N1uSUFZrAC4f3mwSQ6n9A
5YzoCWzwjj7iHzGLRylWgnDictAs6hYalAaxFN4btgd/gskipRPnnjyNGyeJ3P49LcvrcaVW+mAy
YqSYsShf5iIYpAxV8t3q2lc8rC5RauU2PPGmHOORDh1jGxsEqCZr8b2JPd0S63nhwKtJ/xlidRuL
UZn9JJ57W6ev5sa9AlOYK3sLrD79WUuehv2khIXHdAwTYCSCgiY13Cglyc2XoqzxrfRxEulm68cG
2Wy5/e+bzxNOmYl0CMQziRQ/64BLoDl0ZbRKd1HKUEU2pwm0MQvFd8Up2tNXdlSB3dcz9ExWr+V0
HovxKXAJI6u9x0pkNVaiu0zjprG6RD116ljFCSZkYQb4/kmuoD9I7SzDspaYruvtWIxX+6kKG0po
+jp0ksndtlS/Ft0tLKHrxpDK7kN+HtSAkFvPW/b0BWZw2YDSzrKxu9mtNU7Iur+jIvr3faKFwZhI
KEBoKwGjzjZcLzIq2W4R2WclEspu5JwdRgICqq64l8enkz9/sGsPCCvzfhSZZOHKX7ya+/foiTo2
ihrEpCCy2GdZmVwH6ojs/zXMv93YyDBYGHoO125uQ5hegDuD05C8lRqsE/vzeQEZ/0kK8OnEDGHU
qR5mShESpkiSMd8F7/kQ2oKqjxYEfBup7aJlClD+BqnSJxJnl3y9GQhfX4X29LHr5R2BAnzhfX0n
4GITpkZQ9dO1JZ93Q1kLZ1Ddf2vS/US9GnQ0+yzM69+vJug800VFdksrxTlVzAB4GUfvoYE6S6Py
1Q6GdTgk4ICNCmNptcgAtLFE4w/OYseyWmpLMPnT/XBJwgf8Kf+zEQ39GkQNnIsFpKbCQzCow0P4
z+BOTfPW1Fvr2dGlCzR9ps16hu2fYNiX5lJfkgLh6dZkSYmuVIDTjjVoGddYmrJmfykxKf+mk61U
tzcwYqqWZxdsbUdtW5LIb203mEQ5SvxGGtxZDCuE8jZaGjFWBB8syL2F8D7WcSlOOKzuFurFkFid
4jRjpCqLMgEz2GoX4rSx3dfCqXRuGQGKeXHXEUG2wQ7IBZgde572vHzdPvI4Acu6mbXiyicoqG6U
5SNKzdSL/0NAxHk3gWxzNafErJMG4fSQSto4e1Po3YQi4EIkF5qwUaDOde0Sm+Wpm7pj8M9H4BZl
q9cupq3HRpXmXDn0ZqmBnXCScni+mQmyQaefDaVwJH/kTFWgAizJdeVed7ZvAsL8j2qXbK2FrYhV
WY/1sz7dntJ6I62zCUhUz6YBvylKFf6Q6dyjPzZFuM+sUUq+aAy+ZzOCGDwllCoTwg5DG7Ydj2Zd
dQfjZTE7vCiADzH9rJ+42zX9mbFudfkoJF/O+DMFAS22FkAWLMTxh8nz0PuXNqV3UHSz10ah9ekK
7DN90zEjzzQhwrXNnofJBVsdjho6Qq81AszqE0WRga85bZqCBAFKuyII9AdZgJk7xHvhsiJrCBa/
h3BEs3taNybAlFe3E1/R6eUTUDy0MFw31cSPMsS/r3mSOvRMWLjMxrSwoe2hYokh5ZyAsFsrthmr
aICqfGjI8TGxYWmJss4ZhMF2DUJyb+lIvhJR5nVgJoUuDkhMWEsDtt5VSII2zhRFmuYs5R0nEe18
ySgoeVsd7Oh4yruHJlNSY+gvVaT7b7nfMghLoqA4GKjxgLxHoZdYcfPyyrj16LyaO66VTnHefwq3
1w4qaFQb3EkY5VwdK8q161fVWQlQSBApnlBGicE6g27F9NF1Zysd6AEhr+7T6UdaJYNMy1tIyosE
gqvsY2FAJw7msHr9T4c6StehEtQOqrWgB859JWlKJh8FwKYFQJHv5ROgK+K2/RzhfiBuAy/ENz4/
K+b2+/EiNbairbcAcnEqWT+DgimzBPipSWr7/rYMQP1B6APdEXFYu4/KDFjm9RKOXmhDeoT5wiOj
OyaNjXAT1GCngnAPTyhvJwaT/5e7plgT/KmMHNei52JpF9T7TwkX5IcvSkyWowDDjZbhUtvWdTKs
p6kUws3U4motrEpJWqaEvKlYyVrGDx5J0PfBK305GeuFSo42oAyXD60O/lsyseuoLtUd5LfqDl5d
x62dIP2QK5qzrt+sEovwbqBEKozJUqNeQrUxm+XYEeH87nqa2mbAQ/OUnBta+YYVJmGOTcjo5n7Q
nhB7KMTRDoWO3WvhDGAp6EnnYthmdpo1wgKYaoUntI+03Bg7eFVP1VPTG7746NntjP5ZRMy2vmxA
QCrIuzBiqTJSlAqhmI5qCDAxLCSJ7NQG1MRZxJl90rhKU7l9n6O4w4XIn/aJsvXsru/QeBDoAlNl
a+uftda/8SbgNIRRcdfIpxQon22niScIHhEKgm/cCea/kkYFas7/GoeF/XL4cxVfEyRipwBdackv
3U/xNGToYcMabNGAgRxLE7BNxgk+i9rKhX0gD8vhmR3i1jwWsP8Xfqu2DK1x2AqWND+i7NoK+6DL
m7eHgO9M/PEGu6ndD6rrASHJ/BBI8wCmvTd0wScewVNVt6ouveyKcFsMIn9v4NhVyv1sekbQ0NwI
n80j9aPcWNBBVw2w/rEd6PkxUGc4+jfDSHsTDgzBNcfaSy78V+iT2x2Id/E/Kp0nsrTbCNO+fgUI
rxYFDr2iQq2N7CtIXDU2HjDU0Gz8AbkmRZ4hkhGgWNohTng4oDEQB/Atp3Ks0Cv5uu1utbJlaXZ3
E1IOZmclMA5iZoP0iPt5yi//75M9DSC3yy2kNtonOQ98l7pH3+dbWXQnhKtHKd9JZIjvuTIiMdkB
9EekWE/NtOF4EjNrtZBr5JrxAdDp5GkIfqruFJEiCr+dn2OWYgwx8AIPd7AyYgY/7o+JE0LQGXAX
V7nh/t2OEojxBWNkt+OrnZ8w1nz8AkdayR/gTmWjgf+b6BaAgH8Kgf5xMG1VGRMXTpF6+u76ybqU
/Sc5SO1Q26TroC+je0ZZb3x6377APQyz/toYBC06vM5dJYnzqfkkjaGtlpoaEX2613Ssfm4rKbUk
rV3pZBH04I9z7//EaVgMAauOcS4apxvTIOeF/fRAKsBQjJaVMcEoG4PdpOPDo6eC/FwJyf0dPyaC
NJgZhhcfdVA1URzH6BT5ydqXXgjxfa+dyZ4jcrO9r9dvtj+bI2Mu9MSMu0c7XT9Lfyn2lxm2x7IC
fbMgrJcptKHPuSceX2UQA31sxeBkH6O11Rzar/Nbssx0sOBPDoRGvG75rl+0NopqXCVbS4srcvSb
DkyBzOABRuBKZySS2jmHynVrmDovyceXztTQ2PeP3i4KimORzubBmqrilmb2gBwLKnkvr4xUS3nf
gvoFb+EKLSJS6cA9PQDuhIXohfFi1P5alnCzc0Cn4AK3xdaGbA/dQQAaignLIwJM1u/HI2P0YsWZ
5O39hlg2MfMlVbcABkptvVxTVZR2YfvTWT8RJjbqLDcwQVf3yO83cjmpi79Tc126VVvRMUypHsee
UKFzbGe+lC24bm/Ly6lxr/pmpsGbIR4N48TARt03U48g6wch0WgCoQTOf1dVCfvVowlmMehVQ3JD
JDJZTPHdB3KSSQS0OoRBL6BlRjY3owWm5a6cM4cwWDvTovB3zt/W0+5r4mxjVRJXt5d/wSEyg+Ph
nn4f3TVlFHAKdgsa9H9gmTgEiw+TjeJoUDr5Q5wNVsykEN24EwjN+FEyLzQsV/AFkY4Wh6C7KKY3
K/0l7DXVyP+cZoHsYiwiISaFkxALW6y+gYLVtwBPNaB1J/r2Xj8ZJsZVVfK8/Ixmsq/895gz0rRT
xyQijby4gAXi+xwHN8vy6LdSYl6iHAyhSmWjraTNjFVA/HKuXFPgLJsF6c05nyWGJze34tep1O5R
n8qOGhpoghYcX38EoB4lL2TLCmWsXB+443zOSofIzFoVGJ4hhIQl4trFgUSI1MSc5fVuN4NIz6ny
DI8UaSNNBqB/ChsoRePe9uNd8A6zJcs4rGRVlHpKTW7iiYQNcpHdwoYBdRf/ZvHsKPXfwATXIGVr
QHKab8/EJOw1W4amyrg4XonltRw+IyrURsnH0IijYTZn1FEMQXhs7AABPJy/bxl7hUb06bB++d2f
GIyNReUCxBlZcFXVzCw61ogweI+wi9gQNsQvqyxQc/8PeO5ylSfv4axGgHCJzhdTzZ2a8Nvo1kJ4
+T2tuCx/ibcUcMr0Xb0ZaPclzGN5lHTUfXaFH5ZmGaxS6FErT1ki/36KQ0acTbVqyTgdxTcBwpBX
bjFd7wDMTxJT12ff/wnGLM9woA0PUz4ZuYI/U0EUEYI1TJTlRIzk6UlCIcHLE167D4cT06FxDmJP
TrxvcDnVe1FbK+BEbdfeNpxmMil2z+RGpGQUZkMwr5xscneWYj9JHvo1Ksx9oAUJT6+ORgFxtPn4
xaCV0CIiyZNX+97on/Aa7bdsydUdYd4A/dKLgfRUebTBm7tj0qENKpvm/X4FyedI0wISsZ4Swl/4
qDoTg5nst5JtHmO0Bdqtc0zh+4iGUgkNXI1c6st8QfEHge9fALGypQzAWYmQz4dpaK1RzYmG8pVm
4u3URw8ztx7E2Mf6NVwmsQei2X8iYKOrX7U7iyjZpx3Ge3xUj6zxx52jRuI0vrUe2bXaMZosq/h1
cFTLSYK13kmnQYc5x0zKy8yOrdMLzgYF7/+vt3jSi55ZHr9aNjiB8bc1juTsmM6BOXeKNTNKF+pt
OXYliyp/EzptfgMq3O08IU+fZMMwCxo7qAG0WOke6IvZjFKro1D5QbgalHJTpiaVHDT8QtIobd31
D5E1c/NNKen3kOzQ5quxsjeXVfiPjtI8yzpRUDGIiDco4xgahqAKFkxq58+Cw2pyL4eo8/+AqeV4
EsQtOCzTOWTaGWwcQMDM8SedZyHB5M0dKKDN6MJ8Z3k+Y7N8s2eD/D4Jp31FvAD348//6+pk+xn9
fzQ5jw2LoaQo3FFlxptWFJ1RsXw22W9dcbJiaLKXQOrPw2W788bOHld/UfisDRVBZ+AjjoHr6G/9
STueNQHptJEPH3M1p8Yi2wlhB3RtCCJeoGWIFfsAwaQagYcqJ1thVj16CwNTQVZIVw+yZt+Tkez3
uh2WQ+Jlq+nOh52t898WeCMCHD7NIovf3pPR7BEFS/KNFhsp600hOezTHI35sDvedW5pRNkNihtC
/piG8PQ4JIfLrg3ZwbCo1tXVN3kPWUh96EED5TE+ZeW26Fur0vyIROem0IYmissphYuuy4EH85lH
3Ts4EaitEX1CQQSfDcCs6uIojGzm44YWdsgqmI5g32+VtlYo1Y0GZ2jRu7OwOigjP0e6ddJwwRi7
O/69BTxIGMaHISYV3PK0oua1JPkNzCI3QKaGscOuZknnAWV6VrkIGMUDnbQPa/9eg6/Keqin7IfL
xCRUgfoeomOrjFoF+yM1HOrjflGJN0O+SPtZOmo20IjwvKjk7WLTL6u8FdfJxltO8FdOg6/oyPqV
JVVeOmRT1BJLFdFykON6S0fgdjTTpgTHjEkkbaY5AhAIiBmkZ5N0jgTrVJ3F2B275ZwCMLl43sW5
BeKH+O1O4RY7iJSaMf+3pjwzMAHTv76LMCRAxG5thuxxLwBrDA93yJ+VvEowFAKsEeFO+N47t+q2
h24Cg+8J+EKCmpKiBLa6lBgbvQ578xJSTb6s6QnkKF5Y+ozrBwrRHsylrx2vnQlcuMryhFa2EnlQ
E3j6v2viYwkQ+Al2NpT5+J1iP/OMHTYyNF6RfVa3FPwH8h7cIa7RVfasHoWcjUu2r/WPpglqoQ8A
eWV7nSiOs2w5aNd8yd2O+z8++46bW933KHjI9zmhEkDB5i7+AuilAV5xz9ylGVYr6IE3/ks1vmPf
A8HZsWPzVPB8EJRKqHu+9FJHbOrLTQmGG5N/KRmynAaOHQUpXtSHEhmVei6JbzX9c/HX4WK6quOF
Zx6yYPZwsiaoWlGay4pNsUlzgQzhRHj1ksHcVYzMquekny0+xXsjWELgvjk/2oE54fg4cM1Y7cDI
TY2m4z5INXx6hTZG08Yl+A80Cx8eUoo975Hudhtgp2p1wp6wSsXZwU5NoMKync7ll5h+vvYjMUAE
J32VGYBenxLAd0FwKayyqZ58s4iqTflxuqRBMbjlXOd5S7RDlLchgggCSP8whnL1Y0XQmB448Ko6
qkCEgbAyokFzp9niLkPippdFCMKKTaxJg0ctLhRiXqcm7hSObJQM0t9Fs/43uUM90LIcSykEbGaj
ySYEkBi6EdL2WtJfIFSR0y7IEjHwF2PdpUF/UXIzpz/WlsAUHFEO7oousVz6a9bHaMYuitT80h2B
tgZk1rs6+/Ue0G0TaDY+rkbs+kTBZ5CTsV7kq3CTxe7UfwH59J0Zxi8yl8OIaQEPvAFMjZskJ08E
XgNLzOga12/1nmwJH8g0PiRbbraUBxEfKkJ491EEYFT9CVuX+qvtAXrzw+mPyd+Zlpyh/tfMZRE5
YyW/hrwDI/fss8I08uljN6I9VhxZIOPoN6RQ6qcoiS0xs2OvVongxe1OpEYLXaVMtI8tAo8QN5g5
GWclOcqaxDpVatw2RB3rROzBn2N5IBGAnnwLCr1NwC3DkTvOR35+o+TKLHMtOOMf30ZXggpd2AqD
liiz7aT64WjQ9U6sXzlwUHnK0+durt62h8cxR8LqfH8tS8g0GUKCRrvdnGVdXfZNey9l8+4hX8e8
MpeRXu79UkXz6OiRXu+3lWpQ6Ghk2sGs5F1iagMzkRXevp8B0uWtcCZO/IyCA74hsD7l/67tPsct
JQLU6p2PdbQSVat0evU3UpUJHX2iR6aiokCBwf7Sy1RkZUVcgoNSuTrBL9KGcjkS/H3U5aupnb5p
1mF9tEthZ+WLi4+UxoAMfJtgJ50+Rdlx4j3bECbIPe2g04jinNMkrM3YzCMvgRgyoOWt+6G0k9yG
nrDNao6G7CcGY0wpIGCF0jnAJGMGW5Qo/AxLqggN1vxzvxkqzpVe5x1YliEi9UwO7fgUf8B0igVZ
CjUa/LYRWPHMROrSAPFAQDhVJte4O57zbqlWukFfQtctKfoy3UKAp7IR89Cgy9dd6T6Zer0DWIjh
ZER/BxWDW9PiLe+ylrm4fxulRfKGg1M+Ft2D1MWjuPwVvxozgZoancuBJpVL9KUCcbCKqOHY8/o3
p1SuCJ2SZbhAf4nLP+mfQyrx4vf7PU/W1WVHsLRCS0GEPPWFWBqf3Sw3d/objTeS1qK9WkztGWlu
a0ddVkJip4Y507J+pc0rqxvGM04Zz8q6UwvqTpfmDWG9GDPFfVFp1LB8MdmUgy3HKWbp8i2fTHsq
hNT+MsY16E9QyVUjhEbWmRT1dGW2sXUE8ZqHscnhL4gQHQTdZszaKXb715gO+2uVuZGEi1tBWj0M
fsA0g82Ow7p+ohqiAhPB9OaGmnFgzrl7miaD9GUizoyJ0vcR3/zXetIH4mf4AxmnrWK2DhgktLor
64kUq+F8aguYLfpRjidQlz6hRba9k5rhpaXjPTJAM1cJiDiD10e3/IseYVjZw1S/c3h78Sx2s0lj
w3ERjjaj3KoPYNjw5DMJvWCxrEp2XXl/edAOswuPvoZ9Pe4ifB/CRpjmRgzwj7fg/TteJ1o9O6Ks
50jAye/8UXTOG1G+4uMclq2CxVaV1L5T7AnwEmq1hWil82R65vqa+ZFAVZveQX/fRj7e7EFkLPyw
+Ug6WJ2QDCbFMZL7UObC6qM0RXiwODe3M8FhvhfQVJsjrEGhRFqnxVapalvF97RYkZe90EqN2lhX
F8HLsB3J4UnTiSz3r287NH69ARN7LituujP1Q6RpWRIjtxbihjLwDZvEJXglykARcm9vA+U78tWQ
Z2cJZPnMU/cCPSyqRaw3yUKZNiYNn+bjRJL8RRjOPAXDbU2BNqMqqKZKZjikNLWY5ZVUPFa01e2r
sXacVWlfJZjSuM4D5dJmisqqj3NTTOlDaJvZ/PVyK3uWClpKg7yZ82yBORNhDKJB+s0DSdPMd0ZV
dQK+Tqn/ekqP5E6Gq89g8Hk6Cz/KjPk2wmrMv5KdnVWAcKDFEpdKzwcG8vgHw1liOlRwUcli5JeD
KzQsyB+4h3DEpEmJC4O/7rtSXDm1irCjmBUZ3L/aBRKGcue73e3KpW9ryYqmXeM4nNahnL2ro4gI
5dUQoqLJrIpGAef4K4gr4Ww97dO/qQEtd7mxHrn2dweHkH9XP4d6r5hHsVTMUTKbNxyVogfgdDbC
pA/Cipm6mZLt99bBFC0tlK+ZcEFgi73dEpD53kcMO7VpmySWI0RIh8n5+qwwjLW5lJ5MZdkPCMpR
bLky0EGOVPsZaFyKhBwIunRw1LfjX4T8yqHA38V17q5B4DEPV7toKLpBcKAyv4EQuMnjhpbijibd
4bKi9IpuIviTJIBI2fBwNWO80xYMdCa4uh4TFxo7E9OgXeOExfngMgwJhKURmI82ZT0bB98GdZus
PAn4JnF4As8loctP3eevWaAyPUjTh9Yto8/p+eZxZpTjVHOWxHKJVi7alxx/W/QPbmhssoOMrEL8
RN2s8QbalrhW3ZbDh0CJDjKEsLkn9ghmstCjK7anOfi+IDYXg9/LGI2GkrUycnr9BOLnT/sLQHX7
vfSt9Oz+BvA93b0jJunS/uutbN5iJEOpOyWqEEaZ+Yi/b6vMfW4EfaGQbGvW6Q9sS5/omsrH8o2J
gb5UHPCH3Ci39darujzOvoyJ3mE8TAoEp85plzIUdlQQbUAz8VmghZBtZAQYhSgxp8cFnl6m5+oW
cGzpSzERzfOmA4Gfq+0hFWE7VnNzFaefgIlMC7y4E2jM79v8aZpyEeNPp//+KafR3yPOkt/I/mP9
rbgKLtElhR1eAh2INXN+wY9XdfA5NxnQE/O9VCjEnXJj1qikCCPF4YfpgAICJg2yTq32McVkaIOl
1CtTdK659NnuckAesXgkyPtJkeTCVdEjEuh2f11MCZLZT+6raWfojwXaJCAaRWDpCA6svkQJy0Tg
W/YiQ1Xq5c3crCMrIP08epzMyG0BgwwcXYxZDtDDoP+/U73w6WyrEL3JrGfPboPNDZccRgPdUZZp
IZhKQv9tSxU6WCTWiO3H6dtnpwjPoPCZTZTMre4xa6SEaLCuE8EfifAlEfh4PLv4I7waM9Q7IJJo
biXkzMncnSQW6DR+pfBtANnq3cl1cj7hpjNAISEbdRSEj5CcDqfcVumn1wpr6aAxXVh953RhPUYR
RkbTPBK2sUb5V4YupDDoi6B8JrOYfpJSNjZ8RaDEBSpXiN3QK+1uPOXsBVnTtDKxkaho/3b2wamy
RSe/SBfgobjYXJsog7kCadixGWYOrUyQ/CESeuvCLl5Xrkn2XOVo3AWVEAdwV6cn0ES/SjgVg/Pi
g6P42rEmhCUHnPjD4sVeGznkj6JsOfyrcdGudxzmtk39jwf3KZphwHr+NvGIrU62Y5nq7DN1oAB1
OdDElh1klAmM1ADW8YPq4jO4fVjx68dhijuPpVCbIqGZEar9+JU8t0od2MsB6/IyQ0byQZpnUUNl
goWm27N29G+vJ9+s7DjwQ031hEsG+EJ9S3VxjHYBsiTWvIZSSd57Fh6lEnTHyf31YGwV8xd+Bqza
p57UE4WI2EyCkH0VwQNLaxVTGBlaGVbrx6kPzl1WGq89BIBW5c9ZbKgiMHglObD5+VDqbddHAR0M
BxxZPqQSOQRyS8Ck2d+4sEHdYznqhxhdgojvyzLpq8rfOqk9n8QYV6ykXDiW1d/JFurdL59Or/kw
5Q0VDzyBUGQAtJ/Z1Hbi9WuwafAXb3Kwc+7nSo2RBe974p1HaFmkCs6Z9+s5NqWqIMFeHQGgEHvH
3YcDJeZeZqhhYFd0ytXRnl/x5S+WMwqaGWdpIlLky8Ya3VxK6eVbrcM+YpIeN5dT7ikWE7E5srNe
RcHRSWUwKcFG3ipaCL66bJJujcT27MI9PJBM8eJPqJI0xvZn9ZsYpb0+f3UOfcPvEW2JG5wo8WQg
Vx7Bgf5HnF9b+kDUfuG+86qS742xPIN/8g4H1R3UhYZzXlGyGsonFRw+GJ4igsKP0BDpLXm9JHBv
ZkdSFH7i1aLxShNXZWz5aAmmXs0dUptcfdfLauVXwlGCyOOLPHYAlUBtTwru1CNYsaN8mAH057/i
gzb0TZk7HERRQ6OPpnMCnpYwwne1szpb0wCZPvnR2qeLZeUjzLmEtRitPuSTCI+JHbbzsPPtX59g
1eDnEtoRKW7/Aq4WiAqLG5GTt/OyCMNbNa0AU3+p40/FktyvXwAhO5teY3H3FjzSnAdOBH8zPiMr
fgKF+Ts8uinA0oQZCNf53QzwNmphaRnXrmnFH9VN0D7PaeUVfl+vzisnnXRhfIXh/lD3o7UcAqPZ
BZrGPB7RGH3hPoMhu0hkn+mPi3T6I+XNg1bpxS2a7FA3aZg+vnC+o4jifo+l7j7z+kfN/NwMkw8b
hOenNimrCNWOK49BjLACZnd03aCrZXaShv4m+R+/noUYnONQtTVjbNJsy7eaXhFc02s2dwswAZTT
nalDc7SZbSiD6p7yvAQl21iLoWpDrMBqsHAImvJwjynTtfh5uWdW1NMndaNoUhlJs9+zGk6AvWYV
8PpR7Pp4mJ/RAMITHzg0BpeDajjpQtZvkV2+yh1K3l1jG4xaMOl3iep0ejdooZUxLotcQP8/sfZv
qhTJdGG6CsegvdLNNzQ618jjce04cqpsE+J/kxbP1ellfpMI+RFmOABDqpNnKleeTjCRV9RGQz1J
rICmIy0YwR8GppVlirwxbCibBxqgKcZX4jceT+Vfg1xJKJOA1C7Dxsa5qhQ7s16NYtPZ7DuZ1MWE
CpIdh5W5Ab1I9cvQBH/QRmTlcz4quOStbe0uwhqM+aNgbaUCeaS5NefMYTCiHYMO+tZ9SRkkILg7
+kFsI8/KI8NjmVQ8L9IaGUx3Swa21bfdiRsAjm5H5wbnvputFGEecs7L0yuH0xNhK8Tdril46JD7
vkeoIl+UBUrLnQNfZ1++Mj59X2fo1PbwTcTIdje6FagSRG7aCU1IacJW6w+EMf2QvgJGYGn/dYoI
MrTZI2QogHz7AAFb9RMVgi2t78HMykioxXfgWiVW0LCUNwgzroQaWnpSfWA0FSpNMO46imf0+sjy
6ixpwxIBIi5iJl2wZi4IYEAmQj6l5Bv2OWxDlsnQegPV1YmXeCIVM5wDmh91zriHjXSywKNXW+3r
U4xbxoboP3D+l0wQq1RBsN/2ysuqdkDizs4wR0fhHqoBBxnwgLt4Hwc4R8EwaWPF3+H4OY5bd/E2
63x2eH3xfUJ2joLsRVKh2+QBLeeTuzUOfloiMqzSnegeBRGU92HSxxb4t/VWEJDm9J2qTEO2Fq6p
tF8NQYQYqkXA1DphB488Oafz1yoJRgNqZtNreacCnX6J1R/SLFd/kHor6peRZ7/TvDF2LvDlLZCX
zNx6VKu2UmUPghIn8IsvaKqGRzAmdSHWg6KH0oM4aSvGidLfvWMhpqxPE8uK4bpz9xvV938AjGSH
zdkMV7LUjnKj+8km36w79/+xKikL+id0tieRXU6Zk5ru6d7Z1wJ6XWMHw893/AR1hd2hm4MeRm1G
9HxENzHP+Vr13QiHaQHyqlAVg51XSflzgI31wubZI+3UYXriNBbxnyfHommdYG4Z9HrUGUBXURII
joWp7VcCKuDzckWF3Ul/arxQAmdPiHAEj/Q2aY753blQ2Cmk3AFpowo2PvSaYi/Ytttg28AHPR3i
qRXZAqVJ3Hr8hku0pM5ZTQ123Yt9dAu2vin3u85UOqzu8fVn8fAK0U5Pi97G/iz3EZw8X7UMrHWm
pSZVwRvI+fZEZJp9F3V4nRiXU5Vc4CTMuzrzT2SuvWObiEqW6JjBP0Ygs8CvmD0+zqHseQ9Ldxc/
m3bD+aBI46eXhknTEJkgxGihl+6f6eXwPp48oHO6mr8JVM9pmh/STE0c5RJXcXxNPBwr2fOAfHCf
3hpDqKGXXpIBoHbPf7zCmpiEdoXeWwCLAz0URXrY+fkJH6lY9MgrjGNPJQgb2hX/Zr5Wc7dcUD5T
Q0AUcuTWIgLZvQyepcMGwQ2V11zMJqeLauf69TcWQjM2heJjcueYssgtQ2wnvkEZOAiKRX62suei
csJgMNfxZS1DwNaxVojI1Q4906HnTbh40zBr0reHigolh2ZZyU0Xqb7q8cvWI6yFkW/8/j6Rbga3
C9zoIxhUsYoFc43BHD2bGxbtWE/MDGufHHfesYy5BfEyQnbbnkNDkGsVcpGHkuQbWzMGGGMxqmC9
kWBniUkk5XUiSr2KF1bDtoubsaDg1FjARBodlX5Xrcn59unFoCRVXEd8d6bgOIVrT8xx0g7Poq48
scckjqQfW/X5Cfvsthupyw6QiIO4VjfuEkhGamEP65LNLPGhYD7WnW6XXS8M26DqdH6pyLhqnoK/
Whdwkv8xcCNWXq7zzxIjJbX4NjICrCLoZwuK6kfA5nXYqsMi1QWgEjqDz16Q0xwCPC6jUtbdylTQ
35w57MLrybZZ+XOOXYyxVK9aeO4La33w3APnPjCZmN9+Jr6EOEnnoF7Rpc3TSg+iKdfZG7kTWKwZ
SSbZTDXDYxPD+V//5azADKM5WCb6StYPJX0TVNIB975M8q6OY8tjenT2eMo9Dn4jjArF4DJSE9k+
WYnb75n0crQEEqrSAsBViv5aqyar7oyL4+uVgIy3RbCnsS8m9uhJvARL+DRWKI3O7jSZEUIgrgFX
XRGjqgyEHwciJ2T3+Szobn99BwXXWyUZHTXlIuQU9EwQvrlw/wldjdCUPJgutyvOrwQ5Yc/xIWCD
jciEXXL9+slPJG6Ko3c8evTXbuo/t9uR7vpYVvwpGB7pZYigBik6GG679FHgc74dgxOkJPshKBVM
QtGnia3pksECBiRnOU/CU1oGKM1trak5/kKhLHof1d++HMLOZYnz+12zEPueF7n7FoV29PKliPpa
sJXb1C8I6PDi4pLODsa5jfpTv4RL+YLHp5X2SS7LrtA+JmnPx0S7NVp50S6xhejtJ0M59PiiTVOS
8LaGvfe7puB9Q0rvcPpxi2bL9t3ZzvE91+mp1/6+EjznZa8HpZ8L1ngOZyl9yPPbCdm1AvEjQG0m
mglrSgUxaxKBmLknpnRoTy/CBaXnOmir23LA81bC/OfiKPGaV0mhRg0nSuUfXckHtt6SfvfoQRks
w4Tazd2NV404zNw3ygcqMku0TCrJXXEfPsjTN/uMROKlmY4CAo/hJxP/SdDOUHIJs5hAfxw15L9L
n5ZLE6eJMgMVVZWXYKGtMefDoYBE90/pxrGTCxp5rZJZUv+dfjJFMXDjpJakFA0NUaZ6C1YOBf/2
Lh43svglgjj3iIF/VhT53Ef3q9ddG0kgllgGWF1rBeu+Pdd/b60l1VVBuEEnkvhP7JgyvDlpOAEH
vUUFRHV/PSlyC3lnTuDj0gJVw6V0uEDCrlw9wkXAflacpbhM9eQgbfk9yixlW/3loFg1eneSV5t9
XC7AOhfQVXazPqGxKrAfnNE9rOs+7jNyYB8FX5IuZfq+nWB4PrbeYPD0mNpqlBrQAWjGykptVfWl
9cJ+3QvtivLkb1t8rnPZE8GFmrv7K0Smrf371QuHh8xMVXiKLjZ0orR3Wtuhez3Ji2JZWmBTLRSq
yJ8pycAJQA/lKcD8yKHhp9osiXH0o2DRmAPR407DMGlC2l6C9DtsJHGBrjxMEwFX6ObZeh5N2nkM
eCznkCYgoqnjzCxfpMmOTsbn5axFQWg9KE6gh2r/CQTrYztfyzEmc+fZmcDam8QaA0VNiEBuWHcv
1zQX6FbRj02IAaWCuKQSTxY5cAxozmSjRi9rKgwo9DvH0AAIRPIXCMsMb3yuGK5EU0E3f3iw/Pok
6ArrZPL8ZssB//JZ+AZPKXTFWrS5fBQumZfKIQGhPK4VLZZh687+yz/bWbhvQA3M5/2XVy/CaAAQ
hXSjjJhtidKvjGS5iIcKl8s1/PKHXG2cjl1SdB1XI8F6ehjlnh8Qm646CzxR0GXSZCYvnaZHGJiq
4By4LkcW5uoP5daTnQ9jKCuSfku/vo4DcIDjSAfW7tRMKHmQMSB2rkxQSCs24Drz5r6Q8myz2/ZE
JOS0zIaTr1aKS2EfldLla5vPxSAzAs4z5rehleZezjExgjwG7Zg1PkFWumPmhKkozeNJv2FX8OIN
brsJZU+c78rP6haEWxVna6G9/8J6JtDYG8uWXnhW/CYgE/am8jARxPQcPVmanGxEydd4PlKzUvlV
9VJhDZM7ydjSBO6QcwjuEDu3aA5Yfe83Z9PHBmoeA8IzRIqAK8blT8+zrmjy8ezXmdmtn4gpK4l2
gkbWpcbwiZuViBd6zfXoQwmLROQXy3CTwk57aGJ15soE+CFXELNvQlQuSsWQyki/4nctfK0BeJ5m
qWrH2ZxO+qEANdFfb5kTtRfxwy26JCv/v5fMVCPMBF0Ok8usGBF6o7njJrcPcOcRaQ2nI8+VTnqt
U1CUjvWC77aeYqPsHLwEbww7k4/zFBiv7Bgem3SKuF/xjDOd6hc8BrUJI1mRJBslEdgs4Y6D4Zfg
C3HokVLymYuCsRDcoSqQb7YDlPmc35HxySEqzCA3UGr3bhvpt3TYK4F31doLl0Gzko7uf+2N2tMG
J/yZAvJtnobIG+8fQsyLFU2pYchOK8XaRtYC2nZjRtcolakGxib0nWUZPsTjjGpWw9kd/VoWzmMi
z8ZWL9QUJQfkDPAXvg54SCvrEMYMSSvpWLLadxBIkn1XY+eLppYYAmMZDti9VyX5TbMO2e34OsGA
dD+5VILZzRzOKfieG/jjUbEUr8yP0BGN89ti+OVXJZdtHuL0IjXU0114UrD4caGcyJgjVSEG5q8J
75II4M2QAPd+bkixscSBEj887/pnbArKUr+WQkhCavbLCgybPtN7+AYWjZkoPV5zAXTN6RRKYN1D
hFwqM+GeC945kPsfoKe+gzzrapPIzUiQD09Ci1mb3YdmPp5SuosrsUTFRT44Mg6VJNISI8o0TTvV
xi8r5p5Fs2UCoegh37YD/1NYEzVu63H9PSDXsli6PHhijXl8CV1kV0QXoc6KY7eSEE8rGKaqdip4
PEF7bDsmt1Oz0GuHt9xRpbQe6UQsChwQbizpNEWxTauGEPVUedQDJIAwMXu48WlP61NxruO687Sb
1SQPrGgdbYr6AnzZl8W1NmnPPCFyFfqT0UnybzU1iow84WNzHC6BvQhd+TeBM4BzHyBX8pYEt/DL
3RrjPz/9P+iGUBMoRVuRU9rTHJRzHeYRGF0tfcbDiVX1w+/keTlfzgeJMBmjqnEVriF58XiXh4eM
ZJdEM0W+51VcvzD8GWP6ly3Qjw+HMwALO9qY1J56SDvjne2yTryG55mWLmHXOKoNnzherRUTkhFs
2uQlFZQAAXcJM8eNpR2DhPN6dQqDs8oLP2fXzRWneP0V+4d0cqbWTxd2rcd0bAmjcOvaEkTD+L2h
hUwlPb58iHX1XSqBBACMBgqPnnU2hhSnUICfadRgisJlSsju/m70lCJKweb7xrCjzYxQFg4hXLAR
Wkr7F49OfaHNR609LquDUZcQM7UWltQMuhUoE/yMTh3tSvgxweVbv5NlnL8jA3xsW/gWeDrQcHh6
ph1+MZV9V1vdBLvND7rkW3hC+nTZCCnxoQbGbxSHAXpml1TXhhxaJEoxAeRYGmuZYsPSiCT+qHRc
ciiSAAJAwlCK65GKN/jmSIV33DD8Tw/ge0RajJgrgVJkUVIW+XvObcWbOxHm/nKmfX1VBeDQPm1F
obj8ZpEPpzmiH+fsLDffxmuqfrIbdkaGdZvCWQL16rKWcrkKHniwDP5MNiLPgt73AUovNc/FNqKd
7XNcSiEM/kOOdxt/VW1Dqaip1RQehytd7dVuXE5gpkDUwk809Dt1XgwJzAVFVTZ0xECH2wOQ3sCK
frB40TKdjBKMxu6joWQRkFOKF3hzV9kCK1FA7VySrx+NW/0ZgwECTtJ8ZosAF1794ivtRxnjdwcl
tu5WMoIBPqTDNue61SSanm7dC7PLwEr3o/hS3eAfpCl2814FtNCrBddsYtepZh60Q79ufwux31fD
nMr4h5pOs/TUEUsigYSpY3QIFmmjUBQjpu+y7X3zwqw/3FYoWXUJEnElnC77y7QyxevUCDk8bwZ5
kH6GHXNTUDJD7kM3jrrPxyAOz4MhXKxxOqqabhGgHaZTySUwu2J0Pxh3YXPkTLp3LNg1kEFwIoMz
MNWxX4fZKw6rrrSvbT2+tyy5k41au6iufcp1tcLgCtBqcUNufltdBbXWQfCiIzQTc76yrtnnpAx9
iJXHwr0z0pgN3jUVhVUJ0LJhzjkBRPjgti7NvqlxD70a6ScI++OnRuWdBbA1fI09gUgV1nCT55mW
JNu5JkXxd4AmCZrDVHR4RwqDlLSrSVt5WiGNPW1OOqHsl6AMBcOSIwOGlITIn3xDcHwRqZbM+Ip5
Rc/O3n/OCq801RW37zS6zKoShAGxiN4tSpBiSQIQOC4VZl1/ZWES1vJd4kFq6ISyKAECB7EJ/8qB
grb4jom9tOqr1puCooMldaWodTcXGpsvqNdSWt3cp4/Ly1BP5oW5u24ZN26NbUL7jxyIDfq7nz+N
WR2ZFN7yY60loZ45gaGowtj9LezPrI1OCe8Y5/VSDibsFSeayJsdgjR40/Xr/uByWNtS3WdhuukG
BNlpFc8O7Ch42dHR2jaRHfy46MLS6AdE15QYo8PPoC9hZ6CU1/11Z00Vx607dTFb+5re77zqXW1B
HOT5pLiLq5slfXow//uKGZlUP8wXj2+4q50u7mTAp7R774mL4dx9SE4pW/Axxp7aPTdHdi6yERX7
kKkeOMtxODNOkhyCajfImn2YK6+eySKRgvQiSf2Tl6cGZoqXfcD0AFBmkalCHyY+jeZ/u/yD/+fJ
vJIWxCeV0xd9yY9Zhla2fYwkvxuQKDBaEzZksORT80xrLC9rbeN1QCk63qkkNPku+qulrAgR+kOn
Kz3nvN8pB9aARzCQNx9RA9iv22+owQOAlZ93z82M7I92D+RoX56lRrB8UAX6rVEl6JoRR6xYqHrb
3myCPhD3G+Kw4uPyY8kvx3qhqYQrn4uVXFfpGygBQcrMQB2j8VQ0ltVC9iaVQkYNNblF9EXK1JCL
EdM6RJUVYjWgMCPA3kOVh9M+eZEsZWnqCSwjXJoYiK4CL0+Os4Ozf+vCIvYNe6ul7pxy/RniEcao
nVWCxY1W961N1W8re4v8rBtgZKus8WxWJ++/8CwyW3Ho9e/4izZ/KFX0idKJKafmP8QvdwOtw8zY
/2FiyJno8WUh5m2I5zaRZ9z//k+h5D+olNO4Qh/JBWCqL0ckwph3FL5iw9JHiyYQ6LYpoJgBr6BS
hOwWcb0HmwsepXAZO2zB8+HxVrum2fFTVrVdm6H65LP9qEOwyZXF9sgipaE0DidJ12ce3wtPTiOP
1MeyYy7ywoRgh/lgkR7viFD5sgavfoNhTA8tPHEFn3bGe+3j56WCfLxEuLj6IA242L4uJy3LfUVB
TkH45+RjblTG8Hobkk50jxNEp7KZzLHXJzK7+mffw25dPcfb+s/uS2dpKL5MrSriI1ykUz3Hz8Q8
7y5k2PFytckPKrceM4QXIgAMq/iLqaQOU1sGadZGSIeaqjtojv6suRiQ1n52sJDzlSwxzMbG/qT8
cxgdwNPbf+4XACA8OizyRdRZ8hQX21oOtqdhdqE+fMfN7O2PU7NtLYUwnYBeri3A8RsxH1WuCZHS
uDU7CwlwiM0WezeNGvXEw7BTZvjS+Z6rJrx6Nzg/9O+dUaU6rzCAB4lEkcKPCDhTA4TZJnrxlcSu
eVzC1eqDM46/TzTvzL6w8ZlOsdBYUhHp5ZDTFn6qKtgLXp8sxfbp2oKuQ7T1nPuWcc2j4Eqk8d0R
fA9KteJjakHeuTqdJsnLqqK9iHVvaqaqVJ8v8ZHtd2O/zyHglHLgykfrBtaW3QJ4n5J15GGusO7b
FplZVT65Q+nEE6Gmy4nLjvTsqiuNgEC5jh0jktg3WvntXC354IxqKMNsN7xiyfsYjX11eG+5ZVZ5
ooItXmLc71QSKWMRYnZKdbTGSPAcKsq5FtJ0LQgd0HKYDRjlY0t+1opRTuTPxpUtLd7+L3JbJfnA
UeDQiX+ZDutpPhUZCLRxrgG4w9tpD83fWfLGlrwn5gnkshmFcpl4mMIgAWF1qFrjrM+7NyxmrOnK
Pzt/CWCRssOvyIGXyLYY84/3Dao8tNpIkIzD1myWv/gv2hL7aAAekLRQCBeEQiWWp0aGK9pirsVq
+xWdZMsjVGiiAgQC8flJvEqx0Mbiu9CBEvCG6wuzT1cdwMY1+J/vO22GK4935zI41Db6+XaaZ24M
GpKNW7IoxZlQD/iAusTOGBTDgsObAl+CjDUJit7zxB3PO3ngkw5+VFVpUhV4EyF+yqpffdriOF0N
EQUXbwbiOAFBiFE66+MHh/7S3yph+pSJTIZedlu4e0AaJ8dzvcUqO8DhyfC4j9BwSg39UK1Rq2Vi
v/Z6eIrD55Vu6d9DlDaF8Op+2p4zgJSLAvyAkazCjrIjL2PIDl7Re2HPffLT2oKsTdo6D7eGogmN
FJywVXuH+Kn4iua5uZy5Fcx6jJQLffl3zib+OczbXZLcmW8VI+n0Ud2bWySyzfm3FcqcgJii+Gbd
ojQ4N76C7uwN0k5XPRX/Wrq2IajaZ326b+yCOXJ6u+BDFnFwKCJwrdkWf4FfJMUuSIea3CeG4uWy
K+rpd4sExVcCKUVEXwMF4v4+/t5iPlqd4jQp7lkP2kSdp92E7dGiS5f5bT3txkOOV3cQPz8ckcco
PoToowHxIQz2XEaqg3zJRts/rOSfBUNewsNSNc8Wag3j8mGhrJdAO17uHB5REUq3T3HMU3tyTtpr
ivrdGCuq+IpCZyuuEnhZPzyt3Yr3al9iB3K9V+9zOc0zGs3MCQ/ASZrf4ElIgAgbODHeEVaW0bYe
ZGHE7ZqrNQgXqSpi1HhxxVVi0UwpDgnRs8zfTFXOkAjyMVV0R2do3cd+BC2rt8gNrW4ZdwEq0pL1
mDsRGiTOeMLo84xdOdCXIFB4KXMYfC6PWMRqVr1cDwxCoq7Y5MdE5zLUNYvvl0AUZQaf1ZWORYKr
twY1w9XqO2CDHK4ATdMdN6ukpQigw5mQc7Ol80OpHZpn0SdtHQEvCazcJBiccGsf/0YA7b1HDE9U
BFUt/XuqdMuHbisgXjyMoquRhXjb3xv6FlnPRq2c/ssQknIo2ZCvcDjJoGEghhDrEOC9MLWxH3Xh
IWWc0RimdO7wqHGen0aXKwjtoTtLWBc3UAQ1s+cnW/idQxPktxkLIlp6gSOyXcBiftovq9uM+qfT
1LXumyN6qa+RLyNF99QDgZQqf8OWj36vExkNzuEaoOUiSNvdPmN4eDU+SxOHAPbN8S3atgRyXJ66
cVhsQdPoEjTPbq8kFcbPS9wDfoH9zLP5kPP7+boFfNgX6Qrr455fFmINkp33F+k2/kmiDcpO7ouH
+s8Lj/6adNV1iVGyanct/d87jB5rusAYdU91krqhjmgDtbnXC+1GySYV9g1jcbTNmyJxC20OOxeO
odATFtvSaNReqnh4APRUZy3PkUFj78/GtPViSRId8cUlcSe+gBTxXf83BFGNoyv3JhgaxV9uxrLk
BuntLkKeNPa6wuKIhjK0SNeGYf2jKNVQXQZSNqx8263dT93vroKgv5fncwdl+E8AfLWCwf/pX43r
1bKehjtq/UHKS4Z5jjMzd1K9BI+8j4mkbaRtGFc6jh/KX87ilp2L8VPpAmrrbvGnReFqOlzm0kYZ
ZFC+v3AXb8Tl0ewnNlxvA4Nn6MwUVvKR/nF9NOkL/dIqffYYF6YsDhJXu3/6P2IfM+Rk7mpk3VxB
LGA+8cAu0+goUebmvG9/x/t/iDddaGlszOeS7Wlo8xlt/J2wMbIITpnp+05niXejHx6N6Ry2uQq5
EfvZcaQwAMPEAY+zqis2+bDzUfElGSPHkCQ1AMYalffKng9sSUWr+effEU31E7Fw8jC2fbxmD4Wj
VVTVnKa1/DJaSn8QnD7li9Byt90eBRsNMeOLqUtAytYBgAoy6YHkWRSUxWQovaNiLKlU6H0hk9oT
9iI64bSftQd1VMCIk/NSEUiHsyY3OF7VSWpHAVk4rckbhSbwADaCMC6QIOu5L4sAKuPuhI9XQaBx
OYpagjZsiJnzkDjBN2/0uWnJxu0SRKh96LXNHVyC3xREvQaA2wYxkTgPSHPI+jIRznOgyCppPAdL
DHim6vkZgioTY7vSA+PUjowEnLnqwVTIAG8M6GKR+Erpg+i9B3vUCS3GKak0Dizp9IQKhvONN2CV
3Ea2tl+F3cXG8nRLO4RqSblRxDBIfqFtdICiGxNYR0awv+9HsMqyr4QGEOOXU+6/BVicLEEUl0Mm
dtIGfqEOGv27JTKQ/qoosuRJPM3KmEwhjUanIN9eUQMgi9aCYbU/crroA33ppRlczyhWsFHKWe+Y
MLVMmrAXnADppAIWXV+cONmzrFQ8pCV56qV8OPTRq3PMMnOLi4ga6Zct1wzrP/2YaQoyXYznMk3K
3v6i/ARO0GgbTfDU9ObqNCwWOKT19xLf81SOgKG4EnTFl9EWekoKN0uNrKYgKgVpzsSpLFr49O6n
6uCuk7qlWdjWy0O5Hdj8NkoVCdXsj/WqFyY/ptxOfJZEuH/7Hrzs0nklkJCZh/uK/ePeTW44LW0+
hs+sT55plb8bjF21fvUYaN5AqNbY5CHmg3UpfxQxlM5VTAXv6CKzBe//xPAYQxN6PxslyOk2qgLz
l4WL/ikPU+kaCryc7uUqh5aFFhCeJc629XcrsCIt/7shl4MZAQ81MyzsY5/fv4u5FnikJMOeLBUq
7i7aw//D1UkjXU63VE8gqFpNjSvGALuav03TkR9zWRPiXHXVGfXDmHE/DJQ5j41hG/sr+a4kE/0A
D7PwpsUZ2L2ziIl836Pg07Y8vuaqEuHCp51LDwdRDTUSREfuBoUXJPkAr40VsZm9FLMmxMr2oflo
36mmoLVraLRKLaulpKQ8pT89x5uOSRC/36SdngMuNu/Kfug6Ml7x3oUXSZD8a1U9d8jpWhPrXZ7h
QAq6codxEwbKJvKef9h8tJMzLe1mOSl2irNjbC69TFahGgUnQkN8fpP3n3XvkQRD0WrCjlchAhsP
fWMgyP24hTdN5BxzPxyjxbx6VW/a02e27sJgd9Wcg6oUByFavB3W1GBYuE5vNh82//WAi6zLu5bL
ZopvSLzgemIttabbVIFrA3sIcKHETEu884pG9+UzCULKlXBy3ZysvVlm+hU6fOwrY+ei2KscyDGk
dFrL3J6WwTSUeKAGSOflz2qKuERAsG6jzusKAmKN8lmF1dAQZz64NWmsHz6kOlpsQxPs2k5Xjfz0
w5jtP9ni0HFPnybwNuLm+SCy37SPmb+n7X8zbYx+LINQk+491i344yBK1bKjv6e85dnOZCTcyiqO
preolXvLlfv8ERhIj2wy6+0zBT14492o8ZnojLh+4BbkZ289BEiFp7s1cXyrZtkIdkgrTvzWpSmW
z2lCJ5jDufGICyjckI2SGWx7Sn4m++mF0P5MONxcCR5U7oEgmsdb8WYzwGcbLzxz4dyRUy5G/1Yc
FoPj1+ybCTydwCZa9WSmK3SRk7XBRVFc/cBCmkN1y5BcktGEAg7R1t60ZFnBCYO5dziK2Jk5pamA
+0st9xUHVj7KNypQ8PCXubUYyjzSTKnNCfrBrYlXx+ouuTAKtZR96R1i6fq+CiHI7Uol7s/3HVWc
5vydKK4eIr4XedSKrkb3htTg4S5QAye/XikNTMNp8zWjX6prr1UiyFWsuRUDPYvu27B94Vlu957+
ubhHNRRgEiyhKlonTF3aH69k2LRTtj9l+ttP2X/2P/TlWlbTqPLOa7zjgGtzj0mARV6joL1nShfy
3Gje+xSFw1/QyPo4fiZFNtAXc7NODrEdHMrnHwMwwwQj/LO37Yr0dyPq7oic37sMdR4WnI1jTzWz
tRjJU7Go7nK7kwOZsPAICm/L6PIcIiQg9glbjepntBkcGEjGaH37KG9OV+uKOd/sFU2JgEWn3pBJ
GZ/G3botoNcYLMN0IJpZxU/bqgj9INMIdnGDrODa0NDDwyLByYRFSYhjtRf93BbmFigJFEtM/fp9
CZTnay9NEAefgScFNcPnHLA7WgbT3dWXv/TdQzX28qubxZozUwDUNfO18GiLj3jGOnmr83lb4JoC
2KpjFVZckCRCb0ViSUvUXakiRMVTZrTDx6byzKXEMteb7B4/TLOHhyLjZ9HZkisJGC7YuKM6Eo5m
poIa0pPh4z3Ogj1uYja3lHVUKw9JTRexcQ3NyqRWvyI24HYtje37RwE4argydQr9FUt7ZB3JbN7U
lsvIMN6HHGoOL3Z7PPazsBjhRKFPAaVCNiAHe/jFTSej5aa6fzHWyYjfyloxvYuLYK6nhoH91Nxi
WwVZ3ugcDa15zvXv3Mo8vjrXT+ZILHa55aMvVCLrrVzzMoKXhRVYhxClVyqkZ958vfWoJqNRLxYr
KpztktLxBSf7Qtm3fnYVmLLid7a6q2GoupujvqbgTWlSDGpVUlu5GeSNn218J1GB1IG1nIOebtoT
k3MXEa279fOCrmsQuLnlv7BajQ+pHIGrwCZ43FLfacUsvNkUAHvW/BoJghkHiq9dps21lf4FTBGw
2T4Kogv7dARwV4SBORlnTA5X3Ume409B1lNN1NT5XLpE/Jd/a/+UEeyfLIsKITjWjm/hDrOI0eBx
ykneFUXyVl7/3mtxfbowi4f2ODVmX9a2ICXl/K4ntfl9aoJhrl9tje4XRWW8CLBDdz7PPtAGoZMH
mocvQSNoc/sWLd+9Xo25Au1rqoNrDTO/dyVJcqwFhS9x7uPBfJGbYNAijlHSoVZGKmlzywoD/fYN
4w3yVchhoFAIRIAttPBO9CzUDs7nZHd6ICwLGiLPfVRuY6x1hYkYOMzFGChP78oKbxk6htpT9V2v
CJR9ArsTDAl1OOodCAYydfsuS1n7MKU8TZnkFqI0sTtaCf1LeTDPIDjzxSfmc4J/pNOtNSwVhCTK
ROFBmJUGG7ugKn7VEbVmXjEcQ6L3YDxrHm9ApHEJNI4tyA2XHxvZ7vlBQs3VOlJoL08kUtd7p/l3
tQuXppwjsEVKw1XaVDWy88hOaIWEELvP7gp08/kgf7oMZGTHxGDPIOQaFMNonYRHn6p08dgf3yVh
NACnqePT3IGz/N8rvF1/kFNwq4JtZJ8i+7y9Dn2sHU58QGHyvBwacExE4jKpnZG2Z9k/avMU4uds
uACCyF117k4P1JvozKbAOpyC8yqUaRTYT+fb1wDzyraZfdZKv7P7Ju+yQovKoTC6luENfyGyCdta
YMxjGHD1KydRD9QEvLBq8V3WdBn9PzeQGZve+7b0D1HZvWsEf9pYYS3xq4t5w2pvpwjnzywD5bL7
hZBaL4Dq0aBKowCB3kHdiHPzFvFU8T23SZSY1U1yxhgPNKtjnluj03reAB59ajCbLPVcYfD6aAHa
heQHlC2D31JYvsmxuNvLt5LQt36rtm4GLQGkXGE1nYbPML5O0uReDxATgEJmORio51RRcF6jErC8
diCiBXQIpaIPeXY7FKUMM7SNXd7duVNGOzUl7AV0SMhyp9b/DsxwIO/uv2hO3nocqfG9yOBv+Xmo
ye6lj36pm901T/Otd29lnbkK1wUbGyk2jOfD+X8tBLWoEUOrJxAcZcpVo7lLA/fHiSY25H7qYIPW
ok2ZfppLGhd2ub2jaeE2MPOElTeZo2YP8cazdsKtIVkrMvAlCvTCM5AZljLOZQrbNcVY4o10Ngbx
omNE48ejXj0pBAbUIvhzHk9ittyK1xPA9MgzStQeOYuQGrYoj7oCR3J+10rCI/JGRiebU8JDiSRE
tgYQSQOVz00HwTc3uxBqstyKHnqfWrdLGhNrzf2CPi0tOVE+t8+QIr1WicjhsDhay0ttRpqmD7uh
tdCptiTsr28SEcNCSWUMuSlnHhpoyzkZasC9C5m98Km/3KuUKDISKPWATFGbSvwS7NzxEpPsmFIw
K0f7m0F2mAdjckGL6Eq0qI7h4JCNzY8bCyQ4YylCCKhyXJcTG/y86WpHE5N/xANemrK6f30xZdym
fBQ2Om2Lc3NoEMiW8/szG5S8d343RzuRa23CpQktKfTEdIOaK/e2OX118gnHpd4Eig4zWlHY0ti7
9GYIzF/TqgaXfvC24I1kkLuSjk7I63/ERVpbKmChdY8U96pg40z36bspE1Hq/GXyl9LGzIBWr9Ec
ujAcsPj8rmB19EPeSTQCpA1vzHXvK1UPAIKe1av91MDqPEsl/k6SNBBAg/CGGLZPs7QPAH2956uN
E8BMjFLx0yLoq/tJKJpCat41+IkbsWKIjcc++9yaybxIlerEa6oHBykS726RL+li7lwMAhkWm5q1
uFUCZRQDWd7cyTZucPWT2rcnbpLjMyUEMORX/sbeQX7VS8sNKoOZhkIT8slnZenleiHJjaxdLb51
jWfN+Lv3S8jO5Nk6phypyuz21mnkaD1hUzNlrVxBpL+yMp7b5EqjDFn2/c5oKSHJ+ovCPWQN1m2s
m1HN4B/kQJtC6suqzyJbm8bBu8+714D/9Q6ERsce25ji4WWEazMQVQ6hm+OVyheI3DmH3j1GmXnX
uNKO7gZM7PTQccwz5WZ2D8Ng86mI0LWwETBdYvR3G3MOffk0zK0WliTZw3vUYnrkt5TXp53c6vtX
804hiCtUww9tw6mK9gyJ2fsFcvZ55NPVITfU/OJIv9O+Vz04MVRtxUyEYI2lDEuEyTJDh/FDumnk
nsXdVzSy4FKxE13KLITLzmqtZcvQgPePuCRi2DGnfoE6Tbzh22Kdx/0VcXCE7dhXuoXk+tgnaJfu
mHQimhR1kgY/AyX38/HoOUyvwtCixX9e2Yhr2IV0J0mRksno/n/eDNF9yXIZ2tFMbg0QDB2zsRdd
U7QEJhURWUqET+B7cLT1oz68B6mJ/60WXB/pM7PE41VIXkCt3UrpprT5v0siSSSc7a+cfLdgbj3T
ekR6I5UNvGhGoGQx4OSeroplYDAbS90CIHh0ICmlNLYkl8uCk1fk3GNZMjQk6w5J+It4lO8SMh6z
3g9nKI0B3slNKFAKBUrkWbMPUj4gishqL6/LtxaTAzbPBLC90lSc5aO7ASXebLuV2R66+s3HpYOM
3BDE3ScAut0yEpYkSFVC8/PzLgcWNNJxi7DXEw1j6IA0OyGR0XhraNW1a6mfDXj0MrO4PSjQsFCM
8l650spdUOG3sJibx0Z7Xb0ATH33xmboNjdYF2E77fMbqdMB2IzC1LmeLJhg+TTxHxnkYuPUUuLJ
3NdQWdaFhFsUoOdwxOSwhhXt3JTqgzUIqHbYPyNe85l+QEWlvLejr6OvC2bqoInVzt7TpIxHr97+
788sueCkp2X/mRicPcsM5ATrsBbDS4i6rCjsmpN/VVBoSG74YvnEIDWajXrq/6gCiXA7RmDaoeOa
msBmFy4rXquaXPwUVY3O9J24jNouyAu8eP/e4gWYgVBEO03yHmh2g6qfBoFizXYkZCQHXDA+QiUw
CFxnARkk2qxmB0fjMLxcKew9y5zKLzt7aXrOh/uIwAvzpRwPhlsiAM9XdwKhpWrC/WNPy3/YWYbR
csQxqNhD5kJNXgpGSsu7n676WiL7R9uTWs5wf9EYWwu7RZ0HijmbOUD2twk+BERdLq9rAvnls1rV
lDFGS4jU/Q+/nVX/jN4aQYVKcilrMmbDoJNAsmNs2w8EjTwONx9nZecskqsRZwz5XfEOCd5z6W11
TIVbvQucbV12E/TswoXFgOvpHN7xlkMy8nqAcddWf/S2ll6zpKELtq21CXaGDPWvp4pn8kY4WBnv
8Qgi/DST5G6XFxvEDeQ+GbgB4Y5rm29MDTMV+f4rOjpta48MEdW2DdOg1sCUCsyp3uYHt++MSXP1
X9oB4SL+4MnWdFmbC8fLMrm6gzhbwKKJD3yfm0v4u6/8oIjJm4VVmIU4pFm056bcV7L5Wq/NtgW4
POkXURbIwZRHnhv2ewTKCk8sfdTt650zwrl5x4ZMYePB925jgeJlfB7yDLZcfaCpN0Dej+Q3bYML
XfJ3fDjoG/jtSGhyUZdlZXIY107PyLL9JZsz+1hW2j4WcE8I/ZzhqWH2CXMabAFnpIm0txXolKqc
ltm7oGj6Sxa71E6dgF/OLhj2SY1Ryu8qyvjRYWYeSc+VQoQAO9T7bSKwSpm9gLWyxMlhJAujLEe4
xfj7Z626/bN65kSPMRoK8Qrgt6CJLmEMJeeE6u0XYqMWx0WEnKIp435F4zyIVh30aSmX7RjNHSw0
uHfyAsLsq7MOypYh55SgWUYO//y3eI/89fNjvnJlGn0QYKnZKbp4vuQW/W6mIaV1TudvRuofOI/p
Cd9W54QEbKpSutD6JFd755MV9u++PFZCCLRXFz1CbApHmxZCRpmyawCNFN2gwzWmPCxKDbdHvyku
L37OCCE3ua/ddSOBMGQWXOXkSxvYlK0X9LcIAaPtwwJ0t2FK+DIlBvl0VFITmsq1ALc4y8Iln4nI
DLZWY++mFI3LhcBf/IF6qK5fec1Lu8GdkTARkk2tKDUoan6JD7m6N/agWBQJaR9/xnPpI7lgNFmf
D+Te4n3hS+exYkqbWFlZcZqGU+3hwW1Qe4La5aC/p/kB8OmoRCFwe5h/yKo3dE9wiA720C9h/3uz
Brsdo3PSsGU07FdE9t1Tn5kICT0wvHLO26v03i601UTztpzsCfTmRtDF2jOMzcsgHpZFMX2lbZxd
8CqcgNrqtStRL/z7fRZJDg9r2wX0aB18Oh05uxgqJ7fH1m1nMTQ+URe2QHZr8aDYO7but84wsTBw
T8A80gm1gRCofllt8cwHBR/y61pt2vpPz3Bkl/shwnzqL2Uawz3wPlKRtxDcafBKQvWDiWKnH22c
EfDrROsZi25Q+f75uSZPSb8HBCmYQgM3B/9afaEZU0X+FXvcLezLgDSe0nR0eNtuCsNXVRNct0P9
tVdyNI0zNiVOw9l25iFoI4UMgHJHoBaGBTPkTiep/oUQ8JC4LXZu2d66e3rRfAe4FmpSEGAmYww7
jpLJt9/FR8Fg80JaBhUcKq/pJ+4ytClG9U9IlVk8ExYwhhWgL1QDp/eLbA5awABfG/Za6KfZ5yXf
N/MwX9OJKk1/zmpsa9zLfiFpZBtCihUsIm5GPrZv7b7UEU4l+mhk+vghznK7C6WimT4WTJSKbH9k
LwMLas13VsYaiJLH/3iTK2pwwJRBQrbAg6X0RfYfE3s2f9Je/2B12kNL5EL06GFrg5GQY24sYeMP
LGxzfGbxv+80jdKYTDCy/nBcdabSA8cccD9BK7HMKE4wy/wBhMVpkZGDk3EvPcZy93e18fNYbuVG
KH1IO8r/JGtClLyjR7f6dCPjGY4DlgEE2kt4G3GXE2SMaAriRSy4kf140bVgxScBTZylwxV6ASbE
T9ZDWS9SSqn4IleE63zyPlnqnj1w88KZ/qj43vosONWISd1lOnCYJTdsJnJTzyUv1QFDC0Zzkvh7
uFUqfjL06CZNSwyfNI9xzhKqfE5kkIphpbIKM31JGYUudLK/ydutws5Ts5DlrZerBFXnj/Z6vS+0
BxJWQM79G8q/GaP19U2kQ/EJNqbpjn12qhpFkXY3vmUGIDzCwqUP3TOF5g4Elj2dl2qwG/2H/02K
MSdAfbdp0K/BkrdzTwZbA/2DNT/OmYwGFwduFfkWVtvAk4tYIdM7s9zlqTIuEDYzHMKRINSfQYMH
rFQqQsoPTJcHWPLQY6VmZygW/vW2aHaeA+tY4d3xbg+h06sCt3wJkG8B4Qn2KXcuaCCs9MdsF/O+
CN8EYThr31JQz9YvYTwFjwUxkHSFkD5DmV5ErYBSZSUy2S/dYbQdIybDQPKz48HRdIGVEqT2IkPW
xx6ZFVwHyTD21KVuTU936Yy8AUrzvw9t+JSY14V+XjdmRv8KCM40ph+YzLjvCAoLFUHZCMt1zCqr
srRwMRqPfmCh0s2DvWHff/57JITrl2bvFVco432BGGTwFaEEwJc9svoV5hYdaFo3iMua76A2/zNL
7UpqwIxMAAGk49vtghUP8o/ilmuKEkVn9aLp5J6TKdD/haZxO+4jtfKTpaKnMT0rFWVzAQox4aFl
cW80z3oTeZFqsozCGxLitUVfI9egseOOhJvspO9boOikPbb8JFucGEDPEz2EB1jsJBp2sikQQVcB
SPFhHaG5HxWfjmUASkecRdHlmnq6WwzLFomsNq9tIaliC58nhMk2YIUPKcS17NhRVo5EP94g2uRX
b7eCFd9vA1b2QqplIqJStxEwV7oGABz2SbUNXVZf8A9irjqfH5uv6MnY9WPlbI2FNo9csDuiE14u
fE5R+wXrI7aprR5WYYlAW43vXLzeGLVDwmncCiV+qGQPO7KwO0GPO+n696VQucWWM6BuRwRB0eqy
wgG0eXpvbJx6C3ZZq6rQS5zBFLkCm/w3TsGgXXROV1fNqJmiithurzGqY6rOkSpD8WeITgS9KP3M
/8A0PKP3QTw3JeRuo6UwhJJ5MZKBrXpOhz1TRil7k7uTwmTx1JFT2e/ASRzTYi/r0rpVyOV/Ikcm
k7eJ7dqEXCx2b16Y9E0zlxj43Uzd2YZoPqkTx4rBebzf8SQLPqTY9rSzso5Xxfb0onXBCrfQcKMP
Fe97hvMCLTcGiWoT4JX3fPCYlg1BtkM+uPkolqYVQ4UFM2kdsawov24c9Pv9539+F48T2loYev72
J9Xqdi95P8S0AC/14S1y0MlG4X9JL8coVGbgjI4GtkGJB5NJLwCvS9zn/PtUT1xt1O0hqJrT0XGt
BAunid/U2KJampBDNYk6nOeibm0RlNcrZ3rMSYooPDCgCUghaa/IBt9FAkkpNhQ4hGXSWwSvaDRU
ujo8HazEwHZe+fjZkgjrrYfLBI4t34cZr6G9Nv9iq8h3CeHYWsaOrKQefdnhERIthw4uZioanv9R
qX2/LG1B/+MhoWRfDdwETq9xLeVXJtHKvdri5WSBOmUvYJz1SFVZBY48jjiEagwBlCivIPkzyqxU
Avq8yyy7TjP2C1kqQlfFjoeU6Wa89vHMPuKrwxbA8J/x+AvFywYlvfccDaHnOR16j2cDtOxgjnNA
01P4lDk6nx9o79Inl+LlA1vKU1DPSyeZSyiPoeE5r3MMImtMVowA8ucaVryXxda0jeD214lcFcx0
6JuFquqlpEbZp5BUp3Fct/Q/h5KNszws5vFSIGoj7qc9g8Q66vRNABa1/O5jMtxGh5cDLRhQRwKW
QlfsmMMxFoOWQzvbSyg2yCeqQRU7wgUQ2cS6ujLSy+EEYflf7W0bWXzkxaTVF78l9NdPqH7jRudE
uPyYrYq+nO778M66KiBkjLC0lYQiOSK/Ks34DTwMSxwkXSdrGd7qXz0gDpdFJwWSTSrzPvVyn/tU
XasfSW2quq0/DHS2Tb8sxuI1o9M/O0QmV9cD779rnbV7vpztxXNg5lp23FeZNGclDu7Av7RiaKl1
HDhgAabf8dI99+mVWoramqItKgBjxkEXP/Mf1Npqyp9X1WjQvqOPMkpTEbT+FC1eLm59SnSSXNnJ
sCdbxvdm0ZfCzXyBHEx1zR8boFeGaE+/LFSK2ekRYJJH33TtPM5UuXNrlP++Nr1qmELOXvtEdso2
cFgtKpwYbBk0q6APY28OkTiciDI8uWzD9oVKWc60pLcxV7np0Yd32xftRItLMnWcgXtirCgZwAFr
6QZeRCOqKe7klNYJZIXf8VhCAfiTaHz2KCaQgogH1gMvivpiMYqOYYIYaH3XE/zPBSe1s6ST9fr8
5NaYYJdxdeBe2wPXZnhiczsrtpkkhu1RT4yWsHg1QTOA+SVfB8Nc8JmHD1Ssm2oEM/3Q+9HbbF4Z
FuOKSrsvdpMFfKE2dSr4H/5UhaPUOuzNqzcqGVEepwJ1Ex4IOdDoru7nYFNnC9cK7M9oqV+igCON
0nCKp5UnPPGjK5tMGAB3dL/YlLkNJ67ihVKwuiWLdlEL/K8m4Qn5esgusrg3hTWT6d88BAXzq4Pr
8TtjStKldF0xpMaWGb5h++P6Mswy7gg9O2krxeTx5TUYCTIbZXBM1r3VkkKJGkI1q1M8cUJ/D9pI
ctpVjOMFGI+YnaSV3DIphBTvFp5LEMPLcGd1xjtWaSFZnkIKn4/GzWZjOSTs0Jl8VK4ifkIa8AT5
nvYOjIWZSkV5VKtV6TQ0MDm+v5TrIH0O0er+vBZnJU/Hg/UojRQcqeWeb9S9ParRnF/VUwf4zWLt
pjw/frr6bmBWbgnbdYJcOmXF22JvdM01QhBxX2pYTBvAC4srf+XDL7+PqUcIjFmtdsedu18NCOI5
FI35is6+UAWgE8DwST1iFiRl46GQceZvyCpHRTPfiCl4Lrfzs1XAFhaRpxIEkKgQgKoq1BfdBGzt
qDSZoArPV2SeEAvmT26fmOaaCMfnqIrEMy38ow5Laqw8SlMpRw702igEAxSoh7EgRs5MwVHLh6gf
rEi+IyYTaFs/mnYYDJ8hWW3mCRWvOeSOC1nMfgzPSoH73DQHcKpkU0MATSH9acX85MQsVEWwM7JV
JsXot3EqIr4vQrwWaJwruP0ot6N3VTbSpPUJuvkYF4L5aboYphpQdxqfPXst/eaS5Gy9hLcubSwP
ZsgKT1M0fpUVP+ZQjfyPp35AbhCPI1jL9sPJ1sc7+Bww0n9KQQaODKo7+eNg1UHRZK/Idorw8HfM
Zg7sGEKxDHbhucF9mIIoS5GoLu+hF1kOf57OdCVEs5WnxMzgyht0GeTYrb01wuK0wAk1ypsi7GUC
tP3E6nGyCgiImrJeso2NiVgk5JfT9i6mOU5eO3izX9k0AAUutCRhmkwUBnqCtug1nenXs+fkhq8v
XkYVr7PPbUYtfEFt3CuoYc4Tg/g6t+udk62UyYFDgf+nAOPOwej05Jknl2fYqZBiWSDGRS24+AO9
mLs8SxyqGcEMLfp29eVoLmGC/9IyYH7Zow1cdwWd6kK4PggtUueN+q1XMOF/Ihx9Na1vnbguh5wD
Sl3fX8OSMyC7I44RcAmOUHOrOK2a/SFBwhsKT51TLGAOQDvotls9ZaJ7iz2huCoXy+GAmOdJMaxf
treGOKeHQjTYl25U/utXFFL/IMpmhZvIy+GJHWGRUb0r0z6SsaxIbTMDZpSCP+jofzifuoJepjJ9
tIJcfQyKs//xB6BrNRfRbD+nk5kyQOmH8/LwaPa+ZSjEuV1GY7jOmgKG+os1AdPxOhAw0D8vYPKb
l3L4WkF6pEjiZU/hpO3VSn6NO84TH/tWscZK/kNKtiedA+SNlNX0/Z/Mt0QxRWh8csCqxEw0MJ/8
yiBhwCzf8PNJ2UK6/md9YzXgG4QCZyFVnumcwozHrNVhkWvbhFsjKcnp9dxu2BIR90E/qVWcRDOG
oy//qLR8+t+1zbDbmpJBJMObe96cv6PcwQe6F2lcByW5oy/TjSTeA+6QcyEPIgfexFg3qLXMgRom
3AATcPS79KmLrsA7Ak3zWSqHwv7Q7QFCRh0T+fZ8L0lMxMq4vbmuj9TCpO1I3Fb/sTLk7v6jOvaa
1urFVbVnuViLW61JYXT+8uwLBKX+TWDs6BpRXzFEdasvF7082XpmUc32P4IwtDIS13owwuwLjUVK
jTxsRtlikNym+d/HdMWPtHG8/p2JlrfM8yUn9Hj3pFZSQMZVc3vb3PKXqIoemf6wh0n/Lp2gpAT7
j3CFh9TNWEFmDsmF4v2tzqBkVQW5XTMwnjJftPjRqqDdHDLYDfypMT5Bb+uTEhng3RjR1Q9lKRgk
cbqPWIcTZJTuqUzXQsUAQtWLK9PzijvVRNwnrz0gG4X0uOly/FeyYvAUVo9c+oDjUP3+GKQCgu95
4y4PxSr6pE3VVvNN1VLsIcghXAy0/BuUrj2KEcmRaEJt1rMiGsbioItK+pxaDhqUQmxx2ePmcN93
VlCh7+pxB0wBnwRbZpU3g93XJHMEfkJ6/+6JQH2L66FbpopUq2WbJmTJRLd9ofv37YOgVqa/N4MR
6zLmFNho8A46VSxtrMu7ygkf1Y0uAYW3NOOHFXWIm4iGExHFgJ6akugxo1lnaMjSIQQ2rspXv4Qs
a+LlTOZSqpspcVPPD/y0/G8QiDS2oTUmTBaUML+wrlkuTW2NdjCYrJse5kehZ9t4ZP+AvoI7enTn
JXyVk9j/xk6rIgoeKLC2OlCnti0fYCY8Wh0JPWQlC856RgPrqklRcl0c9pVPc/8laEymIhMKFtGI
gG05LdTMR/yKC22RVb7fWZKvVdM73bjjUsMcBh0TtgnZmSLn68fOXicOzaK8zwUw+xVgFybPEcDg
f++rCEjl1iOBwMj5KsWVtG+n5hHA38Xv1a9+FABvTN0MRK8o2dtjE5xj7hv3v8R0SXAY/WCj/MZV
T8AYdf2ziNF4Xow6i9ObASLjGSSXBQ5EIsBX+UWrfdq1pguv2Ck+fIJA0HgsP5h8ToopMlmED4mQ
fpzPeNi/G/IGOWbYxlZwYg7PVO3I8WLoe4Bs70sKNBj/qHdMB2GLpbAMqahqgB7SMUWdUCI4vjJ6
SJJmBnpp0mXmt2WWOz0oOxK0eSIFgb23U1pFOSjIE0Wudu/b396SoaK6QUsiCzS8gP13/AZz0uzS
KT8mUNxT+cJIA8BWlB8FbLa6SMi1ErhY/vMF419rfiuZOQc5J8Y7ZH2HiYOYhnp8UDVu4QSLJXHO
V530gPqxgID5sa0Vhlat4+CsO4te6zwZc/FVFxIqk8qKiUQjioPQEY86wb4uQ992PBWST6RzdpMq
zcPOfmQb6unoqmsSzeaX0YZAKqAFYPwcK6ou8wRkCuYCI3WMVNXGbq0WEosvikUrXK+r4Ut2VoiJ
Q+qcvKYJuE8fsJTKNYDeIQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
