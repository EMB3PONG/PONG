--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:38:23 05/19/2013
-- Design Name:   
-- Module Name:   /home/klaus/PONG/vga_generator/Test.vhd
-- Project Name:  vga_generator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGA_READER
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test IS
END Test;
 
ARCHITECTURE behavior OF Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGA_READER
    PORT(
         R_OUTPUT : OUT  std_logic_vector(9 downto 0);
         G_OUTPUT : OUT  std_logic_vector(9 downto 0);
         B_OUTPUT : OUT  std_logic_vector(9 downto 0);
         H_OUTPUT : OUT  std_logic;
         V_OUTPUT : OUT  std_logic
        );
    END COMPONENT;
    

 	--Outputs
   signal R_OUTPUT : std_logic_vector(9 downto 0);
   signal G_OUTPUT : std_logic_vector(9 downto 0);
   signal B_OUTPUT : std_logic_vector(9 downto 0);
   signal H_OUTPUT : std_logic;
   signal V_OUTPUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGA_READER PORT MAP (
          R_OUTPUT => R_OUTPUT,
          G_OUTPUT => G_OUTPUT,
          B_OUTPUT => B_OUTPUT,
          H_OUTPUT => H_OUTPUT,
          V_OUTPUT => V_OUTPUT
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
