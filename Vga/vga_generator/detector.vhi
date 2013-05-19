
-- VHDL Instantiation Created from source file detector.vhd -- 15:19:27 05/19/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT detector
	PORT(
		CLK_25M_I : IN std_logic;
		blue : IN std_logic;
		line_i : IN std_logic_vector(9 downto 0);
		pixel_i : IN std_logic_vector(9 downto 0);          
		bat_left_y : OUT std_logic_vector(9 downto 0);
		bat_right_y : OUT std_logic_vector(9 downto 0);
		ball_x : OUT std_logic_vector(9 downto 0);
		ball_y : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;

	Inst_detector: detector PORT MAP(
		CLK_25M_I => ,
		blue => ,
		line_i => ,
		pixel_i => ,
		bat_left_y => ,
		bat_right_y => ,
		ball_x => ,
		ball_y => 
	);


