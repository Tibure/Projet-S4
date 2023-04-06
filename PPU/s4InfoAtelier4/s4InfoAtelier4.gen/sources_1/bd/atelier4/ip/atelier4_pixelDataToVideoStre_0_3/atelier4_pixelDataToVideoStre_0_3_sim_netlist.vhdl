-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Jan 23 15:36:58 2023
-- Host        : DESKTOP-STNSRIB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Travail/s4InfoAtelier4/s4InfoAtelier4.gen/sources_1/bd/atelier4/ip/atelier4_pixelDataToVideoStre_0_3/atelier4_pixelDataToVideoStre_0_3_sim_netlist.vhdl
-- Design      : atelier4_pixelDataToVideoStre_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity atelier4_pixelDataToVideoStre_0_3_pixelDataToVideoStream_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    d_newFrame_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_stall : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[21]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \frameCnt_reg[31]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    d_newFrame : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_current_state_reg[0]\ : in STD_LOGIC;
    \FSM_onehot_current_state_reg[1]\ : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    \axi_rdata_reg[3]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[11]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[15]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[19]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[23]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[27]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[31]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of atelier4_pixelDataToVideoStre_0_3_pixelDataToVideoStream_v1_0_S00_AXI : entity is "pixelDataToVideoStream_v1_0_S00_AXI";
end atelier4_pixelDataToVideoStre_0_3_pixelDataToVideoStream_v1_0_S00_AXI;

architecture STRUCTURE of atelier4_pixelDataToVideoStre_0_3_pixelDataToVideoStream_v1_0_S00_AXI is
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal o_stallActive : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of d_newFrame_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_stall_INST_0 : label is "soft_lutpair0";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
\FSM_onehot_next_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC444C444C444"
    )
        port map (
      I0 => d_newFrame,
      I1 => Q(0),
      I2 => o_stallActive,
      I3 => CO(0),
      I4 => \FSM_onehot_current_state_reg[0]\,
      I5 => Q(2),
      O => D(0)
    );
\FSM_onehot_next_state_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444F444F444F444"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg[1]\,
      I1 => Q(1),
      I2 => d_newFrame,
      I3 => Q(0),
      I4 => o_stallActive,
      I5 => CO(0),
      O => D(1)
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => \^axi_wready_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => CO(0),
      I1 => \axi_rdata[0]_i_2_n_0\,
      I2 => axi_araddr(3),
      I3 => slv_reg1(0),
      I4 => axi_araddr(2),
      I5 => \axi_rdata[0]_i_3_n_0\,
      O => reg_data_out(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(0),
      I1 => o_stallActive,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_rdata_reg[0]_0\,
      I1 => axi_araddr(3),
      I2 => o_stallActive,
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[11]_0\(2),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[10]\,
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[11]_0\(3),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[11]\,
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[15]_0\(0),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[12]\,
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[15]_0\(1),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[13]\,
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[15]_0\(2),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[14]\,
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[15]_0\(3),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[15]\,
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[19]_0\(0),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[16]\,
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[19]_0\(1),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[17]\,
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[19]_0\(2),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[18]\,
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[19]_0\(3),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[19]\,
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[3]_0\(0),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[1]\,
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[23]_0\(0),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[20]\,
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[23]_0\(1),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[21]\,
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[23]_0\(2),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[22]\,
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[23]_0\(3),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[23]\,
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[27]_0\(0),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[24]\,
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[27]_0\(1),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[25]\,
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[27]_0\(2),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[26]\,
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[27]_0\(3),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[27]\,
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[31]_0\(0),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[28]\,
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[31]_0\(1),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[29]\,
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[3]_0\(1),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[2]\,
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[31]_0\(2),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[30]\,
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[31]_0\(3),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[31]\,
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[3]_0\(2),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[3]\,
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[7]_0\(0),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[4]\,
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[7]_0\(1),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[5]\,
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[7]_0\(2),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[6]\,
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[7]_0\(3),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[7]\,
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[11]_0\(0),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[8]\,
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => axi_araddr(2),
      I2 => \axi_rdata_reg[11]_0\(1),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[9]\,
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^axi_wready_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => axi_awready_i_1_n_0
    );
d_newFrame_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => d_newFrame,
      I1 => Q(0),
      I2 => o_stallActive,
      I3 => CO(0),
      O => d_newFrame_reg
    );
\framerateCnt4_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => \axi_rdata_reg[23]_0\(1),
      I2 => slv_reg1(22),
      I3 => \axi_rdata_reg[23]_0\(2),
      I4 => \axi_rdata_reg[23]_0\(3),
      I5 => slv_reg1(23),
      O => \slv_reg1_reg[21]_0\(3)
    );
\framerateCnt4_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => \axi_rdata_reg[19]_0\(2),
      I2 => slv_reg1(19),
      I3 => \axi_rdata_reg[19]_0\(3),
      I4 => \axi_rdata_reg[23]_0\(0),
      I5 => slv_reg1(20),
      O => \slv_reg1_reg[21]_0\(2)
    );
\framerateCnt4_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => \axi_rdata_reg[15]_0\(3),
      I2 => slv_reg1(16),
      I3 => \axi_rdata_reg[19]_0\(0),
      I4 => \axi_rdata_reg[19]_0\(1),
      I5 => slv_reg1(17),
      O => \slv_reg1_reg[21]_0\(1)
    );
\framerateCnt4_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => \axi_rdata_reg[15]_0\(0),
      I2 => slv_reg1(13),
      I3 => \axi_rdata_reg[15]_0\(1),
      I4 => \axi_rdata_reg[15]_0\(2),
      I5 => slv_reg1(14),
      O => \slv_reg1_reg[21]_0\(0)
    );
\framerateCnt4_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_rdata_reg[31]_0\(3),
      I1 => slv_reg1(31),
      I2 => \axi_rdata_reg[31]_0\(2),
      I3 => slv_reg1(30),
      O => \frameCnt_reg[31]\(2)
    );
\framerateCnt4_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => \axi_rdata_reg[27]_0\(3),
      I2 => slv_reg1(28),
      I3 => \axi_rdata_reg[31]_0\(0),
      I4 => \axi_rdata_reg[31]_0\(1),
      I5 => slv_reg1(29),
      O => \frameCnt_reg[31]\(1)
    );
\framerateCnt4_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => \axi_rdata_reg[27]_0\(0),
      I2 => slv_reg1(25),
      I3 => \axi_rdata_reg[27]_0\(1),
      I4 => \axi_rdata_reg[27]_0\(2),
      I5 => slv_reg1(26),
      O => \frameCnt_reg[31]\(0)
    );
framerateCnt4_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => \axi_rdata_reg[11]_0\(1),
      I2 => slv_reg1(10),
      I3 => \axi_rdata_reg[11]_0\(2),
      I4 => \axi_rdata_reg[11]_0\(3),
      I5 => slv_reg1(11),
      O => S(3)
    );
framerateCnt4_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => \axi_rdata_reg[7]_0\(2),
      I2 => slv_reg1(7),
      I3 => \axi_rdata_reg[7]_0\(3),
      I4 => \axi_rdata_reg[11]_0\(0),
      I5 => slv_reg1(8),
      O => S(2)
    );
framerateCnt4_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => \axi_rdata_reg[7]_0\(1),
      I2 => slv_reg1(3),
      I3 => \axi_rdata_reg[3]_0\(2),
      I4 => \axi_rdata_reg[7]_0\(0),
      I5 => slv_reg1(4),
      O => S(1)
    );
framerateCnt4_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => \axi_rdata_reg[0]_0\,
      I2 => slv_reg1(1),
      I3 => \axi_rdata_reg[3]_0\(0),
      I4 => \axi_rdata_reg[3]_0\(1),
      I5 => slv_reg1(2),
      O => S(0)
    );
o_stall_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => CO(0),
      I1 => o_stallActive,
      I2 => Q(0),
      O => o_stall
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => \^axi_wready_reg_0\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => p_1_in(0)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(0),
      Q => o_stallActive,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity atelier4_pixelDataToVideoStre_0_3_pixelDataToVideoStream_v1_0 is
  port (
    o_blank : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tuser : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_pixel_y : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    o_frame_cnt : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_stall : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    i_dataValid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    i_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of atelier4_pixelDataToVideoStre_0_3_pixelDataToVideoStream_v1_0 : entity is "pixelDataToVideoStream_v1_0";
end atelier4_pixelDataToVideoStre_0_3_pixelDataToVideoStream_v1_0;

architecture STRUCTURE of atelier4_pixelDataToVideoStre_0_3_pixelDataToVideoStream_v1_0 is
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal columnCnt : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \columnCnt0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \columnCnt0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \columnCnt0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \columnCnt0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \columnCnt0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \columnCnt0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \columnCnt0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \columnCnt0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \columnCnt0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \columnCnt0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \columnCnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \columnCnt[11]_i_3_n_0\ : STD_LOGIC;
  signal \columnCnt[11]_i_4_n_0\ : STD_LOGIC;
  signal d_newFrame : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \frameCnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \frameCnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \frameCnt_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \frameCnt_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \frameCnt_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \frameCnt_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \frameCnt_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \frameCnt_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \frameCnt_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \frameCnt_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \frameCnt_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \frameCnt_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \frameCnt_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \frameCnt_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \frameCnt_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \frameCnt_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \frameCnt_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \frameCnt_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \frameCnt_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \frameCnt_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \frameCnt_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \frameCnt_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \frameCnt_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \frameCnt_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \frameCnt_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \frameCnt_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \frameCnt_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \frameCnt_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \frameCnt_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \frameCnt_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \frameCnt_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \frameCnt_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \frameCnt_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \frameCnt_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \frameCnt_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \frameCnt_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \frameCnt_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \frameCnt_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \frameCnt_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \frameCnt_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \frameCnt_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \frameCnt_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \frameCnt_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \frameCnt_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \frameCnt_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \frameCnt_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \frameCnt_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \frameCnt_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \frameCnt_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \frameCnt_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \frameCnt_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \frameCnt_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \frameCnt_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \frameCnt_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \frameCnt_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \frameCnt_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \frameCnt_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \frameCnt_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \frameCnt_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \frameCnt_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \frameCnt_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \frameCnt_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \frameCnt_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \frameCnt_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \frameCnt_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal framerateCnt4 : STD_LOGIC;
  signal \framerateCnt4_carry__0_n_0\ : STD_LOGIC;
  signal \framerateCnt4_carry__0_n_1\ : STD_LOGIC;
  signal \framerateCnt4_carry__0_n_2\ : STD_LOGIC;
  signal \framerateCnt4_carry__0_n_3\ : STD_LOGIC;
  signal \framerateCnt4_carry__1_n_2\ : STD_LOGIC;
  signal \framerateCnt4_carry__1_n_3\ : STD_LOGIC;
  signal framerateCnt4_carry_n_0 : STD_LOGIC;
  signal framerateCnt4_carry_n_1 : STD_LOGIC;
  signal framerateCnt4_carry_n_2 : STD_LOGIC;
  signal framerateCnt4_carry_n_3 : STD_LOGIC;
  signal lineCnt : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \lineCnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \lineCnt[11]_i_3_n_0\ : STD_LOGIC;
  signal \lineCnt[11]_i_4_n_0\ : STD_LOGIC;
  signal \lineCnt[11]_i_6_n_0\ : STD_LOGIC;
  signal \lineCnt[11]_i_7_n_0\ : STD_LOGIC;
  signal \lineCnt[11]_i_8_n_0\ : STD_LOGIC;
  signal \lineCnt_reg[11]_i_5_n_2\ : STD_LOGIC;
  signal \lineCnt_reg[11]_i_5_n_3\ : STD_LOGIC;
  signal \lineCnt_reg[11]_i_5_n_5\ : STD_LOGIC;
  signal \lineCnt_reg[11]_i_5_n_6\ : STD_LOGIC;
  signal \lineCnt_reg[11]_i_5_n_7\ : STD_LOGIC;
  signal \lineCnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \lineCnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \lineCnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \lineCnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \lineCnt_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \lineCnt_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \lineCnt_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \lineCnt_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \lineCnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \lineCnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \lineCnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \lineCnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \lineCnt_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \lineCnt_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \lineCnt_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \lineCnt_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \^m00_axis_tlast\ : STD_LOGIC;
  signal \^m00_axis_tuser\ : STD_LOGIC;
  signal next_state : STD_LOGIC;
  signal \^o_blank\ : STD_LOGIC;
  signal \^o_frame_cnt\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^o_pixel_y\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal pixelDataToVideoStream_v1_0_S00_AXI_inst_n_10 : STD_LOGIC;
  signal pixelDataToVideoStream_v1_0_S00_AXI_inst_n_11 : STD_LOGIC;
  signal pixelDataToVideoStream_v1_0_S00_AXI_inst_n_12 : STD_LOGIC;
  signal pixelDataToVideoStream_v1_0_S00_AXI_inst_n_13 : STD_LOGIC;
  signal pixelDataToVideoStream_v1_0_S00_AXI_inst_n_14 : STD_LOGIC;
  signal pixelDataToVideoStream_v1_0_S00_AXI_inst_n_15 : STD_LOGIC;
  signal pixelDataToVideoStream_v1_0_S00_AXI_inst_n_16 : STD_LOGIC;
  signal pixelDataToVideoStream_v1_0_S00_AXI_inst_n_17 : STD_LOGIC;
  signal pixelDataToVideoStream_v1_0_S00_AXI_inst_n_18 : STD_LOGIC;
  signal pixelDataToVideoStream_v1_0_S00_AXI_inst_n_19 : STD_LOGIC;
  signal pixelDataToVideoStream_v1_0_S00_AXI_inst_n_5 : STD_LOGIC;
  signal pixelDataToVideoStream_v1_0_S00_AXI_inst_n_6 : STD_LOGIC;
  signal pixelDataToVideoStream_v1_0_S00_AXI_inst_n_7 : STD_LOGIC;
  signal pixelDataToVideoStream_v1_0_S00_AXI_inst_n_9 : STD_LOGIC;
  signal \NLW_columnCnt0_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_columnCnt0_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_frameCnt_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_framerateCnt4_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_framerateCnt4_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_framerateCnt4_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_framerateCnt4_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lineCnt_reg[11]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_lineCnt_reg[11]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "sof:0010,eol:1000,streaming:0100,waiting:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "sof:0010,eol:1000,streaming:0100,waiting:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "sof:0010,eol:1000,streaming:0100,waiting:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "sof:0010,eol:1000,streaming:0100,waiting:0001";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[0]_i_2\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state_reg[2]_i_2\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_next_state_reg[3]\ : label is "LD";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \columnCnt0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \columnCnt0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \columnCnt0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \frameCnt_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \frameCnt_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \frameCnt_reg[19]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \frameCnt_reg[23]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \frameCnt_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \frameCnt_reg[31]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \frameCnt_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \frameCnt_reg[7]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \lineCnt[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \lineCnt[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \lineCnt[11]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \lineCnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lineCnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lineCnt[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \lineCnt[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \lineCnt[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \lineCnt[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \lineCnt[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \lineCnt[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \lineCnt[9]_i_1\ : label is "soft_lutpair10";
  attribute ADDER_THRESHOLD of \lineCnt_reg[11]_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \lineCnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \lineCnt_reg[8]_i_2\ : label is 35;
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
  m00_axis_tlast <= \^m00_axis_tlast\;
  m00_axis_tuser <= \^m00_axis_tuser\;
  o_blank <= \^o_blank\;
  o_frame_cnt(31 downto 0) <= \^o_frame_cnt\(31 downto 0);
  o_pixel_y(11 downto 0) <= \^o_pixel_y\(11 downto 0);
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_aresetn,
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[0]\,
      PRE => \FSM_onehot_current_state[0]_i_1_n_0\,
      Q => \^o_blank\
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \FSM_onehot_next_state_reg_n_0_[1]\,
      Q => \^m00_axis_tuser\
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \FSM_onehot_next_state_reg_n_0_[2]\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \FSM_onehot_next_state_reg_n_0_[3]\,
      Q => \^m00_axis_tlast\
    );
\FSM_onehot_next_state_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_7,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[0]\
    );
\FSM_onehot_next_state_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \lineCnt[11]_i_8_n_0\,
      I1 => \lineCnt[11]_i_7_n_0\,
      I2 => \FSM_onehot_next_state_reg[0]_i_3_n_0\,
      I3 => m00_axis_tready,
      I4 => i_dataValid,
      O => \FSM_onehot_next_state_reg[0]_i_2_n_0\
    );
\FSM_onehot_next_state_reg[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^o_pixel_y\(6),
      I1 => \^o_pixel_y\(2),
      I2 => \^o_pixel_y\(5),
      I3 => \^o_pixel_y\(9),
      O => \FSM_onehot_next_state_reg[0]_i_3_n_0\
    );
\FSM_onehot_next_state_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_6,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[1]\
    );
\FSM_onehot_next_state_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[2]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[2]\
    );
\FSM_onehot_next_state_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F4CCFCCCFC"
    )
        port map (
      I0 => \lineCnt[11]_i_6_n_0\,
      I1 => \^m00_axis_tlast\,
      I2 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_next_state_reg[3]_i_3_n_0\,
      I4 => \^m00_axis_tuser\,
      I5 => \FSM_onehot_next_state_reg[2]_i_2_n_0\,
      O => \FSM_onehot_next_state_reg[2]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_dataValid,
      I1 => m00_axis_tready,
      O => \FSM_onehot_next_state_reg[2]_i_2_n_0\
    );
\FSM_onehot_next_state_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_next_state_reg[3]_i_1_n_0\,
      G => next_state,
      GE => '1',
      Q => \FSM_onehot_next_state_reg_n_0_[3]\
    );
\FSM_onehot_next_state_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_next_state_reg[3]_i_3_n_0\,
      O => \FSM_onehot_next_state_reg[3]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => i_dataValid,
      I1 => m00_axis_tready,
      I2 => \^m00_axis_tlast\,
      I3 => \^m00_axis_tuser\,
      I4 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I5 => \^o_blank\,
      O => next_state
    );
\FSM_onehot_next_state_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \columnCnt[11]_i_3_n_0\,
      I1 => \^q\(7),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \FSM_onehot_next_state_reg[2]_i_2_n_0\,
      I5 => \columnCnt[11]_i_4_n_0\,
      O => \FSM_onehot_next_state_reg[3]_i_3_n_0\
    );
\columnCnt0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \columnCnt0_inferred__0/i__carry_n_0\,
      CO(2) => \columnCnt0_inferred__0/i__carry_n_1\,
      CO(1) => \columnCnt0_inferred__0/i__carry_n_2\,
      CO(0) => \columnCnt0_inferred__0/i__carry_n_3\,
      CYINIT => \^q\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => \^q\(4 downto 1)
    );
\columnCnt0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \columnCnt0_inferred__0/i__carry_n_0\,
      CO(3) => \columnCnt0_inferred__0/i__carry__0_n_0\,
      CO(2) => \columnCnt0_inferred__0/i__carry__0_n_1\,
      CO(1) => \columnCnt0_inferred__0/i__carry__0_n_2\,
      CO(0) => \columnCnt0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => \^q\(8 downto 5)
    );
\columnCnt0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \columnCnt0_inferred__0/i__carry__0_n_0\,
      CO(3 downto 2) => \NLW_columnCnt0_inferred__0/i__carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \columnCnt0_inferred__0/i__carry__1_n_2\,
      CO(0) => \columnCnt0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_columnCnt0_inferred__0/i__carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => \^q\(11 downto 9)
    );
\columnCnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => columnCnt(0)
    );
\columnCnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \columnCnt[11]_i_3_n_0\,
      I4 => \columnCnt[11]_i_4_n_0\,
      I5 => data0(10),
      O => columnCnt(10)
    );
\columnCnt[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => i_dataValid,
      I2 => \^o_blank\,
      O => \columnCnt[11]_i_1_n_0\
    );
\columnCnt[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \columnCnt[11]_i_3_n_0\,
      I4 => \columnCnt[11]_i_4_n_0\,
      I5 => data0(11),
      O => columnCnt(11)
    );
\columnCnt[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(5),
      I2 => \^q\(8),
      I3 => \^q\(11),
      I4 => \^q\(4),
      O => \columnCnt[11]_i_3_n_0\
    );
\columnCnt[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(6),
      I3 => \^q\(9),
      O => \columnCnt[11]_i_4_n_0\
    );
\columnCnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \columnCnt[11]_i_3_n_0\,
      I4 => \columnCnt[11]_i_4_n_0\,
      I5 => data0(1),
      O => columnCnt(1)
    );
\columnCnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \columnCnt[11]_i_3_n_0\,
      I4 => \columnCnt[11]_i_4_n_0\,
      I5 => data0(2),
      O => columnCnt(2)
    );
\columnCnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \columnCnt[11]_i_3_n_0\,
      I4 => \columnCnt[11]_i_4_n_0\,
      I5 => data0(3),
      O => columnCnt(3)
    );
\columnCnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \columnCnt[11]_i_3_n_0\,
      I4 => \columnCnt[11]_i_4_n_0\,
      I5 => data0(4),
      O => columnCnt(4)
    );
\columnCnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \columnCnt[11]_i_3_n_0\,
      I4 => \columnCnt[11]_i_4_n_0\,
      I5 => data0(5),
      O => columnCnt(5)
    );
\columnCnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \columnCnt[11]_i_3_n_0\,
      I4 => \columnCnt[11]_i_4_n_0\,
      I5 => data0(6),
      O => columnCnt(6)
    );
\columnCnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \columnCnt[11]_i_3_n_0\,
      I4 => \columnCnt[11]_i_4_n_0\,
      I5 => data0(7),
      O => columnCnt(7)
    );
\columnCnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \columnCnt[11]_i_3_n_0\,
      I4 => \columnCnt[11]_i_4_n_0\,
      I5 => data0(8),
      O => columnCnt(8)
    );
\columnCnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFF00000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \columnCnt[11]_i_3_n_0\,
      I4 => \columnCnt[11]_i_4_n_0\,
      I5 => data0(9),
      O => columnCnt(9)
    );
\columnCnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \columnCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => columnCnt(0),
      Q => \^q\(0)
    );
\columnCnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \columnCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => columnCnt(10),
      Q => \^q\(10)
    );
\columnCnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \columnCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => columnCnt(11),
      Q => \^q\(11)
    );
\columnCnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \columnCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => columnCnt(1),
      Q => \^q\(1)
    );
\columnCnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \columnCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => columnCnt(2),
      Q => \^q\(2)
    );
\columnCnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \columnCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => columnCnt(3),
      Q => \^q\(3)
    );
\columnCnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \columnCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => columnCnt(4),
      Q => \^q\(4)
    );
\columnCnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \columnCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => columnCnt(5),
      Q => \^q\(5)
    );
\columnCnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \columnCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => columnCnt(6),
      Q => \^q\(6)
    );
\columnCnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \columnCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => columnCnt(7),
      Q => \^q\(7)
    );
\columnCnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \columnCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => columnCnt(8),
      Q => \^q\(8)
    );
\columnCnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \columnCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => columnCnt(9),
      Q => \^q\(9)
    );
d_newFrame_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_5,
      Q => d_newFrame
    );
\frameCnt[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lineCnt[11]_i_6_n_0\,
      I1 => \lineCnt[11]_i_1_n_0\,
      O => \frameCnt[31]_i_1_n_0\
    );
\frameCnt[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^o_frame_cnt\(0),
      O => \frameCnt[3]_i_2_n_0\
    );
\frameCnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[3]_i_1_n_7\,
      Q => \^o_frame_cnt\(0)
    );
\frameCnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[11]_i_1_n_5\,
      Q => \^o_frame_cnt\(10)
    );
\frameCnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[11]_i_1_n_4\,
      Q => \^o_frame_cnt\(11)
    );
\frameCnt_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frameCnt_reg[7]_i_1_n_0\,
      CO(3) => \frameCnt_reg[11]_i_1_n_0\,
      CO(2) => \frameCnt_reg[11]_i_1_n_1\,
      CO(1) => \frameCnt_reg[11]_i_1_n_2\,
      CO(0) => \frameCnt_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frameCnt_reg[11]_i_1_n_4\,
      O(2) => \frameCnt_reg[11]_i_1_n_5\,
      O(1) => \frameCnt_reg[11]_i_1_n_6\,
      O(0) => \frameCnt_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^o_frame_cnt\(11 downto 8)
    );
\frameCnt_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[15]_i_1_n_7\,
      Q => \^o_frame_cnt\(12)
    );
\frameCnt_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[15]_i_1_n_6\,
      Q => \^o_frame_cnt\(13)
    );
\frameCnt_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[15]_i_1_n_5\,
      Q => \^o_frame_cnt\(14)
    );
\frameCnt_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[15]_i_1_n_4\,
      Q => \^o_frame_cnt\(15)
    );
\frameCnt_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frameCnt_reg[11]_i_1_n_0\,
      CO(3) => \frameCnt_reg[15]_i_1_n_0\,
      CO(2) => \frameCnt_reg[15]_i_1_n_1\,
      CO(1) => \frameCnt_reg[15]_i_1_n_2\,
      CO(0) => \frameCnt_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frameCnt_reg[15]_i_1_n_4\,
      O(2) => \frameCnt_reg[15]_i_1_n_5\,
      O(1) => \frameCnt_reg[15]_i_1_n_6\,
      O(0) => \frameCnt_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^o_frame_cnt\(15 downto 12)
    );
\frameCnt_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[19]_i_1_n_7\,
      Q => \^o_frame_cnt\(16)
    );
\frameCnt_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[19]_i_1_n_6\,
      Q => \^o_frame_cnt\(17)
    );
\frameCnt_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[19]_i_1_n_5\,
      Q => \^o_frame_cnt\(18)
    );
\frameCnt_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[19]_i_1_n_4\,
      Q => \^o_frame_cnt\(19)
    );
\frameCnt_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frameCnt_reg[15]_i_1_n_0\,
      CO(3) => \frameCnt_reg[19]_i_1_n_0\,
      CO(2) => \frameCnt_reg[19]_i_1_n_1\,
      CO(1) => \frameCnt_reg[19]_i_1_n_2\,
      CO(0) => \frameCnt_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frameCnt_reg[19]_i_1_n_4\,
      O(2) => \frameCnt_reg[19]_i_1_n_5\,
      O(1) => \frameCnt_reg[19]_i_1_n_6\,
      O(0) => \frameCnt_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^o_frame_cnt\(19 downto 16)
    );
\frameCnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[3]_i_1_n_6\,
      Q => \^o_frame_cnt\(1)
    );
\frameCnt_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[23]_i_1_n_7\,
      Q => \^o_frame_cnt\(20)
    );
\frameCnt_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[23]_i_1_n_6\,
      Q => \^o_frame_cnt\(21)
    );
\frameCnt_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[23]_i_1_n_5\,
      Q => \^o_frame_cnt\(22)
    );
\frameCnt_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[23]_i_1_n_4\,
      Q => \^o_frame_cnt\(23)
    );
\frameCnt_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frameCnt_reg[19]_i_1_n_0\,
      CO(3) => \frameCnt_reg[23]_i_1_n_0\,
      CO(2) => \frameCnt_reg[23]_i_1_n_1\,
      CO(1) => \frameCnt_reg[23]_i_1_n_2\,
      CO(0) => \frameCnt_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frameCnt_reg[23]_i_1_n_4\,
      O(2) => \frameCnt_reg[23]_i_1_n_5\,
      O(1) => \frameCnt_reg[23]_i_1_n_6\,
      O(0) => \frameCnt_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^o_frame_cnt\(23 downto 20)
    );
\frameCnt_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[27]_i_1_n_7\,
      Q => \^o_frame_cnt\(24)
    );
\frameCnt_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[27]_i_1_n_6\,
      Q => \^o_frame_cnt\(25)
    );
\frameCnt_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[27]_i_1_n_5\,
      Q => \^o_frame_cnt\(26)
    );
\frameCnt_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[27]_i_1_n_4\,
      Q => \^o_frame_cnt\(27)
    );
\frameCnt_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frameCnt_reg[23]_i_1_n_0\,
      CO(3) => \frameCnt_reg[27]_i_1_n_0\,
      CO(2) => \frameCnt_reg[27]_i_1_n_1\,
      CO(1) => \frameCnt_reg[27]_i_1_n_2\,
      CO(0) => \frameCnt_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frameCnt_reg[27]_i_1_n_4\,
      O(2) => \frameCnt_reg[27]_i_1_n_5\,
      O(1) => \frameCnt_reg[27]_i_1_n_6\,
      O(0) => \frameCnt_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^o_frame_cnt\(27 downto 24)
    );
\frameCnt_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[31]_i_2_n_7\,
      Q => \^o_frame_cnt\(28)
    );
\frameCnt_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[31]_i_2_n_6\,
      Q => \^o_frame_cnt\(29)
    );
\frameCnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[3]_i_1_n_5\,
      Q => \^o_frame_cnt\(2)
    );
\frameCnt_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[31]_i_2_n_5\,
      Q => \^o_frame_cnt\(30)
    );
\frameCnt_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[31]_i_2_n_4\,
      Q => \^o_frame_cnt\(31)
    );
\frameCnt_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \frameCnt_reg[27]_i_1_n_0\,
      CO(3) => \NLW_frameCnt_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \frameCnt_reg[31]_i_2_n_1\,
      CO(1) => \frameCnt_reg[31]_i_2_n_2\,
      CO(0) => \frameCnt_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frameCnt_reg[31]_i_2_n_4\,
      O(2) => \frameCnt_reg[31]_i_2_n_5\,
      O(1) => \frameCnt_reg[31]_i_2_n_6\,
      O(0) => \frameCnt_reg[31]_i_2_n_7\,
      S(3 downto 0) => \^o_frame_cnt\(31 downto 28)
    );
\frameCnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[3]_i_1_n_4\,
      Q => \^o_frame_cnt\(3)
    );
\frameCnt_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \frameCnt_reg[3]_i_1_n_0\,
      CO(2) => \frameCnt_reg[3]_i_1_n_1\,
      CO(1) => \frameCnt_reg[3]_i_1_n_2\,
      CO(0) => \frameCnt_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \frameCnt_reg[3]_i_1_n_4\,
      O(2) => \frameCnt_reg[3]_i_1_n_5\,
      O(1) => \frameCnt_reg[3]_i_1_n_6\,
      O(0) => \frameCnt_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^o_frame_cnt\(3 downto 1),
      S(0) => \frameCnt[3]_i_2_n_0\
    );
\frameCnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[7]_i_1_n_7\,
      Q => \^o_frame_cnt\(4)
    );
\frameCnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[7]_i_1_n_6\,
      Q => \^o_frame_cnt\(5)
    );
\frameCnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[7]_i_1_n_5\,
      Q => \^o_frame_cnt\(6)
    );
\frameCnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[7]_i_1_n_4\,
      Q => \^o_frame_cnt\(7)
    );
\frameCnt_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frameCnt_reg[3]_i_1_n_0\,
      CO(3) => \frameCnt_reg[7]_i_1_n_0\,
      CO(2) => \frameCnt_reg[7]_i_1_n_1\,
      CO(1) => \frameCnt_reg[7]_i_1_n_2\,
      CO(0) => \frameCnt_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frameCnt_reg[7]_i_1_n_4\,
      O(2) => \frameCnt_reg[7]_i_1_n_5\,
      O(1) => \frameCnt_reg[7]_i_1_n_6\,
      O(0) => \frameCnt_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^o_frame_cnt\(7 downto 4)
    );
\frameCnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[11]_i_1_n_7\,
      Q => \^o_frame_cnt\(8)
    );
\frameCnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \frameCnt[31]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => \frameCnt_reg[11]_i_1_n_6\,
      Q => \^o_frame_cnt\(9)
    );
framerateCnt4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => framerateCnt4_carry_n_0,
      CO(2) => framerateCnt4_carry_n_1,
      CO(1) => framerateCnt4_carry_n_2,
      CO(0) => framerateCnt4_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_framerateCnt4_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_9,
      S(2) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_10,
      S(1) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_11,
      S(0) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_12
    );
\framerateCnt4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => framerateCnt4_carry_n_0,
      CO(3) => \framerateCnt4_carry__0_n_0\,
      CO(2) => \framerateCnt4_carry__0_n_1\,
      CO(1) => \framerateCnt4_carry__0_n_2\,
      CO(0) => \framerateCnt4_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_framerateCnt4_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_13,
      S(2) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_14,
      S(1) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_15,
      S(0) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_16
    );
\framerateCnt4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \framerateCnt4_carry__0_n_0\,
      CO(3) => \NLW_framerateCnt4_carry__1_CO_UNCONNECTED\(3),
      CO(2) => framerateCnt4,
      CO(1) => \framerateCnt4_carry__1_n_2\,
      CO(0) => \framerateCnt4_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_framerateCnt4_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_17,
      S(1) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_18,
      S(0) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_19
    );
\lineCnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^o_pixel_y\(0),
      O => lineCnt(0)
    );
\lineCnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lineCnt_reg[11]_i_5_n_6\,
      I1 => \lineCnt[11]_i_6_n_0\,
      O => lineCnt(10)
    );
\lineCnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(7),
      I2 => \^q\(0),
      I3 => \columnCnt[11]_i_3_n_0\,
      I4 => \lineCnt[11]_i_3_n_0\,
      I5 => \lineCnt[11]_i_4_n_0\,
      O => \lineCnt[11]_i_1_n_0\
    );
\lineCnt[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lineCnt_reg[11]_i_5_n_5\,
      I1 => \lineCnt[11]_i_6_n_0\,
      O => lineCnt(11)
    );
\lineCnt[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(6),
      I3 => \^o_blank\,
      I4 => i_dataValid,
      I5 => m00_axis_tready,
      O => \lineCnt[11]_i_3_n_0\
    );
\lineCnt[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(10),
      I2 => \^q\(11),
      O => \lineCnt[11]_i_4_n_0\
    );
\lineCnt[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \^o_pixel_y\(9),
      I1 => \^o_pixel_y\(5),
      I2 => \^o_pixel_y\(2),
      I3 => \^o_pixel_y\(6),
      I4 => \lineCnt[11]_i_7_n_0\,
      I5 => \lineCnt[11]_i_8_n_0\,
      O => \lineCnt[11]_i_6_n_0\
    );
\lineCnt[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^o_pixel_y\(1),
      I1 => \^o_pixel_y\(0),
      I2 => \^o_pixel_y\(8),
      I3 => \^o_pixel_y\(11),
      O => \lineCnt[11]_i_7_n_0\
    );
\lineCnt[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^o_pixel_y\(7),
      I1 => \^o_pixel_y\(3),
      I2 => \^o_pixel_y\(4),
      I3 => \^o_pixel_y\(10),
      O => \lineCnt[11]_i_8_n_0\
    );
\lineCnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lineCnt_reg[4]_i_2_n_7\,
      I1 => \lineCnt[11]_i_6_n_0\,
      O => lineCnt(1)
    );
\lineCnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lineCnt_reg[4]_i_2_n_6\,
      I1 => \lineCnt[11]_i_6_n_0\,
      O => lineCnt(2)
    );
\lineCnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lineCnt_reg[4]_i_2_n_5\,
      I1 => \lineCnt[11]_i_6_n_0\,
      O => lineCnt(3)
    );
\lineCnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lineCnt_reg[4]_i_2_n_4\,
      I1 => \lineCnt[11]_i_6_n_0\,
      O => lineCnt(4)
    );
\lineCnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lineCnt_reg[8]_i_2_n_7\,
      I1 => \lineCnt[11]_i_6_n_0\,
      O => lineCnt(5)
    );
\lineCnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lineCnt_reg[8]_i_2_n_6\,
      I1 => \lineCnt[11]_i_6_n_0\,
      O => lineCnt(6)
    );
\lineCnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lineCnt_reg[8]_i_2_n_5\,
      I1 => \lineCnt[11]_i_6_n_0\,
      O => lineCnt(7)
    );
\lineCnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lineCnt_reg[8]_i_2_n_4\,
      I1 => \lineCnt[11]_i_6_n_0\,
      O => lineCnt(8)
    );
\lineCnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lineCnt_reg[11]_i_5_n_7\,
      I1 => \lineCnt[11]_i_6_n_0\,
      O => lineCnt(9)
    );
\lineCnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \lineCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => lineCnt(0),
      Q => \^o_pixel_y\(0)
    );
\lineCnt_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \lineCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => lineCnt(10),
      Q => \^o_pixel_y\(10)
    );
\lineCnt_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \lineCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => lineCnt(11),
      Q => \^o_pixel_y\(11)
    );
\lineCnt_reg[11]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \lineCnt_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_lineCnt_reg[11]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \lineCnt_reg[11]_i_5_n_2\,
      CO(0) => \lineCnt_reg[11]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_lineCnt_reg[11]_i_5_O_UNCONNECTED\(3),
      O(2) => \lineCnt_reg[11]_i_5_n_5\,
      O(1) => \lineCnt_reg[11]_i_5_n_6\,
      O(0) => \lineCnt_reg[11]_i_5_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^o_pixel_y\(11 downto 9)
    );
\lineCnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \lineCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => lineCnt(1),
      Q => \^o_pixel_y\(1)
    );
\lineCnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \lineCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => lineCnt(2),
      Q => \^o_pixel_y\(2)
    );
\lineCnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \lineCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => lineCnt(3),
      Q => \^o_pixel_y\(3)
    );
\lineCnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \lineCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => lineCnt(4),
      Q => \^o_pixel_y\(4)
    );
\lineCnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \lineCnt_reg[4]_i_2_n_0\,
      CO(2) => \lineCnt_reg[4]_i_2_n_1\,
      CO(1) => \lineCnt_reg[4]_i_2_n_2\,
      CO(0) => \lineCnt_reg[4]_i_2_n_3\,
      CYINIT => \^o_pixel_y\(0),
      DI(3 downto 0) => B"0000",
      O(3) => \lineCnt_reg[4]_i_2_n_4\,
      O(2) => \lineCnt_reg[4]_i_2_n_5\,
      O(1) => \lineCnt_reg[4]_i_2_n_6\,
      O(0) => \lineCnt_reg[4]_i_2_n_7\,
      S(3 downto 0) => \^o_pixel_y\(4 downto 1)
    );
\lineCnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \lineCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => lineCnt(5),
      Q => \^o_pixel_y\(5)
    );
\lineCnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \lineCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => lineCnt(6),
      Q => \^o_pixel_y\(6)
    );
\lineCnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \lineCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => lineCnt(7),
      Q => \^o_pixel_y\(7)
    );
\lineCnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \lineCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => lineCnt(8),
      Q => \^o_pixel_y\(8)
    );
\lineCnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \lineCnt_reg[4]_i_2_n_0\,
      CO(3) => \lineCnt_reg[8]_i_2_n_0\,
      CO(2) => \lineCnt_reg[8]_i_2_n_1\,
      CO(1) => \lineCnt_reg[8]_i_2_n_2\,
      CO(0) => \lineCnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lineCnt_reg[8]_i_2_n_4\,
      O(2) => \lineCnt_reg[8]_i_2_n_5\,
      O(1) => \lineCnt_reg[8]_i_2_n_6\,
      O(0) => \lineCnt_reg[8]_i_2_n_7\,
      S(3 downto 0) => \^o_pixel_y\(8 downto 5)
    );
\lineCnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \lineCnt[11]_i_1_n_0\,
      CLR => \FSM_onehot_current_state[0]_i_1_n_0\,
      D => lineCnt(9),
      Q => \^o_pixel_y\(9)
    );
m00_axis_tvalid_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E0E0E0"
    )
        port map (
      I0 => \^m00_axis_tlast\,
      I1 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I2 => i_dataValid,
      I3 => m00_axis_tready,
      I4 => \^m00_axis_tuser\,
      O => m00_axis_tvalid
    );
pixelDataToVideoStream_v1_0_S00_AXI_inst: entity work.atelier4_pixelDataToVideoStre_0_3_pixelDataToVideoStream_v1_0_S00_AXI
     port map (
      CO(0) => framerateCnt4,
      D(1) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_6,
      D(0) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_7,
      \FSM_onehot_current_state_reg[0]\ => \FSM_onehot_next_state_reg[0]_i_2_n_0\,
      \FSM_onehot_current_state_reg[1]\ => \FSM_onehot_next_state_reg[2]_i_2_n_0\,
      Q(2) => \^m00_axis_tlast\,
      Q(1) => \^m00_axis_tuser\,
      Q(0) => \^o_blank\,
      S(3) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_9,
      S(2) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_10,
      S(1) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_11,
      S(0) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_12,
      axi_arready_reg_0 => s00_axi_arready,
      axi_awready_reg_0 => s00_axi_awready,
      \axi_rdata_reg[0]_0\ => \^o_frame_cnt\(0),
      \axi_rdata_reg[11]_0\(3 downto 0) => \^o_frame_cnt\(11 downto 8),
      \axi_rdata_reg[15]_0\(3 downto 0) => \^o_frame_cnt\(15 downto 12),
      \axi_rdata_reg[19]_0\(3 downto 0) => \^o_frame_cnt\(19 downto 16),
      \axi_rdata_reg[23]_0\(3 downto 0) => \^o_frame_cnt\(23 downto 20),
      \axi_rdata_reg[27]_0\(3 downto 0) => \^o_frame_cnt\(27 downto 24),
      \axi_rdata_reg[31]_0\(3 downto 0) => \^o_frame_cnt\(31 downto 28),
      \axi_rdata_reg[3]_0\(2 downto 0) => \^o_frame_cnt\(3 downto 1),
      \axi_rdata_reg[7]_0\(3 downto 0) => \^o_frame_cnt\(7 downto 4),
      axi_wready_reg_0 => s00_axi_wready,
      d_newFrame => d_newFrame,
      d_newFrame_reg => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_5,
      \frameCnt_reg[31]\(2) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_17,
      \frameCnt_reg[31]\(1) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_18,
      \frameCnt_reg[31]\(0) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_19,
      o_stall => o_stall,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg1_reg[21]_0\(3) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_13,
      \slv_reg1_reg[21]_0\(2) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_14,
      \slv_reg1_reg[21]_0\(1) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_15,
      \slv_reg1_reg[21]_0\(0) => pixelDataToVideoStream_v1_0_S00_AXI_inst_n_16
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity atelier4_pixelDataToVideoStre_0_3 is
  port (
    o_stall : out STD_LOGIC;
    o_blank : out STD_LOGIC;
    o_pixel_x : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_pixel_y : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_frame_cnt : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_dataPixel : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_dataValid : in STD_LOGIC;
    i_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_tuser : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of atelier4_pixelDataToVideoStre_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of atelier4_pixelDataToVideoStre_0_3 : entity is "atelier4_pixelDataToVideoStre_0_3,pixelDataToVideoStream_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of atelier4_pixelDataToVideoStre_0_3 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of atelier4_pixelDataToVideoStre_0_3 : entity is "pixelDataToVideoStream_v1_0,Vivado 2020.2";
end atelier4_pixelDataToVideoStre_0_3;

architecture STRUCTURE of atelier4_pixelDataToVideoStre_0_3 is
  signal \<const0>\ : STD_LOGIC;
  signal \^i_datapixel\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of i_aresetn : signal is "xilinx.com:signal:reset:1.0 i_aresetn RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_aresetn : signal is "XIL_INTERFACENAME i_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute x_interface_info of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute x_interface_info of m00_axis_tuser : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TUSER";
  attribute x_interface_info of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute x_interface_parameter of m00_axis_tvalid : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI:M00_AXIS, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 74250000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  \^i_datapixel\(23 downto 0) <= i_dataPixel(23 downto 0);
  m00_axis_tdata(23 downto 0) <= \^i_datapixel\(23 downto 0);
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.atelier4_pixelDataToVideoStre_0_3_pixelDataToVideoStream_v1_0
     port map (
      Q(11 downto 0) => o_pixel_x(11 downto 0),
      i_aresetn => i_aresetn,
      i_dataValid => i_dataValid,
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tuser => m00_axis_tuser,
      m00_axis_tvalid => m00_axis_tvalid,
      o_blank => o_blank,
      o_frame_cnt(31 downto 0) => o_frame_cnt(31 downto 0),
      o_pixel_y(11 downto 0) => o_pixel_y(11 downto 0),
      o_stall => o_stall,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
