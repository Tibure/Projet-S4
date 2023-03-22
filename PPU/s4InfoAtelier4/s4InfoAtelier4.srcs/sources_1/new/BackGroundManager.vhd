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
use work.ppu_package.all;
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
type BackgroundTilesCol is array(0 to 64) of std_logic_vector(5 downto 0); -- 4 bit tuiles id + 2 bits rotation
type BackgroundTiles is array(0 to 64) of BackgroundTilesCol;

signal BackgroundDefault : BackgroundTiles := (others => (others => ("000000")));
signal s_gX : unsigned(11 downto 0);
signal s_gY : unsigned(11 downto 0);



begin
BackgroundDefault(10)(5) <= "000001";
BackgroundDefault(10)(7) <= "000010";
BackgroundDefault(10)(9) <= "000011";
BackgroundDefault(10)(11)<= "000111";
BackgroundDefault(12)(5)  <= "001000";
BackgroundDefault(12)(7) <= "010010";
BackgroundDefault(12)(9) <= "100010";
BackgroundDefault(12)(11)<= "110010";

s_gX <= unsigned(i_g_X);
s_gY <= unsigned(i_g_Y);

process(i_clk,s_gX,s_gY,set_t_id,i_we_t_id,i_tuileX,i_tuileY) begin
    if(rising_edge(i_clk)) then
        if(i_we_t_id = '1') then    
            BackgroundDefault(to_integer(unsigned(i_tuileX)))(to_integer(unsigned(i_tuileY)))(3 downto 0) <= set_t_id;
            BackgroundDefault(to_integer(unsigned(i_tuileX)))(to_integer(unsigned(i_tuileY)))(5 downto 4) <= i_tuileRotation;
        end if;
        end if;
        o_x <= std_logic_vector(TO_UNSIGNED(to_integer(s_gX)mod 16,4));
        o_y <= std_logic_vector(TO_UNSIGNED(to_integer(s_gY)mod 16,4));
        o_t_id <= BackgroundDefault(to_integer(s_gX)/ 16)(to_integer(s_gY)/ 16) (3 downto 0);
        o_Rotation <=BackgroundDefault(to_integer(s_gX)/ 16)(to_integer(s_gY)/ 16) (5 downto 4);
        
   end process;




end Behavioral;