----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2023 10:54:09 AM
-- Design Name: 
-- Module Name: BackGroundMannager - Behavioral
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
use ieee.numeric_std.all;



-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BackGroundManager is
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
end BackGroundManager;

architecture Behavioral of BackGroundManager is
type BackgroundTilesCol is array(0 to 23) of std_logic_vector(5 downto 0); -- 2 bits rotation + 4 bits tuiles id
type BackgroundTiles is array(0 to 39) of BackgroundTilesCol;

signal BackgroundDefault : BackgroundTiles := (others => (others => ("000000")));
signal s_gX : unsigned(11 downto 0);
signal s_gY : unsigned(11 downto 0);



begin

--BackgroundDefault(8)(8) <= "000011";    --Orange
--BackgroundDefault(4)(12) <= "000100";   --Pomme

--BackgroundDefault(5)(5) <= "001000";    --Tete serpent
--BackgroundDefault(5)(6) <= "000101";    --Corps serpent
--BackgroundDefault(5)(7) <= "010110";    --90 serpent
--BackgroundDefault(6)(7)<= "010111";     --Queue serpent




--BackgroundDefault(0)(0) <= "010001";
--BackgroundDefault(1)(0) <= "010010";
--BackgroundDefault(2)(0) <= "010010";
--BackgroundDefault(3)(0) <= "010010";
--BackgroundDefault(4)(0) <= "010010";
--BackgroundDefault(5)(0) <= "010010";

--BackgroundDefault(0)(1) <= "100010";
--BackgroundDefault(0)(2) <= "100010";
--BackgroundDefault(0)(3) <= "100010";
--BackgroundDefault(0)(4) <= "100010";
--BackgroundDefault(0)(5) <= "100010";

s_gX <= unsigned(i_g_X);
s_gY <= unsigned(i_g_Y);

o_x <= std_logic_vector(TO_UNSIGNED(to_integer(s_gX)mod 16,4));
o_y <= std_logic_vector(TO_UNSIGNED(to_integer(s_gY)mod 16,4));
o_t_id <= BackgroundDefault(to_integer(s_gX)/ 16)(to_integer(s_gY)/ 16) (3 downto 0);
o_Rotation <=BackgroundDefault(to_integer(s_gX)/ 16)(to_integer(s_gY)/ 16) (5 downto 4);

process(i_clk,s_gX,s_gY,set_t_id,i_we_t_id,i_tuileX,i_tuileY) begin
    if(rising_edge(i_clk)) then
        if(i_we_t_id = '1') then    
            BackgroundDefault(to_integer(unsigned(i_tuileX)))(to_integer(unsigned(i_tuileY)))(3 downto 0) <= set_t_id;
            BackgroundDefault(to_integer(unsigned(i_tuileX)))(to_integer(unsigned(i_tuileY)))(5 downto 4) <= i_tuileRotation;
       end if;
        end if;
   end process;




end Behavioral;