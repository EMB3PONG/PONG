
-- VHDL Instantiation Created from source file mb.vhd -- 14:22:15 05/23/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT mb
	PORT(
		fpga_0_Push_Buttons_3Bit_GPIO_IO_I_pin : IN std_logic_vector(0 to 3);
		fpga_0_Switches_8Bit_GPIO_IO_I_pin : IN std_logic_vector(0 to 7);
		fpga_0_RS232_PORT_RX_pin : IN std_logic;
		fpga_0_clk_1_sys_clk_pin : IN std_logic;
		fpga_0_rst_1_sys_rst_pin : IN std_logic;
		chipscope_ila_0_DATA_pin : IN std_logic_vector(9 downto 0);
		chipscope_ila_0_TRIG0_pin : IN std_logic_vector(1 downto 0);
		BallPos_XY_GPIO_IO_I_pin : IN std_logic_vector(0 to 19);
		BatPos_L_R_GPIO_IO_I_pin : IN std_logic_vector(0 to 19);          
		fpga_0_LEDs_8Bit_GPIO_IO_O_pin : OUT std_logic_vector(0 to 7);
		fpga_0_RS232_PORT_TX_pin : OUT std_logic;
		ball_color_o_GPIO_IO_O_pin : OUT std_logic_vector(0 to 7);
		chipscope_ila_0_TRIG_OUT_pin : OUT std_logic
		);
	END COMPONENT;

attribute box_type : string;
attribute box_type of mb : component is "user_black_box";


	Inst_mb: mb PORT MAP(
		fpga_0_LEDs_8Bit_GPIO_IO_O_pin => ,
		fpga_0_Push_Buttons_3Bit_GPIO_IO_I_pin => ,
		fpga_0_Switches_8Bit_GPIO_IO_I_pin => ,
		fpga_0_RS232_PORT_RX_pin => ,
		fpga_0_RS232_PORT_TX_pin => ,
		fpga_0_clk_1_sys_clk_pin => ,
		fpga_0_rst_1_sys_rst_pin => ,
		ball_color_o_GPIO_IO_O_pin => ,
		chipscope_ila_0_DATA_pin => ,
		chipscope_ila_0_TRIG0_pin => ,
		chipscope_ila_0_TRIG_OUT_pin => ,
		BallPos_XY_GPIO_IO_I_pin => ,
		BatPos_L_R_GPIO_IO_I_pin => 
	);



