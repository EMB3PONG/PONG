--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: TL_synthesis.vhd
-- /___/   /\     Timestamp: Sun Mar 17 22:59:58 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm TL -w -dir netgen/synthesis -ofmt vhdl -sim TL.ngc TL_synthesis.vhd 
-- Device	: xc3s500e-5-fg320
-- Input file	: TL.ngc
-- Output file	: C:\XilinxWorkSpace\PongFT\netgen\synthesis\TL_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: TL
-- Xilinx	: C:\Xilinx\14.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity TL is
  port (
    PS2D_IO : inout STD_LOGIC; 
    PS2C_IO : inout STD_LOGIC; 
    RSTX_O : out STD_LOGIC; 
    CLK_50M_I : in STD_LOGIC := 'X'; 
    ADC_3_CLK_O : out STD_LOGIC; 
    ADC_2_CLK_O : out STD_LOGIC; 
    VGA_HS_I : in STD_LOGIC := 'X'; 
    ADC_1_CLK_O : out STD_LOGIC; 
    VGA_HS_O : out STD_LOGIC; 
    VGA_VS_I : in STD_LOGIC := 'X'; 
    VGA_VS_O : out STD_LOGIC; 
    RSRX_I : in STD_LOGIC := 'X'; 
    VGA_G_O : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    VGA_B_O : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    VGA_R_O : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    LEDS_O : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    ADC_1_I : in STD_LOGIC_VECTOR ( 9 downto 0 ); 
    BTN_I : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    ADC_2_I : in STD_LOGIC_VECTOR ( 9 downto 0 ); 
    ADC_3_I : in STD_LOGIC_VECTOR ( 9 downto 0 ); 
    SW_I : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end TL;

architecture Structure of TL is
  signal ADC_1_CLK_O_OBUF_1 : STD_LOGIC; 
  signal ADC_1_CLK_O_OBUF1 : STD_LOGIC; 
  signal ADC_1_I_7_IBUF_6 : STD_LOGIC; 
  signal ADC_1_I_8_IBUF_7 : STD_LOGIC; 
  signal ADC_1_I_9_IBUF_8 : STD_LOGIC; 
  signal ADC_2_I_7_IBUF_13 : STD_LOGIC; 
  signal ADC_2_I_8_IBUF_14 : STD_LOGIC; 
  signal ADC_2_I_9_IBUF_15 : STD_LOGIC; 
  signal ADC_3_I_7_IBUF_20 : STD_LOGIC; 
  signal ADC_3_I_8_IBUF_21 : STD_LOGIC; 
  signal ADC_3_I_9_IBUF_22 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_10_rt_34 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_11_rt_36 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_12_rt_38 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_13_rt_40 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_14_rt_42 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_15_rt_44 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_16_rt_46 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_17_rt_48 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_18_rt_50 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_19_rt_52 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_1_rt_54 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_20_rt_56 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_21_rt_58 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_22_rt_60 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_23_rt_62 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_24_rt_64 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_2_rt_66 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_3_rt_68 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_4_rt_70 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_5_rt_72 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_6_rt_74 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_7_rt_76 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_8_rt_78 : STD_LOGIC; 
  signal Mcount_cnt_r_cy_9_rt_80 : STD_LOGIC; 
  signal Mcount_cnt_r_xor_25_rt_82 : STD_LOGIC; 
  signal Mshreg_shift_r_h_sync_4_83 : STD_LOGIC; 
  signal Mshreg_shift_r_v_sync_4_84 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal VGA_HS_I_IBUF_120 : STD_LOGIC; 
  signal VGA_VS_I_IBUF_126 : STD_LOGIC; 
  signal Mcount_cnt_r_cy : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal Mcount_cnt_r_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal cnt_r : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal shift_r_h_sync : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal shift_r_v_sync : STD_LOGIC_VECTOR ( 4 downto 4 ); 
  signal vga_1_o_r : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal vga_2_o_r : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal vga_3_o_r : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  vga_1_o_r_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      CE => cnt_r(0),
      D => ADC_1_I_7_IBUF_6,
      Q => vga_1_o_r(0)
    );
  vga_1_o_r_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      CE => cnt_r(0),
      D => ADC_1_I_8_IBUF_7,
      Q => vga_1_o_r(1)
    );
  vga_1_o_r_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      CE => cnt_r(0),
      D => ADC_1_I_9_IBUF_8,
      Q => vga_1_o_r(2)
    );
  vga_2_o_r_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      CE => cnt_r(0),
      D => ADC_2_I_7_IBUF_13,
      Q => vga_2_o_r(0)
    );
  vga_2_o_r_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      CE => cnt_r(0),
      D => ADC_2_I_8_IBUF_14,
      Q => vga_2_o_r(1)
    );
  vga_2_o_r_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      CE => cnt_r(0),
      D => ADC_2_I_9_IBUF_15,
      Q => vga_2_o_r(2)
    );
  vga_3_o_r_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      CE => cnt_r(0),
      D => ADC_3_I_7_IBUF_20,
      Q => vga_3_o_r(0)
    );
  vga_3_o_r_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      CE => cnt_r(0),
      D => ADC_3_I_8_IBUF_21,
      Q => vga_3_o_r(1)
    );
  vga_3_o_r_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      CE => cnt_r(0),
      D => ADC_3_I_9_IBUF_22,
      Q => vga_3_o_r(2)
    );
  cnt_r_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(0),
      Q => cnt_r(0)
    );
  cnt_r_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(1),
      Q => cnt_r(1)
    );
  cnt_r_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(2),
      Q => cnt_r(2)
    );
  cnt_r_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(3),
      Q => cnt_r(3)
    );
  cnt_r_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(4),
      Q => cnt_r(4)
    );
  cnt_r_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(5),
      Q => cnt_r(5)
    );
  cnt_r_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(6),
      Q => cnt_r(6)
    );
  cnt_r_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(7),
      Q => cnt_r(7)
    );
  cnt_r_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(8),
      Q => cnt_r(8)
    );
  cnt_r_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(9),
      Q => cnt_r(9)
    );
  cnt_r_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(10),
      Q => cnt_r(10)
    );
  cnt_r_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(11),
      Q => cnt_r(11)
    );
  cnt_r_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(12),
      Q => cnt_r(12)
    );
  cnt_r_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(13),
      Q => cnt_r(13)
    );
  cnt_r_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(14),
      Q => cnt_r(14)
    );
  cnt_r_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(15),
      Q => cnt_r(15)
    );
  cnt_r_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(16),
      Q => cnt_r(16)
    );
  cnt_r_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(17),
      Q => cnt_r(17)
    );
  cnt_r_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(18),
      Q => cnt_r(18)
    );
  cnt_r_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(19),
      Q => cnt_r(19)
    );
  cnt_r_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(20),
      Q => cnt_r(20)
    );
  cnt_r_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(21),
      Q => cnt_r(21)
    );
  cnt_r_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(22),
      Q => cnt_r(22)
    );
  cnt_r_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(23),
      Q => cnt_r(23)
    );
  cnt_r_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(24),
      Q => cnt_r(24)
    );
  cnt_r_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Result(25),
      Q => cnt_r(25)
    );
  Mcount_cnt_r_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_cnt_r_lut(0),
      O => Mcount_cnt_r_cy(0)
    );
  Mcount_cnt_r_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_cnt_r_lut(0),
      O => Result(0)
    );
  Mcount_cnt_r_cy_1_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(0),
      DI => N0,
      S => Mcount_cnt_r_cy_1_rt_54,
      O => Mcount_cnt_r_cy(1)
    );
  Mcount_cnt_r_xor_1_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(0),
      LI => Mcount_cnt_r_cy_1_rt_54,
      O => Result(1)
    );
  Mcount_cnt_r_cy_2_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(1),
      DI => N0,
      S => Mcount_cnt_r_cy_2_rt_66,
      O => Mcount_cnt_r_cy(2)
    );
  Mcount_cnt_r_xor_2_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(1),
      LI => Mcount_cnt_r_cy_2_rt_66,
      O => Result(2)
    );
  Mcount_cnt_r_cy_3_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(2),
      DI => N0,
      S => Mcount_cnt_r_cy_3_rt_68,
      O => Mcount_cnt_r_cy(3)
    );
  Mcount_cnt_r_xor_3_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(2),
      LI => Mcount_cnt_r_cy_3_rt_68,
      O => Result(3)
    );
  Mcount_cnt_r_cy_4_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(3),
      DI => N0,
      S => Mcount_cnt_r_cy_4_rt_70,
      O => Mcount_cnt_r_cy(4)
    );
  Mcount_cnt_r_xor_4_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(3),
      LI => Mcount_cnt_r_cy_4_rt_70,
      O => Result(4)
    );
  Mcount_cnt_r_cy_5_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(4),
      DI => N0,
      S => Mcount_cnt_r_cy_5_rt_72,
      O => Mcount_cnt_r_cy(5)
    );
  Mcount_cnt_r_xor_5_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(4),
      LI => Mcount_cnt_r_cy_5_rt_72,
      O => Result(5)
    );
  Mcount_cnt_r_cy_6_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(5),
      DI => N0,
      S => Mcount_cnt_r_cy_6_rt_74,
      O => Mcount_cnt_r_cy(6)
    );
  Mcount_cnt_r_xor_6_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(5),
      LI => Mcount_cnt_r_cy_6_rt_74,
      O => Result(6)
    );
  Mcount_cnt_r_cy_7_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(6),
      DI => N0,
      S => Mcount_cnt_r_cy_7_rt_76,
      O => Mcount_cnt_r_cy(7)
    );
  Mcount_cnt_r_xor_7_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(6),
      LI => Mcount_cnt_r_cy_7_rt_76,
      O => Result(7)
    );
  Mcount_cnt_r_cy_8_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(7),
      DI => N0,
      S => Mcount_cnt_r_cy_8_rt_78,
      O => Mcount_cnt_r_cy(8)
    );
  Mcount_cnt_r_xor_8_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(7),
      LI => Mcount_cnt_r_cy_8_rt_78,
      O => Result(8)
    );
  Mcount_cnt_r_cy_9_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(8),
      DI => N0,
      S => Mcount_cnt_r_cy_9_rt_80,
      O => Mcount_cnt_r_cy(9)
    );
  Mcount_cnt_r_xor_9_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(8),
      LI => Mcount_cnt_r_cy_9_rt_80,
      O => Result(9)
    );
  Mcount_cnt_r_cy_10_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(9),
      DI => N0,
      S => Mcount_cnt_r_cy_10_rt_34,
      O => Mcount_cnt_r_cy(10)
    );
  Mcount_cnt_r_xor_10_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(9),
      LI => Mcount_cnt_r_cy_10_rt_34,
      O => Result(10)
    );
  Mcount_cnt_r_cy_11_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(10),
      DI => N0,
      S => Mcount_cnt_r_cy_11_rt_36,
      O => Mcount_cnt_r_cy(11)
    );
  Mcount_cnt_r_xor_11_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(10),
      LI => Mcount_cnt_r_cy_11_rt_36,
      O => Result(11)
    );
  Mcount_cnt_r_cy_12_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(11),
      DI => N0,
      S => Mcount_cnt_r_cy_12_rt_38,
      O => Mcount_cnt_r_cy(12)
    );
  Mcount_cnt_r_xor_12_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(11),
      LI => Mcount_cnt_r_cy_12_rt_38,
      O => Result(12)
    );
  Mcount_cnt_r_cy_13_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(12),
      DI => N0,
      S => Mcount_cnt_r_cy_13_rt_40,
      O => Mcount_cnt_r_cy(13)
    );
  Mcount_cnt_r_xor_13_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(12),
      LI => Mcount_cnt_r_cy_13_rt_40,
      O => Result(13)
    );
  Mcount_cnt_r_cy_14_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(13),
      DI => N0,
      S => Mcount_cnt_r_cy_14_rt_42,
      O => Mcount_cnt_r_cy(14)
    );
  Mcount_cnt_r_xor_14_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(13),
      LI => Mcount_cnt_r_cy_14_rt_42,
      O => Result(14)
    );
  Mcount_cnt_r_cy_15_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(14),
      DI => N0,
      S => Mcount_cnt_r_cy_15_rt_44,
      O => Mcount_cnt_r_cy(15)
    );
  Mcount_cnt_r_xor_15_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(14),
      LI => Mcount_cnt_r_cy_15_rt_44,
      O => Result(15)
    );
  Mcount_cnt_r_cy_16_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(15),
      DI => N0,
      S => Mcount_cnt_r_cy_16_rt_46,
      O => Mcount_cnt_r_cy(16)
    );
  Mcount_cnt_r_xor_16_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(15),
      LI => Mcount_cnt_r_cy_16_rt_46,
      O => Result(16)
    );
  Mcount_cnt_r_cy_17_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(16),
      DI => N0,
      S => Mcount_cnt_r_cy_17_rt_48,
      O => Mcount_cnt_r_cy(17)
    );
  Mcount_cnt_r_xor_17_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(16),
      LI => Mcount_cnt_r_cy_17_rt_48,
      O => Result(17)
    );
  Mcount_cnt_r_cy_18_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(17),
      DI => N0,
      S => Mcount_cnt_r_cy_18_rt_50,
      O => Mcount_cnt_r_cy(18)
    );
  Mcount_cnt_r_xor_18_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(17),
      LI => Mcount_cnt_r_cy_18_rt_50,
      O => Result(18)
    );
  Mcount_cnt_r_cy_19_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(18),
      DI => N0,
      S => Mcount_cnt_r_cy_19_rt_52,
      O => Mcount_cnt_r_cy(19)
    );
  Mcount_cnt_r_xor_19_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(18),
      LI => Mcount_cnt_r_cy_19_rt_52,
      O => Result(19)
    );
  Mcount_cnt_r_cy_20_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(19),
      DI => N0,
      S => Mcount_cnt_r_cy_20_rt_56,
      O => Mcount_cnt_r_cy(20)
    );
  Mcount_cnt_r_xor_20_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(19),
      LI => Mcount_cnt_r_cy_20_rt_56,
      O => Result(20)
    );
  Mcount_cnt_r_cy_21_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(20),
      DI => N0,
      S => Mcount_cnt_r_cy_21_rt_58,
      O => Mcount_cnt_r_cy(21)
    );
  Mcount_cnt_r_xor_21_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(20),
      LI => Mcount_cnt_r_cy_21_rt_58,
      O => Result(21)
    );
  Mcount_cnt_r_cy_22_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(21),
      DI => N0,
      S => Mcount_cnt_r_cy_22_rt_60,
      O => Mcount_cnt_r_cy(22)
    );
  Mcount_cnt_r_xor_22_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(21),
      LI => Mcount_cnt_r_cy_22_rt_60,
      O => Result(22)
    );
  Mcount_cnt_r_cy_23_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(22),
      DI => N0,
      S => Mcount_cnt_r_cy_23_rt_62,
      O => Mcount_cnt_r_cy(23)
    );
  Mcount_cnt_r_xor_23_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(22),
      LI => Mcount_cnt_r_cy_23_rt_62,
      O => Result(23)
    );
  Mcount_cnt_r_cy_24_Q : MUXCY
    port map (
      CI => Mcount_cnt_r_cy(23),
      DI => N0,
      S => Mcount_cnt_r_cy_24_rt_64,
      O => Mcount_cnt_r_cy(24)
    );
  Mcount_cnt_r_xor_24_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(23),
      LI => Mcount_cnt_r_cy_24_rt_64,
      O => Result(24)
    );
  Mcount_cnt_r_xor_25_Q : XORCY
    port map (
      CI => Mcount_cnt_r_cy(24),
      LI => Mcount_cnt_r_xor_25_rt_82,
      O => Result(25)
    );
  CLK_50M_I_IBUF : IBUF
    port map (
      I => CLK_50M_I,
      O => ADC_1_CLK_O_OBUF1
    );
  VGA_HS_I_IBUF : IBUF
    port map (
      I => VGA_HS_I,
      O => VGA_HS_I_IBUF_120
    );
  VGA_VS_I_IBUF : IBUF
    port map (
      I => VGA_VS_I,
      O => VGA_VS_I_IBUF_126
    );
  ADC_1_I_9_IBUF : IBUF
    port map (
      I => ADC_1_I(9),
      O => ADC_1_I_9_IBUF_8
    );
  ADC_1_I_8_IBUF : IBUF
    port map (
      I => ADC_1_I(8),
      O => ADC_1_I_8_IBUF_7
    );
  ADC_1_I_7_IBUF : IBUF
    port map (
      I => ADC_1_I(7),
      O => ADC_1_I_7_IBUF_6
    );
  ADC_2_I_9_IBUF : IBUF
    port map (
      I => ADC_2_I(9),
      O => ADC_2_I_9_IBUF_15
    );
  ADC_2_I_8_IBUF : IBUF
    port map (
      I => ADC_2_I(8),
      O => ADC_2_I_8_IBUF_14
    );
  ADC_2_I_7_IBUF : IBUF
    port map (
      I => ADC_2_I(7),
      O => ADC_2_I_7_IBUF_13
    );
  ADC_3_I_9_IBUF : IBUF
    port map (
      I => ADC_3_I(9),
      O => ADC_3_I_9_IBUF_22
    );
  ADC_3_I_8_IBUF : IBUF
    port map (
      I => ADC_3_I(8),
      O => ADC_3_I_8_IBUF_21
    );
  ADC_3_I_7_IBUF : IBUF
    port map (
      I => ADC_3_I(7),
      O => ADC_3_I_7_IBUF_20
    );
  ADC_3_CLK_O_OBUF : OBUF
    port map (
      I => ADC_1_CLK_O_OBUF1,
      O => ADC_3_CLK_O
    );
  ADC_2_CLK_O_OBUF : OBUF
    port map (
      I => ADC_1_CLK_O_OBUF1,
      O => ADC_2_CLK_O
    );
  ADC_1_CLK_O_OBUF : OBUF
    port map (
      I => ADC_1_CLK_O_OBUF1,
      O => ADC_1_CLK_O
    );
  VGA_HS_O_OBUF : OBUF
    port map (
      I => shift_r_h_sync(4),
      O => VGA_HS_O
    );
  VGA_VS_O_OBUF : OBUF
    port map (
      I => shift_r_v_sync(4),
      O => VGA_VS_O
    );
  VGA_G_O_2_OBUF : OBUF
    port map (
      I => vga_2_o_r(2),
      O => VGA_G_O(2)
    );
  VGA_G_O_1_OBUF : OBUF
    port map (
      I => vga_2_o_r(1),
      O => VGA_G_O(1)
    );
  VGA_G_O_0_OBUF : OBUF
    port map (
      I => vga_2_o_r(0),
      O => VGA_G_O(0)
    );
  VGA_B_O_2_OBUF : OBUF
    port map (
      I => vga_3_o_r(2),
      O => VGA_B_O(2)
    );
  VGA_B_O_1_OBUF : OBUF
    port map (
      I => vga_3_o_r(1),
      O => VGA_B_O(1)
    );
  VGA_B_O_0_OBUF : OBUF
    port map (
      I => vga_3_o_r(0),
      O => VGA_B_O(0)
    );
  VGA_R_O_2_OBUF : OBUF
    port map (
      I => vga_1_o_r(2),
      O => VGA_R_O(2)
    );
  VGA_R_O_1_OBUF : OBUF
    port map (
      I => vga_1_o_r(1),
      O => VGA_R_O(1)
    );
  VGA_R_O_0_OBUF : OBUF
    port map (
      I => vga_1_o_r(0),
      O => VGA_R_O(0)
    );
  LEDS_O_7_OBUF : OBUF
    port map (
      I => cnt_r(25),
      O => LEDS_O(7)
    );
  LEDS_O_6_OBUF : OBUF
    port map (
      I => cnt_r(24),
      O => LEDS_O(6)
    );
  LEDS_O_5_OBUF : OBUF
    port map (
      I => cnt_r(23),
      O => LEDS_O(5)
    );
  LEDS_O_4_OBUF : OBUF
    port map (
      I => cnt_r(22),
      O => LEDS_O(4)
    );
  LEDS_O_3_OBUF : OBUF
    port map (
      I => cnt_r(21),
      O => LEDS_O(3)
    );
  LEDS_O_2_OBUF : OBUF
    port map (
      I => cnt_r(20),
      O => LEDS_O(2)
    );
  LEDS_O_1_OBUF : OBUF
    port map (
      I => cnt_r(19),
      O => LEDS_O(1)
    );
  LEDS_O_0_OBUF : OBUF
    port map (
      I => cnt_r(18),
      O => LEDS_O(0)
    );
  Mcount_cnt_r_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(1),
      O => Mcount_cnt_r_cy_1_rt_54
    );
  Mcount_cnt_r_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(2),
      O => Mcount_cnt_r_cy_2_rt_66
    );
  Mcount_cnt_r_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(3),
      O => Mcount_cnt_r_cy_3_rt_68
    );
  Mcount_cnt_r_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(4),
      O => Mcount_cnt_r_cy_4_rt_70
    );
  Mcount_cnt_r_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(5),
      O => Mcount_cnt_r_cy_5_rt_72
    );
  Mcount_cnt_r_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(6),
      O => Mcount_cnt_r_cy_6_rt_74
    );
  Mcount_cnt_r_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(7),
      O => Mcount_cnt_r_cy_7_rt_76
    );
  Mcount_cnt_r_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(8),
      O => Mcount_cnt_r_cy_8_rt_78
    );
  Mcount_cnt_r_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(9),
      O => Mcount_cnt_r_cy_9_rt_80
    );
  Mcount_cnt_r_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(10),
      O => Mcount_cnt_r_cy_10_rt_34
    );
  Mcount_cnt_r_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(11),
      O => Mcount_cnt_r_cy_11_rt_36
    );
  Mcount_cnt_r_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(12),
      O => Mcount_cnt_r_cy_12_rt_38
    );
  Mcount_cnt_r_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(13),
      O => Mcount_cnt_r_cy_13_rt_40
    );
  Mcount_cnt_r_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(14),
      O => Mcount_cnt_r_cy_14_rt_42
    );
  Mcount_cnt_r_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(15),
      O => Mcount_cnt_r_cy_15_rt_44
    );
  Mcount_cnt_r_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(16),
      O => Mcount_cnt_r_cy_16_rt_46
    );
  Mcount_cnt_r_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(17),
      O => Mcount_cnt_r_cy_17_rt_48
    );
  Mcount_cnt_r_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(18),
      O => Mcount_cnt_r_cy_18_rt_50
    );
  Mcount_cnt_r_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(19),
      O => Mcount_cnt_r_cy_19_rt_52
    );
  Mcount_cnt_r_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(20),
      O => Mcount_cnt_r_cy_20_rt_56
    );
  Mcount_cnt_r_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(21),
      O => Mcount_cnt_r_cy_21_rt_58
    );
  Mcount_cnt_r_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(22),
      O => Mcount_cnt_r_cy_22_rt_60
    );
  Mcount_cnt_r_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(23),
      O => Mcount_cnt_r_cy_23_rt_62
    );
  Mcount_cnt_r_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(24),
      O => Mcount_cnt_r_cy_24_rt_64
    );
  Mcount_cnt_r_xor_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cnt_r(25),
      O => Mcount_cnt_r_xor_25_rt_82
    );
  ADC_1_CLK_O_OBUF_BUFG : BUFG
    port map (
      I => ADC_1_CLK_O_OBUF1,
      O => ADC_1_CLK_O_OBUF_1
    );
  Mcount_cnt_r_lut_0_INV_0 : INV
    port map (
      I => cnt_r(0),
      O => Mcount_cnt_r_lut(0)
    );
  Mshreg_shift_r_h_sync_4 : SRL16
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N1,
      A1 => N1,
      A2 => N0,
      A3 => N0,
      CLK => ADC_1_CLK_O_OBUF_1,
      D => VGA_HS_I_IBUF_120,
      Q => Mshreg_shift_r_h_sync_4_83
    );
  shift_r_h_sync_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Mshreg_shift_r_h_sync_4_83,
      Q => shift_r_h_sync(4)
    );
  Mshreg_shift_r_v_sync_4 : SRL16
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N1,
      A1 => N1,
      A2 => N0,
      A3 => N0,
      CLK => ADC_1_CLK_O_OBUF_1,
      D => VGA_VS_I_IBUF_126,
      Q => Mshreg_shift_r_v_sync_4_84
    );
  shift_r_v_sync_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ADC_1_CLK_O_OBUF_1,
      D => Mshreg_shift_r_v_sync_4_84,
      Q => shift_r_v_sync(4)
    );

end Structure;

