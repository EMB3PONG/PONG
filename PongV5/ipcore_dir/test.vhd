-------------------------------------------------------------------------------
-- Copyright (c) 2013 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 14.4
--  \   \         Application: XILINX CORE Generator
--  /   /         Filename   : test.vhd
-- /___/   /\     Timestamp  : Fri May 17 02:23:01 Romance Daylight Time 2013
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: VHDL Synthesis Wrapper
-------------------------------------------------------------------------------
-- This wrapper is used to integrate with Project Navigator and PlanAhead

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY test IS
  port (
    CONTROL: inout std_logic_vector(35 downto 0);
    CLK: in std_logic;
    TRIG0: in std_logic_vector(3 downto 0));
END test;

ARCHITECTURE test_a OF test IS
BEGIN

END test_a;
