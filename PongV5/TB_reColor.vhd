--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:35:00 05/19/2013
-- Design Name:   
-- Module Name:   C:/XilinxWorkSpace/PongV5/TB_reColor.vhd
-- Project Name:  PongV5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: re_color
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
 
ENTITY TB_reColor IS
END TB_reColor;
 
ARCHITECTURE behavior OF TB_reColor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT re_color
    PORT(
         CLK_i : IN  std_logic;
         EN_i : IN  std_logic;
         PIXEL_i : IN  std_logic;
         H_SYNC_i : IN  std_logic;
         V_SYNC_i : IN  std_logic;
         NEW_COLOR_i : IN  std_logic_vector(7 downto 0);
         H_SYNC_o : OUT  std_logic;
         V_SYNC_o : OUT  std_logic;
         RED_o : OUT  std_logic_vector(2 downto 0);
         GREEN_o : OUT  std_logic_vector(2 downto 0);
         BLUE_o : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_i : std_logic := '0';
   signal EN_i : std_logic := '0';
   signal PIXEL_i : std_logic := '0';
   signal H_SYNC_i : std_logic := '0';
   signal V_SYNC_i : std_logic := '0';
   signal NEW_COLOR_i : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal H_SYNC_o : std_logic;
   signal V_SYNC_o : std_logic;
   signal RED_o : std_logic_vector(2 downto 0);
   signal GREEN_o : std_logic_vector(2 downto 0);
   signal BLUE_o : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_i_period : time := 40 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: re_color PORT MAP (
          CLK_i => CLK_i,
          EN_i => EN_i,
          PIXEL_i => PIXEL_i,
          H_SYNC_i => H_SYNC_i,
          V_SYNC_i => V_SYNC_i,
          NEW_COLOR_i => NEW_COLOR_i,
          H_SYNC_o => H_SYNC_o,
          V_SYNC_o => V_SYNC_o,
          RED_o => RED_o,
          GREEN_o => GREEN_o,
          BLUE_o => BLUE_o
        );

   -- Clock process definitions
   CLK_i_process :process
   begin
		CLK_i <= '0';
		wait for CLK_i_period/2;
		CLK_i <= '1';
		wait for CLK_i_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      EN_i <= '1';
		NEW_COLOR_i <= "11111111";
		wait for 100 ns;
		
		H_SYNC_i <= '1';
		V_SYNC_i <= '1';
		PIXEL_i 	<= '1';
      
      -- insert stimulus here 

      wait;
   end process;

END;
