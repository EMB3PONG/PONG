----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:07:05 05/19/2013 
-- Design Name: 
-- Module Name:    vga_output_select - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_output_select is
    Port ( CLK_i : in  STD_LOGIC;
           V_SYNC_0_i : in  STD_LOGIC;
           H_SYNC_0_i : in  STD_LOGIC;
           V_SYNC_1_i : in  STD_LOGIC;
           H_SYNC_1_i : in  STD_LOGIC;
           V_SYNC_2_i : in  STD_LOGIC;
           H_SYNC_2_i : in  STD_LOGIC);
end vga_output_select;

architecture Behavioral of vga_output_select is

begin


end Behavioral;

