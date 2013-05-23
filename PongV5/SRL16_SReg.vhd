----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:08:39 05/23/2013 
-- Design Name: 
-- Module Name:    SRL16_SReg - Behavioral 
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

Library UNISIM;
use UNISIM.vcomponents.all;

entity SRL16_SReg is
	generic(
		sr_length : integer := 16;  	-- default: 16
		--sr_width  : integer := 1	  	-- default: 1
	);
   Port (
		clk_i : in  STD_LOGIC;
      D_i : in  STD_LOGIC;
      Q_o : in  STD_LOGIC
	);
end SRL16_SReg;

architecture Behavioral of SRL16_SReg is

signal link_signal : STD_LOGIC_VECTOR(2 downto 0):= (others => '0');

begin


   -- SRL16: 16-bit shift register LUT operating on posedge of clock
   --        Spartan-3
   -- Xilinx HDL Language Template, version 14.4
   
   SRL16_inst : SRL16
   generic map (
      INIT => X"0000")
   port map (
      Q => Q_o,       -- SRL data output
      A0 => '1',     -- Select[0] input
      A1 => '1',     -- Select[1] input
      A2 => '1',     -- Select[2] input
      A3 => '1',     -- Select[3] input
      CLK => clk_i,   -- Clock input
      D => D_i        -- SRL data input
   );

   -- End of SRL16_inst instantiation


SRL16Generator:
   for i in 0 to 1 generate
      begin
         <statement>;
         <statement>;
   end generate;

end Behavioral;

