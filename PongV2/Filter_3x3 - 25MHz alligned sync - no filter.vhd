----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:21:41 05/02/2013 
-- Design Name: 
-- Module Name:    Filter_3x3 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Filter_3x3 is
    Port ( clk_25M_i : in  STD_LOGIC;
           pixel_i : in  STD_LOGIC;
           v_sync_i : in  STD_LOGIC;
           h_sync_i : in  STD_LOGIC;
           pixel_o : out  STD_LOGIC;
           v_sync_o : out  STD_LOGIC;
           h_sync_o : out  STD_LOGIC);
end Filter_3x3;

architecture Behavioral of Filter_3x3 is

constant sync_tune 	: integer := 6;

signal front : std_logic_vector(2 downto 0) := (others => '0');
signal line_1 : std_logic_vector(796-sync_tune downto 0) := (others => '0');
signal center : std_logic_vector(2 downto 0) := (others => '0');
signal line_2 : std_logic_vector(796-sync_tune downto 0) := (others => '0');
signal back : std_logic_vector(2 downto 0) := (others => '0');

signal v_sync_delay : std_logic_vector(801-sync_tune downto 0) := (others => '0');
signal h_sync_delay : std_logic_vector(801-sync_tune downto 0) := (others => '0');

signal pixel_next : STD_LOGIC := '0';
signal v_sync_next : STD_LOGIC := '0';
signal h_sync_next : STD_LOGIC := '0';

signal pf01 		: unsigned(1 downto 0) := (others => '0');
signal pc01_pf2 	: unsigned(2 downto 0) := (others => '0');
signal pc2_pb2  	: unsigned(1 downto 0) := (others => '0');
signal pb01 		: unsigned(1 downto 0) := (others => '0');

--signal pps0 		: unsigned(7 downto 0) := (others => '0');
--signal pcs1 		: unsigned(7 downto 0) := (others => '0');

signal pixel_sum : unsigned(8 downto 0) := (others => '0');


begin

process(clk_25M_i) begin
	if rising_edge(clk_25M_i) then
		pixel_next <= pixel_next;
		
		-- make image shift register for 3x3 box filter
		front <= front(1 downto 0) & pixel_i;
		line_1 <= line_1(795-sync_tune downto 0) & front(2);
		center <= center(1 downto 0) & line_1(796-sync_tune);
		line_2 <= line_2(795-sync_tune downto 0) & center(2);
		back <= back(1 downto 0) & line_2(796-sync_tune);
		
		-- make equvivilent delay for v- and h sync signals
		v_sync_delay <= v_sync_delay(800-sync_tune downto 0) & v_sync_i;
		h_sync_delay <= h_sync_delay(800-sync_tune downto 0) & h_sync_i;
		
		-- output_allign teset
		--pixel_next <= front(1)or back(1) or center(1) ;
		
		-- TODO: Make filter...
		if (center(0) = '1' AND front(0) = '1') OR ((center(0) = '1' AND front(1) = '1') OR (front(0) = '1' AND front(0) = '1')) then
			pixel_next <= '1';
		else
			pixel_next <= '0';
		end if;

--		if() then
--		end if;

--		pf01 			<= front(1) 	& front(0);
--		pc01_pf2 	<= center(1) 	& center(0) 	& front(2);
--		pc2_pb2 		<= center(2) 	& back(2);
--		pb01 			<= back(1) 		& back(0);
--				
--		pixel_sum <= pf01 + pc01_pf2 + pc2_pb2 + pb01;
--		
--		if pixel_sum > 0 then
--			pixel_next <= '1';
--		else 
--			pixel_next <= '0';
--		end if;
-- possibly add 2 to the v and h sync signals

		
		v_sync_next <= v_sync_delay(801-sync_tune);
		h_sync_next <= h_sync_delay(801-sync_tune);
		
	end if;
end process;
	
	-- Output logic
	pixel_o 	<= pixel_next;
	v_sync_o <= v_sync_next;
	h_sync_o <= h_sync_next;

end Behavioral;

