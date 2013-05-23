-------------------------------------------------------------------------------
-- mb_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity mb_stub is
  port (
    fpga_0_LEDs_8Bit_GPIO_IO_O_pin : out std_logic_vector(0 to 7);
    fpga_0_Push_Buttons_3Bit_GPIO_IO_I_pin : in std_logic_vector(0 to 3);
    fpga_0_Switches_8Bit_GPIO_IO_I_pin : in std_logic_vector(0 to 7);
    fpga_0_RS232_PORT_RX_pin : in std_logic;
    fpga_0_RS232_PORT_TX_pin : out std_logic;
    fpga_0_clk_1_sys_clk_pin : in std_logic;
    fpga_0_rst_1_sys_rst_pin : in std_logic;
    ball_color_o_GPIO_IO_O_pin : out std_logic_vector(0 to 7);
    chipscope_ila_0_DATA_pin : in std_logic_vector(9 downto 0);
    chipscope_ila_0_TRIG0_pin : in std_logic_vector(1 downto 0);
    chipscope_ila_0_TRIG_OUT_pin : out std_logic;
    BallPos_XY_GPIO_IO_I_pin : in std_logic_vector(0 to 19);
    BatPos_L_R_GPIO_IO_I_pin : in std_logic_vector(0 to 19)
  );
end mb_stub;

architecture STRUCTURE of mb_stub is

  component mb is
    port (
      fpga_0_LEDs_8Bit_GPIO_IO_O_pin : out std_logic_vector(0 to 7);
      fpga_0_Push_Buttons_3Bit_GPIO_IO_I_pin : in std_logic_vector(0 to 3);
      fpga_0_Switches_8Bit_GPIO_IO_I_pin : in std_logic_vector(0 to 7);
      fpga_0_RS232_PORT_RX_pin : in std_logic;
      fpga_0_RS232_PORT_TX_pin : out std_logic;
      fpga_0_clk_1_sys_clk_pin : in std_logic;
      fpga_0_rst_1_sys_rst_pin : in std_logic;
      ball_color_o_GPIO_IO_O_pin : out std_logic_vector(0 to 7);
      chipscope_ila_0_DATA_pin : in std_logic_vector(9 downto 0);
      chipscope_ila_0_TRIG0_pin : in std_logic_vector(1 downto 0);
      chipscope_ila_0_TRIG_OUT_pin : out std_logic;
      BallPos_XY_GPIO_IO_I_pin : in std_logic_vector(0 to 19);
      BatPos_L_R_GPIO_IO_I_pin : in std_logic_vector(0 to 19)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of mb : component is "user_black_box";

begin

  mb_i : mb
    port map (
      fpga_0_LEDs_8Bit_GPIO_IO_O_pin => fpga_0_LEDs_8Bit_GPIO_IO_O_pin,
      fpga_0_Push_Buttons_3Bit_GPIO_IO_I_pin => fpga_0_Push_Buttons_3Bit_GPIO_IO_I_pin,
      fpga_0_Switches_8Bit_GPIO_IO_I_pin => fpga_0_Switches_8Bit_GPIO_IO_I_pin,
      fpga_0_RS232_PORT_RX_pin => fpga_0_RS232_PORT_RX_pin,
      fpga_0_RS232_PORT_TX_pin => fpga_0_RS232_PORT_TX_pin,
      fpga_0_clk_1_sys_clk_pin => fpga_0_clk_1_sys_clk_pin,
      fpga_0_rst_1_sys_rst_pin => fpga_0_rst_1_sys_rst_pin,
      ball_color_o_GPIO_IO_O_pin => ball_color_o_GPIO_IO_O_pin,
      chipscope_ila_0_DATA_pin => chipscope_ila_0_DATA_pin,
      chipscope_ila_0_TRIG0_pin => chipscope_ila_0_TRIG0_pin,
      chipscope_ila_0_TRIG_OUT_pin => chipscope_ila_0_TRIG_OUT_pin,
      BallPos_XY_GPIO_IO_I_pin => BallPos_XY_GPIO_IO_I_pin,
      BatPos_L_R_GPIO_IO_I_pin => BatPos_L_R_GPIO_IO_I_pin
    );

end architecture STRUCTURE;

