----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2023 11:00:36 AM
-- Design Name: 
-- Module Name: Tile_buffer - Behavioral
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
use work.tile_package.all;
use work.ppu_package.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Tile_buffer is
    Port ( 
           i_clk : in std_logic;
           i_x : in STD_LOGIC_VECTOR (3 downto 0);
           i_y : in STD_LOGIC_VECTOR (3 downto 0);
           i_tileID : in STD_LOGIC_VECTOR (7 downto 0);
           o_colorCode : in STD_LOGIC_VECTOR (3 downto 0);
           i_rotation  : in std_logic_vector(1 downto 0)
           );
end Tile_buffer;

architecture Behavioral of Tile_buffer is
component tile is 
    port (
        i_clk : in std_logic;
        i_x : in std_logic_vector(3 downto 0);
        i_y : in std_logic_vector(3 downto 0);
        i_rotation : in std_logic_vector(1 downto 0);
        i_tileID : in std_logic_Vector(7 downto 0);
        o_CourlorCode : out std_logic_vector(3 downto 0)
        );
    end component;
begin

tile_gen:
    for i in 0 to 255 generate
    
    tiles: tile
    Port map ( 
           i_clk => i_clk,
           i_x  => i_x,
           i_y  => i_y,
           i_tileID => i,
           o_colorCode => o_CourlorCode,
           i_rotation => i_rotation
           );


end Behavioral;
