// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun 12 17:59:26 2024
// Host        : LAPTOP-5EFP5NV3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gly_0_sim_netlist.v
// Design      : gly_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cordic_ip,cordic_v6_0_14,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "cordic_v6_0_14,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordic_ip
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordic_v6_0_14 U0
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dout
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

(* CHECK_LICENSE_TYPE = "fifo_ip,fifo_generator_v13_2_3,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "fifo_generator_v13_2_3,Vivado 2018.3" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ip
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ip__xdcDup__1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3__3 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ip__xdcDup__2
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3__4 U0
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_genMat
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ip__xdcDup__1 mat_fifo1
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ip__xdcDup__2 mat_fifo2
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_ip mat_fifo3
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

(* CHECK_LICENSE_TYPE = "gly_0,gly_v5_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "gly_v5_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gly_v5_0 inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gly_v5_0
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gly_v5_0_S00_AXI gly_v5_0_S00_AXI_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gly_v5_0_S00_AXI
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dout doutt
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_genMat genner
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel sobelel
       (.D(mat_r3),
        .E(mat_en),
        .SR(sobelel_n_1),
        .clk_img(clk_img),
        .img_edge(img_edge),
        .img_en(img_en),
        .\p13_reg[7]_0 (mat_r1),
        .\p23_reg[7]_0 (mat_r2),
        .s00_axi_aresetn(s00_axi_aresetn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2gray trans
       (.Q(gray_out),
        .RGB444_in(RGB444_in),
        .RGB_data_en(RGB_data_en),
        .SR(sobelel_n_1),
        .clk_img(clk_img),
        .gray_out_en(gray_out_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rgb2gray
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sobel
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordic_ip genSq
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr_21
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width_22 \ramloop[0].ram.r 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr_41
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width_42 \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper \prim_noinit.ram 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width_22
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_23 \prim_noinit.ram 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width_42
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_43 \prim_noinit.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_23
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_43
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top_20
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr_21 \valid.cstr 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top_40
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr_41 \valid.cstr 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_18
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth_19 inst_blk_mem_gen
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_38
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth_39 inst_blk_mem_gen
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth_19
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top_20 \gnbram.gnativebmg.native_blk_mem_gen 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_synth_39
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top_40 \gnbram.gnativebmg.native_blk_mem_gen 
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
(* DowngradeIPIdentifiedWarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordic_v6_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cordic_v6_0_14_viv i_synth
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic \gntv_or_sync_fifo.gl0.rd 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic \gntv_or_sync_fifo.gl0.wr 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory \gntv_or_sync_fifo.mem 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo_14
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic_15 \gntv_or_sync_fifo.gl0.rd 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic_16 \gntv_or_sync_fifo.gl0.wr 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory_17 \gntv_or_sync_fifo.mem 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo_34
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic_35 \gntv_or_sync_fifo.gl0.rd 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic_36 \gntv_or_sync_fifo.gl0.wr 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory_37 \gntv_or_sync_fifo.mem 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (p_11_out),
        .E(p_17_out),
        .Q(p_0_out),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo \grf.rf 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top_13
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo_14 \grf.rf 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top_33
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo_34 \grf.rf 
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
(* C_WR_RESPONSE_LATENCY = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_synth inst_fifo_gen
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3__3
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_synth_32 inst_fifo_gen
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3__4
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_synth_12 inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_10
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_11
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_26
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_27
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_30
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_31
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_46
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_47
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_50
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_51
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_9
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_synth
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top \gconvfifo.rf 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_synth_12
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top_13 \gconvfifo.rf 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_synth_32
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top_33 \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .srst(srst),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2 \gbm.gbmg.gbmga.ngecc.bmg 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory_17
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_18 \gbm.gbmg.gbmga.ngecc.bmg 
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory_37
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_2_38 \gbm.gbmg.gbmga.ngecc.bmg 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .clk(clk),
        .din(din),
        .dout(dout),
        .srst(srst),
        .tmp_ram_rd_en(tmp_ram_rd_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr_29
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr_49
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss \grss.rsts 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr rpntr
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic_15
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss_28 \grss.rsts 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr_29 rpntr
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic_35
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss_48 \grss.rsts 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr_49 rpntr
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_10 c1
       (.comp0(comp0),
        .\gmux.gm[1].gms.ms_0 (\gmux.gm[1].gms.ms ),
        .\gmux.gm[2].gms.ms_0 (\gmux.gm[2].gms.ms ),
        .\gmux.gm[3].gms.ms_0 (\gmux.gm[3].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms ),
        .ram_empty_i_reg(ram_empty_i_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_11 c2
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss_28
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_30 c1
       (.comp0(comp0),
        .\gmux.gm[1].gms.ms_0 (\gmux.gm[1].gms.ms ),
        .\gmux.gm[2].gms.ms_0 (\gmux.gm[2].gms.ms ),
        .\gmux.gm[3].gms.ms_0 (\gmux.gm[3].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms ),
        .ram_empty_i_reg(ram_empty_i_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_31 c2
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_ss_48
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_50 c1
       (.comp0(comp0),
        .\gmux.gm[1].gms.ms_0 (\gmux.gm[1].gms.ms ),
        .\gmux.gm[2].gms.ms_0 (\gmux.gm[2].gms.ms ),
        .\gmux.gm[3].gms.ms_0 (\gmux.gm[3].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms ),
        .ram_empty_i_reg(ram_empty_i_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_51 c2
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr_25
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr_45
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss \gwss.wsts 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr wpntr
       (.E(E),
        .Q(Q),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[9]_0 (\gcc0.gc0.count_d1_reg[9] ),
        .srst(srst));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic_16
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss_24 \gwss.wsts 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr_25 wpntr
       (.E(E),
        .Q(Q),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[9]_0 (\gcc0.gc0.count_d1_reg[9] ),
        .srst(srst));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic_36
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss_44 \gwss.wsts 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr_45 wpntr
       (.E(E),
        .Q(Q),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[9]_0 (\gcc0.gc0.count_d1_reg[9] ),
        .srst(srst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare c0
       (.comp0(comp0),
        .v1_reg(v1_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_9 c1
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss_24
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_26 c0
       (.comp0(comp0),
        .v1_reg(v1_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_27 c1
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_ss_44
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_46 c0
       (.comp0(comp0),
        .v1_reg(v1_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_3_compare_47 c1
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
Rkd8xL7HZ9QTfzDTm/6dJ7wLO2sp3YpkQsndwms8FSYs578A3fS0KwPXPQPewFGDUAAlo8Pr6X3q
HzT5QdQl3azHVnz4W1DY0/P/UEuSBm0BCCkzZ7x7nCZ9iCcEAms/WIRBTwRzWArTmuui0vq0IOmX
Mvm/xtTP1w555BWNwiwtOgWhqupacbYdA60cBbqj6yf7I2kM8+yCE9KouZWjVllqyOuNnK6+rfCX
OKl6fp5H2Od2FBO+PM5H5CbsBB/o7BRVZfMNwC4RNrQGSvx8ghXrFauYFyD14eD+VtfRgiUl5fHK
WxJ0hvloM8ok25M27sdPVO9n/aUTKCV7HHIxOg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W+X7z5EgJ7sI7pUnlyNYcFEtr+lZUiMtkxY2r+HdJcw5/i1Fa8OSVL2E1ysTGnh4opQIs2aRDxpe
R9SZOqmugX3kuRh0V/mbl73CDfjtrYgbeUrbiJzccVdOdwQLVcOSedxgJUiw05e7gD7i+kfy5V/t
8jG/+ZTR0o3+LtIxQQa7IyGSf6b1E50eHRLBvLrEq2KlJDMpUy4JEJccsHFGgQHUBjZjVwjI/Ytj
e7Q6t8wrKDBRY4Gp08pPP4HHqgKSohROk2sICDYZJwNeS0SvFYhcg+5BIH60OyDIVuG2ZMsErsyl
zNZLqW06m0shC9DxfF9jQJcL0gzBGfzPfW3SCw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 203696)
`pragma protect data_block
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
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
