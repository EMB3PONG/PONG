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
    Port ( clk_i : in  STD_LOGIC;
           pixel_i : in  STD_LOGIC;
           v_sync_i : in  STD_LOGIC;
           h_sync_i : in  STD_LOGIC;
           pixel_o : out  STD_LOGIC;
           v_sync_o : out  STD_LOGIC;
           h_sync_o : out  STD_LOGIC);
end Filter_3x3;

architecture Behavioral of Filter_3x3 is

constant line_sr 		: integer := 1594;
constant vh_sr 		: integer := 1603;
constant sync_tune 	: integer := 11;
constant sync_delay 	: integer := 6;

signal front : std_logic_vector(5 downto 0) := (others => '0');
signal line_1 : std_logic_vector(line_sr-sync_tune-1 downto 0) := (others => '0');
signal center : std_logic_vector(4 downto 0) := (others => '0');
signal line_2 : std_logic_vector(line_sr-sync_tune downto 0) := (others => '0');
signal back : std_logic_vector(4 downto 0) := (others => '0');

signal v_sync_delay : std_logic_vector(vh_sr-sync_tune+sync_delay downto 0) := (others => '0');
signal h_sync_delay : std_logic_vector(vh_sr-sync_tune+sync_delay downto 0) := (others => '0');

signal pixel_next : STD_LOGIC := '0';
signal v_sync_next : STD_LOGIC := '0';
signal h_sync_next : STD_LOGIC := '0';

--signal pf01 		: unsigned(1 downto 0) := (others => '0');
--signal pc01_pf2 	: unsigned(2 downto 0) := (others => '0');
--signal pc2_pb2  	: unsigned(1 downto 0) := (others => '0');
--signal pb01 		: unsigned(1 downto 0) := (others => '0');

signal pf0 			: unsigned(3 downto 0) := (others => '0');
signal pf1 			: unsigned(3 downto 0) := (others => '0');
signal pf2 			: unsigned(3 downto 0) := (others => '0');
signal pf3 			: unsigned(3 downto 0) := (others => '0');
signal pf4 			: unsigned(3 downto 0) := (others => '0');

signal pc0 			: unsigned(3 downto 0) := (others => '0');
signal pc1 			: unsigned(3 downto 0) := (others => '0');
signal pc2 			: unsigned(4 downto 0) := (others => '0');
signal pc3 			: unsigned(3 downto 0) := (others => '0');
signal pc4 			: unsigned(3 downto 0) := (others => '0');

signal pb0 			: unsigned(3 downto 0) := (others => '0');
signal pb1 			: unsigned(3 downto 0) := (others => '0');
signal pb2 			: unsigned(3 downto 0) := (others => '0');
signal pb3 			: unsigned(3 downto 0) := (others => '0');
signal pb4 			: unsigned(3 downto 0) := (others => '0');

signal psf 			: unsigned(7 downto 0) := (others => '0');
signal psc 			: unsigned(7 downto 0) := (others => '0');
signal psb 			: unsigned(7 downto 0) := (others => '0');

signal pixel_sum : unsigned(9 downto 0) := (others => '0');


begin

process(clk_i) begin
	if rising_edge(clk_i) then
		pixel_next <= pixel_next;
		
		-- make image shift register for 3x3 box filter
		front <= front(4 downto 0) & pixel_i;
		line_1 <= line_1((line_sr-sync_tune-1-1) downto 0) & front(5);
		center <= center(3 downto 0) & line_1(line_sr-sync_tune-1);
		line_2 <= line_2((line_sr-sync_tune-1) downto 0) & center(4);
		back <= back(3 downto 0) & line_2(line_sr-sync_tune);
		
		-- make equvivilent delay for v- and h sync signals
		v_sync_delay <= v_sync_delay(vh_sr-1-sync_tune+sync_delay downto 0) & v_sync_i;
		h_sync_delay <= h_sync_delay(vh_sr-1-sync_tune+sync_delay downto 0) & h_sync_i;
		
		-- output_allign teset
		--pixel_next <= front(3)or back(2) or center(2) ;
		
		-- The filter
		pf0 <= "000" 	& front(1);
		pf1 <= "00"		& front(2) 	& "0";
		pf2 <= "00" 	& front(3)	& front(2);
		pf3 <= "00" 	& front(4) 	& "0";
		pf4 <= "000" 	& front(5);
		
		pc0 <= "00" & center(0) & "0";
		pc1 <= "00" & center(1) & center(1);
		pc2 <= "00" & center(2) & "00";
		pc3 <= "00" & center(3) & center(3);
		pc4 <= "00" & center(4) & "0";
		
		pb0 <= "000" 	& back(0);
		pb1 <= "00"		& back(1) 	& "0";
		pb2 <= "00" 	& back(2)	& back(2);
		pb3 <= "00" 	& back(3) 	& "0";
		pb4 <= "000" 	& back(4);
		
		psf <= pf0 + pf1 + pf2 + pf3 + pf4;
		psc <= pc0 + pc1 + pc2 + pc3 + pc4;
		psb <= pb0 + pb1 + pb2 + pb3 + pb4;
		
		pixel_sum <= psf + psc + psb;
		
		if pixel_sum > 17 then
			pixel_next <= '1';
		else 
			pixel_next <= '0';
		end if;


		
		v_sync_next <= v_sync_delay(vh_sr-sync_tune+sync_delay);
		h_sync_next <= h_sync_delay(vh_sr-sync_tune+sync_delay);
		
	end if;
end process;
	
	-- Output logic
	pixel_o 	<= pixel_next;
	v_sync_o <= v_sync_next;
	h_sync_o <= h_sync_next;

end Behavioral;

