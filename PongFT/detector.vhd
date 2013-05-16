----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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
           green : in  STD_LOGIC_VECTOR (9 downto 0);
           h_sync : in  STD_LOGIC;
           v_sync : in  STD_LOGIC;
           bat_left_x : out  STD_LOGIC_VECTOR (9 downto 0);
           bat_left_y : out  STD_LOGIC_VECTOR (9 downto 0);
           bat_right_x : out  STD_LOGIC_VECTOR (9 downto 0);
           bat_right_y : out  STD_LOGIC_VECTOR (9 downto 0);
           ball_x : out  STD_LOGIC_VECTOR (9 downto 0);
           ball_y : out  STD_LOGIC_VECTOR (9 downto 0));
end detector;

architecture Behavioral of detector is

signal x_counter  : unsigned(11 downto 0) := (others => '0');
signal y_counter	: unsigned(11 downto 0) := (others => '0');
--signal shift_sum	: unsigned(4 downto 0) := (others => '0');
--signal tyve			: std_logic_vector(4 downto 0) := "10100";
--signal Unsigned_int : integer range 0 to 20;

signal shift_r : std_logic_vector(3 downto 0) := (others=>'0');

begin

process (CLK_25M_I)
variable temp: std_logic_vector(3 downto 0); 
begin
if rising_edge(CLK_25M_I) then
	
	temp := shift_r;
	for i in 0 to 2 loop
       temp(i) := temp(i+1);
   end loop;
	if (green = "0000000000") then
		 temp(3) := '0';
	else
		temp(3) := '1';
	end if;
	
	shift_r := temp;
	if v_sync = '1' then
	x_counter <= x_counter + 1;
		if x_counter > 19 and x_counter < 41) then
			temp := 
			if h_sync = '1' then
				x_counter <= (others=>'0');
				y_counter <= y_counter + 1;
--				maybe reset y_counter
			end if;
	end if;
end if;
end process; 

process (CLK_25M_I)
begin
if rising_edge(CLK_25M_I) then
	
	if (x_counter > 19 and x_counter < 41) then
		
		--shift_r(conv_integer(x_counter - unsigned(tyve))) <= green(9);
	end if;
 if x_counter = 41 then
	for i in 0 to 20 loop
		Unsigned_int <= conv_INTEGER(shift_r(0));
		shift_sum <= shift_sum + Unsigned_int;
	end loop;
 end if;
end if;
end process;

end Behavioral;

