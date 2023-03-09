----------------------------------------------------------------------------------
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
    i_clk     : in  std_logic;
    i_rst     : in  std_logic;
    i_opcode  : in  std_logic_vector(OP_SIZE downto 0);
    i_reg_tex : in  std_logic_vector(7 downto 0);
    i_reg_x   : in  std_logic_vector(POS_SIZE downto 0);
    i_reg_y   : in  std_logic_vector(POS_SIZE downto 0);
    
    i_pos_x   : in  std_logic_vector(POS_SIZE downto 0);
    i_pos_y   : in  std_logic_vector(POS_SIZE downto 0);

    i_x       : in  std_logic_vector(POS_SIZE downto 0);
    i_y       : in  std_logic_vector(POS_SIZE downto 0);

    o_cc      : out std_logic_vector(CC_SIZE downto 0)
); end tile;


architecture behavioral of tile is
    signal s_texture_id : std_logic_vector(7 downto 0)            := (others => '0');
    signal s_x          : std_logic_vector(POS_SIZE downto 0)     := (others => '0');
    signal s_y          : std_logic_vector(POS_SIZE downto 0)     := (others => '0');
    signal s_index      : std_logic_vector(TEX_INDEX_SZ downto 0) := (others => '0');
    
    signal s_x_temp     : std_logic_vector(POS_SIZE downto 0) := (others => '0');
    signal s_y_temp     : std_logic_vector(POS_SIZE downto 0) := (others => '0');
    

begin
    process(i_clk, i_rst, i_opcode, i_reg_x, i_reg_y)
    begin
        if (rising_edge(i_clk)) then
            if (i_rst = '1') then
                s_texture_id <= (others => '0');
            else
                if (i_opcode = OP_TILE_TEX and i_reg_x = s_x and i_reg_y = s_y) then
                    s_texture_id <= i_reg_tex;
                end if;
            end if;
        end if;
    end process;

    s_x <= i_pos_x;
    s_y <= i_pos_y;

    s_x_temp <= i_x - s_x;
    s_y_temp <= i_y - s_y;

    s_index(7 downto 4) <= s_y_temp(3 downto 0);
    s_index(3 downto 0) <= s_x_temp(3 downto 0);
    
    o_cc   <= s_tile_textures(to_integer(unsigned(s_texture_id)))
                             (to_integer(unsigned(s_index)))
              when i_x - s_x < 16 and i_y - s_y < 16 
              else "000000";
    
end behavioral;
