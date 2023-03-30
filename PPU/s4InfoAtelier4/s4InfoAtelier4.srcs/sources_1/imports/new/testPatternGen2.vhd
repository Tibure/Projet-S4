----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2021 06:55:22 PM
-- Design Name: 
-- Module Name: testPatternGenerator - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testPatternGen2 is
Port ( 
    clk : in std_logic;
    rstn : in std_logic;
    i_x : in std_logic_vector(11 downto 0);
    i_y : in std_logic_vector(11 downto 0);
    o_dataValid : out std_logic;
    o_dataPixel : out std_logic_vector(23 downto 0);
    i_colorDataA : in std_logic_vector(31 downto 0);
    i_colorDataB : in std_logic_vector(31 downto 0)
);
end testPatternGen2;

architecture Behavioral of testPatternGen2 is

component Datapath is
    Port (
           clk : in std_logic;
           i_x : in std_logic_vector(11 downto 0);
           i_y : in std_logic_vector(11 downto 0);
           o_dataPixel : out std_logic_vector(23 downto 0));
    end component;

signal colorPixel : std_logic_vector(23 downto 0);

      signal   background_g_X : STD_LOGIC_VECTOR (11 downto 0);
      signal   background_g_Y : STD_LOGIC_VECTOR (11 downto 0);
      signal   set_tile_id : STD_LOGIC_VECTOR (3 downto 0);
      signal   we_tile_id : STD_LOGIC;
      signal   background_tuileX  : std_logic_vector(5 downto 0);
      signal   background_tuileY  : std_logic_Vector(5 downto 0);
      signal   background_tuileRotation: std_logic_vector(1 downto 0);
      signal   o_x : STD_LOGIC_VECTOR (3 downto 0);
      signal   o_y : STD_LOGIC_VECTOR (3 downto 0);
      signal   o_t_id : STD_LOGIC_VECTOR (3 downto 0);
      signal   o_Rotation_t : std_logic_vector(1 downto 0);


     signal   actor_g_x :  STD_LOGIC_VECTOR (11 downto 0);
     signal   actor_g_y :  STD_LOGIC_VECTOR (11 downto 0);
     signal   set_actor_id : STD_LOGIC_VECTOR (3 downto 0);
     signal   set_actor_gx :  STD_LOGIC_VECTOR (11 downto 0);
     signal   set_actor_gy : STD_LOGIC_VECTOR (11 downto 0);
     signal   we_actor :  STD_LOGIC;
     signal   tileID_actor :  STD_LOGIC_VECTOR (3 downto 0);
     signal   tileRot_actor :  STD_LOGIC_VECTOR (1 downto 0);
     signal   vis_actor :  STD_LOGIC;
     signal   o_x_actor :  STD_LOGIC_VECTOR (3 downto 0);
     signal   o_y_actor :  STD_LOGIC_VECTOR (3 downto 0);
     signal   o_hit_actor : std_logic;
     signal   o_t_id_actor :  STD_LOGIC_VECTOR (3 downto 0);
     signal   o_t_rot_actor :  STD_LOGIC_VECTOR (1 downto 0);



begin

inst_datapath : Datapath
    port map(
        clk => clk,
        i_x => i_x,
        i_y => i_y,
        o_dataPixel => o_dataPixel
        
        );

--process(i_x)
--begin
--   if(i_x(3) = '1') then
--       o_dataPixel <= i_colorDataB(23 downto 0);
--   else
--       o_dataPixel <= i_colorDataA(23 downto 0);
--   end if;
--end process;

o_dataValid <= '1';

end Behavioral;
