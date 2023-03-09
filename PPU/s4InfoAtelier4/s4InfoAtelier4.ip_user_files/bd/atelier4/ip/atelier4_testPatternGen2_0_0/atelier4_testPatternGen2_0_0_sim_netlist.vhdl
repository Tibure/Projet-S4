-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Jan 23 14:35:41 2023
-- Host        : DESKTOP-STNSRIB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Travail/s4InfoAtelier4/s4InfoAtelier4.gen/sources_1/bd/atelier4/ip/atelier4_testPatternGen2_0_0/atelier4_testPatternGen2_0_0_sim_netlist.vhdl
-- Design      : atelier4_testPatternGen2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity atelier4_testPatternGen2_0_0_testPatternGen2 is
  port (
    o_dataPixel : out STD_LOGIC_VECTOR ( 23 downto 0 );
    i_colorDataA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_colorDataB : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_y : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of atelier4_testPatternGen2_0_0_testPatternGen2 : entity is "testPatternGen2";
end atelier4_testPatternGen2_0_0_testPatternGen2;

architecture STRUCTURE of atelier4_testPatternGen2_0_0_testPatternGen2 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_dataPixel[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_dataPixel[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_dataPixel[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_dataPixel[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_dataPixel[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_dataPixel[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_dataPixel[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_dataPixel[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_dataPixel[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_dataPixel[18]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_dataPixel[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_dataPixel[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_dataPixel[20]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_dataPixel[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_dataPixel[22]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_dataPixel[23]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_dataPixel[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_dataPixel[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_dataPixel[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_dataPixel[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_dataPixel[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_dataPixel[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_dataPixel[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_dataPixel[9]_INST_0\ : label is "soft_lutpair4";
begin
\o_dataPixel[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(0),
      I1 => i_colorDataB(0),
      I2 => i_y(0),
      O => o_dataPixel(0)
    );
\o_dataPixel[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(10),
      I1 => i_colorDataB(10),
      I2 => i_y(0),
      O => o_dataPixel(10)
    );
\o_dataPixel[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(11),
      I1 => i_colorDataB(11),
      I2 => i_y(0),
      O => o_dataPixel(11)
    );
\o_dataPixel[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(12),
      I1 => i_colorDataB(12),
      I2 => i_y(0),
      O => o_dataPixel(12)
    );
\o_dataPixel[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(13),
      I1 => i_colorDataB(13),
      I2 => i_y(0),
      O => o_dataPixel(13)
    );
\o_dataPixel[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(14),
      I1 => i_colorDataB(14),
      I2 => i_y(0),
      O => o_dataPixel(14)
    );
\o_dataPixel[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(15),
      I1 => i_colorDataB(15),
      I2 => i_y(0),
      O => o_dataPixel(15)
    );
\o_dataPixel[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(16),
      I1 => i_colorDataB(16),
      I2 => i_y(0),
      O => o_dataPixel(16)
    );
\o_dataPixel[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(17),
      I1 => i_colorDataB(17),
      I2 => i_y(0),
      O => o_dataPixel(17)
    );
\o_dataPixel[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(18),
      I1 => i_colorDataB(18),
      I2 => i_y(0),
      O => o_dataPixel(18)
    );
\o_dataPixel[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(19),
      I1 => i_colorDataB(19),
      I2 => i_y(0),
      O => o_dataPixel(19)
    );
\o_dataPixel[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(1),
      I1 => i_colorDataB(1),
      I2 => i_y(0),
      O => o_dataPixel(1)
    );
\o_dataPixel[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(20),
      I1 => i_colorDataB(20),
      I2 => i_y(0),
      O => o_dataPixel(20)
    );
\o_dataPixel[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(21),
      I1 => i_colorDataB(21),
      I2 => i_y(0),
      O => o_dataPixel(21)
    );
\o_dataPixel[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(22),
      I1 => i_colorDataB(22),
      I2 => i_y(0),
      O => o_dataPixel(22)
    );
\o_dataPixel[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(23),
      I1 => i_colorDataB(23),
      I2 => i_y(0),
      O => o_dataPixel(23)
    );
\o_dataPixel[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(2),
      I1 => i_colorDataB(2),
      I2 => i_y(0),
      O => o_dataPixel(2)
    );
\o_dataPixel[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(3),
      I1 => i_colorDataB(3),
      I2 => i_y(0),
      O => o_dataPixel(3)
    );
\o_dataPixel[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(4),
      I1 => i_colorDataB(4),
      I2 => i_y(0),
      O => o_dataPixel(4)
    );
\o_dataPixel[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(5),
      I1 => i_colorDataB(5),
      I2 => i_y(0),
      O => o_dataPixel(5)
    );
\o_dataPixel[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(6),
      I1 => i_colorDataB(6),
      I2 => i_y(0),
      O => o_dataPixel(6)
    );
\o_dataPixel[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(7),
      I1 => i_colorDataB(7),
      I2 => i_y(0),
      O => o_dataPixel(7)
    );
\o_dataPixel[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(8),
      I1 => i_colorDataB(8),
      I2 => i_y(0),
      O => o_dataPixel(8)
    );
\o_dataPixel[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_colorDataA(9),
      I1 => i_colorDataB(9),
      I2 => i_y(0),
      O => o_dataPixel(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity atelier4_testPatternGen2_0_0 is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    i_x : in STD_LOGIC_VECTOR ( 11 downto 0 );
    i_y : in STD_LOGIC_VECTOR ( 11 downto 0 );
    o_dataValid : out STD_LOGIC;
    o_dataPixel : out STD_LOGIC_VECTOR ( 23 downto 0 );
    i_colorDataA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_colorDataB : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of atelier4_testPatternGen2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of atelier4_testPatternGen2_0_0 : entity is "atelier4_testPatternGen2_0_0,testPatternGen2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of atelier4_testPatternGen2_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of atelier4_testPatternGen2_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of atelier4_testPatternGen2_0_0 : entity is "testPatternGen2,Vivado 2020.2";
end atelier4_testPatternGen2_0_0;

architecture STRUCTURE of atelier4_testPatternGen2_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute x_interface_parameter of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  o_dataValid <= \<const1>\;
U0: entity work.atelier4_testPatternGen2_0_0_testPatternGen2
     port map (
      i_colorDataA(23 downto 0) => i_colorDataA(23 downto 0),
      i_colorDataB(23 downto 0) => i_colorDataB(23 downto 0),
      i_y(0) => i_y(3),
      o_dataPixel(23 downto 0) => o_dataPixel(23 downto 0)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
