-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- signal Declaration
          signal R_OUT	:  unsigned(9 downto 0);
			 signal G_OUT	:  unsigned(9 downto 0);
			 signal B_OUT	:  unsigned(9 downto 0);
			 signal H_OUT	:  std_logic;
			 signal V_OUT	:	std_logic;
			 
			 
			 signal clk		:	std_logic := '0';
			 signal line 	:  std_logic_vector(9 downto 0) := (others => '0');
			 signal pixel 	:  std_logic_vector(9 downto 0) := (others => '0');

  BEGIN

  -- Component Instantiation
   uutstim: entity work.VGA_READER PORT MAP(
		R_OUTPUT => R_OUT,
		G_OUTPUT => G_OUT,
		B_OUTPUT => B_OUT,
		H_OUTPUT => H_OUT,
		V_OUTPUT => V_OUT
	);
	
	uut: entity work.detector PORT MAP(
		CLK_25M_I => clk,
		blue => B_OUT(7),
		line_i => line,
		pixel_i => pixel,
		bat_left_y => OPEN,
		bat_right_y => OPEN,
		ball_x => OPEN,
		ball_y => OPEN 
	);
	
	uuut: entity work.pixel_pointer PORT MAP(
		clk_i => clk ,
		v_sync_i => V_OUT,
		h_sync_i => H_OUT,
		line_o => line ,
		pixel_o => pixel
	);

  --  Test Bench Statements
     tb : PROCESS
     BEGIN

		  clk <= '1';
        wait for 20 ns; -- wait until global set/reset completes
		  clk <= '0';
		  wait for 20 ns;

        -- Add user defined stimulus here

        --wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
