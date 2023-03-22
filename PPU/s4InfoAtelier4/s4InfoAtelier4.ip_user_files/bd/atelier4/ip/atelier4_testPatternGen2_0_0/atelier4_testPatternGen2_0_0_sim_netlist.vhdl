-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Mar 22 14:43:29 2023
-- Host        : XPS-Etienne running 64-bit major release  (build 9200)
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
entity atelier4_testPatternGen2_0_0_colorConverter is
  port (
    o_dataPixel : out STD_LOGIC_VECTOR ( 22 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of atelier4_testPatternGen2_0_0_colorConverter : entity is "colorConverter";
end atelier4_testPatternGen2_0_0_colorConverter;

architecture STRUCTURE of atelier4_testPatternGen2_0_0_colorConverter is
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
  attribute SOFT_HLUTNM of \o_dataPixel[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_dataPixel[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_dataPixel[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_dataPixel[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_dataPixel[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_dataPixel[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_dataPixel[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_dataPixel[9]_INST_0\ : label is "soft_lutpair4";
begin
\o_dataPixel[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8151"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => o_dataPixel(0)
    );
\o_dataPixel[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"38A5"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => o_dataPixel(10)
    );
\o_dataPixel[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2BD5"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => o_dataPixel(11)
    );
\o_dataPixel[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"389D"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => o_dataPixel(12)
    );
\o_dataPixel[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2CC9"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => o_dataPixel(13)
    );
\o_dataPixel[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6DD9"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => o_dataPixel(14)
    );
\o_dataPixel[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AC1"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => o_dataPixel(15)
    );
\o_dataPixel[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE25"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      O => o_dataPixel(16)
    );
\o_dataPixel[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC95"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      O => o_dataPixel(17)
    );
\o_dataPixel[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8DD"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => o_dataPixel(18)
    );
\o_dataPixel[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2FD"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => o_dataPixel(19)
    );
\o_dataPixel[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A845"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      O => o_dataPixel(1)
    );
\o_dataPixel[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE24"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      O => o_dataPixel(20)
    );
\o_dataPixel[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BDD0"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      O => o_dataPixel(21)
    );
\o_dataPixel[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F62C"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      O => o_dataPixel(22)
    );
\o_dataPixel[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C04F"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(1),
      O => o_dataPixel(2)
    );
\o_dataPixel[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"804D"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      O => o_dataPixel(3)
    );
\o_dataPixel[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A045"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      O => o_dataPixel(4)
    );
\o_dataPixel[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"98D5"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => o_dataPixel(5)
    );
\o_dataPixel[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DA45"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => o_dataPixel(6)
    );
\o_dataPixel[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C955"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => o_dataPixel(7)
    );
\o_dataPixel[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"708F"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      O => o_dataPixel(8)
    );
\o_dataPixel[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"38B5"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => o_dataPixel(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity atelier4_testPatternGen2_0_0_tile is
  port (
    o_dataPixel : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_x : in STD_LOGIC_VECTOR ( 10 downto 0 );
    clk : in STD_LOGIC;
    i_y : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of atelier4_testPatternGen2_0_0_tile : entity is "tile";
end atelier4_testPatternGen2_0_0_tile;

architecture STRUCTURE of atelier4_testPatternGen2_0_0_tile is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \o_ColorCode[0]_i_13_n_0\ : STD_LOGIC;
  signal \o_ColorCode[0]_i_14_n_0\ : STD_LOGIC;
  signal \o_ColorCode[0]_i_15_n_0\ : STD_LOGIC;
  signal \o_ColorCode[0]_i_16_n_0\ : STD_LOGIC;
  signal \o_ColorCode[0]_i_17_n_0\ : STD_LOGIC;
  signal \o_ColorCode[0]_i_18_n_0\ : STD_LOGIC;
  signal \o_ColorCode[0]_i_19_n_0\ : STD_LOGIC;
  signal \o_ColorCode[0]_i_20_n_0\ : STD_LOGIC;
  signal \o_ColorCode[0]_i_2_n_0\ : STD_LOGIC;
  signal \o_ColorCode[0]_i_3_n_0\ : STD_LOGIC;
  signal \o_ColorCode[0]_i_6_n_0\ : STD_LOGIC;
  signal \o_ColorCode[0]_i_7_n_0\ : STD_LOGIC;
  signal \o_ColorCode[0]_i_8_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_10_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_11_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_12_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_13_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_14_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_15_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_16_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_17_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_18_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_19_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_20_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_21_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_22_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_23_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_2_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_3_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_5_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_7_n_0\ : STD_LOGIC;
  signal \o_ColorCode[1]_i_8_n_0\ : STD_LOGIC;
  signal \o_ColorCode[2]_i_10_n_0\ : STD_LOGIC;
  signal \o_ColorCode[2]_i_11_n_0\ : STD_LOGIC;
  signal \o_ColorCode[2]_i_12_n_0\ : STD_LOGIC;
  signal \o_ColorCode[2]_i_13_n_0\ : STD_LOGIC;
  signal \o_ColorCode[2]_i_14_n_0\ : STD_LOGIC;
  signal \o_ColorCode[2]_i_15_n_0\ : STD_LOGIC;
  signal \o_ColorCode[2]_i_16_n_0\ : STD_LOGIC;
  signal \o_ColorCode[2]_i_17_n_0\ : STD_LOGIC;
  signal \o_ColorCode[2]_i_18_n_0\ : STD_LOGIC;
  signal \o_ColorCode[2]_i_2_n_0\ : STD_LOGIC;
  signal \o_ColorCode[2]_i_3_n_0\ : STD_LOGIC;
  signal \o_ColorCode[2]_i_4_n_0\ : STD_LOGIC;
  signal \o_ColorCode[2]_i_8_n_0\ : STD_LOGIC;
  signal \o_ColorCode[2]_i_9_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_10_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_11_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_12_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_13_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_15_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_17_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_18_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_19_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_20_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_21_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_22_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_25_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_28_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_29_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_2_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_30_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_31_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_32_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_33_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_34_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_35_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_4_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_6_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_8_n_0\ : STD_LOGIC;
  signal \o_ColorCode[3]_i_9_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[3]_i_16_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[3]_i_23_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[3]_i_24_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[3]_i_26_n_0\ : STD_LOGIC;
  signal \o_ColorCode_reg[3]_i_27_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rel_rot : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rel_t_id : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_index : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s_index[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_index[6]_i_10_n_0\ : STD_LOGIC;
  signal \s_index[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_index[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_index[6]_i_5_n_0\ : STD_LOGIC;
  signal \s_index[6]_i_6_n_0\ : STD_LOGIC;
  signal \s_index[6]_i_7_n_0\ : STD_LOGIC;
  signal \s_index[6]_i_8_n_0\ : STD_LOGIC;
  signal \s_index[6]_i_9_n_0\ : STD_LOGIC;
  signal \s_index[7]_i_10_n_0\ : STD_LOGIC;
  signal \s_index[7]_i_11_n_0\ : STD_LOGIC;
  signal \s_index[7]_i_12_n_0\ : STD_LOGIC;
  signal \s_index[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_index[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_index[7]_i_5_n_0\ : STD_LOGIC;
  signal \s_index[7]_i_6_n_0\ : STD_LOGIC;
  signal \s_index[7]_i_7_n_0\ : STD_LOGIC;
  signal \s_index[7]_i_8_n_0\ : STD_LOGIC;
  signal \s_index[7]_i_9_n_0\ : STD_LOGIC;
  signal \s_tile_textures[0][0]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_ColorCode[0]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_ColorCode[0]_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_ColorCode[1]_i_14\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_ColorCode[1]_i_15\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_ColorCode[1]_i_16\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_ColorCode[2]_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_ColorCode[2]_i_9\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \o_ColorCode[3]_i_11\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \o_ColorCode[3]_i_12\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_ColorCode[3]_i_13\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_ColorCode[3]_i_17\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_index[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_index[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_index[3]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_index[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_index[6]_i_10\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_index[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_index[7]_i_10\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_index[7]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_index[7]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_index[7]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_index[7]_i_9\ : label is "soft_lutpair18";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\o_ColorCode[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \o_ColorCode[2]_i_2_n_0\,
      I1 => rel_t_id(3),
      I2 => \o_ColorCode[0]_i_2_n_0\,
      I3 => rel_t_id(2),
      I4 => \o_ColorCode[0]_i_3_n_0\,
      O => \s_tile_textures[0][0]_0\(0)
    );
\o_ColorCode[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFDFFF5D7DFFFFF"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(0),
      I2 => s_index(5),
      I3 => s_index(4),
      I4 => s_index(1),
      I5 => s_index(2),
      O => \o_ColorCode[0]_i_13_n_0\
    );
\o_ColorCode[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555F555D04440000"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(0),
      I2 => s_index(5),
      I3 => s_index(4),
      I4 => s_index(1),
      I5 => s_index(2),
      O => \o_ColorCode[0]_i_14_n_0\
    );
\o_ColorCode[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"071F020A070A0020"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(0),
      I2 => s_index(2),
      I3 => s_index(1),
      I4 => s_index(5),
      I5 => s_index(4),
      O => \o_ColorCode[0]_i_15_n_0\
    );
\o_ColorCode[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0DFEFDF"
    )
        port map (
      I0 => s_index(4),
      I1 => s_index(5),
      I2 => s_index(6),
      I3 => s_index(1),
      I4 => s_index(0),
      I5 => s_index(2),
      O => \o_ColorCode[0]_i_16_n_0\
    );
\o_ColorCode[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5B9654C25F7F5FFF"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(4),
      I2 => s_index(5),
      I3 => s_index(1),
      I4 => s_index(0),
      I5 => s_index(2),
      O => \o_ColorCode[0]_i_17_n_0\
    );
\o_ColorCode[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001140000"
    )
        port map (
      I0 => s_index(2),
      I1 => s_index(0),
      I2 => s_index(4),
      I3 => s_index(5),
      I4 => s_index(1),
      I5 => s_index(6),
      O => \o_ColorCode[0]_i_18_n_0\
    );
\o_ColorCode[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11172E2800000000"
    )
        port map (
      I0 => s_index(1),
      I1 => s_index(5),
      I2 => s_index(4),
      I3 => s_index(0),
      I4 => s_index(2),
      I5 => s_index(6),
      O => \o_ColorCode[0]_i_19_n_0\
    );
\o_ColorCode[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFAFCFC0"
    )
        port map (
      I0 => \o_ColorCode[3]_i_12_n_0\,
      I1 => \o_ColorCode[3]_i_13_n_0\,
      I2 => rel_t_id(1),
      I3 => \o_ColorCode_reg[0]_i_4_n_0\,
      I4 => rel_t_id(0),
      O => \o_ColorCode[0]_i_2_n_0\
    );
\o_ColorCode[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFA8A48000"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(0),
      I2 => s_index(5),
      I3 => s_index(4),
      I4 => s_index(1),
      I5 => s_index(2),
      O => \o_ColorCode[0]_i_20_n_0\
    );
\o_ColorCode[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \o_ColorCode_reg[0]_i_5_n_0\,
      I1 => \o_ColorCode[0]_i_6_n_0\,
      I2 => rel_t_id(1),
      I3 => \o_ColorCode[0]_i_7_n_0\,
      I4 => rel_t_id(0),
      I5 => \o_ColorCode[0]_i_8_n_0\,
      O => \o_ColorCode[0]_i_3_n_0\
    );
\o_ColorCode[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C2"
    )
        port map (
      I0 => s_index(3),
      I1 => s_index(2),
      I2 => s_index(6),
      O => \o_ColorCode[0]_i_6_n_0\
    );
\o_ColorCode[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(2),
      O => \o_ColorCode[0]_i_7_n_0\
    );
\o_ColorCode[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_index(3),
      I1 => s_index(7),
      O => \o_ColorCode[0]_i_8_n_0\
    );
\o_ColorCode[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003033BB00300088"
    )
        port map (
      I0 => \o_ColorCode[1]_i_2_n_0\,
      I1 => rel_t_id(3),
      I2 => \o_ColorCode[1]_i_3_n_0\,
      I3 => rel_t_id(1),
      I4 => rel_t_id(2),
      I5 => \o_ColorCode[1]_i_5_n_0\,
      O => \s_tile_textures[0][0]_0\(1)
    );
\o_ColorCode[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2AAEAF2F5DF55"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(0),
      I2 => s_index(2),
      I3 => s_index(4),
      I4 => s_index(1),
      I5 => s_index(5),
      O => \o_ColorCode[1]_i_10_n_0\
    );
\o_ColorCode[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001F0F1F"
    )
        port map (
      I0 => s_index(4),
      I1 => s_index(5),
      I2 => s_index(6),
      I3 => s_index(1),
      I4 => s_index(0),
      I5 => s_index(2),
      O => \o_ColorCode[1]_i_11_n_0\
    );
\o_ColorCode[1]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \s_index[7]_i_8_n_0\,
      I1 => \s_index[6]_i_8_n_0\,
      I2 => \s_index[6]_i_7_n_0\,
      I3 => \o_ColorCode[1]_i_21_n_0\,
      I4 => \s_index[6]_i_5_n_0\,
      O => \o_ColorCode[1]_i_12_n_0\
    );
\o_ColorCode[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \s_index[7]_i_12_n_0\,
      I1 => \s_index[6]_i_5_n_0\,
      I2 => \o_ColorCode[1]_i_21_n_0\,
      I3 => \s_index[6]_i_7_n_0\,
      I4 => \s_index[6]_i_8_n_0\,
      I5 => \s_index[7]_i_8_n_0\,
      O => \o_ColorCode[1]_i_13_n_0\
    );
\o_ColorCode[1]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3088"
    )
        port map (
      I0 => \o_ColorCode[1]_i_22_n_0\,
      I1 => s_index(3),
      I2 => \o_ColorCode[1]_i_23_n_0\,
      I3 => s_index(7),
      O => \o_ColorCode[1]_i_14_n_0\
    );
\o_ColorCode[1]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_index(2),
      I1 => s_index(3),
      O => \o_ColorCode[1]_i_15_n_0\
    );
\o_ColorCode[1]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_index(3),
      I1 => s_index(7),
      O => \o_ColorCode[1]_i_16_n_0\
    );
\o_ColorCode[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300300400000000"
    )
        port map (
      I0 => s_index(0),
      I1 => s_index(6),
      I2 => s_index(4),
      I3 => s_index(5),
      I4 => s_index(1),
      I5 => s_index(2),
      O => \o_ColorCode[1]_i_17_n_0\
    );
\o_ColorCode[1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000066666226"
    )
        port map (
      I0 => s_index(1),
      I1 => s_index(2),
      I2 => s_index(5),
      I3 => s_index(4),
      I4 => s_index(0),
      I5 => s_index(6),
      O => \o_ColorCode[1]_i_18_n_0\
    );
\o_ColorCode[1]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF804C8000000000"
    )
        port map (
      I0 => s_index(0),
      I1 => s_index(5),
      I2 => s_index(1),
      I3 => s_index(2),
      I4 => s_index(4),
      I5 => s_index(6),
      O => \o_ColorCode[1]_i_19_n_0\
    );
\o_ColorCode[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \o_ColorCode_reg[1]_i_6_n_0\,
      I1 => s_index(3),
      I2 => \o_ColorCode[1]_i_7_n_0\,
      I3 => s_index(7),
      I4 => \o_ColorCode[1]_i_8_n_0\,
      I5 => rel_t_id(0),
      O => \o_ColorCode[1]_i_2_n_0\
    );
\o_ColorCode[1]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFE76FAFFFF3FB7"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(2),
      I2 => s_index(0),
      I3 => s_index(4),
      I4 => s_index(5),
      I5 => s_index(1),
      O => \o_ColorCode[1]_i_20_n_0\
    );
\o_ColorCode[1]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110044000000000"
    )
        port map (
      I0 => i_x(8),
      I1 => i_x(6),
      I2 => i_x(4),
      I3 => \s_index[6]_i_10_n_0\,
      I4 => i_x(5),
      I5 => i_x(7),
      O => \o_ColorCode[1]_i_21_n_0\
    );
\o_ColorCode[1]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CD9D9504D5555755"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(2),
      I2 => s_index(4),
      I3 => s_index(0),
      I4 => s_index(1),
      I5 => s_index(5),
      O => \o_ColorCode[1]_i_22_n_0\
    );
\o_ColorCode[1]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1501050000000000"
    )
        port map (
      I0 => s_index(2),
      I1 => s_index(0),
      I2 => s_index(1),
      I3 => s_index(5),
      I4 => s_index(4),
      I5 => s_index(6),
      O => \o_ColorCode[1]_i_23_n_0\
    );
\o_ColorCode[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \o_ColorCode_reg[1]_i_9_n_0\,
      I1 => s_index(3),
      I2 => \o_ColorCode[1]_i_10_n_0\,
      I3 => s_index(7),
      I4 => \o_ColorCode[1]_i_11_n_0\,
      I5 => rel_t_id(0),
      O => \o_ColorCode[1]_i_3_n_0\
    );
\o_ColorCode[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880008000000000"
    )
        port map (
      I0 => \s_index[7]_i_5_n_0\,
      I1 => \s_index[7]_i_6_n_0\,
      I2 => \o_ColorCode[1]_i_12_n_0\,
      I3 => \s_index[7]_i_9_n_0\,
      I4 => \o_ColorCode[1]_i_13_n_0\,
      I5 => \s_index[7]_i_10_n_0\,
      O => rel_t_id(1)
    );
\o_ColorCode[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA03F3FAFA03030"
    )
        port map (
      I0 => \o_ColorCode[1]_i_14_n_0\,
      I1 => \o_ColorCode[1]_i_15_n_0\,
      I2 => rel_t_id(1),
      I3 => \o_ColorCode[2]_i_9_n_0\,
      I4 => rel_t_id(0),
      I5 => \o_ColorCode[1]_i_16_n_0\,
      O => \o_ColorCode[1]_i_5_n_0\
    );
\o_ColorCode[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030080300"
    )
        port map (
      I0 => s_index(0),
      I1 => s_index(6),
      I2 => s_index(4),
      I3 => s_index(5),
      I4 => s_index(1),
      I5 => s_index(2),
      O => \o_ColorCode[1]_i_7_n_0\
    );
\o_ColorCode[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555A22A"
    )
        port map (
      I0 => s_index(1),
      I1 => s_index(0),
      I2 => s_index(5),
      I3 => s_index(4),
      I4 => s_index(2),
      I5 => s_index(6),
      O => \o_ColorCode[1]_i_8_n_0\
    );
\o_ColorCode[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \o_ColorCode[2]_i_2_n_0\,
      I1 => rel_t_id(3),
      I2 => \o_ColorCode[2]_i_3_n_0\,
      I3 => rel_t_id(2),
      I4 => \o_ColorCode[2]_i_4_n_0\,
      O => \s_tile_textures[0][0]_0\(2)
    );
\o_ColorCode[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7FFEEAEEE8"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(1),
      I2 => s_index(5),
      I3 => s_index(4),
      I4 => s_index(0),
      I5 => s_index(2),
      O => \o_ColorCode[2]_i_10_n_0\
    );
\o_ColorCode[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDDF"
    )
        port map (
      I0 => s_index(2),
      I1 => s_index(1),
      I2 => s_index(5),
      I3 => s_index(4),
      I4 => s_index(0),
      I5 => s_index(6),
      O => \o_ColorCode[2]_i_11_n_0\
    );
\o_ColorCode[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8FEEAFEFFDFFFFF"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(4),
      I2 => s_index(5),
      I3 => s_index(1),
      I4 => s_index(0),
      I5 => s_index(2),
      O => \o_ColorCode[2]_i_12_n_0\
    );
\o_ColorCode[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBBFFFFF"
    )
        port map (
      I0 => s_index(2),
      I1 => s_index(1),
      I2 => s_index(5),
      I3 => s_index(4),
      I4 => s_index(0),
      I5 => s_index(6),
      O => \o_ColorCode[2]_i_13_n_0\
    );
\o_ColorCode[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000800000000000"
    )
        port map (
      I0 => s_index(2),
      I1 => s_index(0),
      I2 => s_index(4),
      I3 => s_index(5),
      I4 => s_index(1),
      I5 => s_index(6),
      O => \o_ColorCode[2]_i_14_n_0\
    );
\o_ColorCode[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000282A"
    )
        port map (
      I0 => s_index(2),
      I1 => s_index(0),
      I2 => s_index(1),
      I3 => s_index(4),
      I4 => s_index(5),
      I5 => s_index(6),
      O => \o_ColorCode[2]_i_15_n_0\
    );
\o_ColorCode[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000565F7E"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(4),
      I2 => s_index(5),
      I3 => s_index(0),
      I4 => s_index(1),
      I5 => s_index(2),
      O => \o_ColorCode[2]_i_16_n_0\
    );
\o_ColorCode[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F7F7F1F3F00"
    )
        port map (
      I0 => s_index(4),
      I1 => s_index(5),
      I2 => s_index(6),
      I3 => s_index(1),
      I4 => s_index(0),
      I5 => s_index(2),
      O => \o_ColorCode[2]_i_17_n_0\
    );
\o_ColorCode[2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C480CC8000000000"
    )
        port map (
      I0 => s_index(1),
      I1 => s_index(5),
      I2 => s_index(4),
      I3 => s_index(2),
      I4 => s_index(0),
      I5 => s_index(6),
      O => \o_ColorCode[2]_i_18_n_0\
    );
\o_ColorCode[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => rel_t_id(1),
      I1 => \o_ColorCode_reg[2]_i_5_n_0\,
      I2 => s_index(3),
      I3 => \o_ColorCode_reg[2]_i_6_n_0\,
      I4 => rel_t_id(0),
      I5 => rel_t_id(2),
      O => \o_ColorCode[2]_i_2_n_0\
    );
\o_ColorCode[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFAFC0CFC0C0"
    )
        port map (
      I0 => \o_ColorCode[3]_i_12_n_0\,
      I1 => \o_ColorCode[3]_i_13_n_0\,
      I2 => rel_t_id(1),
      I3 => s_index(3),
      I4 => \o_ColorCode_reg[2]_i_7_n_0\,
      I5 => rel_t_id(0),
      O => \o_ColorCode[2]_i_3_n_0\
    );
\o_ColorCode[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00FC00FC00"
    )
        port map (
      I0 => \o_ColorCode[2]_i_8_n_0\,
      I1 => s_index(3),
      I2 => s_index(2),
      I3 => rel_t_id(1),
      I4 => \o_ColorCode[2]_i_9_n_0\,
      I5 => rel_t_id(0),
      O => \o_ColorCode[2]_i_4_n_0\
    );
\o_ColorCode[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \o_ColorCode[2]_i_16_n_0\,
      I1 => s_index(3),
      I2 => \o_ColorCode[2]_i_17_n_0\,
      I3 => s_index(7),
      I4 => \o_ColorCode[2]_i_18_n_0\,
      O => \o_ColorCode[2]_i_8_n_0\
    );
\o_ColorCode[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => s_index(7),
      I1 => s_index(2),
      I2 => s_index(6),
      I3 => s_index(3),
      O => \o_ColorCode[2]_i_9_n_0\
    );
\o_ColorCode[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \o_ColorCode[3]_i_2_n_0\,
      I1 => rel_t_id(3),
      I2 => \o_ColorCode[3]_i_4_n_0\,
      I3 => rel_t_id(2),
      I4 => \o_ColorCode[3]_i_6_n_0\,
      O => \s_tile_textures[0][0]_0\(3)
    );
\o_ColorCode[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \s_index[6]_i_6_n_0\,
      I1 => \s_index[6]_i_7_n_0\,
      I2 => \s_index[6]_i_5_n_0\,
      I3 => \s_index[6]_i_8_n_0\,
      I4 => \s_index[7]_i_12_n_0\,
      I5 => \s_index[7]_i_8_n_0\,
      O => \o_ColorCode[3]_i_10_n_0\
    );
\o_ColorCode[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \s_index[7]_i_11_n_0\,
      I1 => i_y(6),
      O => \o_ColorCode[3]_i_11_n_0\
    );
\o_ColorCode[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8FF"
    )
        port map (
      I0 => \o_ColorCode[3]_i_20_n_0\,
      I1 => s_index(3),
      I2 => \o_ColorCode[3]_i_21_n_0\,
      I3 => s_index(7),
      O => \o_ColorCode[3]_i_12_n_0\
    );
\o_ColorCode[3]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_index(7),
      I1 => \o_ColorCode[3]_i_22_n_0\,
      I2 => s_index(3),
      O => \o_ColorCode[3]_i_13_n_0\
    );
\o_ColorCode[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \s_index[7]_i_8_n_0\,
      I1 => \s_index[7]_i_12_n_0\,
      I2 => \s_index[6]_i_5_n_0\,
      I3 => \o_ColorCode[3]_i_25_n_0\,
      I4 => \s_index[6]_i_7_n_0\,
      I5 => \s_index[6]_i_8_n_0\,
      O => \o_ColorCode[3]_i_15_n_0\
    );
\o_ColorCode[3]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_index(7),
      I1 => s_index(6),
      I2 => s_index(2),
      I3 => s_index(3),
      O => \o_ColorCode[3]_i_17_n_0\
    );
\o_ColorCode[3]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \s_index[7]_i_8_n_0\,
      I1 => \s_index[6]_i_8_n_0\,
      I2 => \s_index[6]_i_7_n_0\,
      I3 => \o_ColorCode[3]_i_25_n_0\,
      I4 => \s_index[6]_i_5_n_0\,
      O => \o_ColorCode[3]_i_18_n_0\
    );
\o_ColorCode[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => \o_ColorCode[3]_i_25_n_0\,
      I1 => \s_index[6]_i_7_n_0\,
      I2 => \s_index[6]_i_5_n_0\,
      I3 => \s_index[6]_i_8_n_0\,
      I4 => \s_index[7]_i_12_n_0\,
      I5 => \s_index[7]_i_8_n_0\,
      O => \o_ColorCode[3]_i_19_n_0\
    );
\o_ColorCode[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055554540"
    )
        port map (
      I0 => rel_t_id(0),
      I1 => \o_ColorCode[3]_i_8_n_0\,
      I2 => s_index(3),
      I3 => \o_ColorCode[3]_i_9_n_0\,
      I4 => s_index(7),
      I5 => rel_t_id(1),
      O => \o_ColorCode[3]_i_2_n_0\
    );
\o_ColorCode[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15575FFFFFFFFFFF"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(0),
      I2 => s_index(5),
      I3 => s_index(4),
      I4 => s_index(1),
      I5 => s_index(2),
      O => \o_ColorCode[3]_i_20_n_0\
    );
\o_ColorCode[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5FFF455D"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(0),
      I2 => s_index(5),
      I3 => s_index(4),
      I4 => s_index(1),
      I5 => s_index(2),
      O => \o_ColorCode[3]_i_21_n_0\
    );
\o_ColorCode[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEEEAEEECE888"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(2),
      I2 => s_index(0),
      I3 => s_index(4),
      I4 => s_index(5),
      I5 => s_index(1),
      O => \o_ColorCode[3]_i_22_n_0\
    );
\o_ColorCode[3]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110000000000000"
    )
        port map (
      I0 => i_x(8),
      I1 => i_x(6),
      I2 => i_x(4),
      I3 => \s_index[6]_i_10_n_0\,
      I4 => i_x(5),
      I5 => i_x(7),
      O => \o_ColorCode[3]_i_25_n_0\
    );
\o_ColorCode[3]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"488A000A22800000"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(0),
      I2 => s_index(4),
      I3 => s_index(5),
      I4 => s_index(1),
      I5 => s_index(2),
      O => \o_ColorCode[3]_i_28_n_0\
    );
\o_ColorCode[3]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0008240000444"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(1),
      I2 => s_index(4),
      I3 => s_index(5),
      I4 => s_index(0),
      I5 => s_index(2),
      O => \o_ColorCode[3]_i_29_n_0\
    );
\o_ColorCode[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000101000"
    )
        port map (
      I0 => i_y(10),
      I1 => i_y(8),
      I2 => \o_ColorCode[3]_i_10_n_0\,
      I3 => \o_ColorCode[3]_i_11_n_0\,
      I4 => i_y(7),
      I5 => i_y(9),
      O => rel_t_id(3)
    );
\o_ColorCode[3]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20204115312208A2"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(2),
      I2 => s_index(0),
      I3 => s_index(4),
      I4 => s_index(1),
      I5 => s_index(5),
      O => \o_ColorCode[3]_i_30_n_0\
    );
\o_ColorCode[3]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F104040"
    )
        port map (
      I0 => s_index(5),
      I1 => s_index(4),
      I2 => s_index(6),
      I3 => s_index(0),
      I4 => s_index(1),
      I5 => s_index(2),
      O => \o_ColorCode[3]_i_31_n_0\
    );
\o_ColorCode[3]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1861233508800800"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(5),
      I2 => s_index(4),
      I3 => s_index(1),
      I4 => s_index(0),
      I5 => s_index(2),
      O => \o_ColorCode[3]_i_32_n_0\
    );
\o_ColorCode[3]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080808040201F"
    )
        port map (
      I0 => s_index(4),
      I1 => s_index(5),
      I2 => s_index(6),
      I3 => s_index(0),
      I4 => s_index(1),
      I5 => s_index(2),
      O => \o_ColorCode[3]_i_33_n_0\
    );
\o_ColorCode[3]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3060088268F32022"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(2),
      I2 => s_index(4),
      I3 => s_index(0),
      I4 => s_index(5),
      I5 => s_index(1),
      O => \o_ColorCode[3]_i_34_n_0\
    );
\o_ColorCode[3]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000056210881"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(5),
      I2 => s_index(4),
      I3 => s_index(0),
      I4 => s_index(1),
      I5 => s_index(2),
      O => \o_ColorCode[3]_i_35_n_0\
    );
\o_ColorCode[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFAFCFC0"
    )
        port map (
      I0 => \o_ColorCode[3]_i_12_n_0\,
      I1 => \o_ColorCode[3]_i_13_n_0\,
      I2 => rel_t_id(1),
      I3 => \o_ColorCode_reg[3]_i_14_n_0\,
      I4 => rel_t_id(0),
      O => \o_ColorCode[3]_i_4_n_0\
    );
\o_ColorCode[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010040000"
    )
        port map (
      I0 => i_y(10),
      I1 => i_y(8),
      I2 => \o_ColorCode[3]_i_11_n_0\,
      I3 => i_y(7),
      I4 => \o_ColorCode[3]_i_15_n_0\,
      I5 => i_y(9),
      O => rel_t_id(2)
    );
\o_ColorCode[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA0003000300"
    )
        port map (
      I0 => \o_ColorCode_reg[3]_i_16_n_0\,
      I1 => s_index(2),
      I2 => s_index(3),
      I3 => rel_t_id(1),
      I4 => \o_ColorCode[3]_i_17_n_0\,
      I5 => rel_t_id(0),
      O => \o_ColorCode[3]_i_6_n_0\
    );
\o_ColorCode[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880008000000000"
    )
        port map (
      I0 => \s_index[7]_i_5_n_0\,
      I1 => \s_index[7]_i_6_n_0\,
      I2 => \o_ColorCode[3]_i_18_n_0\,
      I3 => \s_index[7]_i_9_n_0\,
      I4 => \o_ColorCode[3]_i_19_n_0\,
      I5 => \s_index[7]_i_10_n_0\,
      O => rel_t_id(0)
    );
\o_ColorCode[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8FEEAFEFFFFFFFF"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(4),
      I2 => s_index(5),
      I3 => s_index(1),
      I4 => s_index(0),
      I5 => s_index(2),
      O => \o_ColorCode[3]_i_8_n_0\
    );
\o_ColorCode[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEEAEEE8"
    )
        port map (
      I0 => s_index(6),
      I1 => s_index(1),
      I2 => s_index(5),
      I3 => s_index(4),
      I4 => s_index(0),
      I5 => s_index(2),
      O => \o_ColorCode[3]_i_9_n_0\
    );
\o_ColorCode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_tile_textures[0][0]_0\(0),
      Q => \^q\(0),
      R => '0'
    );
\o_ColorCode_reg[0]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_ColorCode[0]_i_15_n_0\,
      I1 => \o_ColorCode[0]_i_16_n_0\,
      O => \o_ColorCode_reg[0]_i_10_n_0\,
      S => s_index(7)
    );
\o_ColorCode_reg[0]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_ColorCode[0]_i_17_n_0\,
      I1 => \o_ColorCode[0]_i_18_n_0\,
      O => \o_ColorCode_reg[0]_i_11_n_0\,
      S => s_index(7)
    );
\o_ColorCode_reg[0]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_ColorCode[0]_i_19_n_0\,
      I1 => \o_ColorCode[0]_i_20_n_0\,
      O => \o_ColorCode_reg[0]_i_12_n_0\,
      S => s_index(7)
    );
\o_ColorCode_reg[0]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \o_ColorCode_reg[0]_i_9_n_0\,
      I1 => \o_ColorCode_reg[0]_i_10_n_0\,
      O => \o_ColorCode_reg[0]_i_4_n_0\,
      S => s_index(3)
    );
\o_ColorCode_reg[0]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \o_ColorCode_reg[0]_i_11_n_0\,
      I1 => \o_ColorCode_reg[0]_i_12_n_0\,
      O => \o_ColorCode_reg[0]_i_5_n_0\,
      S => s_index(3)
    );
\o_ColorCode_reg[0]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_ColorCode[0]_i_13_n_0\,
      I1 => \o_ColorCode[0]_i_14_n_0\,
      O => \o_ColorCode_reg[0]_i_9_n_0\,
      S => s_index(7)
    );
\o_ColorCode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_tile_textures[0][0]_0\(1),
      Q => \^q\(1),
      R => '0'
    );
\o_ColorCode_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_ColorCode[1]_i_17_n_0\,
      I1 => \o_ColorCode[1]_i_18_n_0\,
      O => \o_ColorCode_reg[1]_i_6_n_0\,
      S => s_index(7)
    );
\o_ColorCode_reg[1]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_ColorCode[1]_i_19_n_0\,
      I1 => \o_ColorCode[1]_i_20_n_0\,
      O => \o_ColorCode_reg[1]_i_9_n_0\,
      S => s_index(7)
    );
\o_ColorCode_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_tile_textures[0][0]_0\(2),
      Q => \^q\(2),
      R => '0'
    );
\o_ColorCode_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_ColorCode[2]_i_10_n_0\,
      I1 => \o_ColorCode[2]_i_11_n_0\,
      O => \o_ColorCode_reg[2]_i_5_n_0\,
      S => s_index(7)
    );
\o_ColorCode_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_ColorCode[2]_i_12_n_0\,
      I1 => \o_ColorCode[2]_i_13_n_0\,
      O => \o_ColorCode_reg[2]_i_6_n_0\,
      S => s_index(7)
    );
\o_ColorCode_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_ColorCode[2]_i_14_n_0\,
      I1 => \o_ColorCode[2]_i_15_n_0\,
      O => \o_ColorCode_reg[2]_i_7_n_0\,
      S => s_index(7)
    );
\o_ColorCode_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_tile_textures[0][0]_0\(3),
      Q => \^q\(3),
      R => '0'
    );
\o_ColorCode_reg[3]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \o_ColorCode_reg[3]_i_23_n_0\,
      I1 => \o_ColorCode_reg[3]_i_24_n_0\,
      O => \o_ColorCode_reg[3]_i_14_n_0\,
      S => s_index(3)
    );
\o_ColorCode_reg[3]_i_16\: unisim.vcomponents.MUXF8
     port map (
      I0 => \o_ColorCode_reg[3]_i_26_n_0\,
      I1 => \o_ColorCode_reg[3]_i_27_n_0\,
      O => \o_ColorCode_reg[3]_i_16_n_0\,
      S => s_index(3)
    );
\o_ColorCode_reg[3]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_ColorCode[3]_i_28_n_0\,
      I1 => \o_ColorCode[3]_i_29_n_0\,
      O => \o_ColorCode_reg[3]_i_23_n_0\,
      S => s_index(7)
    );
\o_ColorCode_reg[3]_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_ColorCode[3]_i_30_n_0\,
      I1 => \o_ColorCode[3]_i_31_n_0\,
      O => \o_ColorCode_reg[3]_i_24_n_0\,
      S => s_index(7)
    );
\o_ColorCode_reg[3]_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_ColorCode[3]_i_32_n_0\,
      I1 => \o_ColorCode[3]_i_33_n_0\,
      O => \o_ColorCode_reg[3]_i_26_n_0\,
      S => s_index(7)
    );
\o_ColorCode_reg[3]_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \o_ColorCode[3]_i_34_n_0\,
      I1 => \o_ColorCode[3]_i_35_n_0\,
      O => \o_ColorCode_reg[3]_i_27_n_0\,
      S => s_index(7)
    );
\o_dataPixel[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => o_dataPixel(0)
    );
\s_index[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => i_y(0),
      I1 => rel_rot(0),
      I2 => i_x(0),
      O => p_0_in(0)
    );
\s_index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9FAF90A09FA090AF"
    )
        port map (
      I0 => i_y(1),
      I1 => i_y(0),
      I2 => rel_rot(0),
      I3 => rel_rot(1),
      I4 => i_x(1),
      I5 => i_x(0),
      O => p_0_in(1)
    );
\s_index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99C6FFFF99C60000"
    )
        port map (
      I0 => rel_rot(1),
      I1 => i_y(2),
      I2 => i_y(0),
      I3 => i_y(1),
      I4 => rel_rot(0),
      I5 => \s_index[6]_i_2_n_0\,
      O => p_0_in(2)
    );
\s_index[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_index[3]_i_2_n_0\,
      I1 => rel_rot(0),
      I2 => \s_index[7]_i_2_n_0\,
      O => p_0_in(3)
    );
\s_index[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAB95546"
    )
        port map (
      I0 => rel_rot(1),
      I1 => i_y(2),
      I2 => i_y(0),
      I3 => i_y(1),
      I4 => i_y(3),
      O => \s_index[3]_i_2_n_0\
    );
\s_index[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => i_x(0),
      I1 => rel_rot(0),
      I2 => i_y(0),
      O => p_0_in(4)
    );
\s_index[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF9FA090AF90A09F"
    )
        port map (
      I0 => i_x(1),
      I1 => i_x(0),
      I2 => rel_rot(0),
      I3 => rel_rot(1),
      I4 => i_y(1),
      I5 => i_y(0),
      O => p_0_in(5)
    );
\s_index[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB88BB8BB88B88B"
    )
        port map (
      I0 => \s_index[6]_i_2_n_0\,
      I1 => rel_rot(0),
      I2 => rel_rot(1),
      I3 => i_y(2),
      I4 => i_y(0),
      I5 => i_y(1),
      O => p_0_in(6)
    );
\s_index[6]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i_x(2),
      I1 => i_x(0),
      I2 => i_x(1),
      I3 => i_x(3),
      O => \s_index[6]_i_10_n_0\
    );
\s_index[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"66C9"
    )
        port map (
      I0 => rel_rot(1),
      I1 => i_x(2),
      I2 => i_x(0),
      I3 => i_x(1),
      O => \s_index[6]_i_2_n_0\
    );
\s_index[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \s_index[7]_i_5_n_0\,
      I1 => \s_index[7]_i_6_n_0\,
      I2 => \s_index[7]_i_9_n_0\,
      I3 => \s_index[7]_i_8_n_0\,
      I4 => \s_index[6]_i_4_n_0\,
      I5 => \s_index[7]_i_10_n_0\,
      O => rel_rot(1)
    );
\s_index[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \s_index[6]_i_5_n_0\,
      I1 => \s_index[6]_i_6_n_0\,
      I2 => \s_index[6]_i_7_n_0\,
      I3 => \s_index[6]_i_8_n_0\,
      O => \s_index[6]_i_4_n_0\
    );
\s_index[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => i_x(8),
      I1 => i_x(6),
      I2 => \s_index[6]_i_9_n_0\,
      I3 => i_x(7),
      I4 => i_x(9),
      O => \s_index[6]_i_5_n_0\
    );
\s_index[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000044000000000"
    )
        port map (
      I0 => i_x(8),
      I1 => i_x(6),
      I2 => i_x(4),
      I3 => \s_index[6]_i_10_n_0\,
      I4 => i_x(5),
      I5 => i_x(7),
      O => \s_index[6]_i_6_n_0\
    );
\s_index[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => i_x(9),
      I1 => i_x(7),
      I2 => \s_index[6]_i_9_n_0\,
      I3 => i_x(6),
      I4 => i_x(8),
      I5 => i_x(10),
      O => \s_index[6]_i_7_n_0\
    );
\s_index[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => i_y(3),
      I1 => i_y(1),
      I2 => i_y(0),
      I3 => i_y(2),
      I4 => i_y(4),
      O => \s_index[6]_i_8_n_0\
    );
\s_index[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => i_x(4),
      I1 => i_x(2),
      I2 => i_x(0),
      I3 => i_x(1),
      I4 => i_x(3),
      I5 => i_x(5),
      O => \s_index[6]_i_9_n_0\
    );
\s_index[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_index[7]_i_2_n_0\,
      I1 => rel_rot(0),
      I2 => \s_index[7]_i_4_n_0\,
      O => p_0_in(7)
    );
\s_index[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => i_y(8),
      I1 => i_y(6),
      I2 => \s_index[7]_i_11_n_0\,
      I3 => i_y(7),
      I4 => i_y(9),
      O => \s_index[7]_i_10_n_0\
    );
\s_index[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => i_y(4),
      I1 => i_y(2),
      I2 => i_y(0),
      I3 => i_y(1),
      I4 => i_y(3),
      I5 => i_y(5),
      O => \s_index[7]_i_11_n_0\
    );
\s_index[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => i_y(4),
      I1 => i_y(2),
      I2 => i_y(0),
      I3 => i_y(1),
      I4 => i_y(3),
      I5 => i_y(5),
      O => \s_index[7]_i_12_n_0\
    );
\s_index[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66666C69"
    )
        port map (
      I0 => rel_rot(1),
      I1 => i_x(3),
      I2 => i_x(1),
      I3 => i_x(0),
      I4 => i_x(2),
      O => \s_index[7]_i_2_n_0\
    );
\s_index[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080800000000000"
    )
        port map (
      I0 => \s_index[7]_i_5_n_0\,
      I1 => \s_index[7]_i_6_n_0\,
      I2 => \s_index[7]_i_7_n_0\,
      I3 => \s_index[7]_i_8_n_0\,
      I4 => \s_index[7]_i_9_n_0\,
      I5 => \s_index[7]_i_10_n_0\,
      O => rel_rot(0)
    );
\s_index[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66666C69"
    )
        port map (
      I0 => rel_rot(1),
      I1 => i_y(3),
      I2 => i_y(1),
      I3 => i_y(0),
      I4 => i_y(2),
      O => \s_index[7]_i_4_n_0\
    );
\s_index[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => i_y(9),
      I1 => i_y(7),
      I2 => \s_index[7]_i_11_n_0\,
      I3 => i_y(6),
      I4 => i_y(8),
      I5 => i_y(10),
      O => \s_index[7]_i_5_n_0\
    );
\s_index[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => i_y(7),
      I1 => \s_index[7]_i_11_n_0\,
      I2 => i_y(6),
      I3 => i_y(8),
      O => \s_index[7]_i_6_n_0\
    );
\s_index[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_index[6]_i_4_n_0\,
      I1 => \s_index[7]_i_12_n_0\,
      O => \s_index[7]_i_7_n_0\
    );
\s_index[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_index[7]_i_11_n_0\,
      I1 => i_y(6),
      O => \s_index[7]_i_8_n_0\
    );
\s_index[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => i_y(6),
      I1 => \s_index[7]_i_11_n_0\,
      I2 => i_y(7),
      O => \s_index[7]_i_9_n_0\
    );
\s_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => s_index(0),
      R => '0'
    );
\s_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => s_index(1),
      R => '0'
    );
\s_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => s_index(2),
      R => '0'
    );
\s_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => s_index(3),
      R => '0'
    );
\s_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => s_index(4),
      R => '0'
    );
\s_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(5),
      Q => s_index(5),
      R => '0'
    );
\s_index_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(6),
      Q => s_index(6),
      R => '0'
    );
\s_index_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(7),
      Q => s_index(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity atelier4_testPatternGen2_0_0_Datapath is
  port (
    o_dataPixel : out STD_LOGIC_VECTOR ( 23 downto 0 );
    i_x : in STD_LOGIC_VECTOR ( 10 downto 0 );
    i_y : in STD_LOGIC_VECTOR ( 10 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of atelier4_testPatternGen2_0_0_Datapath : entity is "Datapath";
end atelier4_testPatternGen2_0_0_Datapath;

architecture STRUCTURE of atelier4_testPatternGen2_0_0_Datapath is
  signal o_ColorCode : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
inst_color_converter: entity work.atelier4_testPatternGen2_0_0_colorConverter
     port map (
      Q(3 downto 0) => o_ColorCode(3 downto 0),
      o_dataPixel(22) => o_dataPixel(23),
      o_dataPixel(21 downto 0) => o_dataPixel(21 downto 0)
    );
inst_tile: entity work.atelier4_testPatternGen2_0_0_tile
     port map (
      Q(3 downto 0) => o_ColorCode(3 downto 0),
      clk => clk,
      i_x(10 downto 0) => i_x(10 downto 0),
      i_y(10 downto 0) => i_y(10 downto 0),
      o_dataPixel(0) => o_dataPixel(22)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity atelier4_testPatternGen2_0_0_testPatternGen2 is
  port (
    o_dataPixel : out STD_LOGIC_VECTOR ( 23 downto 0 );
    i_x : in STD_LOGIC_VECTOR ( 10 downto 0 );
    i_y : in STD_LOGIC_VECTOR ( 10 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of atelier4_testPatternGen2_0_0_testPatternGen2 : entity is "testPatternGen2";
end atelier4_testPatternGen2_0_0_testPatternGen2;

architecture STRUCTURE of atelier4_testPatternGen2_0_0_testPatternGen2 is
begin
inst_datapath: entity work.atelier4_testPatternGen2_0_0_Datapath
     port map (
      clk => clk,
      i_x(10 downto 0) => i_x(10 downto 0),
      i_y(10 downto 0) => i_y(10 downto 0),
      o_dataPixel(23 downto 0) => o_dataPixel(23 downto 0)
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
      clk => clk,
      i_x(10 downto 0) => i_x(10 downto 0),
      i_y(10 downto 0) => i_y(10 downto 0),
      o_dataPixel(23 downto 0) => o_dataPixel(23 downto 0)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
