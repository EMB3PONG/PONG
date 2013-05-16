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
			  ADC_1_I		: in  	STD_LOGIC_VECTOR (9 downto 0);
           ADC_2_I		: in  	STD_LOGIC_VECTOR (9 downto 0);
           ADC_3_I		: in  	STD_LOGIC_VECTOR (9 downto 0);
			  ADC_1_CLK_O	: out  	STD_LOGIC;
           ADC_2_CLK_O	: out  	STD_LOGIC;
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
			  BTN_I			: in  	STD_LOGIC_VECTOR (3 downto 0)
			  -- RS-232
			  --RSRX_I			: in  	STD_LOGIC;
			  --RSTX_O			: out  	STD_LOGIC
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
	-- Clock signals
	signal		clk_dcm_25M			:std_logic := '0';
	signal		clk_dcm_50M			:std_logic := '0';
	
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
	signal 		pointer_line		:std_logic_vector(9 downto 0) := (others => '0');
	signal 		pointer_pixel		:std_logic_vector(9 downto 0) := (others => '0');
		
	----------------------------------------------------------------
	
	COMPONENT dcm_1
	PORT(
		CLKIN_IN : IN std_logic;
		--RST_IN : IN std_logic;          
		CLKFX_OUT : OUT std_logic;
--		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic
--		LOCKED_OUT : OUT std_logic
		);
END COMPONENT;


begin

	Inst_dcm_1: dcm_1 PORT MAP(
		CLKIN_IN => CLK_50M_I,
		--RST_IN => ,
		--CLKFX_OUT => clk_dcm_100M,
		CLKFX_OUT => clk_dcm_25M,
--		CLKIN_IBUFG_OUT => ,
		CLK0_OUT => clk_dcm_50M
--		LOCKED_OUT => 
	);
	
	Inst_Filter_3x3: entity work.Filter_3x3
	PORT MAP(
		clk_i => clk_dcm_25M,
		pixel_i => adc_pixel,
		v_sync_i => adc_v_sync,
		h_sync_i => adc_h_sync,
		pixel_o => filter_pixel,
		pixel_nf_o => filter_pixel_nf,
		v_sync_o => filter_v_sync,
		h_sync_o => filter_h_sync
	);

	Ints_ADC_signal_sync: entity work.ADC_signal_sync
	PORT MAP(
		clk_i 		=> clk_dcm_25M,
		red_i 		=> ADC_1_I,
		green_i 		=> ADC_2_I,
		blue_i		=> ADC_3_I,
		v_sync_i 	=> VGA_VS_I,
		h_sync_i 	=> VGA_HS_I,
		ADC_clk_o 	=> adc_clk,
		pixel_o 		=> adc_pixel,
		v_sync_o 	=> adc_v_sync,
		h_sync_o 	=> adc_h_sync
	);
	
	Inst_pixel_pointer: entity work.pixel_pointer
	PORT MAP(
		clk_i => clk_dcm_25M,
		v_sync_i => filter_v_sync,
		h_sync_i => filter_h_sync,
		line_o => pointer_line,
		pixel_o => pointer_pixel
	);
		
-- ADC clock outputs
		ADC_1_CLK_O <= adc_clk;
		ADC_2_CLK_O <= adc_clk;
		ADC_3_CLK_O <= adc_clk;


-- ADC outputs
--		VGA_R_O <= "000" WHEN	adc_pixel = '0' ELSE
--              "111";
--		VGA_G_O <= "000" WHEN 	adc_pixel = '0' ELSE
--              "111";
--		VGA_B_O <= "00" WHEN 	adc_pixel = '0' ELSE
--              "11";		  
--				  
--		VGA_HS_O <= adc_h_sync;
--		VGA_VS_O <= adc_v_sync;
		
-- Filter outputs

--		VGA_R_O <= "000" WHEN	output = '0' ELSE
--              "111";
--		VGA_G_O <= "000" WHEN 	output = '0' ELSE
--              "111";
--		VGA_B_O <= "00" WHEN 	output = '0' ELSE
--              "11";	

-- Pointer outputs (finding the ball region) TODO: make into an output component!!!!
		VGA_R_O <= 	"000" 	WHEN	output = '0' ELSE
						"111";
				  
		VGA_G_O <= 	"000"		WHEN 	output = '0' ELSE
						"000"		WHEN	(pointer_pixel > "0001100000" AND pointer_pixel < "1010001110" AND SW_I(0) = '0') ELSE
						"111";
				  
		VGA_B_O <= 	"00" 		WHEN 	output = '0' ELSE
						--"00"		WHEN	(pointer_pixel > "0001100000" AND pointer_pixel < "1010001110" AND SW_I(0) = '0') ELSE
						"11";	
				  
	-- FIX THIS OUTPUT SELECTION PROCESS!!!!
	process(clk_dcm_25M) begin
		if rising_edge(clk_dcm_25M) then
			if SW_I(0) = '1' then
				output <= adc_pixel;
				VGA_HS_O <= adc_h_sync;
				VGA_VS_O <= adc_v_sync;
			else
				output <= filter_pixel;
				VGA_HS_O <= filter_h_sync;
				VGA_VS_O <= filter_v_sync;
			end if;
			
		end if;
	end process;
				  

		
-- connect buttons to LEDs
		LEDS_O <= BTN_I & BTN_I;
		
end Behavioral;

