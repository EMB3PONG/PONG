----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:57:45 02/27/2013 
-- Design Name: 
-- Module Name:    VGA_1 - Behavioral 
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

entity VGA_1 is
    Port ( clk_i		: in  STD_LOGIC;
			  R_O		 	: out unsigned(9 downto 0);
			  G_O		 	: out unsigned(9 downto 0);
			  B_O		 	: out unsigned(9 downto 0);
			  H_O		 	: out STD_LOGIC;
			  V_O		 	: out STD_LOGIC);	
end VGA_1;

architecture Behavioral of VGA_1 is



begin


end Behavioral;

