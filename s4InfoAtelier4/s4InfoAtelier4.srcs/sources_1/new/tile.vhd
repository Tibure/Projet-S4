---------------------------------------------------------------------------------------------

--
---------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.tile_package.all;

entity tile is
port (
    i_clk : in std_logic;
    i_x : in std_logic_vector(3 downto 0);
    i_y : in std_logic_vector(3 downto 0);
    i_rotation : in std_logic_vector(1 downto 0);
    i_tileID : in std_logic_Vector(3 downto 0);
    o_ColorCode : out std_logic_vector(3 downto 0)
    
    ); end tile;


architecture behavioral of tile is


signal s_index : std_logic_vector(7 downto 0);


begin
   process(i_rotation,i_x,i_y,i_tileID) --i_clk
   begin
   --if( rising_edge(i_clk)) then
        case (i_rotation) is
          when "00" =>  -- 0 degre
            s_index(3 downto 0) <= i_x;
            s_index(7 downto 4) <= i_y;  
             
          when "01" =>  -- 90 deg
            s_index(3 downto 0) <= std_logic_vector((15) - unsigned(i_y)) ;
            s_index(7 downto 4) <= i_x;   
          when "10" =>  -- 180 deg
            s_index(3 downto 0) <= std_logic_vector((15) - unsigned(i_x)) ;
            s_index(7 downto 4) <= std_logic_vector((15) - unsigned(i_y)) ;  
          when "11" =>  -- 270 deg
            s_index(3 downto 0) <= i_y(3 downto 0); 
            s_index(7 downto 4) <= std_logic_vector((15) - unsigned(i_x)) ;
              
          when others =>
            s_index(3 downto 0) <= i_x;
            s_index(7 downto 4) <= i_y;
       end case;
				
	    o_ColorCode   <= s_tile_textures(to_integer(unsigned(i_tileID)))
                           (to_integer(unsigned(s_index)));
                           
   
   --end if;
   end process;
    end behavioral;          
   

