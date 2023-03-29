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
-- Generated on "06/16/2021 11:21:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          guesss_number
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY guesss_number_vhd_vec_tst IS
END guesss_number_vhd_vec_tst;
ARCHITECTURE guesss_number_arch OF guesss_number_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL activate : STD_LOGIC;
SIGNAL attempt : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL clk_1hz : STD_LOGIC;
SIGNAL clk_2hz : STD_LOGIC;
SIGNAL clk_4hz : STD_LOGIC;
SIGNAL clk_8hz : STD_LOGIC;
SIGNAL done1 : STD_LOGIC;
SIGNAL done2 : STD_LOGIC;
SIGNAL enable2hz : STD_LOGIC;
SIGNAL key0 : STD_LOGIC;
SIGNAL key1 : STD_LOGIC;
SIGNAL key2 : STD_LOGIC;
SIGNAL key3 : STD_LOGIC;
SIGNAL leds_out : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL n_attempts : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL rnd_num : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL selector : STD_LOGIC;
SIGNAL sw_rnd : STD_LOGIC;
SIGNAL textOut : STD_LOGIC_VECTOR(39 DOWNTO 0);
SIGNAL textOut_s2 : STD_LOGIC_VECTOR(19 DOWNTO 0);
COMPONENT guesss_number
	PORT (
	activate : OUT STD_LOGIC;
	attempt : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	clk : IN STD_LOGIC;
	clk_1hz : IN STD_LOGIC;
	clk_2hz : IN STD_LOGIC;
	clk_4hz : IN STD_LOGIC;
	clk_8hz : IN STD_LOGIC;
	done1 : IN STD_LOGIC;
	done2 : IN STD_LOGIC;
	enable2hz : OUT STD_LOGIC;
	key0 : IN STD_LOGIC;
	key1 : IN STD_LOGIC;
	key2 : IN STD_LOGIC;
	key3 : IN STD_LOGIC;
	leds_out : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
	n_attempts : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	reset : IN STD_LOGIC;
	rnd_num : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	selector : OUT STD_LOGIC;
	sw_rnd : IN STD_LOGIC;
	textOut : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
	textOut_s2 : OUT STD_LOGIC_VECTOR(19 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : guesss_number
	PORT MAP (
-- list connections between master ports and signals
	activate => activate,
	attempt => attempt,
	clk => clk,
	clk_1hz => clk_1hz,
	clk_2hz => clk_2hz,
	clk_4hz => clk_4hz,
	clk_8hz => clk_8hz,
	done1 => done1,
	done2 => done2,
	enable2hz => enable2hz,
	key0 => key0,
	key1 => key1,
	key2 => key2,
	key3 => key3,
	leds_out => leds_out,
	n_attempts => n_attempts,
	reset => reset,
	rnd_num => rnd_num,
	selector => selector,
	sw_rnd => sw_rnd,
	textOut => textOut,
	textOut_s2 => textOut_s2
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- clk_1hz
t_prcs_clk_1hz: PROCESS
BEGIN
	clk_1hz <= '0';
WAIT;
END PROCESS t_prcs_clk_1hz;

-- clk_2hz
t_prcs_clk_2hz: PROCESS
BEGIN
	clk_2hz <= '0';
WAIT;
END PROCESS t_prcs_clk_2hz;

-- clk_4hz
t_prcs_clk_4hz: PROCESS
BEGIN
	clk_4hz <= '0';
WAIT;
END PROCESS t_prcs_clk_4hz;

-- clk_8hz
t_prcs_clk_8hz: PROCESS
BEGIN
	clk_8hz <= '0';
WAIT;
END PROCESS t_prcs_clk_8hz;

-- done1
t_prcs_done1: PROCESS
BEGIN
	done1 <= '0';
WAIT;
END PROCESS t_prcs_done1;

-- done2
t_prcs_done2: PROCESS
BEGIN
	done2 <= '0';
WAIT;
END PROCESS t_prcs_done2;

-- key0
t_prcs_key0: PROCESS
BEGIN
	key0 <= '0';
	WAIT FOR 30000 ps;
	key0 <= '1';
	WAIT FOR 20000 ps;
	key0 <= '0';
WAIT;
END PROCESS t_prcs_key0;

-- key1
t_prcs_key1: PROCESS
BEGIN
	key1 <= '0';
WAIT;
END PROCESS t_prcs_key1;

-- key2
t_prcs_key2: PROCESS
BEGIN
	key2 <= '0';
WAIT;
END PROCESS t_prcs_key2;

-- key3
t_prcs_key3: PROCESS
BEGIN
	key3 <= '0';
WAIT;
END PROCESS t_prcs_key3;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- rnd_num[6]
t_prcs_rnd_num_6: PROCESS
BEGIN
	rnd_num(6) <= '0';
WAIT;
END PROCESS t_prcs_rnd_num_6;
-- rnd_num[5]
t_prcs_rnd_num_5: PROCESS
BEGIN
	rnd_num(5) <= '0';
WAIT;
END PROCESS t_prcs_rnd_num_5;
-- rnd_num[4]
t_prcs_rnd_num_4: PROCESS
BEGIN
	rnd_num(4) <= '0';
WAIT;
END PROCESS t_prcs_rnd_num_4;
-- rnd_num[3]
t_prcs_rnd_num_3: PROCESS
BEGIN
	rnd_num(3) <= '0';
WAIT;
END PROCESS t_prcs_rnd_num_3;
-- rnd_num[2]
t_prcs_rnd_num_2: PROCESS
BEGIN
	rnd_num(2) <= '0';
WAIT;
END PROCESS t_prcs_rnd_num_2;
-- rnd_num[1]
t_prcs_rnd_num_1: PROCESS
BEGIN
	rnd_num(1) <= '0';
WAIT;
END PROCESS t_prcs_rnd_num_1;
-- rnd_num[0]
t_prcs_rnd_num_0: PROCESS
BEGIN
	rnd_num(0) <= '0';
WAIT;
END PROCESS t_prcs_rnd_num_0;

-- sw_rnd
t_prcs_sw_rnd: PROCESS
BEGIN
	sw_rnd <= '0';
WAIT;
END PROCESS t_prcs_sw_rnd;
END guesss_number_arch;
