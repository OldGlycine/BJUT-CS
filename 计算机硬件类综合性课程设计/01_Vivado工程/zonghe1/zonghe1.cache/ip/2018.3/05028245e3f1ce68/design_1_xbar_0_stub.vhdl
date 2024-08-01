-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed May 29 19:18:36 2024
-- Host        : LAPTOP-5EFP5NV3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_xbar_0_stub.vhdl
-- Design      : design_1_xbar_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 59 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axi_awid[11:0],s_axi_awaddr[31:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awlock[0:0],s_axi_awcache[3:0],s_axi_awprot[2:0],s_axi_awqos[3:0],s_axi_awvalid[0:0],s_axi_awready[0:0],s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wlast[0:0],s_axi_wvalid[0:0],s_axi_wready[0:0],s_axi_bid[11:0],s_axi_bresp[1:0],s_axi_bvalid[0:0],s_axi_bready[0:0],s_axi_arid[11:0],s_axi_araddr[31:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arlock[0:0],s_axi_arcache[3:0],s_axi_arprot[2:0],s_axi_arqos[3:0],s_axi_arvalid[0:0],s_axi_arready[0:0],s_axi_rid[11:0],s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rlast[0:0],s_axi_rvalid[0:0],s_axi_rready[0:0],m_axi_awid[59:0],m_axi_awaddr[159:0],m_axi_awlen[39:0],m_axi_awsize[14:0],m_axi_awburst[9:0],m_axi_awlock[4:0],m_axi_awcache[19:0],m_axi_awprot[14:0],m_axi_awregion[19:0],m_axi_awqos[19:0],m_axi_awvalid[4:0],m_axi_awready[4:0],m_axi_wdata[159:0],m_axi_wstrb[19:0],m_axi_wlast[4:0],m_axi_wvalid[4:0],m_axi_wready[4:0],m_axi_bid[59:0],m_axi_bresp[9:0],m_axi_bvalid[4:0],m_axi_bready[4:0],m_axi_arid[59:0],m_axi_araddr[159:0],m_axi_arlen[39:0],m_axi_arsize[14:0],m_axi_arburst[9:0],m_axi_arlock[4:0],m_axi_arcache[19:0],m_axi_arprot[14:0],m_axi_arregion[19:0],m_axi_arqos[19:0],m_axi_arvalid[4:0],m_axi_arready[4:0],m_axi_rid[59:0],m_axi_rdata[159:0],m_axi_rresp[9:0],m_axi_rlast[4:0],m_axi_rvalid[4:0],m_axi_rready[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_crossbar_v2_1_19_axi_crossbar,Vivado 2018.3";
begin
end;
