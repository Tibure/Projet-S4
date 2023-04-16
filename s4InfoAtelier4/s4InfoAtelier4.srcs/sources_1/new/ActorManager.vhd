----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/29/2023 04:07:42 PM
-- Design Name: 
-- Module Name: ActorManager - Behavioral
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

entity ActorManager is
    Port ( 
           i_clk : in std_logic;
           i_g_x : in STD_LOGIC_VECTOR (11 downto 0);
           i_g_y : in STD_LOGIC_VECTOR (11 downto 0);
           set_a_id : in STD_LOGIC_VECTOR (2 downto 0);
           set_a_gx : in STD_LOGIC_VECTOR (11 downto 0);
           set_a_gy : in STD_LOGIC_VECTOR (11 downto 0);
           i_we_a : in STD_LOGIC;
           i_tileID_actor : in STD_LOGIC_VECTOR (3 downto 0);
           i_tileRot_actor : in STD_LOGIC_VECTOR (1 downto 0);
           i_vis_actor : in STD_LOGIC;
           o_x : out STD_LOGIC_VECTOR (3 downto 0);
           o_y : out STD_LOGIC_VECTOR (3 downto 0);
           o_hit: out std_logic;
           o_t_id : out STD_LOGIC_VECTOR (3 downto 0);
           o_t_rot : out STD_LOGIC_VECTOR (1 downto 0));
end ActorManager;

architecture Behavioral of ActorManager is

type Actors is array(0 to 7) of std_logic_vector(30 downto 0);
--12 bits posX | 12 bits posY | 2 bits rotation | 4 bits tileID | 1 bit isVisible

signal ActorsDefault : Actors := (others => (others => ('0')));


signal x_0 : std_logic_vector(3 downto 0);
signal y_0 : std_logic_vector(3 downto 0);
signal t_id_0 : std_logic_vector(3 downto 0);
signal t_rot_0 : std_logic_vector(1 downto 0);
signal hit_0 : std_logic;

signal x_1 : std_logic_vector(3 downto 0);
signal y_1 : std_logic_vector(3 downto 0);
signal t_id_1 : std_logic_vector(3 downto 0);
signal t_rot_1 : std_logic_vector(1 downto 0);
signal hit_1 : std_logic;

signal x_2 : std_logic_vector(3 downto 0);
signal y_2 : std_logic_vector(3 downto 0);
signal t_id_2 : std_logic_vector(3 downto 0);
signal t_rot_2 : std_logic_vector(1 downto 0);
signal hit_2 : std_logic;

signal x_3 : std_logic_vector(3 downto 0);
signal y_3 : std_logic_vector(3 downto 0);
signal t_id_3 : std_logic_vector(3 downto 0);
signal t_rot_3 : std_logic_vector(1 downto 0);
signal hit_3 : std_logic;

signal x_4 : std_logic_vector(3 downto 0);
signal y_4 : std_logic_vector(3 downto 0);
signal t_id_4 : std_logic_vector(3 downto 0);
signal t_rot_4 : std_logic_vector(1 downto 0);
signal hit_4 : std_logic;

signal x_5 : std_logic_vector(3 downto 0);
signal y_5 : std_logic_vector(3 downto 0);
signal t_id_5 : std_logic_vector(3 downto 0);
signal t_rot_5 : std_logic_vector(1 downto 0);
signal hit_5 : std_logic;

signal x_6 : std_logic_vector(3 downto 0);
signal y_6 : std_logic_vector(3 downto 0);
signal t_id_6 : std_logic_vector(3 downto 0);
signal t_rot_6 : std_logic_vector(1 downto 0);
signal hit_6 : std_logic;

signal x_7 : std_logic_vector(3 downto 0);
signal y_7 : std_logic_vector(3 downto 0);
signal t_id_7 : std_logic_vector(3 downto 0);
signal t_rot_7 : std_logic_vector(1 downto 0);
signal hit_7 : std_logic;


begin

--ActorsDefault(0) <= "0001010001100000100011100010001";
--ActorsDefault(1) <= "0000100011100001010001100101111";

o_x <= x_0 OR x_1 OR x_2 OR x_3 OR x_4 OR x_5 OR x_6 OR x_7;
o_y <= y_0 OR y_1 OR y_2 OR y_3 OR y_4 OR y_5 OR y_6 OR y_7;
o_t_id <= t_id_0  OR t_id_1 OR t_id_2 OR t_id_3 OR t_id_4 OR t_id_5 OR t_id_6 OR t_id_7;
o_t_rot <= t_rot_0 OR t_rot_1 OR t_rot_2 OR t_rot_3 OR t_rot_4 OR t_rot_5 OR t_rot_6 OR t_rot_7;
o_hit <= hit_0 OR hit_1 OR hit_2 OR hit_3 OR hit_4 OR hit_5 OR hit_6 OR hit_7;

--o_x <= x_0;
--o_y <= y_0;
--o_t_id <= t_id_0;
--o_t_rot <= t_rot_0;
--o_hit <= hit_0;


process(i_clk, set_a_id, i_we_a, i_tileID_actor, i_tileRot_actor, i_vis_actor) begin
   if(rising_edge(i_clk)) then
        if(i_we_a = '1') then
            ActorsDefault(to_integer(unsigned(set_a_id))) <= set_a_gx & set_a_gy & i_tileRot_actor & i_tileID_actor & i_vis_actor; 
        end if;
        end if;
end process;

process(i_g_x, i_g_y) begin
    if(ActorsDefault(0)(0) = '1') then
        if((to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(0)(30 downto 19)))) < 16) AND (to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(0)(18 downto 7)))) < 16)) then
            x_0 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(0)(30 downto 19)))),4));
            y_0 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(0)(18 downto 7)))),4));
            t_id_0 <= ActorsDefault(0)(4 downto 1);
            t_rot_0 <= ActorsDefault(0)(6 downto 5);
            hit_0 <= '1';
        else
            x_0 <= "0000";
            y_0 <= "0000";
            t_id_0 <= "0000";
            t_rot_0 <= "00";
            hit_0 <= '0';
        end if;

     end if;
end process;

process(i_g_x, i_g_y) begin
    if(ActorsDefault(1)(0) = '1') then
        if((to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(1)(30 downto 19)))) < 16) AND (to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(1)(18 downto 7)))) < 16)) then
            x_1 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(1)(30 downto 19)))),4));
            y_1 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(1)(18 downto 7)))),4));
            t_id_1 <= ActorsDefault(1)(4 downto 1);
            t_rot_1 <= ActorsDefault(1)(6 downto 5);
            hit_1 <= '1';
        else
            x_1 <= "0000";
            y_1 <= "0000";
            t_id_1 <= "0000";
            t_rot_1 <= "00";
            hit_1 <= '0';
        end if;
     end if;
end process;

process(i_g_x, i_g_y) begin
    if(ActorsDefault(2)(0) = '1') then
    if((to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(2)(30 downto 19)))) < 16) AND (to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(2)(18 downto 7)))) < 16)) then
        x_2 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(2)(30 downto 19)))),4));
        y_2 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(2)(18 downto 7)))),4));
        t_id_2 <= ActorsDefault(2)(4 downto 1);
        t_rot_2 <= ActorsDefault(2)(6 downto 5);
        hit_2 <= '1';
        else
        x_2 <= "0000";
        y_2 <= "0000";
        t_id_2 <= "0000";
        t_rot_2 <= "00";
        hit_2 <= '0';
     end if;
     end if;
end process;

process(i_g_x, i_g_y) begin
    if(ActorsDefault(3)(0) = '1') then
    if((to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(3)(30 downto 19)))) < 16) AND (to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(3)(18 downto 7)))) < 16)) then
        x_3 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(3)(30 downto 19)))),4));
        y_3 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(3)(18 downto 7)))),4));
        t_id_3 <= ActorsDefault(3)(4 downto 1);
        t_rot_3 <= ActorsDefault(3)(6 downto 5);
        hit_3 <= '1';
        else
        x_3 <= "0000";
        y_3 <= "0000";
        t_id_3 <= "0000";
        t_rot_3 <= "00";
        hit_3 <= '0';
     end if;
     end if;
end process;

process(i_g_x, i_g_y) begin
    if(ActorsDefault(4)(0) = '1') then
    if((to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(4)(30 downto 19)))) < 16) AND (to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(4)(18 downto 7)))) < 16)) then
        x_4 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(4)(30 downto 19)))),4));
        y_4 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(4)(18 downto 7)))),4));
        t_id_4 <= ActorsDefault(4)(4 downto 1);
        t_rot_4 <= ActorsDefault(4)(6 downto 5);
        hit_4 <= '1';
        else
        x_4 <= "0000";
        y_4 <= "0000";
        t_id_4 <= "0000";
        t_rot_4 <= "00";
        hit_4 <= '0';
     end if;
     end if;
end process;

process(i_g_x, i_g_y) begin
    if(ActorsDefault(5)(0) = '1') then
    if((to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(5)(30 downto 19)))) < 16) AND (to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(5)(18 downto 7)))) < 16)) then
        x_5 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(5)(30 downto 19)))),4));
        y_5 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(5)(18 downto 7)))),4));
        t_id_5 <= ActorsDefault(5)(4 downto 1);
        t_rot_5 <= ActorsDefault(5)(6 downto 5);
        hit_5 <= '1';
        else
        x_5 <= "0000";
        y_5 <= "0000";
        t_id_5 <= "0000";
        t_rot_5 <= "00";
        hit_5 <= '0';
     end if;
     end if;
end process;

process(i_g_x, i_g_y) begin
    if(ActorsDefault(6)(0) = '1') then
    if((to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(6)(30 downto 19)))) < 16) AND (to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(6)(18 downto 7)))) < 16)) then
        x_6 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(6)(30 downto 19)))),4));
        y_6 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(6)(18 downto 7)))),4));
        t_id_6 <= ActorsDefault(6)(4 downto 1);
        t_rot_6 <= ActorsDefault(6)(6 downto 5);
        hit_6 <= '1';
        else
        x_6 <= "0000";
        y_6 <= "0000";
        t_id_6 <= "0000";
        t_rot_6 <= "00";
        hit_6 <= '0';
     end if;
     end if;
end process;

process(i_g_x, i_g_y) begin
    if(ActorsDefault(7)(0) = '1') then
    if((to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(7)(30 downto 19)))) < 16) AND (to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(7)(18 downto 7)))) < 16)) then
        x_7 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_x)) - to_integer(unsigned(ActorsDefault(7)(30 downto 19)))),4));
        y_7 <= std_logic_vector(TO_UNSIGNED(to_integer((unsigned(i_g_y)) - to_integer(unsigned(ActorsDefault(7)(18 downto 7)))),4));
        t_id_7 <= ActorsDefault(7)(4 downto 1);
        t_rot_7 <= ActorsDefault(7)(6 downto 5);
        hit_7 <= '1';
        else
        x_7 <= "0000";
        y_7 <= "0000";
        t_id_7 <= "0000";
        t_rot_7 <= "00";
        hit_7 <= '0';
     end if;
     end if;
end process;


end Behavioral;
