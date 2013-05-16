----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:06:25 05/02/2013 
-- Design Name: 
-- Module Name:    ADC_signal_sync - Behavioral 
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

entity ADC_signal_sync is
    Port ( 
			  -- Inputs
			  clk_i 	: in  STD_LOGIC;
			  blue_i 		: in  STD_LOGIC;
           v_sync_i 		: in  STD_LOGIC;
           h_sync_i 		: in  STD_LOGIC;
			  -- Outputs
			  ADC_clk_o 	: out  STD_LOGIC;
           pixel_o 		: out  STD_LOGIC;
           v_sync_o 		: out  STD_LOGIC;
           h_sync_o 		: out  STD_LOGIC);
end ADC_signal_sync;

architecture Behavioral of ADC_signal_sync is

-- Signals
signal v_sync_sr 		: STD_LOGIC_VECTOR(5 downto 0) 	:= (others => '0');
signal h_sync_sr 		: STD_LOGIC_VECTOR(5 downto 0) 	:= (others => '0');
signal blue_r 			: STD_LOGIC 							:= '0';

begin

	process(clk_i)
		begin
			if rising_edge(clk_i) then
				-- Register ADC output
				blue_r 	<= blue_i;
				
				-- Shift delay for sync signals
				v_sync_sr <= v_sync_sr(4 downto 0) & v_sync_i;
				h_sync_sr <= h_sync_sr(4 downto 0) & h_sync_i;
				
			end if;
		end process;
				
-- Otput the pixel value (0 = black; 1 = white)
pixel_o <= blue_r;

--pixel_o <= '1' WHEN	blue_r > 563 ELSE
--             '0';

-- Output the delayed sync signals (6 clock pulses)
v_sync_o <= v_sync_sr(5);
h_sync_o <= h_sync_sr(5);

-- output the clock signa for the ADC
ADC_clk_o <= clk_i;
	
end Behavioral;

