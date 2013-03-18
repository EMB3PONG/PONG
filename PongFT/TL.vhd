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
			  LEDS_O			: out  	STD_LOGIC_VECTOR (3 downto 0);
			  -- Switches
			  SW_I			: in  	STD_LOGIC_VECTOR (3 downto 0);
			  -- Buttons in			  
			  BTN_I			: in  	STD_LOGIC_VECTOR (3 downto 0)
			  -- RS-232
			  --RSRX_I			: in  	STD_LOGIC;
			  --RSTX_O			: out  	STD_LOGIC;
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
	constant C_DATA_CNT 	: integer := 4;
	----------------------------------------------------------------
	
	----------------------------------------------------------------
	-- type declarations
	----------------------------------------------------------------
	type slav_array_type is array(integer range <>) of unsigned(9 downto 0);
	----------------------------------------------------------------

	----------------------------------------------------------------
	-- signal declarations
	----------------------------------------------------------------
	signal 		Red	: slav_array_type(0 to C_DATA_CNT-1) := (others=>(others=>'0'));
	signal 		Green	: slav_array_type(0 to C_DATA_CNT-1) := (others=>(others=>'0'));
	signal 		Blue	: slav_array_type(0 to C_DATA_CNT-1) := (others=>(others=>'0'));

	signal 		Red_sum	:std_logic_vector(2 downto 0) := (others => '0');
	signal 		Gre_sum	:std_logic_vector(2 downto 0) := (others => '0');
	signal 		Blu_sum	:std_logic_vector(2 downto 0) := (others => '0');
	
	signal		cnt_r		:unsigned(2 downto 0) := (others => '0');
	signal		cnt_next	:unsigned(2 downto 0) := (others => '0');
	
	signal		shift_r_v_sync	:std_logic_vector(SYNC_DELAY-1 downto 0) := (others => '0');
	signal		shift_r_h_sync	:std_logic_vector(SYNC_DELAY-1 downto 0) := (others => '0');
	
	signal		vga_1_o_r	:std_logic_vector(2 downto 0) := (others => '0');
	signal		vga_2_o_r	:std_logic_vector(2 downto 0) := (others => '0');
	signal		vga_3_o_r	:std_logic_vector(1 downto 0) := (others => '0');
	
	----------------------------------------------------------------
	
begin

	process(CLK_50M_I)
		begin
			if rising_edge(CLK_50M_I) then
				-- defaults
				cnt_r <= cnt_next;
				vga_1_o_r <= vga_1_o_r;
				vga_2_o_r <= vga_2_o_r;
				vga_3_o_r <= vga_3_o_r;
				
				-- shift delay for sync signals
				shift_r_v_sync <= shift_r_v_sync(SYNC_DELAY-2 downto 0) & VGA_VS_I;
				shift_r_h_sync <= shift_r_h_sync(SYNC_DELAY-2 downto 0) & VGA_HS_I;
				
				-- reset
				--if(reset_i = '1') then
					--cnt_r <= (others => '0');
				if((cnt_r(0) = '1') OR (SW_I(3) = '1')) then
					vga_1_o_r <= ADC_1_I(9 downto 7);
					vga_2_o_r <= ADC_2_I(9 downto 7);
					vga_3_o_r <= ADC_3_I(9 downto 8);
					
					-- new code
					Red(0) <= unsigned(ADC_1_I);
					Green(0) <= unsigned(ADC_2_I);
					Blue(0) <= unsigned(ADC_3_I);
					
					for i in 1 to C_DATA_CNT-1 loop				
						Red(i)	<= Red(i-1);
						Green(i)	<= Green(i-1);
						Blue(i)	<= Blue(i-1);
					end loop;
					
					Red_sum <= Red_sum + Red(0) - Red(C_DATA_CNT-1);
					Green_sum <= Green_sum + Green(0) - Green(C_DATA_CNT-1);
					Blue_sum <= Blue_sum + Blue(0) - Blue(C_DATA_CNT-1);
					
				end if;
			end if;
		end process;
		
		-- Cuncurrent logic
		cnt_next <= cnt_r + 1;
		
		-- Output logic
		VGA_VS_O <= shift_r_v_sync(SYNC_DELAY-1);
		VGA_HS_O <= shift_r_h_sync(SYNC_DELAY-1);
		--VGA_R_O <= vga_1_o_r;
		--VGA_G_O <= vga_2_o_r;
		--VGA_B_O <= vga_3_o_r;
		VGA_R_O <= vga_1_o_r WHEN SW_I(0) = '0' ELSE
              "000";
		VGA_G_O <= vga_2_o_r WHEN SW_I(1) = '0' ELSE
              "000";
		VGA_B_O <= vga_3_o_r WHEN SW_I(2) = '0' ELSE
              "00";
		
		LEDS_O <= BTN_I;
		
		
		-- ADC clocks: TODO: change the clocking!!!
		ADC_1_CLK_O <= CLK_50M_I;
		ADC_2_CLK_O <= CLK_50M_I;
		ADC_3_CLK_O <= CLK_50M_I;
		
		--LEDS_O <= std_logic_vector(cnt_r(25 downto 18));



end Behavioral;

