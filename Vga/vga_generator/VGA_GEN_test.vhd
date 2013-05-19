-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
		COMPONENT VGA_1
		PORT(
			clk_i : IN std_logic;          
			R_OUTPUT : OUT std_logic;
			G_OUTPUT : OUT std_logic;
			B_OUTPUT : OUT std_logic;
			H_OUTPUT : OUT std_logic;
			V_OUTPUT : OUT std_logic
			);
		END COMPONENT;

          SIGNAL <signal1> :  std_logic;
          SIGNAL <signal2> :  std_logic_vector(3 downto 0);
          

  BEGIN

  -- Component Instantiation
     uut: VGA_1 PORT MAP(
		clk_i => ,
		R_OUTPUT => ,
		G_OUTPUT => ,
		B_OUTPUT => ,
		H_OUTPUT => ,
		V_OUTPUT => 
	);


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        wait for 100 ns; -- wait until global set/reset completes

        -- Add user defined stimulus here

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
