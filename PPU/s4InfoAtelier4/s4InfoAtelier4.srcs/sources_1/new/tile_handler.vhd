---------------------------------------------------------------------------------------------
--
--	Pascal-Emmanuel Lachance | raesangur
--
--  github.com/omnikin-jaune/
--
---------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.tile_package.all;

entity tile_handler is
port (
    i_clk     : in  std_logic;
    i_rst     : in  std_logic;
    i_opcode  : in  std_logic_vector(4 downto 0);
    i_reg_tex : in  std_logic_vector(7 downto 0);
    i_reg_x   : in  std_logic_vector(8 downto 0);
    i_reg_y   : in  std_logic_vector(8 downto 0);

    i_x       : in  std_logic_vector(8 downto 0);
    i_y       : in  std_logic_vector(8 downto 0);

    o_cc      : out std_logic_vector(CC_SIZE downto 0)
); end tile_handler;


architecture behavioral of tile_handler is

    component tile is
    port (
        i_clk     : in  std_logic;
        i_rst     : in  std_logic;
        i_opcode  : in  std_logic_vector(4 downto 0);
        i_reg_tex : in  std_logic_vector(7 downto 0);
        i_reg_x   : in  std_logic_vector(8 downto 0);
        i_reg_y   : in  std_logic_vector(8 downto 0);
        
        i_pos_x   : in  std_logic_vector(POS_SIZE downto 0);
        i_pos_y   : in  std_logic_vector(POS_SIZE downto 0);
        
        i_x       : in  std_logic_vector(POS_SIZE downto 0);
        i_y       : in  std_logic_vector(POS_SIZE downto 0);

        o_cc      : out std_logic_vector(CC_SIZE downto 0)
    );
    end component;
    
    signal s_tiles_cc : vector_tile_cc;

    signal s_tile_id  : std_logic_vector(9 downto 0);
    signal s_cc_id    : std_logic_vector(7 downto 0);
    
begin

    -- https://stackoverflow.com/a/13194608
    tile_gen:
    for i in 0 to 1023 generate
    
        tiles: tile
        port map (
            i_clk     => i_clk,
            i_rst     => i_rst,
            i_opcode  => i_opcode,
            i_reg_tex => i_reg_tex,
            i_reg_x   => i_reg_x,
            i_reg_y   => i_reg_y,
            
            i_pos_x   => x_coord(i),
            i_pos_y   => y_coord(i),
            
            i_x       => i_x,
            i_y       => i_y,

            o_cc      => s_tiles_cc(i)
        );
    end generate;
    
    s_tile_id(4 downto 0) <= i_x(8 downto 4);
    s_tile_id(9 downto 5) <= i_y(8 downto 4);
    
    o_cc         <= s_tiles_cc(to_integer(unsigned(s_tile_id)));

end behavioral;
