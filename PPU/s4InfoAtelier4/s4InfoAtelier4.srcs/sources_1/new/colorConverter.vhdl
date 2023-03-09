----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2023 08:28:03 AM
-- Design Name: 
-- Module Name: colorConverter - Behavioral
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

entity colorConverter is
    Port ( Color_In : in STD_LOGIC_VECTOR (3 downto 0);
           Color_Out : out STD_LOGIC_VECTOR (23 downto 0));
end colorConverter;

architecture Behavioral of colorConverter is

begin

process(Color_In) is 
begin

   case (Color_In) is
      when "0000" =>
        Color_Out <= "010011001001111101001001"; -- Vert Foncé
      when "0001" =>
        Color_out <= "011000101110000101011110"; --Vert pâle
      when "0010" =>
        Color_out <= "111111110000000000000000"; -- Rouge
      when "0011" =>
        Color_out <= "111111111010010000011011"; -- Orange
      when "0100" =>
        Color_out <= "111111111111111100000000"; -- Jaune
      when "0101" =>
        Color_out <= "011111110000000011111111"; -- Bleu foncé         
      when "0110" =>
        Color_out <= "011001101011001011111111"; -- Bleu pâle
      when "0111" =>
        Color_out <= "111111111111111111111111"; -- Blanc
      when "1000" =>
        Color_out <= "011000000110000001100000"; -- Gris Foncé
      when "1001" =>
        Color_out <= "110000001100000011000000"; -- Gris pâle
      when "1010" =>
        Color_out <= "000000000000000000000000"; -- Noir
      when "1011" =>
        Color_out <= "001100111111111111111111"; -- Turquoise
      when "1100" =>
        Color_out <= "100110010000000010011001"; -- Mauve foncé
      when "1101" =>
        Color_out <= "111111110110011011111111"; -- Mauve pâle
      when "1110" =>
        Color_out <= "110011000000000001100110"; -- Rose 
      when "1111" =>
        Color_out <= "100110010100110000000000"; -- Brun 
      when others =>
        Color_out <= "111111111111111111111111"; -- Blanc
   end case;
end process;

end Behavioral;
