----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:24:49 05/19/2013 
-- Design Name: 
-- Module Name:    re_color - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity re_color is
    Port ( CLK_i 			: in  STD_LOGIC;
			  EN_i 			: in  STD_LOGIC;
           -- Inputs
			  PIXEL_i 		: in  STD_LOGIC;
           H_SYNC_i 		: in  STD_LOGIC;
           V_SYNC_i 		: in  STD_LOGIC;
			  NEW_COLOR_i	: in STD_LOGIC_Vector(7 downto 0);
           -- Outputs
			  --PIXEL_o 		: out  STD_LOGIC;
           H_SYNC_o 		: out  STD_LOGIC;
           V_SYNC_o 		: out  STD_LOGIC;
			  RED_o 			: out STD_LOGIC_Vector(2 downto 0);
			  GREEN_o 		: out STD_LOGIC_Vector(2 downto 0);
			  BLUE_o 		: out STD_LOGIC_Vector(1 downto 0)
			  );
end re_color;

architecture Behavioral of re_color is
	-- Constants
	constant	ball_region_l	: std_logic_vector(9 downto 0) := "0001010111" ; --"0001100000":
	constant	ball_region_r	: std_logic_vector(9 downto 0) := "1010000101"; --1010001110
	
	-- Signals
	signal 		pointer_line		:std_logic_vector(9 downto 0) 	:= (others => '0');
	signal 		pointer_pixel		:std_logic_vector(9 downto 0) 	:= (others => '0');
	
	signal 		v_sync				:std_logic 								:= '0';
	signal 		h_sync				:std_logic 								:= '0';

begin

	Inst_pixel_pointer: entity work.pixel_pointer
	PORT MAP(
		clk_i => CLK_i,
		v_sync_i => V_SYNC_i,
		h_sync_i => H_SYNC_i,
		v_sync_o => v_sync,
      h_sync_o => h_sync,
		line_o => pointer_line,
		pixel_o => pointer_pixel
	);
	
	-- Concurrent output, color channels and sync signals
	RED_o <= 	"000"								WHEN 	PIXEL_i = '0' ELSE
					NEW_COLOR_i(7 downto 5)		WHEN	(pointer_pixel > ball_region_l AND
																pointer_pixel < ball_region_r AND
																EN_i = '1') ELSE
					"111";
	
	GREEN_o <= 	"000"								WHEN 	PIXEL_i = '0' ELSE
					NEW_COLOR_i(4 downto 2)		WHEN	(pointer_pixel > ball_region_l AND
																pointer_pixel < ball_region_r AND
																EN_i = '1') ELSE
					"111";
	
	BLUE_o <= 	"00"								WHEN 	PIXEL_i = '0' ELSE
					NEW_COLOR_i(1 downto 0)		WHEN	(pointer_pixel > ball_region_l AND
																pointer_pixel < ball_region_r AND
																EN_i = '1') ELSE
					"11";

	V_SYNC_o <= v_sync;
	H_SYNC_o <= h_sync;
	
end Behavioral;

