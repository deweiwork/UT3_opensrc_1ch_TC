-------------------------------------------------------------------------------
-- Copyright (c) 2019 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 14.7
--  \   \         Application: XILINX CORE Generator
--  /   /         Filename   : chipscope_ila_2.vhd
-- /___/   /\     Timestamp  : Fri Apr 12 18:47:58 台北標準時間 2019
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: VHDL Synthesis Wrapper
-------------------------------------------------------------------------------
-- This wrapper is used to integrate with Project Navigator and PlanAhead

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY chipscope_ila_2 IS
  port (
    CONTROL: inout std_logic_vector(35 downto 0);
    CLK: in std_logic;
    TRIG0: in std_logic_vector(19 downto 0);
    TRIG1: in std_logic_vector(19 downto 0);
    TRIG2: in std_logic_vector(19 downto 0);
    TRIG3: in std_logic_vector(19 downto 0);
    TRIG4: in std_logic_vector(19 downto 0);
    TRIG5: in std_logic_vector(19 downto 0);
    TRIG6: in std_logic_vector(19 downto 0);
    TRIG7: in std_logic_vector(19 downto 0);
    TRIG8: in std_logic_vector(15 downto 0);
    TRIG9: in std_logic_vector(15 downto 0);
    TRIG10: in std_logic_vector(15 downto 0);
    TRIG11: in std_logic_vector(15 downto 0);
    TRIG12: in std_logic_vector(15 downto 0);
    TRIG13: in std_logic_vector(15 downto 0);
    TRIG14: in std_logic_vector(15 downto 0);
    TRIG15: in std_logic_vector(15 downto 0));
END chipscope_ila_2;

ARCHITECTURE chipscope_ila_2_a OF chipscope_ila_2 IS
BEGIN

END chipscope_ila_2_a;
