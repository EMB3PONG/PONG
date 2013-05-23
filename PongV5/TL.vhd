----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:16 03/17/2013 
-- Design Name: 
-- Module Name:    TL - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TL is
    Port ( CLK_50M_I		: in  	STD_LOGIC;
           -- VGA In
			  --ADC_1_I		: in  	STD_LOGIC_VECTOR (9 downto 0);
           --ADC_2_I		: in  	STD_LOGIC_VECTOR (9 downto 0);
           ADC_3_I		: in  	STD_LOGIC;
			  --ADC_1_CLK_O	: out  	STD_LOGIC;
           --ADC_2_CLK_O	: out  	STD_LOGIC;
           ADC_3_CLK_O	: out  	STD_LOGIC;
			  VGA_VS_I		: in  	STD_LOGIC;
			  VGA_HS_I		: in  	STD_LOGIC;
			  -- VGA Out
			  VGA_R_O		: out		STD_LOGIC_VECTOR(2 downto 0);
			  VGA_G_O		: out		STD_LOGIC_VECTOR(2 downto 0);
			  VGA_B_O		: out		STD_LOGIC_VECTOR(1 downto 0);
			  VGA_VS_O		: out  	STD_LOGIC;
			  VGA_HS_O		: out  	STD_LOGIC;
			  -- LESs
			  LEDS_O			: out  	STD_LOGIC_VECTOR (7 downto 0);
			  -- Switches
			  SW_I			: in  	STD_LOGIC_VECTOR (7 downto 0);
			  -- Buttons in			  
			  BTN_I			: in  	STD_LOGIC_VECTOR (3 downto 0);
			  -- RS-232
			  RSRX_I			: in  	STD_LOGIC;
			  RSTX_O			: out  	STD_LOGIC
			  -- PS/2 connector
--			  PS2C_IO		: inout	STD_LOGIC;
--			  PS2D_IO		: inout	STD_LOGIC
			  );
end TL;

architecture Behavioral of TL is

	----------------------------------------------------------------
	-- constant declarations
	----------------------------------------------------------------
	constant SYNC_DELAY 	: integer := 5;
	constant C_DATA_CNT 	: integer := 8;
	----------------------------------------------------------------
	
	----------------------------------------------------------------
	-- type declarations
	----------------------------------------------------------------
	type slav_array_type is array(integer range <>) of unsigned(9 downto 0);
	----------------------------------------------------------------

	----------------------------------------------------------------
	-- signal declarations
	----------------------------------------------------------------
	-- dmc output signals
	signal		clk_dcm_25M			:std_logic := '0';
	signal		clk_dcm_50M			:std_logic := '0';
	signal		dcm_lock				:std_logic := '0';
	
	--signal		v_sync_o_r			:std_logic := '0';
	--signal		h_sync_o_r			:std_logic := '0';
	
	-- ADC signals
	signal		adc_clk				:std_logic := '0';
	signal		adc_pixel			:std_logic := '0';
	signal		adc_v_sync			:std_logic := '0';
	signal		adc_h_sync			:std_logic := '0';
	
	-- Filter signals
	signal		filter_pixel		:std_logic := '0';
	signal		filter_pixel_nf	:std_logic := '0';
	signal		filter_v_sync		:std_logic := '0';
	signal		filter_h_sync		:std_logic := '0';
	
--	signal		filter2_pixel		:std_logic := '0';
--	signal		filter2_v_sync		:std_logic := '0';
--	signal		filter2_h_sync		:std_logic := '0';

	-- Other signals
	signal 		output				:std_logic := '0';
	
	-- pixel pointer
	signal 		pointer_line		:std_logic_vector(9 downto 0) 	:= (others => '0');
	signal 		pointer_pixel		:std_logic_vector(9 downto 0) 	:= (others => '0');
	
	-- ChipScope
	signal		CONTROL				:std_logic_vector(35 downto 0)	:= (others => '0');
	signal		CLK 					:std_logic := '0';
	signal		DATA 					:std_logic_vector(9 DOWNTO 0)		:= (others => '0');
	signal		TRIG0 				:std_logic_vector(7 DOWNTO 0)		:= (others => '0');
	
	-- mb outputs
	signal		ball_color_mb_o	:std_logic_vector(7 DOWNTO 0)		:= (others => '0');
	
	-- mb inputs
	signal		mb_ballPos_XY_i	:std_logic_vector(19 downto 0)	:= (others => '0');
	signal		mb_BatPos_L_R_i	:std_logic_vector(19 downto 0)	:= (others => '0');
	
	-- Detector
	signal det_bat_left_y :STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
	signal det_bat_right_y :STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
	signal det_ball_x :STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
	signal det_ball_y :STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
		
	----------------------------------------------------------------
	
	COMPONENT dcm
	PORT(
		CLKIN_IN : IN std_logic;
		--RST_IN : IN std_logic;          
		CLKFX_OUT : OUT std_logic;
		--CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic;
		LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;
	
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

begin

Inst_mb: mb PORT MAP(
		fpga_0_LEDs_8Bit_GPIO_IO_O_pin => LEDS_O,
		fpga_0_Push_Buttons_3Bit_GPIO_IO_I_pin => BTN_I,
		fpga_0_Switches_8Bit_GPIO_IO_I_pin => SW_I,
		fpga_0_RS232_PORT_RX_pin => RSRX_I,
		fpga_0_RS232_PORT_TX_pin => RSTX_O,
		fpga_0_clk_1_sys_clk_pin => clk_dcm_50M,
		fpga_0_rst_1_sys_rst_pin => not dcm_lock,
		ball_color_o_GPIO_IO_O_pin => ball_color_mb_o,
		chipscope_ila_0_DATA_pin => "0000000000",
		chipscope_ila_0_TRIG0_pin => "00",
		chipscope_ila_0_TRIG_OUT_pin => open,
		BallPos_XY_GPIO_IO_I_pin => "00000111110010011011",
		BatPos_L_R_GPIO_IO_I_pin => "00100110110000011111"
	);

	
	Inst_dcm: dcm PORT MAP(
		CLKIN_IN => CLK_50M_I,
		--RST_IN => ,
		--CLKFX_OUT => clk_dcm_100M,
		CLKFX_OUT => clk_dcm_25M,
		--CLKIN_IBUFG_OUT => ,
		CLK0_OUT => clk_dcm_50M,
		LOCKED_OUT => dcm_lock
	);

	Ints_ADC_signal_sync: entity work.ADC_signal_sync
	PORT MAP(
		clk_i 		=> clk_dcm_25M,
		blue_i		=> ADC_3_I,
		v_sync_i 	=> VGA_VS_I,
		h_sync_i 	=> VGA_HS_I,
		ADC_clk_o 	=> adc_clk,
		pixel_o 		=> adc_pixel,
		v_sync_o 	=> adc_v_sync,
		h_sync_o 	=> adc_h_sync
	);
		
			
	Inst_Filter_3x3: entity work.Filter_3x3
	PORT MAP(
		clk_i => clk_dcm_25M,
		EN_i	=> SW_I(6),
		pixel_i => adc_pixel,
		v_sync_i => adc_v_sync,
		h_sync_i => adc_h_sync,
		pixel_o => filter_pixel,
		pixel_nf_o => filter_pixel_nf,
		v_sync_o => filter_v_sync,
		h_sync_o => filter_h_sync
	);
	
	Inst_detector: entity work.detector PORT MAP(
		CLK_25M_I => clk_dcm_25M,
		V_SYNC_i => filter_v_sync,
		H_SYNC_i => filter_h_sync,
		blue => filter_pixel,
		bat_left_y => det_bat_left_y,
		bat_right_y => det_bat_right_y,
		ball_x => det_ball_x,
		ball_y => det_ball_y
	);
	
-- ADC clock outputs
		--ADC_1_CLK_O <= clk_dcm_25M;
		--ADC_2_CLK_O <= clk_dcm_25M;
		ADC_3_CLK_O <= clk_dcm_25M;
				  
Inst_re_color: entity work.re_color
	PORT MAP(
		CLK_i => clk_dcm_25M,
		EN_i => SW_I(7),
		PIXEL_i => filter_pixel,
		H_SYNC_i => filter_h_sync,
		V_SYNC_i => filter_v_sync,
		NEW_COLOR_i => ball_color_mb_o,
		H_SYNC_o => VGA_HS_O,
		V_SYNC_o => VGA_VS_O,
		RED_o => VGA_R_O,
		GREEN_o => VGA_G_O,
		BLUE_o => VGA_B_O
	);
	
--		 Output directly from ADC
--		VGA_HS_O <= filter_h_sync;
--		VGA_VS_O <= filter_v_sync;
--
--		VGA_R_O <= 	"000" 	WHEN	filter_pixel = '0' ELSE
--						"111";
--				  
--		VGA_G_O <= 	"000"		WHEN 	filter_pixel = '0' ELSE
--						"111";
--				  
--		VGA_B_O <= 	"00" 		WHEN 	filter_pixel = '0' ELSE
--						"11";	
	
-- connect buttons to LEDs
		--LEDS_O <= BTN_I & BTN_I;
		
	mb_BatPos_L_R_i <= "00000111110010011011" when SW_I(4) = '0' ELSE
							det_bat_left_y & det_bat_right_y;
	
	
	mb_ballPos_XY_i <= "00100110110000011111" when SW_I(4) = '0' ELSE
							det_ball_x & det_ball_y;
		
end Behavioral;

