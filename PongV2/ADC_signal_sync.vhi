
-- VHDL Instantiation Created from source file ADC_signal_sync.vhd -- 11:39:23 05/02/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ADC_signal_sync
	PORT(
		clk_i : IN std_logic;
		red_i : IN std_logic_vector(9 downto 0);
		green_i : IN std_logic_vector(9 downto 0);
		blue_i : IN std_logic_vector(9 downto 0);
		v_sync_i : IN std_logic;
		h_sync_i : IN std_logic;          
		ADC_clk_o : OUT std_logic;
		pixel_o : OUT std_logic;
		v_sync_o : OUT std_logic;
		h_sync_o : OUT std_logic
		);
	END COMPONENT;

	Inst_ADC_signal_sync: ADC_signal_sync PORT MAP(
		clk_i => ,
		red_i => ,
		green_i => ,
		blue_i => ,
		v_sync_i => ,
		h_sync_i => ,
		ADC_clk_o => ,
		pixel_o => ,
		v_sync_o => ,
		h_sync_o => 
	);


