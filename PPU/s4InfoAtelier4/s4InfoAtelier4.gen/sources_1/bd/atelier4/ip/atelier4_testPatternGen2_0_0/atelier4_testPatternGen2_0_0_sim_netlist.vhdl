-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Mar 21 14:55:05 2023
-- Host        : LAPTOP-KI2VB3H7 running 64-bit major release  (build 9200)
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
    o_dataPixel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of atelier4_testPatternGen2_0_0_colorConverter : entity is "colorConverter";
end atelier4_testPatternGen2_0_0_colorConverter;

architecture STRUCTURE of atelier4_testPatternGen2_0_0_colorConverter is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_dataPixel[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_dataPixel[20]_INST_0\ : label is "soft_lutpair0";
begin
\o_dataPixel[1]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      O => o_dataPixel(0)
    );
\o_dataPixel[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => o_dataPixel(2)
    );
\o_dataPixel[5]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      O => o_dataPixel(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity atelier4_testPatternGen2_0_0_tile is
  port (
    o_dataPixel : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of atelier4_testPatternGen2_0_0_tile : entity is "tile";
end atelier4_testPatternGen2_0_0_tile;

architecture STRUCTURE of atelier4_testPatternGen2_0_0_tile is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^o_datapixel\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s_index : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \s_tile_textures[0][0]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_ColorCode[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_ColorCode[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_dataPixel[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_dataPixel[13]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_dataPixel[17]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_dataPixel[18]_INST_0\ : label is "soft_lutpair1";
begin
  Q(0) <= \^q\(0);
  o_dataPixel(5 downto 0) <= \^o_datapixel\(5 downto 0);
\o_ColorCode[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_index(3),
      I1 => s_index(7),
      O => \s_tile_textures[0][0]_0\(0)
    );
\o_ColorCode[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_index(3),
      I1 => s_index(7),
      O => \s_tile_textures[0][0]_0\(1)
    );
\o_ColorCode_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_tile_textures[0][0]_0\(0),
      Q => \^q\(0),
      R => '0'
    );
\o_ColorCode_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \s_tile_textures[0][0]_0\(1),
      Q => \^o_datapixel\(5),
      R => '0'
    );
\o_dataPixel[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^o_datapixel\(5),
      O => \^o_datapixel\(0)
    );
\o_dataPixel[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^o_datapixel\(5),
      I1 => \^q\(0),
      O => \^o_datapixel\(1)
    );
\o_dataPixel[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^o_datapixel\(5),
      I1 => \^q\(0),
      O => \^o_datapixel\(2)
    );
\o_dataPixel[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^o_datapixel\(5),
      I1 => \^q\(0),
      O => \^o_datapixel\(3)
    );
\o_dataPixel[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^o_datapixel\(5),
      O => \^o_datapixel\(4)
    );
\s_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => s_index(3),
      R => '0'
    );
\s_index_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(1),
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
    o_dataPixel : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of atelier4_testPatternGen2_0_0_Datapath : entity is "Datapath";
end atelier4_testPatternGen2_0_0_Datapath;

architecture STRUCTURE of atelier4_testPatternGen2_0_0_Datapath is
  signal o_ColorCode : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^o_datapixel\ : STD_LOGIC_VECTOR ( 8 downto 0 );
begin
  o_dataPixel(8 downto 0) <= \^o_datapixel\(8 downto 0);
inst_color_converter: entity work.atelier4_testPatternGen2_0_0_colorConverter
     port map (
      Q(1) => \^o_datapixel\(7),
      Q(0) => o_ColorCode(0),
      o_dataPixel(2) => \^o_datapixel\(8),
      o_dataPixel(1 downto 0) => \^o_datapixel\(1 downto 0)
    );
inst_tile: entity work.atelier4_testPatternGen2_0_0_tile
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(0) => o_ColorCode(0),
      clk => clk,
      o_dataPixel(5 downto 0) => \^o_datapixel\(7 downto 2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity atelier4_testPatternGen2_0_0_testPatternGen2 is
  port (
    o_dataPixel : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of atelier4_testPatternGen2_0_0_testPatternGen2 : entity is "testPatternGen2";
end atelier4_testPatternGen2_0_0_testPatternGen2;

architecture STRUCTURE of atelier4_testPatternGen2_0_0_testPatternGen2 is
begin
inst_datapath: entity work.atelier4_testPatternGen2_0_0_Datapath
     port map (
      D(1 downto 0) => D(1 downto 0),
      clk => clk,
      o_dataPixel(8 downto 0) => o_dataPixel(8 downto 0)
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
  signal \^o_datapixel\ : STD_LOGIC_VECTOR ( 21 downto 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute x_interface_parameter of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  o_dataPixel(23) <= \^o_datapixel\(20);
  o_dataPixel(22) <= \<const1>\;
  o_dataPixel(21 downto 19) <= \^o_datapixel\(21 downto 19);
  o_dataPixel(18) <= \^o_datapixel\(19);
  o_dataPixel(17 downto 16) <= \^o_datapixel\(17 downto 16);
  o_dataPixel(15) <= \^o_datapixel\(13);
  o_dataPixel(14 downto 13) <= \^o_datapixel\(14 downto 13);
  o_dataPixel(12) <= \^o_datapixel\(5);
  o_dataPixel(11) <= \^o_datapixel\(14);
  o_dataPixel(10) <= \^o_datapixel\(5);
  o_dataPixel(9) <= \^o_datapixel\(5);
  o_dataPixel(8) <= \^o_datapixel\(1);
  o_dataPixel(7) <= \^o_datapixel\(14);
  o_dataPixel(6) <= \^o_datapixel\(5);
  o_dataPixel(5) <= \^o_datapixel\(5);
  o_dataPixel(4) <= \^o_datapixel\(1);
  o_dataPixel(3) <= \^o_datapixel\(1);
  o_dataPixel(2) <= \^o_datapixel\(1);
  o_dataPixel(1) <= \^o_datapixel\(1);
  o_dataPixel(0) <= \^o_datapixel\(14);
  o_dataValid <= \<const1>\;
U0: entity work.atelier4_testPatternGen2_0_0_testPatternGen2
     port map (
      D(1) => i_x(5),
      D(0) => i_y(5),
      clk => clk,
      o_dataPixel(8) => \^o_datapixel\(20),
      o_dataPixel(7) => \^o_datapixel\(21),
      o_dataPixel(6) => \^o_datapixel\(19),
      o_dataPixel(5 downto 4) => \^o_datapixel\(17 downto 16),
      o_dataPixel(3) => \^o_datapixel\(13),
      o_dataPixel(2) => \^o_datapixel\(14),
      o_dataPixel(1) => \^o_datapixel\(5),
      o_dataPixel(0) => \^o_datapixel\(1)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
