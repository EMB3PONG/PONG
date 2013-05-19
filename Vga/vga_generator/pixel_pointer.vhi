
-- VHDL Instantiation Created from source file pixel_pointer.vhd -- 15:20:40 05/19/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT pixel_pointer
	PORT(
		clk_i : IN std_logic;
		v_sync_i : IN std_logic;
		h_sync_i : IN std_logic;          
		line_o : OUT std_logic_vector(9 downto 0);
		pixel_o : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;

	Inst_pixel_pointer: pixel_pointer PORT MAP(
		clk_i => ,
		v_sync_i => ,
		h_sync_i => ,
		line_o => ,
		pixel_o => 
	);


