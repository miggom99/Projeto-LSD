-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/15/2021 08:42:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          disp_select
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY disp_select_vhd_vec_tst IS
END disp_select_vhd_vec_tst;
ARCHITECTURE disp_select_arch OF disp_select_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL d0 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL d1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL d2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL d3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL d4 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL d4In : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL d5 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL d5In : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL d6 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL d6In : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL d7 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL d7In : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL sel : STD_LOGIC;
SIGNAL textin : STD_LOGIC_VECTOR(39 DOWNTO 0);
SIGNAL textin_s2 : STD_LOGIC_VECTOR(19 DOWNTO 0);
COMPONENT disp_select
	PORT (
	d0 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	d1 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	d2 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	d3 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	d4 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	d4In : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	d5 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	d5In : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	d6 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	d6In : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	d7 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	d7In : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	sel : IN STD_LOGIC;
	textin : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
	textin_s2 : IN STD_LOGIC_VECTOR(19 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : disp_select
	PORT MAP (
-- list connections between master ports and signals
	d0 => d0,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	d4 => d4,
	d4In => d4In,
	d5 => d5,
	d5In => d5In,
	d6 => d6,
	d6In => d6In,
	d7 => d7,
	d7In => d7In,
	sel => sel,
	textin => textin,
	textin_s2 => textin_s2
	);
-- textin[39]
t_prcs_textin_39: PROCESS
BEGIN
	textin(39) <= '0';
WAIT;
END PROCESS t_prcs_textin_39;
-- textin[38]
t_prcs_textin_38: PROCESS
BEGIN
	textin(38) <= '0';
WAIT;
END PROCESS t_prcs_textin_38;
-- textin[37]
t_prcs_textin_37: PROCESS
BEGIN
	textin(37) <= '0';
WAIT;
END PROCESS t_prcs_textin_37;
-- textin[36]
t_prcs_textin_36: PROCESS
BEGIN
	textin(36) <= '0';
WAIT;
END PROCESS t_prcs_textin_36;
-- textin[35]
t_prcs_textin_35: PROCESS
BEGIN
	textin(35) <= '0';
WAIT;
END PROCESS t_prcs_textin_35;
-- textin[34]
t_prcs_textin_34: PROCESS
BEGIN
	textin(34) <= '0';
WAIT;
END PROCESS t_prcs_textin_34;
-- textin[33]
t_prcs_textin_33: PROCESS
BEGIN
	textin(33) <= '0';
WAIT;
END PROCESS t_prcs_textin_33;
-- textin[32]
t_prcs_textin_32: PROCESS
BEGIN
	textin(32) <= '0';
WAIT;
END PROCESS t_prcs_textin_32;
-- textin[31]
t_prcs_textin_31: PROCESS
BEGIN
	textin(31) <= '0';
WAIT;
END PROCESS t_prcs_textin_31;
-- textin[30]
t_prcs_textin_30: PROCESS
BEGIN
	textin(30) <= '0';
WAIT;
END PROCESS t_prcs_textin_30;
-- textin[29]
t_prcs_textin_29: PROCESS
BEGIN
	textin(29) <= '0';
WAIT;
END PROCESS t_prcs_textin_29;
-- textin[28]
t_prcs_textin_28: PROCESS
BEGIN
	textin(28) <= '0';
WAIT;
END PROCESS t_prcs_textin_28;
-- textin[27]
t_prcs_textin_27: PROCESS
BEGIN
	textin(27) <= '0';
WAIT;
END PROCESS t_prcs_textin_27;
-- textin[26]
t_prcs_textin_26: PROCESS
BEGIN
	textin(26) <= '0';
WAIT;
END PROCESS t_prcs_textin_26;
-- textin[25]
t_prcs_textin_25: PROCESS
BEGIN
	textin(25) <= '0';
WAIT;
END PROCESS t_prcs_textin_25;
-- textin[24]
t_prcs_textin_24: PROCESS
BEGIN
	textin(24) <= '0';
WAIT;
END PROCESS t_prcs_textin_24;
-- textin[23]
t_prcs_textin_23: PROCESS
BEGIN
	textin(23) <= '0';
	WAIT FOR 280000 ps;
	textin(23) <= '1';
	WAIT FOR 90000 ps;
	textin(23) <= '0';
WAIT;
END PROCESS t_prcs_textin_23;
-- textin[22]
t_prcs_textin_22: PROCESS
BEGIN
	textin(22) <= '0';
WAIT;
END PROCESS t_prcs_textin_22;
-- textin[21]
t_prcs_textin_21: PROCESS
BEGIN
	textin(21) <= '0';
WAIT;
END PROCESS t_prcs_textin_21;
-- textin[20]
t_prcs_textin_20: PROCESS
BEGIN
	textin(20) <= '0';
WAIT;
END PROCESS t_prcs_textin_20;
-- textin[19]
t_prcs_textin_19: PROCESS
BEGIN
	textin(19) <= '0';
WAIT;
END PROCESS t_prcs_textin_19;
-- textin[18]
t_prcs_textin_18: PROCESS
BEGIN
	textin(18) <= '0';
	WAIT FOR 10000 ps;
	textin(18) <= '1';
	WAIT FOR 110000 ps;
	textin(18) <= '0';
WAIT;
END PROCESS t_prcs_textin_18;
-- textin[17]
t_prcs_textin_17: PROCESS
BEGIN
	textin(17) <= '0';
WAIT;
END PROCESS t_prcs_textin_17;
-- textin[16]
t_prcs_textin_16: PROCESS
BEGIN
	textin(16) <= '0';
	WAIT FOR 280000 ps;
	textin(16) <= '1';
	WAIT FOR 90000 ps;
	textin(16) <= '0';
WAIT;
END PROCESS t_prcs_textin_16;
-- textin[15]
t_prcs_textin_15: PROCESS
BEGIN
	textin(15) <= '0';
WAIT;
END PROCESS t_prcs_textin_15;
-- textin[14]
t_prcs_textin_14: PROCESS
BEGIN
	textin(14) <= '0';
WAIT;
END PROCESS t_prcs_textin_14;
-- textin[13]
t_prcs_textin_13: PROCESS
BEGIN
	textin(13) <= '0';
WAIT;
END PROCESS t_prcs_textin_13;
-- textin[12]
t_prcs_textin_12: PROCESS
BEGIN
	textin(12) <= '0';
WAIT;
END PROCESS t_prcs_textin_12;
-- textin[11]
t_prcs_textin_11: PROCESS
BEGIN
	textin(11) <= '0';
WAIT;
END PROCESS t_prcs_textin_11;
-- textin[10]
t_prcs_textin_10: PROCESS
BEGIN
	textin(10) <= '0';
	WAIT FOR 280000 ps;
	textin(10) <= '1';
	WAIT FOR 90000 ps;
	textin(10) <= '0';
WAIT;
END PROCESS t_prcs_textin_10;
-- textin[9]
t_prcs_textin_9: PROCESS
BEGIN
	textin(9) <= '0';
WAIT;
END PROCESS t_prcs_textin_9;
-- textin[8]
t_prcs_textin_8: PROCESS
BEGIN
	textin(8) <= '0';
WAIT;
END PROCESS t_prcs_textin_8;
-- textin[7]
t_prcs_textin_7: PROCESS
BEGIN
	textin(7) <= '0';
WAIT;
END PROCESS t_prcs_textin_7;
-- textin[6]
t_prcs_textin_6: PROCESS
BEGIN
	textin(6) <= '0';
	WAIT FOR 10000 ps;
	textin(6) <= '1';
	WAIT FOR 110000 ps;
	textin(6) <= '0';
	WAIT FOR 160000 ps;
	textin(6) <= '1';
	WAIT FOR 90000 ps;
	textin(6) <= '0';
WAIT;
END PROCESS t_prcs_textin_6;
-- textin[5]
t_prcs_textin_5: PROCESS
BEGIN
	textin(5) <= '0';
WAIT;
END PROCESS t_prcs_textin_5;
-- textin[4]
t_prcs_textin_4: PROCESS
BEGIN
	textin(4) <= '0';
	WAIT FOR 10000 ps;
	textin(4) <= '1';
	WAIT FOR 110000 ps;
	textin(4) <= '0';
WAIT;
END PROCESS t_prcs_textin_4;
-- textin[3]
t_prcs_textin_3: PROCESS
BEGIN
	textin(3) <= '0';
WAIT;
END PROCESS t_prcs_textin_3;
-- textin[2]
t_prcs_textin_2: PROCESS
BEGIN
	textin(2) <= '0';
	WAIT FOR 280000 ps;
	textin(2) <= '1';
	WAIT FOR 90000 ps;
	textin(2) <= '0';
WAIT;
END PROCESS t_prcs_textin_2;
-- textin[1]
t_prcs_textin_1: PROCESS
BEGIN
	textin(1) <= '0';
	WAIT FOR 280000 ps;
	textin(1) <= '1';
	WAIT FOR 90000 ps;
	textin(1) <= '0';
WAIT;
END PROCESS t_prcs_textin_1;
-- textin[0]
t_prcs_textin_0: PROCESS
BEGIN
	textin(0) <= '0';
	WAIT FOR 10000 ps;
	textin(0) <= '1';
	WAIT FOR 110000 ps;
	textin(0) <= '0';
WAIT;
END PROCESS t_prcs_textin_0;
-- textin_s2[19]
t_prcs_textin_s2_19: PROCESS
BEGIN
	textin_s2(19) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_19;
-- textin_s2[18]
t_prcs_textin_s2_18: PROCESS
BEGIN
	textin_s2(18) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_18;
-- textin_s2[17]
t_prcs_textin_s2_17: PROCESS
BEGIN
	textin_s2(17) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_17;
-- textin_s2[16]
t_prcs_textin_s2_16: PROCESS
BEGIN
	textin_s2(16) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_16;
-- textin_s2[15]
t_prcs_textin_s2_15: PROCESS
BEGIN
	textin_s2(15) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_15;
-- textin_s2[14]
t_prcs_textin_s2_14: PROCESS
BEGIN
	textin_s2(14) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_14;
-- textin_s2[13]
t_prcs_textin_s2_13: PROCESS
BEGIN
	textin_s2(13) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_13;
-- textin_s2[12]
t_prcs_textin_s2_12: PROCESS
BEGIN
	textin_s2(12) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_12;
-- textin_s2[11]
t_prcs_textin_s2_11: PROCESS
BEGIN
	textin_s2(11) <= '0';
	WAIT FOR 160000 ps;
	textin_s2(11) <= '1';
	WAIT FOR 100000 ps;
	textin_s2(11) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_11;
-- textin_s2[10]
t_prcs_textin_s2_10: PROCESS
BEGIN
	textin_s2(10) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_10;
-- textin_s2[9]
t_prcs_textin_s2_9: PROCESS
BEGIN
	textin_s2(9) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_9;
-- textin_s2[8]
t_prcs_textin_s2_8: PROCESS
BEGIN
	textin_s2(8) <= '0';
	WAIT FOR 160000 ps;
	textin_s2(8) <= '1';
	WAIT FOR 100000 ps;
	textin_s2(8) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_8;
-- textin_s2[7]
t_prcs_textin_s2_7: PROCESS
BEGIN
	textin_s2(7) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_7;
-- textin_s2[6]
t_prcs_textin_s2_6: PROCESS
BEGIN
	textin_s2(6) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_6;
-- textin_s2[5]
t_prcs_textin_s2_5: PROCESS
BEGIN
	textin_s2(5) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_5;
-- textin_s2[4]
t_prcs_textin_s2_4: PROCESS
BEGIN
	textin_s2(4) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_4;
-- textin_s2[3]
t_prcs_textin_s2_3: PROCESS
BEGIN
	textin_s2(3) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_3;
-- textin_s2[2]
t_prcs_textin_s2_2: PROCESS
BEGIN
	textin_s2(2) <= '0';
	WAIT FOR 160000 ps;
	textin_s2(2) <= '1';
	WAIT FOR 100000 ps;
	textin_s2(2) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_2;
-- textin_s2[1]
t_prcs_textin_s2_1: PROCESS
BEGIN
	textin_s2(1) <= '0';
	WAIT FOR 160000 ps;
	textin_s2(1) <= '1';
	WAIT FOR 100000 ps;
	textin_s2(1) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_1;
-- textin_s2[0]
t_prcs_textin_s2_0: PROCESS
BEGIN
	textin_s2(0) <= '0';
WAIT;
END PROCESS t_prcs_textin_s2_0;

-- sel
t_prcs_sel: PROCESS
BEGIN
	sel <= '0';
	WAIT FOR 160000 ps;
	sel <= '1';
	WAIT FOR 100000 ps;
	sel <= '0';
WAIT;
END PROCESS t_prcs_sel;
-- d4In[4]
t_prcs_d4In_4: PROCESS
BEGIN
	d4In(4) <= '0';
WAIT;
END PROCESS t_prcs_d4In_4;
-- d4In[3]
t_prcs_d4In_3: PROCESS
BEGIN
	d4In(3) <= '0';
WAIT;
END PROCESS t_prcs_d4In_3;
-- d4In[2]
t_prcs_d4In_2: PROCESS
BEGIN
	d4In(2) <= '0';
WAIT;
END PROCESS t_prcs_d4In_2;
-- d4In[1]
t_prcs_d4In_1: PROCESS
BEGIN
	d4In(1) <= '0';
WAIT;
END PROCESS t_prcs_d4In_1;
-- d4In[0]
t_prcs_d4In_0: PROCESS
BEGIN
	d4In(0) <= '0';
	WAIT FOR 160000 ps;
	d4In(0) <= '1';
	WAIT FOR 90000 ps;
	d4In(0) <= '0';
WAIT;
END PROCESS t_prcs_d4In_0;
-- d5In[4]
t_prcs_d5In_4: PROCESS
BEGIN
	d5In(4) <= '0';
WAIT;
END PROCESS t_prcs_d5In_4;
-- d5In[3]
t_prcs_d5In_3: PROCESS
BEGIN
	d5In(3) <= '0';
WAIT;
END PROCESS t_prcs_d5In_3;
-- d5In[2]
t_prcs_d5In_2: PROCESS
BEGIN
	d5In(2) <= '0';
WAIT;
END PROCESS t_prcs_d5In_2;
-- d5In[1]
t_prcs_d5In_1: PROCESS
BEGIN
	d5In(1) <= '0';
WAIT;
END PROCESS t_prcs_d5In_1;
-- d5In[0]
t_prcs_d5In_0: PROCESS
BEGIN
	d5In(0) <= '0';
	WAIT FOR 170000 ps;
	d5In(0) <= '1';
	WAIT FOR 70000 ps;
	d5In(0) <= '0';
WAIT;
END PROCESS t_prcs_d5In_0;
-- d6In[4]
t_prcs_d6In_4: PROCESS
BEGIN
	d6In(4) <= '0';
WAIT;
END PROCESS t_prcs_d6In_4;
-- d6In[3]
t_prcs_d6In_3: PROCESS
BEGIN
	d6In(3) <= '0';
WAIT;
END PROCESS t_prcs_d6In_3;
-- d6In[2]
t_prcs_d6In_2: PROCESS
BEGIN
	d6In(2) <= '0';
WAIT;
END PROCESS t_prcs_d6In_2;
-- d6In[1]
t_prcs_d6In_1: PROCESS
BEGIN
	d6In(1) <= '0';
WAIT;
END PROCESS t_prcs_d6In_1;
-- d6In[0]
t_prcs_d6In_0: PROCESS
BEGIN
	d6In(0) <= '0';
	WAIT FOR 170000 ps;
	d6In(0) <= '1';
	WAIT FOR 70000 ps;
	d6In(0) <= '0';
WAIT;
END PROCESS t_prcs_d6In_0;
-- d7In[4]
t_prcs_d7In_4: PROCESS
BEGIN
	d7In(4) <= '0';
WAIT;
END PROCESS t_prcs_d7In_4;
-- d7In[3]
t_prcs_d7In_3: PROCESS
BEGIN
	d7In(3) <= '0';
WAIT;
END PROCESS t_prcs_d7In_3;
-- d7In[2]
t_prcs_d7In_2: PROCESS
BEGIN
	d7In(2) <= '0';
WAIT;
END PROCESS t_prcs_d7In_2;
-- d7In[1]
t_prcs_d7In_1: PROCESS
BEGIN
	d7In(1) <= '0';
WAIT;
END PROCESS t_prcs_d7In_1;
-- d7In[0]
t_prcs_d7In_0: PROCESS
BEGIN
	d7In(0) <= '0';
	WAIT FOR 170000 ps;
	d7In(0) <= '1';
	WAIT FOR 70000 ps;
	d7In(0) <= '0';
WAIT;
END PROCESS t_prcs_d7In_0;
END disp_select_arch;
