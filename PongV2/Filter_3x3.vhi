
-- VHDL Instantiation Created from source file Filter_3x3.vhd -- 10:53:37 05/02/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Filter_3x3
	PORT(
		clk_25M_i : IN std_logic;
		pixel_i : IN std_logic;
		v_sync_i : IN std_logic;
		h_sync_i : IN std_logic;          
		pixel_o : OUT std_logic;
		v_sync_o : OUT std_logic;
		h_sync_o : OUT std_logic
		);
	END COMPONENT;

	Inst_Filter_3x3: Filter_3x3 PORT MAP(
		clk_25M_i => ,
		pixel_i => ,
		v_sync_i => ,
		h_sync_i => ,
		pixel_o => ,
		v_sync_o => ,
		h_sync_o => 
	);


