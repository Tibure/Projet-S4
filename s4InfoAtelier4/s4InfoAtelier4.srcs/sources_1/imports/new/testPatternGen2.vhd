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
           o_dataPixel : out std_logic_vector(23 downto 0);
           
                      
           set_t_idBG : in std_logic_vector(3 downto 0);
           we_t_idBG : in std_logic;
           tuileXBG  : in std_logic_vector(5 downto 0);
           tuileYBG  : in std_logic_vector(5 downto 0);
           tuileRotationBG : in std_logic_vector(1 downto 0);
           
           we_a_id  : in std_logic;
           set_a_id : in std_logic_vector(2 downto 0);
           set_gx_a : in std_logic_vector(11 downto 0);
           set_gy_a : in std_logic_vector(11 downto 0);
           set_a_vis : in std_logic;
           set_a_tID : in std_logic_vector(3 downto 0);
           set_a_tRot : in std_logic_vector(1 downto 0);
           
           viewPort_X : in std_logic_vector(11 downto 0);
           viewPort_Y : in std_logic_vector(11 downto 0);
           we_vp : in std_logic
           );
    end component;

signal colorPixel : std_logic_vector(23 downto 0);

     ------Background
          signal   s_set_tile_id : STD_LOGIC_VECTOR (3 downto 0);
          signal   s_we_tile_id : STD_LOGIC;
          signal   s_background_tuileX  : std_logic_vector(5 downto 0);
          signal   s_background_tuileY  : std_logic_Vector(5 downto 0);
          signal   s_t_id : STD_LOGIC_VECTOR (3 downto 0);
          signal   s_t_rot_background : std_logic_vector (1 downto 0);
     
     ------Actor
          signal   s_set_actor_id : STD_LOGIC_VECTOR (2 downto 0);
          signal   s_set_actor_gx :  STD_LOGIC_VECTOR (11 downto 0);
          signal   s_set_actor_gy : STD_LOGIC_VECTOR (11 downto 0);
          signal   s_we_actor :  STD_LOGIC;
          signal   s_tileID_actor :  STD_LOGIC_VECTOR (3 downto 0);
          signal   s_tileRot_actor :  STD_LOGIC_VECTOR (1 downto 0);
          signal   s_vis_actor :  STD_LOGIC;
          
     ------Actor
          signal s_viewPort_X : std_logic_vector(11 downto 0);
          signal s_viewPort_Y : std_logic_vector(11 downto 0);
          signal s_we_vp : std_logic;











begin

inst_datapath : Datapath
    port map(
        clk => clk,
        i_x => i_x,
        i_y => i_y,
        o_dataPixel => o_dataPixel,
        
         --BACKGROUND
        set_t_idBG => s_set_tile_id,
        we_t_idBG => s_we_tile_id,
        tuileXBG => s_background_tuileX,
        tuileYBG => s_background_tuileY,
        tuileRotationBG => s_t_rot_background,
        --ACTEURS
        we_a_id => s_we_actor,
        set_a_id => s_set_actor_id,
        set_gx_a => s_set_actor_gx,
        set_gy_a => s_set_actor_gy,
        set_a_vis => s_vis_actor,
        set_a_tID => s_tileID_actor,
        set_a_tRot=> s_tileRot_actor,
        --VIEWPORT
        viewPort_X => s_viewPort_X,
        viewPort_Y => s_viewPort_Y,
        we_vp => s_we_vp

        );
        process(i_colorDataA)
        begin
            case i_colorDataA(31 downto 30) is
            when "00" => --CAS CHANGER TUILE BACKGROUND
                s_we_tile_id <= '1';
                s_we_actor <= '0';
                s_we_vp <= '0';
                
                s_background_tuileX <= i_colorDataA(29 downto 24);
                s_background_tuileY <= i_colorDataA(23 downto 18);
                s_set_tile_id <= i_colorDataA(17 downto 14);
                s_t_rot_background <= i_colorDataA(13 downto 12);
                
                
                
            when "01"=> --CAS CHANGER POSITION ACTEUR
                s_we_tile_id <= '0';
                s_we_actor <= '1';
                s_we_vp <= '0';
                
                s_set_actor_gx <= "00"&i_colorDataA(29 downto 20);
                s_set_actor_gy <= "00"&i_colorDataA(19 downto 10);
                s_tileID_actor <= i_colorDataA(9 downto 6);
                s_tileRot_actor <= i_colorDataA(5 downto 4);
                s_vis_actor <= i_colorDataA(3);
                s_set_actor_id <= i_colorDataA(2 downto 0);
                
            when "10"=> --CAS CHANGER POSITION VIEWPORT
                s_we_tile_id <= '0';
                s_we_actor <= '0';
                s_we_vp <= '1';
                
                s_viewPort_X <= "00"&i_colorDataA(29 downto 20);
                s_viewPort_Y <=  "00"&i_colorDataA(19 downto 10);
            when others =>
                s_we_tile_id <= '0';
                s_we_actor <= '0';
                s_we_vp <= '0';
            end case;

        end process;



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
