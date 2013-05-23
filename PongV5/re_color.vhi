
-- VHDL Instantiation Created from source file re_color.vhd -- 14:24:22 05/19/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT re_color
	PORT(
		CLK_i : IN std_logic;
		EN_i : IN std_logic;
		PIXEL_i : IN std_logic;
		H_SYNC_i : IN std_logic;
		V_SYNC_i : IN std_logic;
		NEW_COLOR_i : IN std_logic_vector(7 downto 0);          
		H_SYNC_o : OUT std_logic;
		V_SYNC_o : OUT std_logic;
		RED_o : OUT std_logic_vector(2 downto 0);
		GREEN_o : OUT std_logic_vector(2 downto 0);
		BLUE_o : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_re_color: re_color PORT MAP(
		CLK_i => ,
		EN_i => ,
		PIXEL_i => ,
		H_SYNC_i => ,
		V_SYNC_i => ,
		NEW_COLOR_i => ,
		H_SYNC_o => ,
		V_SYNC_o => ,
		RED_o => ,
		GREEN_o => ,
		BLUE_o => 
	);


