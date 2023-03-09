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


begin

process(i_y)
begin
   if(i_y(3) = '1') then
       o_dataPixel <= i_colorDataA(23 downto 0);
   else
       o_dataPixel <= i_colorDataB(23 downto 0);
   end if;
end process;

o_dataValid <= '1';

end Behavioral;
