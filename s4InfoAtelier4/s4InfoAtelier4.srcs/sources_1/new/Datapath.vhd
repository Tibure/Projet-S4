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
           o_dataPixel : out std_logic_vector(23 downto 0);
           --BACKGROUND     
           set_t_idBG : in std_logic_vector(3 downto 0);
           we_t_idBG : in std_logic;
           tuileXBG  : in std_logic_vector(5 downto 0);
           tuileYBG  : in std_logic_vector(5 downto 0);
           tuileRotationBG : in std_logic_vector(1 downto 0);
           --ACTEURS
           we_a_id  : in std_logic;
           set_a_id : in std_logic_vector(2 downto 0);
           set_gx_a : in std_logic_vector(11 downto 0);
           set_gy_a : in std_logic_vector(11 downto 0);
           set_a_vis : in std_logic;
           set_a_tID : in std_logic_vector(3 downto 0);
           set_a_tRot : in std_logic_vector(1 downto 0);
           --VIEWPORT
           viewPort_X : in std_logic_vector(11 downto 0);
           viewPort_Y : in std_logic_vector(11 downto 0);
           we_vp : in std_logic

           );
end Datapath;

architecture Behavioral of Datapath is

signal g_X          : std_logic_vector(11 downto 0);
signal g_Y          : std_logic_vector(11 downto 0);

signal rel_xBG        : std_logic_vector(3 downto 0);
signal rel_yBG        : std_logic_vector(3 downto 0);
signal rel_t_idBG     : std_logic_vector(3 downto 0);
signal rel_rotBG      : std_logic_vector(1 downto 0);

signal colorCodeBG    : std_logic_vector(3 downto 0);



signal rel_xA        : std_logic_vector(3 downto 0);
signal rel_yA        : std_logic_vector(3 downto 0);
signal hit_actor     : std_logic;
signal rel_t_idA     : std_logic_vector(3 downto 0);
signal rel_rotA      : std_logic_vector(1 downto 0);
signal colorCodeA    : std_logic_vector(3 downto 0);
signal colorCodeMUX  : std_logic_vector(3 downto 0);
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

component ActorManager is
    Port ( 
           i_clk : in std_logic;
           i_g_x : in STD_LOGIC_VECTOR (11 downto 0);
           i_g_y : in STD_LOGIC_VECTOR (11 downto 0);
           set_a_id : in STD_LOGIC_VECTOR (2 downto 0);
           set_a_gx : in STD_LOGIC_VECTOR (11 downto 0);
           set_a_gy : in STD_LOGIC_VECTOR (11 downto 0);
           i_we_a : in STD_LOGIC;
           i_tileID_actor : in STD_LOGIC_VECTOR (3 downto 0);
           i_tileRot_actor : in STD_LOGIC_VECTOR (1 downto 0);
           i_vis_actor : in STD_LOGIC;
           o_x : out STD_LOGIC_VECTOR (3 downto 0);
           o_y : out STD_LOGIC_VECTOR (3 downto 0);
           o_hit : out std_logic;
           o_t_id : out STD_LOGIC_VECTOR (3 downto 0);
           o_t_rot : out STD_LOGIC_VECTOR (1 downto 0));
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


colorCodeMUX <= colorCodeA when colorCodeA /= "0000" AND hit_actor = '1' else colorCodeBG;

 inst_background_manager : BackGroundManager
        Port map(
           i_clk => clk,
           i_g_X => g_X,
           i_g_Y => g_Y,
           set_t_id => set_t_idBG,
           i_we_t_id => we_t_idBG,
           i_tuileX => tuileXBG,
           i_tuileY => tuileYBG,
           i_tuileRotation => tuileRotationBG,
           o_x => rel_xBG,
           o_y => rel_yBG,
           o_t_id => rel_t_idBG,
           o_Rotation => rel_rotBG
           );
   inst_actor_manager : ActorManager
        Port map(
            i_clk => clk,
            i_g_x => g_X, 
            i_g_y => g_Y,
            set_a_id => set_a_id, 
            set_a_gx => set_gx_a, 
            set_a_gy => set_gy_a,
            i_we_a => we_a_id, 
            i_tileID_actor => set_a_tID, 
            i_tileRot_actor => set_a_tRot,
            i_vis_actor => set_a_vis,
            o_x => rel_xA,
            o_y => rel_yA,
            o_hit => hit_actor,
            o_t_id => rel_t_idA,
            o_t_rot => rel_rotA
            );
          
    inst_tile : tile
        Port map(
            i_clk => clk,
            i_x => rel_xBG,
            i_y => rel_yBG,
            i_rotation => rel_rotBG,
            i_tileID => rel_t_idBG,
            o_ColorCode => colorCodeBG
            );
     inst_actor : tile
        Port map(
            i_clk => clk,
            i_x => rel_xA,
            i_y => rel_yA,
            i_rotation => rel_rotA,
            i_tileID => rel_t_idA,
            o_ColorCode => colorCodeA
            );
            
     inst_color_converter : colorConverter
        Port map(
            Color_in => colorCodeMUX,
            Color_out => color
            );


end Behavioral;
