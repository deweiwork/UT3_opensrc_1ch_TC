-------------------------------------------------------------------------------
-- Copyright (c) 2019 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 14.7
--  \   \         Application: Xilinx CORE Generator
--  /   /         Filename   : chipscope_ila_2.vho
-- /___/   /\     Timestamp  : Fri Apr 12 18:47:58 台北標準時間 2019
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: ISE Instantiation template
-- Component Identifier: xilinx.com:ip:chipscope_ila:1.05.a
-------------------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component chipscope_ila_2
  PORT (
    CONTROL : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
    CLK : IN STD_LOGIC;
    TRIG0 : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    TRIG1 : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    TRIG2 : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    TRIG3 : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    TRIG4 : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    TRIG5 : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    TRIG6 : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    TRIG7 : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    TRIG8 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    TRIG9 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    TRIG10 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    TRIG11 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    TRIG12 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    TRIG13 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    TRIG14 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    TRIG15 : IN STD_LOGIC_VECTOR(15 DOWNTO 0));

end component;

-- COMP_TAG_END ------ End COMPONENT Declaration ------------
-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.
------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG

your_instance_name : chipscope_ila_2
  port map (
    CONTROL => CONTROL,
    CLK => CLK,
    TRIG0 => TRIG0,
    TRIG1 => TRIG1,
    TRIG2 => TRIG2,
    TRIG3 => TRIG3,
    TRIG4 => TRIG4,
    TRIG5 => TRIG5,
    TRIG6 => TRIG6,
    TRIG7 => TRIG7,
    TRIG8 => TRIG8,
    TRIG9 => TRIG9,
    TRIG10 => TRIG10,
    TRIG11 => TRIG11,
    TRIG12 => TRIG12,
    TRIG13 => TRIG13,
    TRIG14 => TRIG14,
    TRIG15 => TRIG15);

-- INST_TAG_END ------ End INSTANTIATION Template ------------
