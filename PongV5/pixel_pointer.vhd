----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:11:27 05/12/2013 
-- Design Name: 
-- Module Name:    pixel_pointer - Behavioral 
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

entity pixel_pointer is
    Port ( clk_i : in  STD_LOGIC;
           v_sync_i : in  STD_LOGIC;
           h_sync_i : in  STD_LOGIC;
			  v_sync_o : out  STD_LOGIC;
           h_sync_o : out  STD_LOGIC;
           line_o : out  STD_LOGIC_VECTOR (9 downto 0);
           pixel_o : out  STD_LOGIC_VECTOR (9 downto 0));
			  
end pixel_pointer;

architecture Behavioral of pixel_pointer is

signal line 			: unsigned (9 downto 0) := (others => '0');
signal line_next 		: unsigned (9 downto 0) := (others => '0');

signal pixel 			: unsigned (9 downto 0) := (others => '0');
signal pixel_next 	: unsigned (9 downto 0) := (others => '0');

signal v_sync			: std_logic_vector(2 downto 0) := (others => '0');
signal h_sync			: std_logic_vector(2 downto 0) := (others => '0');

begin

	process (clk_i) begin
		if rising_edge(clk_i) then
			-- defaults
			line <= line;
			pixel <= pixel_next;		
			
			-- V and H shift registers
			v_sync <= v_sync(1 downto 0) & v_sync_i;
			h_sync <= h_sync(1 downto 0) & h_sync_i;

			if v_sync = "001" then
				--reset
				line <= (others => '0');
				pixel <= (others => '0');
			elsif h_sync = "001" then
				line <= line_next;
				pixel <= (others => '0');
			end if;
			
		end if;
	end process;

	line_next <= line + 1;
	pixel_next <= pixel + 1;
	
	line_o <= std_logic_vector(line);
	pixel_o <= std_logic_vector(pixel);
	
	v_sync_o <= v_sync(0);
	h_sync_o <= h_sync(0);


end Behavioral;

