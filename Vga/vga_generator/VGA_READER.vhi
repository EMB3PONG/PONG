
-- VHDL Instantiation Created from source file VGA_READER.vhd -- 22:27:51 02/27/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT VGA_READER
	PORT(          
		R_OUTPUT : OUT std_logic_vector(9 downto 0);
		G_OUTPUT : OUT std_logic_vector(9 downto 0);
		B_OUTPUT : OUT std_logic_vector(9 downto 0);
		H_OUTPUT : OUT std_logic;
		V_OUTPUT : OUT std_logic
		);
	END COMPONENT;

	Inst_VGA_READER: VGA_READER PORT MAP(
		R_OUTPUT => ,
		G_OUTPUT => ,
		B_OUTPUT => ,
		H_OUTPUT => ,
		V_OUTPUT => 
	);


