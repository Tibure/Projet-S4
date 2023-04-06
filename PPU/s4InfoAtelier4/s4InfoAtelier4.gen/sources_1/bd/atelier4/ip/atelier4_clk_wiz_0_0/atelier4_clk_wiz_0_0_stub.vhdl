-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar  3 11:54:45 2022
-- Host        : DESKTOP-7O8NHLB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top atelier4_clk_wiz_0_0 -prefix
--               atelier4_clk_wiz_0_0_ atelier4_clk_wiz_0_0_stub.vhdl
-- Design      : atelier4_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity atelier4_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end atelier4_clk_wiz_0_0;

architecture stub of atelier4_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
