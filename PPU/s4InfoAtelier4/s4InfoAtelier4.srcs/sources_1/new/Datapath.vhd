----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2023 01:17:00 PM
-- Design Name: 
-- Module Name: Datapath - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Datapath is
    Port (
           clk : in std_logic;
           i_x : in std_logic_vector(11 downto 0);
           i_y : in std_logic_vector(11 downto 0);
           o_dataPixel : out std_logic_vector(23 downto 0));
end Datapath;

architecture Behavioral of Datapath is

signal g_X          : std_logic_vector(11 downto 0);
signal g_Y          : std_logic_vector(11 downto 0);
signal set_t_id     : std_logic_vector(3 downto 0);
signal we_t_id      : std_logic;
signal tuileX       : std_logic_vector(5 downto 0);
signal tuileY       : std_logic_vector(5 downto 0);
signal tuileRotation: std_logic_vector(1 downto 0);
signal rel_x        : std_logic_vector(3 downto 0);
signal rel_y        : std_logic_vector(3 downto 0);
signal rel_t_id     : std_logic_vector(3 downto 0);
signal rel_rot      : std_logic_vector(1 downto 0);
signal colorCode    : std_logic_vector(3 downto 0);
signal color        : std_logic_vector(23 downto 0);


component BackGroundManager is
    Port ( 
           i_clk : in std_logic;
           i_g_X : in STD_LOGIC_VECTOR (11 downto 0);
           i_g_Y : in STD_LOGIC_VECTOR (11 downto 0);
           set_t_id : in STD_LOGIC_VECTOR (3 downto 0);
           i_we_t_id : in STD_LOGIC;
           i_tuileX  : in std_logic_vector(5 downto 0);
           i_tuileY  : in std_logic_Vector(5 downto 0);
           i_tuileRotation: in std_logic_vector(1 downto 0);
           o_x : out STD_LOGIC_VECTOR (3 downto 0);
           o_y : out STD_LOGIC_VECTOR (3 downto 0);
           o_t_id : out STD_LOGIC_VECTOR (3 downto 0);
           o_Rotation : out std_logic_vector(1 downto 0));
    end component;
    
component tile is
port (
    i_clk : in std_logic;
    i_x : in std_logic_vector(3 downto 0);
    i_y : in std_logic_vector(3 downto 0);
    i_rotation : in std_logic_vector(1 downto 0);
    i_tileID : in std_logic_Vector(3 downto 0);
    o_ColorCode : out std_logic_vector(3 downto 0)
);

end component;

component colorConverter is
    Port ( Color_In : in STD_LOGIC_VECTOR (3 downto 0);
           Color_Out : out STD_LOGIC_VECTOR (23 downto 0));
    end component;

begin

g_X <= i_x;
g_Y <= i_y;
o_dataPixel <= color;

 inst_background_manager : BackGroundManager
        Port map(
           i_clk => clk,
           i_g_X => g_X,
           i_g_Y => g_Y,
           set_t_id => set_t_id,
           i_we_t_id => we_t_id,
           i_tuileX => tuileX,
           i_tuileY => tuileY,
           i_tuileRotation => tuileRotation,
           o_x => rel_x,
           o_y => rel_y,
           o_t_id => rel_t_id,
           o_Rotation => rel_rot
           );
           
    inst_tile : tile
        Port map(
            i_clk => clk,
            i_x => rel_x,
            i_y => rel_y,
            i_rotation => rel_rot,
            i_tileID => rel_t_id,
            o_ColorCode => colorCode
            );
            
     inst_color_converter : colorConverter
        Port map(
            Color_in => colorCode,
            Color_out => color
            );


end Behavioral;
