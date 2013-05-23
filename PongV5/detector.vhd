----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Klaus Kryhlmand
-- 
-- Create Date:    09:50:13 05/02/2013 
-- Design Name: 
-- Module Name:    detector - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity detector is
    Port ( CLK_25M_I : in  STD_LOGIC;
			  V_SYNC_i : in  STD_LOGIC;
			  H_SYNC_i : in  STD_LOGIC;
           blue : in  STD_LOGIC;
			  --line_i : in  STD_LOGIC_VECTOR (9 downto 0);
			  --pixel_i: in  STD_LOGIC_VECTOR (9 downto 0);
           bat_left_y : out  STD_LOGIC_VECTOR (9 downto 0);
           bat_right_y : out  STD_LOGIC_VECTOR (9 downto 0);
           ball_x : out  STD_LOGIC_VECTOR (9 downto 0);
           ball_y : out  STD_LOGIC_VECTOR (9 downto 0));
end detector;

architecture Behavioral of detector is

type state_type is (st_init,st_run); 
signal state : state_type := st_init;
signal shift_r : std_logic_vector(3 downto 0) := (others=>'0');

signal line_i 	:STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
signal pixel_i :STD_LOGIC_VECTOR(9 downto 0) := (others => '0');

begin

Inst_pixel_pointer: entity work.pixel_pointer
	PORT MAP(
		clk_i => CLK_25M_I,
		v_sync_i => V_SYNC_i,
		h_sync_i => H_SYNC_i,
		v_sync_o => open,
      h_sync_o => open,
		line_o => line_i,
		pixel_o => pixel_i
	);

process (CLK_25M_I)
variable temp: std_logic_vector(3 downto 0); 
begin
if rising_edge(CLK_25M_I) then

CASE state IS 
	when st_init =>
		ball_y <= (others=>'0');
		ball_x <= (others=>'0');
		bat_left_y <= (others=>'0');
		bat_right_y <= (others=>'0');
		state <= st_run;
	when st_run =>
END CASE;

	temp := shift_r;
	
	for i in 0 to 2 loop
		 temp(i) := temp(i+1);
	end loop;
	
	if blue = '0' then
		 temp(3) := '0';
	else
		temp(3) := '1';
	end if;
		
	shift_r <= temp;
	
	if (UNSIGNED(pixel_i) > 67 and UNSIGNED(pixel_i) < 89) then
		if shift_r = "1111" then
			bat_left_y <= line_i;
		end if;
	elsif (UNSIGNED(pixel_i) > 88 and UNSIGNED(pixel_i) < 648) then
		if shift_r = "1111" then
			ball_x <= STD_LOGIC_VECTOR(UNSIGNED(pixel_i)-4);
			ball_y <= line_i;
		end if;
	elsif (UNSIGNED(pixel_i) > 647 and UNSIGNED(pixel_i) < 669) then
		if shift_r = "1111" then
			bat_right_y <= line_i;
		end if;
	end if;
			
	
end if;
end process; 

end Behavioral;

