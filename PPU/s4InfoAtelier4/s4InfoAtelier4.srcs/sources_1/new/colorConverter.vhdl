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
        Color_Out <= x"4FFFFF"; -- Transparent
      when "0001" =>
        Color_out <= x"4C499F"; -- verrt foncé 
      when "0010" =>
        Color_out <= x"625EE1"; -- vert paêle  
      when "0011" =>
        Color_out <= x"FF0000"; -- rouge       
      when "0100" =>
        Color_out <= x"FF1BA4"; -- orange      
      when "0101" =>
        Color_out <= x"FFFFFF"; -- blanc           
      when "0110" =>
        Color_out <= x"606060"; -- gris foncé  
      when "0111" =>
        Color_out <= x"C0C0C0"; -- gris pâle   
      when "1000" =>
        Color_out <= x"000000"; -- noir        
      when "1001" =>
        Color_out <= x"99004C"; -- brun        
      when "1010" =>
        Color_out <= x"999900"; -- mauve foncé 
      when "1011" =>
        Color_out <= x"FFFF66"; -- mauve pâle  
      when "1100" =>
        Color_out <= x"CC6600"; -- Rose        
      when "1101" =>
        Color_out <= x"7FFF00"; -- bleu foncé  
      when "1110" =>
        Color_out <= x"66FFB2"; -- bleu pâle   
      when "1111" =>
        Color_out <= x"FF00FF"; -- Blanc 
      when others =>
        Color_out <= x"4FFFFF";               
   end case;
end process;

end Behavioral;
