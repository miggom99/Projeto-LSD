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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/16/2021 11:21:48"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	guesss_number IS
    PORT (
	clk : IN std_logic;
	clk_1hz : IN std_logic;
	clk_2hz : IN std_logic;
	clk_4hz : IN std_logic;
	clk_8hz : IN std_logic;
	reset : IN std_logic;
	key0 : IN std_logic;
	key1 : IN std_logic;
	key2 : IN std_logic;
	key3 : IN std_logic;
	done1 : IN std_logic;
	done2 : IN std_logic;
	sw_rnd : IN std_logic;
	rnd_num : IN std_logic_vector(6 DOWNTO 0);
	leds_out : OUT std_logic_vector(17 DOWNTO 0);
	textOut : OUT std_logic_vector(39 DOWNTO 0);
	selector : OUT std_logic;
	activate : OUT std_logic;
	enable2hz : OUT std_logic;
	attempt : OUT std_logic_vector(6 DOWNTO 0);
	n_attempts : OUT std_logic_vector(6 DOWNTO 0);
	textOut_s2 : OUT std_logic_vector(19 DOWNTO 0)
	);
END guesss_number;

ARCHITECTURE structure OF guesss_number IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clk_1hz : std_logic;
SIGNAL ww_clk_2hz : std_logic;
SIGNAL ww_clk_4hz : std_logic;
SIGNAL ww_clk_8hz : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_key0 : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_key3 : std_logic;
SIGNAL ww_done1 : std_logic;
SIGNAL ww_done2 : std_logic;
SIGNAL ww_sw_rnd : std_logic;
SIGNAL ww_rnd_num : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_leds_out : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_textOut : std_logic_vector(39 DOWNTO 0);
SIGNAL ww_selector : std_logic;
SIGNAL ww_activate : std_logic;
SIGNAL ww_enable2hz : std_logic;
SIGNAL ww_attempt : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_n_attempts : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_textOut_s2 : std_logic_vector(19 DOWNTO 0);
SIGNAL \leds_out[0]~output_o\ : std_logic;
SIGNAL \leds_out[1]~output_o\ : std_logic;
SIGNAL \leds_out[2]~output_o\ : std_logic;
SIGNAL \leds_out[3]~output_o\ : std_logic;
SIGNAL \leds_out[4]~output_o\ : std_logic;
SIGNAL \leds_out[5]~output_o\ : std_logic;
SIGNAL \leds_out[6]~output_o\ : std_logic;
SIGNAL \leds_out[7]~output_o\ : std_logic;
SIGNAL \leds_out[8]~output_o\ : std_logic;
SIGNAL \leds_out[9]~output_o\ : std_logic;
SIGNAL \leds_out[10]~output_o\ : std_logic;
SIGNAL \leds_out[11]~output_o\ : std_logic;
SIGNAL \leds_out[12]~output_o\ : std_logic;
SIGNAL \leds_out[13]~output_o\ : std_logic;
SIGNAL \leds_out[14]~output_o\ : std_logic;
SIGNAL \leds_out[15]~output_o\ : std_logic;
SIGNAL \leds_out[16]~output_o\ : std_logic;
SIGNAL \leds_out[17]~output_o\ : std_logic;
SIGNAL \textOut[0]~output_o\ : std_logic;
SIGNAL \textOut[1]~output_o\ : std_logic;
SIGNAL \textOut[2]~output_o\ : std_logic;
SIGNAL \textOut[3]~output_o\ : std_logic;
SIGNAL \textOut[4]~output_o\ : std_logic;
SIGNAL \textOut[5]~output_o\ : std_logic;
SIGNAL \textOut[6]~output_o\ : std_logic;
SIGNAL \textOut[7]~output_o\ : std_logic;
SIGNAL \textOut[8]~output_o\ : std_logic;
SIGNAL \textOut[9]~output_o\ : std_logic;
SIGNAL \textOut[10]~output_o\ : std_logic;
SIGNAL \textOut[11]~output_o\ : std_logic;
SIGNAL \textOut[12]~output_o\ : std_logic;
SIGNAL \textOut[13]~output_o\ : std_logic;
SIGNAL \textOut[14]~output_o\ : std_logic;
SIGNAL \textOut[15]~output_o\ : std_logic;
SIGNAL \textOut[16]~output_o\ : std_logic;
SIGNAL \textOut[17]~output_o\ : std_logic;
SIGNAL \textOut[18]~output_o\ : std_logic;
SIGNAL \textOut[19]~output_o\ : std_logic;
SIGNAL \textOut[20]~output_o\ : std_logic;
SIGNAL \textOut[21]~output_o\ : std_logic;
SIGNAL \textOut[22]~output_o\ : std_logic;
SIGNAL \textOut[23]~output_o\ : std_logic;
SIGNAL \textOut[24]~output_o\ : std_logic;
SIGNAL \textOut[25]~output_o\ : std_logic;
SIGNAL \textOut[26]~output_o\ : std_logic;
SIGNAL \textOut[27]~output_o\ : std_logic;
SIGNAL \textOut[28]~output_o\ : std_logic;
SIGNAL \textOut[29]~output_o\ : std_logic;
SIGNAL \textOut[30]~output_o\ : std_logic;
SIGNAL \textOut[31]~output_o\ : std_logic;
SIGNAL \textOut[32]~output_o\ : std_logic;
SIGNAL \textOut[33]~output_o\ : std_logic;
SIGNAL \textOut[34]~output_o\ : std_logic;
SIGNAL \textOut[35]~output_o\ : std_logic;
SIGNAL \textOut[36]~output_o\ : std_logic;
SIGNAL \textOut[37]~output_o\ : std_logic;
SIGNAL \textOut[38]~output_o\ : std_logic;
SIGNAL \textOut[39]~output_o\ : std_logic;
SIGNAL \selector~output_o\ : std_logic;
SIGNAL \activate~output_o\ : std_logic;
SIGNAL \enable2hz~output_o\ : std_logic;
SIGNAL \attempt[0]~output_o\ : std_logic;
SIGNAL \attempt[1]~output_o\ : std_logic;
SIGNAL \attempt[2]~output_o\ : std_logic;
SIGNAL \attempt[3]~output_o\ : std_logic;
SIGNAL \attempt[4]~output_o\ : std_logic;
SIGNAL \attempt[5]~output_o\ : std_logic;
SIGNAL \attempt[6]~output_o\ : std_logic;
SIGNAL \n_attempts[0]~output_o\ : std_logic;
SIGNAL \n_attempts[1]~output_o\ : std_logic;
SIGNAL \n_attempts[2]~output_o\ : std_logic;
SIGNAL \n_attempts[3]~output_o\ : std_logic;
SIGNAL \n_attempts[4]~output_o\ : std_logic;
SIGNAL \n_attempts[5]~output_o\ : std_logic;
SIGNAL \n_attempts[6]~output_o\ : std_logic;
SIGNAL \textOut_s2[0]~output_o\ : std_logic;
SIGNAL \textOut_s2[1]~output_o\ : std_logic;
SIGNAL \textOut_s2[2]~output_o\ : std_logic;
SIGNAL \textOut_s2[3]~output_o\ : std_logic;
SIGNAL \textOut_s2[4]~output_o\ : std_logic;
SIGNAL \textOut_s2[5]~output_o\ : std_logic;
SIGNAL \textOut_s2[6]~output_o\ : std_logic;
SIGNAL \textOut_s2[7]~output_o\ : std_logic;
SIGNAL \textOut_s2[8]~output_o\ : std_logic;
SIGNAL \textOut_s2[9]~output_o\ : std_logic;
SIGNAL \textOut_s2[10]~output_o\ : std_logic;
SIGNAL \textOut_s2[11]~output_o\ : std_logic;
SIGNAL \textOut_s2[12]~output_o\ : std_logic;
SIGNAL \textOut_s2[13]~output_o\ : std_logic;
SIGNAL \textOut_s2[14]~output_o\ : std_logic;
SIGNAL \textOut_s2[15]~output_o\ : std_logic;
SIGNAL \textOut_s2[16]~output_o\ : std_logic;
SIGNAL \textOut_s2[17]~output_o\ : std_logic;
SIGNAL \textOut_s2[18]~output_o\ : std_logic;
SIGNAL \textOut_s2[19]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk_1hz~input_o\ : std_logic;
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \key3~input_o\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \adress~2_combout\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \adress[12]~1_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \adress~0_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \s_currentState.S6~q\ : std_logic;
SIGNAL \lo[18]~54_combout\ : std_logic;
SIGNAL \rnd_num[6]~input_o\ : std_logic;
SIGNAL \sw_rnd~input_o\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \lo~92_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \s_currentState~19_combout\ : std_logic;
SIGNAL \s_currentState~21_combout\ : std_logic;
SIGNAL \s_currentState.S4~q\ : std_logic;
SIGNAL \lo[18]~55_combout\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add6~85_combout\ : std_logic;
SIGNAL \hi[25]~0_combout\ : std_logic;
SIGNAL \rnd_num[5]~input_o\ : std_logic;
SIGNAL \rnd_num[4]~input_o\ : std_logic;
SIGNAL \rnd_num[3]~input_o\ : std_logic;
SIGNAL \rnd_num[2]~input_o\ : std_logic;
SIGNAL \rnd_num[1]~input_o\ : std_logic;
SIGNAL \rnd_num[0]~input_o\ : std_logic;
SIGNAL \lo[0]~57\ : std_logic;
SIGNAL \lo[1]~59\ : std_logic;
SIGNAL \lo[2]~61\ : std_logic;
SIGNAL \lo[3]~63\ : std_logic;
SIGNAL \lo[4]~65\ : std_logic;
SIGNAL \lo[5]~67\ : std_logic;
SIGNAL \lo[6]~69\ : std_logic;
SIGNAL \lo[7]~70_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~87_combout\ : std_logic;
SIGNAL \lo[5]~66_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~89_combout\ : std_logic;
SIGNAL \lo[3]~62_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add6~91_combout\ : std_logic;
SIGNAL \lo[1]~58_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~92_combout\ : std_logic;
SIGNAL \lo[0]~56_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~90_combout\ : std_logic;
SIGNAL \lo[2]~60_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~88_combout\ : std_logic;
SIGNAL \lo[4]~64_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add6~86_combout\ : std_logic;
SIGNAL \lo[6]~68_combout\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \Add6~84_combout\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \lo~94_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \lo~93_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add6~83_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add8~19\ : std_logic;
SIGNAL \Add8~21\ : std_logic;
SIGNAL \Add8~23\ : std_logic;
SIGNAL \Add8~25\ : std_logic;
SIGNAL \Add8~27\ : std_logic;
SIGNAL \Add8~29\ : std_logic;
SIGNAL \Add8~31\ : std_logic;
SIGNAL \Add8~33\ : std_logic;
SIGNAL \Add8~35\ : std_logic;
SIGNAL \Add8~37\ : std_logic;
SIGNAL \Add8~39\ : std_logic;
SIGNAL \Add8~41\ : std_logic;
SIGNAL \Add8~43\ : std_logic;
SIGNAL \Add8~45\ : std_logic;
SIGNAL \Add8~47\ : std_logic;
SIGNAL \Add8~49\ : std_logic;
SIGNAL \Add8~51\ : std_logic;
SIGNAL \Add8~53\ : std_logic;
SIGNAL \Add8~55\ : std_logic;
SIGNAL \Add8~57\ : std_logic;
SIGNAL \Add8~58_combout\ : std_logic;
SIGNAL \lo~73_combout\ : std_logic;
SIGNAL \Add8~56_combout\ : std_logic;
SIGNAL \lo~74_combout\ : std_logic;
SIGNAL \Add8~54_combout\ : std_logic;
SIGNAL \lo~75_combout\ : std_logic;
SIGNAL \Add8~52_combout\ : std_logic;
SIGNAL \lo~76_combout\ : std_logic;
SIGNAL \Add8~50_combout\ : std_logic;
SIGNAL \lo~77_combout\ : std_logic;
SIGNAL \Add8~48_combout\ : std_logic;
SIGNAL \lo~78_combout\ : std_logic;
SIGNAL \Add8~46_combout\ : std_logic;
SIGNAL \lo~79_combout\ : std_logic;
SIGNAL \Add8~44_combout\ : std_logic;
SIGNAL \lo~80_combout\ : std_logic;
SIGNAL \Add8~42_combout\ : std_logic;
SIGNAL \lo~81_combout\ : std_logic;
SIGNAL \Add8~40_combout\ : std_logic;
SIGNAL \lo~82_combout\ : std_logic;
SIGNAL \Add8~38_combout\ : std_logic;
SIGNAL \lo~83_combout\ : std_logic;
SIGNAL \Add8~36_combout\ : std_logic;
SIGNAL \lo~84_combout\ : std_logic;
SIGNAL \Add8~34_combout\ : std_logic;
SIGNAL \lo~85_combout\ : std_logic;
SIGNAL \Add8~32_combout\ : std_logic;
SIGNAL \lo~86_combout\ : std_logic;
SIGNAL \Add8~30_combout\ : std_logic;
SIGNAL \lo~87_combout\ : std_logic;
SIGNAL \Add8~28_combout\ : std_logic;
SIGNAL \lo~88_combout\ : std_logic;
SIGNAL \Add8~26_combout\ : std_logic;
SIGNAL \lo~89_combout\ : std_logic;
SIGNAL \Add8~24_combout\ : std_logic;
SIGNAL \lo~90_combout\ : std_logic;
SIGNAL \Add8~22_combout\ : std_logic;
SIGNAL \lo~91_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add8~59\ : std_logic;
SIGNAL \Add8~60_combout\ : std_logic;
SIGNAL \lo~72_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~23\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~29\ : std_logic;
SIGNAL \Add6~31\ : std_logic;
SIGNAL \Add6~33\ : std_logic;
SIGNAL \Add6~35\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~41\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~45\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~49\ : std_logic;
SIGNAL \Add6~51\ : std_logic;
SIGNAL \Add6~53\ : std_logic;
SIGNAL \Add6~55\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~58_combout\ : std_logic;
SIGNAL \Add6~63_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add6~56_combout\ : std_logic;
SIGNAL \Add6~64_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \Add6~65_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add6~52_combout\ : std_logic;
SIGNAL \Add6~66_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add6~67_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add6~48_combout\ : std_logic;
SIGNAL \Add6~68_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add6~46_combout\ : std_logic;
SIGNAL \Add6~69_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add6~44_combout\ : std_logic;
SIGNAL \Add6~70_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add6~42_combout\ : std_logic;
SIGNAL \Add6~71_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \Add6~72_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add6~38_combout\ : std_logic;
SIGNAL \Add6~73_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \Add6~74_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add6~34_combout\ : std_logic;
SIGNAL \Add6~75_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add6~32_combout\ : std_logic;
SIGNAL \Add6~76_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Add6~77_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add6~28_combout\ : std_logic;
SIGNAL \Add6~78_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add6~26_combout\ : std_logic;
SIGNAL \Add6~79_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add6~24_combout\ : std_logic;
SIGNAL \Add6~80_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \Add6~81_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~82_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~15_cout\ : std_logic;
SIGNAL \LessThan3~17_cout\ : std_logic;
SIGNAL \LessThan3~18_combout\ : std_logic;
SIGNAL \LessThan3~20_combout\ : std_logic;
SIGNAL \LessThan3~21_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~12_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \at[0]~1_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add6~59\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \Add6~62_combout\ : std_logic;
SIGNAL \LessThan4~1_cout\ : std_logic;
SIGNAL \LessThan4~3_cout\ : std_logic;
SIGNAL \LessThan4~5_cout\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~9_cout\ : std_logic;
SIGNAL \LessThan4~11_cout\ : std_logic;
SIGNAL \LessThan4~13_cout\ : std_logic;
SIGNAL \LessThan4~15_cout\ : std_logic;
SIGNAL \LessThan4~17_cout\ : std_logic;
SIGNAL \LessThan4~19_cout\ : std_logic;
SIGNAL \LessThan4~21_cout\ : std_logic;
SIGNAL \LessThan4~23_cout\ : std_logic;
SIGNAL \LessThan4~25_cout\ : std_logic;
SIGNAL \LessThan4~27_cout\ : std_logic;
SIGNAL \LessThan4~29_cout\ : std_logic;
SIGNAL \LessThan4~31_cout\ : std_logic;
SIGNAL \LessThan4~33_cout\ : std_logic;
SIGNAL \LessThan4~35_cout\ : std_logic;
SIGNAL \LessThan4~37_cout\ : std_logic;
SIGNAL \LessThan4~39_cout\ : std_logic;
SIGNAL \LessThan4~41_cout\ : std_logic;
SIGNAL \LessThan4~43_cout\ : std_logic;
SIGNAL \LessThan4~45_cout\ : std_logic;
SIGNAL \LessThan4~47_cout\ : std_logic;
SIGNAL \LessThan4~49_cout\ : std_logic;
SIGNAL \LessThan4~51_cout\ : std_logic;
SIGNAL \LessThan4~53_cout\ : std_logic;
SIGNAL \LessThan4~55_cout\ : std_logic;
SIGNAL \LessThan4~57_cout\ : std_logic;
SIGNAL \LessThan4~59_cout\ : std_logic;
SIGNAL \LessThan4~60_combout\ : std_logic;
SIGNAL \s_currentState~20_combout\ : std_logic;
SIGNAL \s_currentState.S3~q\ : std_logic;
SIGNAL \s_count[0]~31_combout\ : std_logic;
SIGNAL \s_count[11]~54\ : std_logic;
SIGNAL \s_count[12]~58_combout\ : std_logic;
SIGNAL \s_count[26]~87\ : std_logic;
SIGNAL \s_count[27]~88_combout\ : std_logic;
SIGNAL \s_count[27]~89\ : std_logic;
SIGNAL \s_count[28]~90_combout\ : std_logic;
SIGNAL \s_count[28]~91\ : std_logic;
SIGNAL \s_count[29]~92_combout\ : std_logic;
SIGNAL \s_count[29]~93\ : std_logic;
SIGNAL \s_count[30]~94_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \s_currentState~18_combout\ : std_logic;
SIGNAL \s_currentState.S0~q\ : std_logic;
SIGNAL \s_count[6]~57_combout\ : std_logic;
SIGNAL \s_count[12]~59\ : std_logic;
SIGNAL \s_count[13]~60_combout\ : std_logic;
SIGNAL \s_count[13]~61\ : std_logic;
SIGNAL \s_count[14]~62_combout\ : std_logic;
SIGNAL \s_count[14]~63\ : std_logic;
SIGNAL \s_count[15]~64_combout\ : std_logic;
SIGNAL \s_count[15]~65\ : std_logic;
SIGNAL \s_count[16]~66_combout\ : std_logic;
SIGNAL \s_count[16]~67\ : std_logic;
SIGNAL \s_count[17]~68_combout\ : std_logic;
SIGNAL \s_count[17]~69\ : std_logic;
SIGNAL \s_count[18]~70_combout\ : std_logic;
SIGNAL \s_count[18]~71\ : std_logic;
SIGNAL \s_count[19]~72_combout\ : std_logic;
SIGNAL \s_count[19]~73\ : std_logic;
SIGNAL \s_count[20]~74_combout\ : std_logic;
SIGNAL \s_count[20]~75\ : std_logic;
SIGNAL \s_count[21]~76_combout\ : std_logic;
SIGNAL \s_count[21]~77\ : std_logic;
SIGNAL \s_count[22]~78_combout\ : std_logic;
SIGNAL \s_count[22]~79\ : std_logic;
SIGNAL \s_count[23]~80_combout\ : std_logic;
SIGNAL \s_count[23]~81\ : std_logic;
SIGNAL \s_count[24]~82_combout\ : std_logic;
SIGNAL \s_count[24]~83\ : std_logic;
SIGNAL \s_count[25]~84_combout\ : std_logic;
SIGNAL \s_count[25]~85\ : std_logic;
SIGNAL \s_count[26]~86_combout\ : std_logic;
SIGNAL \texts1[0]~0_combout\ : std_logic;
SIGNAL \s_count[6]~55_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \s_count[6]~56_combout\ : std_logic;
SIGNAL \s_count[0]~32\ : std_logic;
SIGNAL \s_count[1]~33_combout\ : std_logic;
SIGNAL \s_count[1]~34\ : std_logic;
SIGNAL \s_count[2]~35_combout\ : std_logic;
SIGNAL \s_count[2]~36\ : std_logic;
SIGNAL \s_count[3]~37_combout\ : std_logic;
SIGNAL \s_count[3]~38\ : std_logic;
SIGNAL \s_count[4]~39_combout\ : std_logic;
SIGNAL \s_count[4]~40\ : std_logic;
SIGNAL \s_count[5]~41_combout\ : std_logic;
SIGNAL \s_count[5]~42\ : std_logic;
SIGNAL \s_count[6]~43_combout\ : std_logic;
SIGNAL \s_count[6]~44\ : std_logic;
SIGNAL \s_count[7]~45_combout\ : std_logic;
SIGNAL \s_count[7]~46\ : std_logic;
SIGNAL \s_count[8]~47_combout\ : std_logic;
SIGNAL \s_count[8]~48\ : std_logic;
SIGNAL \s_count[9]~49_combout\ : std_logic;
SIGNAL \s_count[9]~50\ : std_logic;
SIGNAL \s_count[10]~51_combout\ : std_logic;
SIGNAL \s_count[10]~52\ : std_logic;
SIGNAL \s_count[11]~53_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \Selector33~2_combout\ : std_logic;
SIGNAL \s_currentState.S1~q\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \s_currentState.S2~q\ : std_logic;
SIGNAL \at[0]~0_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \s_currentState.escolha~q\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \s_currentState.S5~q\ : std_logic;
SIGNAL \leds_out~6_combout\ : std_logic;
SIGNAL \led_adress[0]~3_combout\ : std_logic;
SIGNAL \led_adress[1]~2_combout\ : std_logic;
SIGNAL \led_adress[2]~0_combout\ : std_logic;
SIGNAL \led_adress[2]~1_combout\ : std_logic;
SIGNAL \leds_out~7_combout\ : std_logic;
SIGNAL \clk_8hz~input_o\ : std_logic;
SIGNAL \leds_out[0]~8_combout\ : std_logic;
SIGNAL \leds_out~9_combout\ : std_logic;
SIGNAL \leds_out[0]~10_combout\ : std_logic;
SIGNAL \leds_out[0]~reg0_q\ : std_logic;
SIGNAL \leds_out~30_combout\ : std_logic;
SIGNAL \leds_out[13]~reg0_q\ : std_logic;
SIGNAL \leds_out~11_combout\ : std_logic;
SIGNAL \leds_out~12_combout\ : std_logic;
SIGNAL \leds_out~13_combout\ : std_logic;
SIGNAL \leds_out~14_combout\ : std_logic;
SIGNAL \leds_out[10]~reg0_q\ : std_logic;
SIGNAL \leds_out~15_combout\ : std_logic;
SIGNAL \leds_out[3]~reg0_q\ : std_logic;
SIGNAL \leds_out~16_combout\ : std_logic;
SIGNAL \leds_out~17_combout\ : std_logic;
SIGNAL \leds_out[4]~reg0_q\ : std_logic;
SIGNAL \leds_out~18_combout\ : std_logic;
SIGNAL \leds_out~19_combout\ : std_logic;
SIGNAL \leds_out[5]~reg0_q\ : std_logic;
SIGNAL \leds_out~20_combout\ : std_logic;
SIGNAL \leds_out[17]~reg0_q\ : std_logic;
SIGNAL \leds_out~21_combout\ : std_logic;
SIGNAL \leds_out~31_combout\ : std_logic;
SIGNAL \leds_out[16]~reg0_q\ : std_logic;
SIGNAL \leds_out~22_combout\ : std_logic;
SIGNAL \leds_out~32_combout\ : std_logic;
SIGNAL \leds_out[9]~reg0_q\ : std_logic;
SIGNAL \leds_out~23_combout\ : std_logic;
SIGNAL \leds_out~24_combout\ : std_logic;
SIGNAL \leds_out[11]~reg0_q\ : std_logic;
SIGNAL \leds_out~25_combout\ : std_logic;
SIGNAL \leds_out~26_combout\ : std_logic;
SIGNAL \leds_out[12]~reg0_q\ : std_logic;
SIGNAL \leds_out~27_combout\ : std_logic;
SIGNAL \leds_out~28_combout\ : std_logic;
SIGNAL \leds_out~29_combout\ : std_logic;
SIGNAL \leds_out[14]~reg0_q\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \texts1[0]~1_combout\ : std_logic;
SIGNAL \texts1[0]~2_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector137~0_combout\ : std_logic;
SIGNAL \clk_4hz~input_o\ : std_logic;
SIGNAL \clk_4hz~_wirecell_combout\ : std_logic;
SIGNAL \textOut[0]~0_combout\ : std_logic;
SIGNAL \textOut[0]~reg0_q\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Selector131~0_combout\ : std_logic;
SIGNAL \Selector126~0_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Selector136~0_combout\ : std_logic;
SIGNAL \textOut[1]~reg0_q\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Selector130~0_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Selector110~0_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Selector135~0_combout\ : std_logic;
SIGNAL \textOut[2]~reg0_q\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Selector129~0_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector104~0_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Selector134~0_combout\ : std_logic;
SIGNAL \textOut[3]~reg0_q\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Selector113~0_combout\ : std_logic;
SIGNAL \Selector108~0_combout\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \Selector133~0_combout\ : std_logic;
SIGNAL \textOut[4]~reg0_q\ : std_logic;
SIGNAL \Selector132~0_combout\ : std_logic;
SIGNAL \textOut[5]~reg0_q\ : std_logic;
SIGNAL \textOut[6]~reg0_q\ : std_logic;
SIGNAL \textOut[7]~reg0_q\ : std_logic;
SIGNAL \textOut[8]~reg0_q\ : std_logic;
SIGNAL \Selector128~0_combout\ : std_logic;
SIGNAL \textOut[9]~reg0_q\ : std_logic;
SIGNAL \Selector127~0_combout\ : std_logic;
SIGNAL \textOut[10]~reg0_q\ : std_logic;
SIGNAL \textOut[11]~reg0_q\ : std_logic;
SIGNAL \Selector125~0_combout\ : std_logic;
SIGNAL \textOut[12]~reg0_q\ : std_logic;
SIGNAL \Selector124~0_combout\ : std_logic;
SIGNAL \textOut[13]~reg0_q\ : std_logic;
SIGNAL \Selector123~0_combout\ : std_logic;
SIGNAL \textOut[14]~reg0_q\ : std_logic;
SIGNAL \Selector122~0_combout\ : std_logic;
SIGNAL \textOut[15]~reg0_q\ : std_logic;
SIGNAL \Selector121~0_combout\ : std_logic;
SIGNAL \textOut[16]~reg0_q\ : std_logic;
SIGNAL \Selector120~0_combout\ : std_logic;
SIGNAL \textOut[17]~reg0_q\ : std_logic;
SIGNAL \Selector119~0_combout\ : std_logic;
SIGNAL \textOut[18]~reg0_q\ : std_logic;
SIGNAL \Selector118~0_combout\ : std_logic;
SIGNAL \textOut[19]~reg0_q\ : std_logic;
SIGNAL \Selector117~0_combout\ : std_logic;
SIGNAL \textOut[20]~reg0_q\ : std_logic;
SIGNAL \Selector115~0_combout\ : std_logic;
SIGNAL \textOut[22]~reg0_q\ : std_logic;
SIGNAL \Selector114~0_combout\ : std_logic;
SIGNAL \textOut[23]~reg0_q\ : std_logic;
SIGNAL \textOut[24]~reg0_q\ : std_logic;
SIGNAL \Selector112~0_combout\ : std_logic;
SIGNAL \textOut[25]~reg0_q\ : std_logic;
SIGNAL \textOut[26]~reg0_q\ : std_logic;
SIGNAL \textOut[27]~reg0_q\ : std_logic;
SIGNAL \Selector109~0_combout\ : std_logic;
SIGNAL \textOut[28]~reg0_q\ : std_logic;
SIGNAL \textOut[29]~reg0_q\ : std_logic;
SIGNAL \Selector107~0_combout\ : std_logic;
SIGNAL \textOut[30]~reg0_q\ : std_logic;
SIGNAL \Selector106~0_combout\ : std_logic;
SIGNAL \textOut[31]~reg0_q\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \textOut[32]~reg0_q\ : std_logic;
SIGNAL \textOut[33]~reg0_q\ : std_logic;
SIGNAL \textOut[34]~reg0_q\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \textOut[35]~reg0_q\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \textOut[37]~reg0_q\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \textOut[38]~reg0_q\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \textOut[39]~reg0_q\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \selector~reg0_q\ : std_logic;
SIGNAL \Selector164~0_combout\ : std_logic;
SIGNAL \done1~input_o\ : std_logic;
SIGNAL \done2~input_o\ : std_logic;
SIGNAL \Selector164~1_combout\ : std_logic;
SIGNAL \activate~reg0_q\ : std_logic;
SIGNAL \clk_2hz~input_o\ : std_logic;
SIGNAL \enable2hz~0_combout\ : std_logic;
SIGNAL \enable2hz~reg0_q\ : std_logic;
SIGNAL \attempt[1]~0_combout\ : std_logic;
SIGNAL \attempt[1]~1_combout\ : std_logic;
SIGNAL \attempt~2_combout\ : std_logic;
SIGNAL \attempt[1]~3_combout\ : std_logic;
SIGNAL \attempt[1]~4_combout\ : std_logic;
SIGNAL \attempt[1]~5_combout\ : std_logic;
SIGNAL \attempt[1]~6_combout\ : std_logic;
SIGNAL \attempt[1]~7_combout\ : std_logic;
SIGNAL \attempt[0]~reg0_q\ : std_logic;
SIGNAL \attempt~8_combout\ : std_logic;
SIGNAL \attempt[1]~reg0_q\ : std_logic;
SIGNAL \attempt~9_combout\ : std_logic;
SIGNAL \attempt[2]~reg0_q\ : std_logic;
SIGNAL \attempt~10_combout\ : std_logic;
SIGNAL \attempt[3]~reg0_q\ : std_logic;
SIGNAL \attempt~11_combout\ : std_logic;
SIGNAL \attempt[4]~reg0_q\ : std_logic;
SIGNAL \attempt~12_combout\ : std_logic;
SIGNAL \attempt[5]~reg0_q\ : std_logic;
SIGNAL \attempt~13_combout\ : std_logic;
SIGNAL \attempt[6]~reg0_q\ : std_logic;
SIGNAL \count_attempts[0]~7_combout\ : std_logic;
SIGNAL \count_attempts[9]~9_combout\ : std_logic;
SIGNAL \n_attempts~0_combout\ : std_logic;
SIGNAL \n_attempts[6]~1_combout\ : std_logic;
SIGNAL \n_attempts[6]~2_combout\ : std_logic;
SIGNAL \n_attempts[0]~reg0_q\ : std_logic;
SIGNAL \count_attempts[0]~8\ : std_logic;
SIGNAL \count_attempts[1]~10_combout\ : std_logic;
SIGNAL \n_attempts~3_combout\ : std_logic;
SIGNAL \n_attempts[1]~reg0_q\ : std_logic;
SIGNAL \count_attempts[1]~11\ : std_logic;
SIGNAL \count_attempts[2]~12_combout\ : std_logic;
SIGNAL \n_attempts~4_combout\ : std_logic;
SIGNAL \n_attempts[2]~reg0_q\ : std_logic;
SIGNAL \count_attempts[2]~13\ : std_logic;
SIGNAL \count_attempts[3]~14_combout\ : std_logic;
SIGNAL \n_attempts~5_combout\ : std_logic;
SIGNAL \n_attempts[3]~reg0_q\ : std_logic;
SIGNAL \count_attempts[3]~15\ : std_logic;
SIGNAL \count_attempts[4]~16_combout\ : std_logic;
SIGNAL \n_attempts~6_combout\ : std_logic;
SIGNAL \n_attempts[4]~reg0_q\ : std_logic;
SIGNAL \count_attempts[4]~17\ : std_logic;
SIGNAL \count_attempts[5]~18_combout\ : std_logic;
SIGNAL \n_attempts~7_combout\ : std_logic;
SIGNAL \n_attempts[5]~reg0_q\ : std_logic;
SIGNAL \count_attempts[5]~19\ : std_logic;
SIGNAL \count_attempts[6]~20_combout\ : std_logic;
SIGNAL \n_attempts~8_combout\ : std_logic;
SIGNAL \n_attempts[6]~reg0_q\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \Selector149~2_combout\ : std_logic;
SIGNAL \textOut_s2[0]~reg0_q\ : std_logic;
SIGNAL \Selector144~0_combout\ : std_logic;
SIGNAL \textOut_s2[10]~reg0_q\ : std_logic;
SIGNAL \Selector142~0_combout\ : std_logic;
SIGNAL \textOut_s2[12]~reg0_q\ : std_logic;
SIGNAL \Selector141~0_combout\ : std_logic;
SIGNAL \Selector141~1_combout\ : std_logic;
SIGNAL \textOut_s2[13]~reg0_q\ : std_logic;
SIGNAL lo : std_logic_vector(30 DOWNTO 0);
SIGNAL count_attempts : std_logic_vector(30 DOWNTO 0);
SIGNAL s_count : std_logic_vector(30 DOWNTO 0);
SIGNAL led_adress : std_logic_vector(2 DOWNTO 0);
SIGNAL texts1 : std_logic_vector(39 DOWNTO 0);
SIGNAL hi : std_logic_vector(30 DOWNTO 0);
SIGNAL adress : std_logic_vector(30 DOWNTO 0);
SIGNAL at : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_sw_rnd~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clk_1hz <= clk_1hz;
ww_clk_2hz <= clk_2hz;
ww_clk_4hz <= clk_4hz;
ww_clk_8hz <= clk_8hz;
ww_reset <= reset;
ww_key0 <= key0;
ww_key1 <= key1;
ww_key2 <= key2;
ww_key3 <= key3;
ww_done1 <= done1;
ww_done2 <= done2;
ww_sw_rnd <= sw_rnd;
ww_rnd_num <= rnd_num;
leds_out <= ww_leds_out;
textOut <= ww_textOut;
selector <= ww_selector;
activate <= ww_activate;
enable2hz <= ww_enable2hz;
attempt <= ww_attempt;
n_attempts <= ww_n_attempts;
textOut_s2 <= ww_textOut_s2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_sw_rnd~input_o\ <= NOT \sw_rnd~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

\leds_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[0]~output_o\);

\leds_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[13]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[1]~output_o\);

\leds_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[10]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[2]~output_o\);

\leds_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[3]~output_o\);

\leds_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[4]~output_o\);

\leds_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[5]~output_o\);

\leds_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[6]~output_o\);

\leds_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[17]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[7]~output_o\);

\leds_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[16]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[8]~output_o\);

\leds_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[9]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[9]~output_o\);

\leds_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[10]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[10]~output_o\);

\leds_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[11]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[11]~output_o\);

\leds_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[12]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[12]~output_o\);

\leds_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[13]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[13]~output_o\);

\leds_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[14]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[14]~output_o\);

\leds_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[13]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[15]~output_o\);

\leds_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[16]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[16]~output_o\);

\leds_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds_out[17]~reg0_q\,
	devoe => ww_devoe,
	o => \leds_out[17]~output_o\);

\textOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[0]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[0]~output_o\);

\textOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[1]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[1]~output_o\);

\textOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[2]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[2]~output_o\);

\textOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[3]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[3]~output_o\);

\textOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[4]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[4]~output_o\);

\textOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[5]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[5]~output_o\);

\textOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[6]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[6]~output_o\);

\textOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[7]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[7]~output_o\);

\textOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[8]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[8]~output_o\);

\textOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[9]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[9]~output_o\);

\textOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[10]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[10]~output_o\);

\textOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[11]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[11]~output_o\);

\textOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[12]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[12]~output_o\);

\textOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[13]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[13]~output_o\);

\textOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[14]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[14]~output_o\);

\textOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[15]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[15]~output_o\);

\textOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[16]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[16]~output_o\);

\textOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[17]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[17]~output_o\);

\textOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[18]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[18]~output_o\);

\textOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[19]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[19]~output_o\);

\textOut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[20]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[20]~output_o\);

\textOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[1]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[21]~output_o\);

\textOut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[22]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[22]~output_o\);

\textOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[23]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[23]~output_o\);

\textOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[24]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[24]~output_o\);

\textOut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[25]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[25]~output_o\);

\textOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[26]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[26]~output_o\);

\textOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[27]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[27]~output_o\);

\textOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[28]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[28]~output_o\);

\textOut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[29]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[29]~output_o\);

\textOut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[30]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[30]~output_o\);

\textOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[31]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[31]~output_o\);

\textOut[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[32]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[32]~output_o\);

\textOut[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[33]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[33]~output_o\);

\textOut[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[34]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[34]~output_o\);

\textOut[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[35]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[35]~output_o\);

\textOut[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[16]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[36]~output_o\);

\textOut[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[37]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[37]~output_o\);

\textOut[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[38]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[38]~output_o\);

\textOut[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut[39]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut[39]~output_o\);

\selector~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \selector~reg0_q\,
	devoe => ww_devoe,
	o => \selector~output_o\);

\activate~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \activate~reg0_q\,
	devoe => ww_devoe,
	o => \activate~output_o\);

\enable2hz~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enable2hz~reg0_q\,
	devoe => ww_devoe,
	o => \enable2hz~output_o\);

\attempt[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \attempt[0]~reg0_q\,
	devoe => ww_devoe,
	o => \attempt[0]~output_o\);

\attempt[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \attempt[1]~reg0_q\,
	devoe => ww_devoe,
	o => \attempt[1]~output_o\);

\attempt[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \attempt[2]~reg0_q\,
	devoe => ww_devoe,
	o => \attempt[2]~output_o\);

\attempt[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \attempt[3]~reg0_q\,
	devoe => ww_devoe,
	o => \attempt[3]~output_o\);

\attempt[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \attempt[4]~reg0_q\,
	devoe => ww_devoe,
	o => \attempt[4]~output_o\);

\attempt[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \attempt[5]~reg0_q\,
	devoe => ww_devoe,
	o => \attempt[5]~output_o\);

\attempt[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \attempt[6]~reg0_q\,
	devoe => ww_devoe,
	o => \attempt[6]~output_o\);

\n_attempts[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_attempts[0]~reg0_q\,
	devoe => ww_devoe,
	o => \n_attempts[0]~output_o\);

\n_attempts[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_attempts[1]~reg0_q\,
	devoe => ww_devoe,
	o => \n_attempts[1]~output_o\);

\n_attempts[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_attempts[2]~reg0_q\,
	devoe => ww_devoe,
	o => \n_attempts[2]~output_o\);

\n_attempts[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_attempts[3]~reg0_q\,
	devoe => ww_devoe,
	o => \n_attempts[3]~output_o\);

\n_attempts[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_attempts[4]~reg0_q\,
	devoe => ww_devoe,
	o => \n_attempts[4]~output_o\);

\n_attempts[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_attempts[5]~reg0_q\,
	devoe => ww_devoe,
	o => \n_attempts[5]~output_o\);

\n_attempts[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_attempts[6]~reg0_q\,
	devoe => ww_devoe,
	o => \n_attempts[6]~output_o\);

\textOut_s2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut_s2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut_s2[0]~output_o\);

\textOut_s2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \textOut_s2[1]~output_o\);

\textOut_s2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \textOut_s2[2]~output_o\);

\textOut_s2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut_s2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut_s2[3]~output_o\);

\textOut_s2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \textOut_s2[4]~output_o\);

\textOut_s2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \textOut_s2[5]~output_o\);

\textOut_s2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut_s2[10]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut_s2[6]~output_o\);

\textOut_s2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut_s2[12]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut_s2[7]~output_o\);

\textOut_s2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut_s2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut_s2[8]~output_o\);

\textOut_s2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \textOut_s2[9]~output_o\);

\textOut_s2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut_s2[10]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut_s2[10]~output_o\);

\textOut_s2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut_s2[10]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut_s2[11]~output_o\);

\textOut_s2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut_s2[12]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut_s2[12]~output_o\);

\textOut_s2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut_s2[13]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut_s2[13]~output_o\);

\textOut_s2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut_s2[10]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut_s2[14]~output_o\);

\textOut_s2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut_s2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut_s2[15]~output_o\);

\textOut_s2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \textOut_s2[16]~output_o\);

\textOut_s2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \textOut_s2[17]~output_o\);

\textOut_s2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \textOut_s2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \textOut_s2[18]~output_o\);

\textOut_s2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \textOut_s2[19]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\clk_1hz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_1hz,
	o => \clk_1hz~input_o\);

\key2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key2,
	o => \key2~input_o\);

\key3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key3,
	o => \key3~input_o\);

\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = adress(0) $ (VCC)
-- \Add3~1\ = CARRY(adress(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => adress(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

\adress~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \adress~2_combout\ = (\Add3~0_combout\ & ((adress(0)) # ((!\Equal0~9_combout\) # (!adress(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => adress(0),
	datac => adress(1),
	datad => \Equal0~9_combout\,
	combout => \adress~2_combout\);

\key1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key1,
	o => \key1~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\adress[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adress[12]~1_combout\ = (\s_currentState.escolha~q\ & (\key1~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.escolha~q\,
	datab => \key1~input_o\,
	datad => \reset~input_o\,
	combout => \adress[12]~1_combout\);

\adress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adress~2_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(0));

\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (adress(1) & (!\Add3~1\)) # (!adress(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!adress(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

\adress~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adress~0_combout\ = (\Add3~2_combout\ & ((adress(0)) # ((!\Equal0~9_combout\) # (!adress(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => adress(0),
	datac => adress(1),
	datad => \Equal0~9_combout\,
	combout => \adress~0_combout\);

\adress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \adress~0_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(1));

\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (adress(2) & (\Add3~3\ $ (GND))) # (!adress(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((adress(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

\adress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~4_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(2));

\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (adress(3) & (!\Add3~5\)) # (!adress(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!adress(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

\adress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~6_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(3));

\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (adress(4) & (\Add3~7\ $ (GND))) # (!adress(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((adress(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

\adress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~8_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(4));

\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (adress(5) & (!\Add3~9\)) # (!adress(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!adress(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

\adress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~10_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(5));

\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (adress(6) & (\Add3~11\ $ (GND))) # (!adress(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((adress(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

\adress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~12_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(6));

\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (adress(7) & (!\Add3~13\)) # (!adress(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!adress(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

\adress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~14_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(7));

\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (adress(8) & (\Add3~15\ $ (GND))) # (!adress(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((adress(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

\adress[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~16_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(8));

\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (adress(9) & (!\Add3~17\)) # (!adress(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!adress(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

\adress[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~18_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(9));

\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (adress(10) & (\Add3~19\ $ (GND))) # (!adress(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((adress(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

\adress[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~20_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(10));

\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (adress(11) & (!\Add3~21\)) # (!adress(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!adress(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

\adress[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~22_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(11));

\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (adress(12) & (\Add3~23\ $ (GND))) # (!adress(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((adress(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

\adress[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~24_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(12));

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!adress(12) & (!adress(11) & (!adress(10) & !adress(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => adress(12),
	datab => adress(11),
	datac => adress(10),
	datad => adress(9),
	combout => \Equal0~0_combout\);

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!adress(8) & (!adress(7) & (!adress(6) & !adress(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => adress(8),
	datab => adress(7),
	datac => adress(6),
	datad => adress(5),
	combout => \Equal0~1_combout\);

\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (adress(13) & (!\Add3~25\)) # (!adress(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!adress(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

\adress[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~26_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(13));

\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!adress(4) & (!adress(3) & (!adress(2) & !adress(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => adress(4),
	datab => adress(3),
	datac => adress(2),
	datad => adress(13),
	combout => \Equal0~2_combout\);

\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (adress(14) & (\Add3~27\ $ (GND))) # (!adress(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((adress(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

\adress[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~28_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(14));

\Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (adress(15) & (!\Add3~29\)) # (!adress(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!adress(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

\adress[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~30_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(15));

\Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (adress(16) & (\Add3~31\ $ (GND))) # (!adress(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((adress(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

\adress[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~32_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(16));

\Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (adress(17) & (!\Add3~33\)) # (!adress(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!adress(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

\adress[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~34_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(17));

\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!adress(14) & (!adress(15) & (!adress(16) & !adress(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => adress(14),
	datab => adress(15),
	datac => adress(16),
	datad => adress(17),
	combout => \Equal0~3_combout\);

\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (adress(18) & (\Add3~35\ $ (GND))) # (!adress(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((adress(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

\adress[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~36_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(18));

\Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (adress(19) & (!\Add3~37\)) # (!adress(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!adress(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

\adress[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~38_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(19));

\Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (adress(20) & (\Add3~39\ $ (GND))) # (!adress(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((adress(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

\adress[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~40_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(20));

\Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (adress(21) & (!\Add3~41\)) # (!adress(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!adress(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

\adress[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~42_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(21));

\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!adress(18) & (!adress(19) & (!adress(20) & !adress(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => adress(18),
	datab => adress(19),
	datac => adress(20),
	datad => adress(21),
	combout => \Equal0~5_combout\);

\Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (adress(22) & (\Add3~43\ $ (GND))) # (!adress(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((adress(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

\adress[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~44_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(22));

\Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (adress(23) & (!\Add3~45\)) # (!adress(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!adress(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

\adress[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~46_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(23));

\Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (adress(24) & (\Add3~47\ $ (GND))) # (!adress(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((adress(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

\adress[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~48_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(24));

\Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (adress(25) & (!\Add3~49\)) # (!adress(25) & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!adress(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

\adress[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~50_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(25));

\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!adress(22) & (!adress(23) & (!adress(24) & !adress(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => adress(22),
	datab => adress(23),
	datac => adress(24),
	datad => adress(25),
	combout => \Equal0~6_combout\);

\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & \Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

\Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (adress(26) & (\Add3~51\ $ (GND))) # (!adress(26) & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((adress(26) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(26),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

\adress[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~52_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(26));

\Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (adress(27) & (!\Add3~53\)) # (!adress(27) & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!adress(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

\adress[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~54_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(27));

\Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (adress(28) & (\Add3~55\ $ (GND))) # (!adress(28) & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((adress(28) & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(28),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

\adress[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~56_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(28));

\Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (adress(29) & (!\Add3~57\)) # (!adress(29) & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!adress(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(29),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

\adress[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~58_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(29));

\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!adress(26) & (!adress(27) & (!adress(28) & !adress(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => adress(26),
	datab => adress(27),
	datac => adress(28),
	datad => adress(29),
	combout => \Equal0~8_combout\);

\Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = adress(30) $ (!\Add3~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => adress(30),
	cin => \Add3~59\,
	combout => \Add3~60_combout\);

\adress[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add3~60_combout\,
	ena => \adress[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => adress(30));

\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~4_combout\ & (\Equal0~7_combout\ & (\Equal0~8_combout\ & !adress(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~8_combout\,
	datad => adress(30),
	combout => \Equal0~9_combout\);

\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Equal0~9_combout\ & (!adress(1) & !adress(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datac => adress(1),
	datad => adress(0),
	combout => \Equal1~0_combout\);

\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\s_currentState.escolha~q\ & ((\LessThan4~60_combout\) # ((\s_currentState.S6~q\ & !\key3~input_o\)))) # (!\s_currentState.escolha~q\ & (((\s_currentState.S6~q\ & !\key3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.escolha~q\,
	datab => \LessThan4~60_combout\,
	datac => \s_currentState.S6~q\,
	datad => \key3~input_o\,
	combout => \Selector39~0_combout\);

\s_currentState.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector39~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.S6~q\);

\lo[18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo[18]~54_combout\ = (\reset~input_o\) # (\s_currentState.S6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \s_currentState.S6~q\,
	combout => \lo[18]~54_combout\);

\rnd_num[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd_num(6),
	o => \rnd_num[6]~input_o\);

\sw_rnd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_rnd,
	o => \sw_rnd~input_o\);

\Add8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~20_combout\ = (\Add1~20_combout\ & (\Add8~19\ $ (GND))) # (!\Add1~20_combout\ & (!\Add8~19\ & VCC))
-- \Add8~21\ = CARRY((\Add1~20_combout\ & !\Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datad => VCC,
	cin => \Add8~19\,
	combout => \Add8~20_combout\,
	cout => \Add8~21\);

\lo~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~92_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~20_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~20_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~92_combout\);

\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (adress(0) & (\Equal0~9_combout\ & !adress(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => adress(0),
	datab => \Equal0~9_combout\,
	datad => adress(1),
	combout => \Equal2~0_combout\);

\s_currentState~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~19_combout\ = (!\reset~input_o\ & \key2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \key2~input_o\,
	combout => \s_currentState~19_combout\);

\s_currentState~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~21_combout\ = (\Equal2~0_combout\ & (\s_currentState.escolha~q\ & (!\LessThan4~60_combout\ & \s_currentState~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \s_currentState.escolha~q\,
	datac => \LessThan4~60_combout\,
	datad => \s_currentState~19_combout\,
	combout => \s_currentState~21_combout\);

\s_currentState.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.S4~q\);

\lo[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo[18]~55_combout\ = (\reset~input_o\) # ((\s_currentState.S6~q\ & (\key3~input_o\)) # (!\s_currentState.S6~q\ & ((\s_currentState.S4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \key3~input_o\,
	datac => \s_currentState.S4~q\,
	datad => \s_currentState.S6~q\,
	combout => \lo[18]~55_combout\);

\lo[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~92_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(10));

\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = !\Add5~13\
-- \Add5~15\ = CARRY(!\Add5~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

\Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (\Add1~14_combout\ & (\Add6~13\ & VCC)) # (!\Add1~14_combout\ & (!\Add6~13\))
-- \Add6~15\ = CARRY((!\Add1~14_combout\ & !\Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

\Add6~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~85_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~14_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~14_combout\,
	datac => \Add6~14_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~85_combout\);

\hi[25]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hi[25]~0_combout\ = (\reset~input_o\) # ((\s_currentState.S6~q\ & (\key3~input_o\)) # (!\s_currentState.S6~q\ & ((\s_currentState.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \key3~input_o\,
	datac => \s_currentState.S3~q\,
	datad => \s_currentState.S6~q\,
	combout => \hi[25]~0_combout\);

\hi[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~85_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(7));

\rnd_num[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd_num(5),
	o => \rnd_num[5]~input_o\);

\at[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rnd_num[5]~input_o\,
	ena => \at[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => at(5));

\rnd_num[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd_num(4),
	o => \rnd_num[4]~input_o\);

\at[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rnd_num[4]~input_o\,
	ena => \at[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => at(4));

\rnd_num[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd_num(3),
	o => \rnd_num[3]~input_o\);

\at[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rnd_num[3]~input_o\,
	ena => \at[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => at(3));

\rnd_num[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd_num(2),
	o => \rnd_num[2]~input_o\);

\at[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rnd_num[2]~input_o\,
	ena => \at[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => at(2));

\rnd_num[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd_num(1),
	o => \rnd_num[1]~input_o\);

\at[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rnd_num[1]~input_o\,
	ena => \at[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => at(1));

\rnd_num[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rnd_num(0),
	o => \rnd_num[0]~input_o\);

\at[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rnd_num[0]~input_o\,
	ena => \at[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => at(0));

\lo[0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo[0]~56_combout\ = at(0) $ (VCC)
-- \lo[0]~57\ = CARRY(at(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => at(0),
	datad => VCC,
	combout => \lo[0]~56_combout\,
	cout => \lo[0]~57\);

\lo[1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo[1]~58_combout\ = (at(1) & (!\lo[0]~57\)) # (!at(1) & ((\lo[0]~57\) # (GND)))
-- \lo[1]~59\ = CARRY((!\lo[0]~57\) # (!at(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => at(1),
	datad => VCC,
	cin => \lo[0]~57\,
	combout => \lo[1]~58_combout\,
	cout => \lo[1]~59\);

\lo[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo[2]~60_combout\ = (at(2) & (\lo[1]~59\ $ (GND))) # (!at(2) & (!\lo[1]~59\ & VCC))
-- \lo[2]~61\ = CARRY((at(2) & !\lo[1]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => at(2),
	datad => VCC,
	cin => \lo[1]~59\,
	combout => \lo[2]~60_combout\,
	cout => \lo[2]~61\);

\lo[3]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo[3]~62_combout\ = (at(3) & (!\lo[2]~61\)) # (!at(3) & ((\lo[2]~61\) # (GND)))
-- \lo[3]~63\ = CARRY((!\lo[2]~61\) # (!at(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => at(3),
	datad => VCC,
	cin => \lo[2]~61\,
	combout => \lo[3]~62_combout\,
	cout => \lo[3]~63\);

\lo[4]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo[4]~64_combout\ = (at(4) & (\lo[3]~63\ $ (GND))) # (!at(4) & (!\lo[3]~63\ & VCC))
-- \lo[4]~65\ = CARRY((at(4) & !\lo[3]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => at(4),
	datad => VCC,
	cin => \lo[3]~63\,
	combout => \lo[4]~64_combout\,
	cout => \lo[4]~65\);

\lo[5]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo[5]~66_combout\ = (at(5) & (!\lo[4]~65\)) # (!at(5) & ((\lo[4]~65\) # (GND)))
-- \lo[5]~67\ = CARRY((!\lo[4]~65\) # (!at(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => at(5),
	datad => VCC,
	cin => \lo[4]~65\,
	combout => \lo[5]~66_combout\,
	cout => \lo[5]~67\);

\lo[6]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo[6]~68_combout\ = (at(6) & (\lo[5]~67\ $ (GND))) # (!at(6) & (!\lo[5]~67\ & VCC))
-- \lo[6]~69\ = CARRY((at(6) & !\lo[5]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => at(6),
	datad => VCC,
	cin => \lo[5]~67\,
	combout => \lo[6]~68_combout\,
	cout => \lo[6]~69\);

\lo[7]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo[7]~70_combout\ = \lo[6]~69\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lo[6]~69\,
	combout => \lo[7]~70_combout\);

\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = at(0) $ (VCC)
-- \Add5~1\ = CARRY(at(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => at(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (at(1) & (\Add5~1\ & VCC)) # (!at(1) & (!\Add5~1\))
-- \Add5~3\ = CARRY((!at(1) & !\Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => at(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (at(2) & ((GND) # (!\Add5~3\))) # (!at(2) & (\Add5~3\ $ (GND)))
-- \Add5~5\ = CARRY((at(2)) # (!\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => at(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (at(3) & (\Add5~5\ & VCC)) # (!at(3) & (!\Add5~5\))
-- \Add5~7\ = CARRY((!at(3) & !\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => at(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (at(4) & ((GND) # (!\Add5~7\))) # (!at(4) & (\Add5~7\ $ (GND)))
-- \Add5~9\ = CARRY((at(4)) # (!\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => at(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (at(5) & (\Add5~9\ & VCC)) # (!at(5) & (!\Add5~9\))
-- \Add5~11\ = CARRY((!at(5) & !\Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => at(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (at(6) & ((GND) # (!\Add5~11\))) # (!at(6) & (\Add5~11\ $ (GND)))
-- \Add5~13\ = CARRY((at(6)) # (!\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => at(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\Add1~10_combout\ & (\Add6~9\ & VCC)) # (!\Add1~10_combout\ & (!\Add6~9\))
-- \Add6~11\ = CARRY((!\Add1~10_combout\ & !\Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

\Add6~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~87_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (!\Add5~10_combout\)) # (!\sw_rnd~input_o\ & ((!\Add6~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \Add6~10_combout\,
	datac => \sw_rnd~input_o\,
	datad => \lo[18]~54_combout\,
	combout => \Add6~87_combout\);

\hi[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~87_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(5));

\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\Add1~6_combout\ & (\Add6~5\ & VCC)) # (!\Add1~6_combout\ & (!\Add6~5\))
-- \Add6~7\ = CARRY((!\Add1~6_combout\ & !\Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

\Add6~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~89_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~6_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~6_combout\,
	datac => \Add6~6_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~89_combout\);

\hi[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~89_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(3));

\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\Add1~2_combout\ & (\Add6~1\ & VCC)) # (!\Add1~2_combout\ & (!\Add6~1\))
-- \Add6~3\ = CARRY((!\Add1~2_combout\ & !\Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

\Add6~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~91_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (!\Add5~2_combout\)) # (!\sw_rnd~input_o\ & ((!\Add6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \Add6~2_combout\,
	datac => \sw_rnd~input_o\,
	datad => \lo[18]~54_combout\,
	combout => \Add6~91_combout\);

\hi[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~91_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(1));

\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = \Add1~0_combout\ $ (VCC)
-- \Add8~1\ = CARRY(\Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\Add1~2_combout\ & (!\Add8~1\)) # (!\Add1~2_combout\ & ((\Add8~1\) # (GND)))
-- \Add8~3\ = CARRY((!\Add8~1\) # (!\Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

\lo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo[1]~58_combout\,
	asdata => \Add8~2_combout\,
	sclr => \lo[18]~54_combout\,
	sload => \ALT_INV_sw_rnd~input_o\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(1));

\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \Add1~0_combout\ $ (VCC)
-- \Add6~1\ = CARRY(\Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

\Add6~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~92_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (!\Add5~0_combout\)) # (!\sw_rnd~input_o\ & ((!\Add6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \Add6~0_combout\,
	datac => \sw_rnd~input_o\,
	datad => \lo[18]~54_combout\,
	combout => \Add6~92_combout\);

\hi[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~92_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(0));

\lo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo[0]~56_combout\,
	asdata => \Add8~0_combout\,
	sclr => \lo[18]~54_combout\,
	sload => \ALT_INV_sw_rnd~input_o\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(0));

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (hi(0) & (lo(0) & VCC)) # (!hi(0) & (lo(0) $ (VCC)))
-- \Add0~1\ = CARRY((!hi(0) & lo(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hi(0),
	datab => lo(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (hi(1) & ((lo(1) & (!\Add0~1\)) # (!lo(1) & ((\Add0~1\) # (GND))))) # (!hi(1) & ((lo(1) & (\Add0~1\ & VCC)) # (!lo(1) & (!\Add0~1\))))
-- \Add0~3\ = CARRY((hi(1) & ((!\Add0~1\) # (!lo(1)))) # (!hi(1) & (!lo(1) & !\Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(1),
	datab => lo(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Add0~2_combout\ & (\Add0~0_combout\ $ (VCC))) # (!\Add0~2_combout\ & (\Add0~0_combout\ & VCC))
-- \Add1~1\ = CARRY((\Add0~2_combout\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (\Add1~4_combout\ & ((GND) # (!\Add6~3\))) # (!\Add1~4_combout\ & (\Add6~3\ $ (GND)))
-- \Add6~5\ = CARRY((\Add1~4_combout\) # (!\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

\Add6~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~90_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~4_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~4_combout\,
	datac => \Add6~4_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~90_combout\);

\hi[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~90_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(2));

\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (\Add1~4_combout\ & (\Add8~3\ $ (GND))) # (!\Add1~4_combout\ & (!\Add8~3\ & VCC))
-- \Add8~5\ = CARRY((\Add1~4_combout\ & !\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

\lo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo[2]~60_combout\,
	asdata => \Add8~4_combout\,
	sclr => \lo[18]~54_combout\,
	sload => \ALT_INV_sw_rnd~input_o\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(2));

\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((hi(2) $ (lo(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((hi(2) & ((lo(2)) # (!\Add0~3\))) # (!hi(2) & (lo(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(2),
	datab => lo(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add0~4_combout\ & (!\Add1~1\)) # (!\Add0~4_combout\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\Add1~6_combout\ & (!\Add8~5\)) # (!\Add1~6_combout\ & ((\Add8~5\) # (GND)))
-- \Add8~7\ = CARRY((!\Add8~5\) # (!\Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

\lo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo[3]~62_combout\,
	asdata => \Add8~6_combout\,
	sclr => \lo[18]~54_combout\,
	sload => \ALT_INV_sw_rnd~input_o\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(3));

\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (hi(3) & ((lo(3) & (\Add0~5\ & VCC)) # (!lo(3) & (!\Add0~5\)))) # (!hi(3) & ((lo(3) & (!\Add0~5\)) # (!lo(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((hi(3) & (!lo(3) & !\Add0~5\)) # (!hi(3) & ((!\Add0~5\) # (!lo(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(3),
	datab => lo(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\Add0~6_combout\ & (\Add1~3\ $ (GND))) # (!\Add0~6_combout\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\Add0~6_combout\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (\Add1~8_combout\ & ((GND) # (!\Add6~7\))) # (!\Add1~8_combout\ & (\Add6~7\ $ (GND)))
-- \Add6~9\ = CARRY((\Add1~8_combout\) # (!\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

\Add6~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~88_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~8_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~8_combout\,
	datac => \Add6~8_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~88_combout\);

\hi[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~88_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(4));

\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (\Add1~8_combout\ & (\Add8~7\ $ (GND))) # (!\Add1~8_combout\ & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((\Add1~8_combout\ & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

\lo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo[4]~64_combout\,
	asdata => \Add8~8_combout\,
	sclr => \lo[18]~54_combout\,
	sload => \ALT_INV_sw_rnd~input_o\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(4));

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((hi(4) $ (lo(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((hi(4) & ((lo(4)) # (!\Add0~7\))) # (!hi(4) & (lo(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(4),
	datab => lo(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~8_combout\ & (!\Add1~5\)) # (!\Add0~8_combout\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\Add1~10_combout\ & (!\Add8~9\)) # (!\Add1~10_combout\ & ((\Add8~9\) # (GND)))
-- \Add8~11\ = CARRY((!\Add8~9\) # (!\Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

\lo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo[5]~66_combout\,
	asdata => \Add8~10_combout\,
	sclr => \lo[18]~54_combout\,
	sload => \ALT_INV_sw_rnd~input_o\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(5));

\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (hi(5) & ((lo(5) & (!\Add0~9\)) # (!lo(5) & ((\Add0~9\) # (GND))))) # (!hi(5) & ((lo(5) & (\Add0~9\ & VCC)) # (!lo(5) & (!\Add0~9\))))
-- \Add0~11\ = CARRY((hi(5) & ((!\Add0~9\) # (!lo(5)))) # (!hi(5) & (!lo(5) & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(5),
	datab => lo(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add0~10_combout\ & (\Add1~7\ $ (GND))) # (!\Add0~10_combout\ & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((\Add0~10_combout\ & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (\Add1~12_combout\ & ((GND) # (!\Add6~11\))) # (!\Add1~12_combout\ & (\Add6~11\ $ (GND)))
-- \Add6~13\ = CARRY((\Add1~12_combout\) # (!\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

\Add6~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~86_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (!\Add5~12_combout\)) # (!\sw_rnd~input_o\ & ((!\Add6~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~12_combout\,
	datab => \Add6~12_combout\,
	datac => \sw_rnd~input_o\,
	datad => \lo[18]~54_combout\,
	combout => \Add6~86_combout\);

\hi[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~86_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(6));

\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (\Add1~12_combout\ & (\Add8~11\ $ (GND))) # (!\Add1~12_combout\ & (!\Add8~11\ & VCC))
-- \Add8~13\ = CARRY((\Add1~12_combout\ & !\Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

\lo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo[6]~68_combout\,
	asdata => \Add8~12_combout\,
	sclr => \lo[18]~54_combout\,
	sload => \ALT_INV_sw_rnd~input_o\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(6));

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((hi(6) $ (lo(6) $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((hi(6) & (lo(6) & !\Add0~11\)) # (!hi(6) & ((lo(6)) # (!\Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(6),
	datab => lo(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add0~12_combout\ & (!\Add1~9\)) # (!\Add0~12_combout\ & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!\Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

\Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (\Add1~14_combout\ & (!\Add8~13\)) # (!\Add1~14_combout\ & ((\Add8~13\) # (GND)))
-- \Add8~15\ = CARRY((!\Add8~13\) # (!\Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

\lo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo[7]~70_combout\,
	asdata => \Add8~14_combout\,
	sclr => \lo[18]~54_combout\,
	sload => \ALT_INV_sw_rnd~input_o\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(7));

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (hi(7) & ((lo(7) & (\Add0~13\ & VCC)) # (!lo(7) & (!\Add0~13\)))) # (!hi(7) & ((lo(7) & (!\Add0~13\)) # (!lo(7) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((hi(7) & (!lo(7) & !\Add0~13\)) # (!hi(7) & ((!\Add0~13\) # (!lo(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(7),
	datab => lo(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Add0~14_combout\ & (\Add1~11\ $ (GND))) # (!\Add0~14_combout\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\Add0~14_combout\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

\Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (\Add1~16_combout\ & ((GND) # (!\Add6~15\))) # (!\Add1~16_combout\ & (\Add6~15\ $ (GND)))
-- \Add6~17\ = CARRY((\Add1~16_combout\) # (!\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

\Add6~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~84_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~16_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~84_combout\);

\hi[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~84_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(8));

\Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = (\Add1~16_combout\ & (\Add8~15\ $ (GND))) # (!\Add1~16_combout\ & (!\Add8~15\ & VCC))
-- \Add8~17\ = CARRY((\Add1~16_combout\ & !\Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

\lo~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~94_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~16_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~16_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~94_combout\);

\lo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~94_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(8));

\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((hi(8) $ (lo(8) $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((hi(8) & ((lo(8)) # (!\Add0~15\))) # (!hi(8) & (lo(8) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(8),
	datab => lo(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add0~16_combout\ & (!\Add1~13\)) # (!\Add0~16_combout\ & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!\Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

\Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = (\Add1~18_combout\ & (!\Add8~17\)) # (!\Add1~18_combout\ & ((\Add8~17\) # (GND)))
-- \Add8~19\ = CARRY((!\Add8~17\) # (!\Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datad => VCC,
	cin => \Add8~17\,
	combout => \Add8~18_combout\,
	cout => \Add8~19\);

\lo~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~93_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~18_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~18_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~93_combout\);

\lo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~93_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(9));

\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (hi(9) & ((lo(9) & (\Add0~17\ & VCC)) # (!lo(9) & (!\Add0~17\)))) # (!hi(9) & ((lo(9) & (!\Add0~17\)) # (!lo(9) & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((hi(9) & (!lo(9) & !\Add0~17\)) # (!hi(9) & ((!\Add0~17\) # (!lo(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(9),
	datab => lo(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\Add0~18_combout\ & (\Add1~15\ $ (GND))) # (!\Add0~18_combout\ & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((\Add0~18_combout\ & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

\Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (\Add1~18_combout\ & (\Add6~17\ & VCC)) # (!\Add1~18_combout\ & (!\Add6~17\))
-- \Add6~19\ = CARRY((!\Add1~18_combout\ & !\Add6~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

\Add6~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~83_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~18_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~83_combout\);

\hi[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~83_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(9));

\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((hi(10) $ (lo(10) $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((hi(10) & ((lo(10)) # (!\Add0~19\))) # (!hi(10) & (lo(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(10),
	datab => lo(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Add0~20_combout\ & (!\Add1~17\)) # (!\Add0~20_combout\ & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!\Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

\Add8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~22_combout\ = (\Add1~22_combout\ & (!\Add8~21\)) # (!\Add1~22_combout\ & ((\Add8~21\) # (GND)))
-- \Add8~23\ = CARRY((!\Add8~21\) # (!\Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datad => VCC,
	cin => \Add8~21\,
	combout => \Add8~22_combout\,
	cout => \Add8~23\);

\Add8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~24_combout\ = (\Add1~24_combout\ & (\Add8~23\ $ (GND))) # (!\Add1~24_combout\ & (!\Add8~23\ & VCC))
-- \Add8~25\ = CARRY((\Add1~24_combout\ & !\Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datad => VCC,
	cin => \Add8~23\,
	combout => \Add8~24_combout\,
	cout => \Add8~25\);

\Add8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~26_combout\ = (\Add1~26_combout\ & (!\Add8~25\)) # (!\Add1~26_combout\ & ((\Add8~25\) # (GND)))
-- \Add8~27\ = CARRY((!\Add8~25\) # (!\Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datad => VCC,
	cin => \Add8~25\,
	combout => \Add8~26_combout\,
	cout => \Add8~27\);

\Add8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~28_combout\ = (\Add1~28_combout\ & (\Add8~27\ $ (GND))) # (!\Add1~28_combout\ & (!\Add8~27\ & VCC))
-- \Add8~29\ = CARRY((\Add1~28_combout\ & !\Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datad => VCC,
	cin => \Add8~27\,
	combout => \Add8~28_combout\,
	cout => \Add8~29\);

\Add8~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~30_combout\ = (\Add1~30_combout\ & (!\Add8~29\)) # (!\Add1~30_combout\ & ((\Add8~29\) # (GND)))
-- \Add8~31\ = CARRY((!\Add8~29\) # (!\Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datad => VCC,
	cin => \Add8~29\,
	combout => \Add8~30_combout\,
	cout => \Add8~31\);

\Add8~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~32_combout\ = (\Add1~32_combout\ & (\Add8~31\ $ (GND))) # (!\Add1~32_combout\ & (!\Add8~31\ & VCC))
-- \Add8~33\ = CARRY((\Add1~32_combout\ & !\Add8~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datad => VCC,
	cin => \Add8~31\,
	combout => \Add8~32_combout\,
	cout => \Add8~33\);

\Add8~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~34_combout\ = (\Add1~34_combout\ & (!\Add8~33\)) # (!\Add1~34_combout\ & ((\Add8~33\) # (GND)))
-- \Add8~35\ = CARRY((!\Add8~33\) # (!\Add1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datad => VCC,
	cin => \Add8~33\,
	combout => \Add8~34_combout\,
	cout => \Add8~35\);

\Add8~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~36_combout\ = (\Add1~36_combout\ & (\Add8~35\ $ (GND))) # (!\Add1~36_combout\ & (!\Add8~35\ & VCC))
-- \Add8~37\ = CARRY((\Add1~36_combout\ & !\Add8~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datad => VCC,
	cin => \Add8~35\,
	combout => \Add8~36_combout\,
	cout => \Add8~37\);

\Add8~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~38_combout\ = (\Add1~38_combout\ & (!\Add8~37\)) # (!\Add1~38_combout\ & ((\Add8~37\) # (GND)))
-- \Add8~39\ = CARRY((!\Add8~37\) # (!\Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datad => VCC,
	cin => \Add8~37\,
	combout => \Add8~38_combout\,
	cout => \Add8~39\);

\Add8~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~40_combout\ = (\Add1~40_combout\ & (\Add8~39\ $ (GND))) # (!\Add1~40_combout\ & (!\Add8~39\ & VCC))
-- \Add8~41\ = CARRY((\Add1~40_combout\ & !\Add8~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datad => VCC,
	cin => \Add8~39\,
	combout => \Add8~40_combout\,
	cout => \Add8~41\);

\Add8~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~42_combout\ = (\Add1~42_combout\ & (!\Add8~41\)) # (!\Add1~42_combout\ & ((\Add8~41\) # (GND)))
-- \Add8~43\ = CARRY((!\Add8~41\) # (!\Add1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~42_combout\,
	datad => VCC,
	cin => \Add8~41\,
	combout => \Add8~42_combout\,
	cout => \Add8~43\);

\Add8~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~44_combout\ = (\Add1~44_combout\ & (\Add8~43\ $ (GND))) # (!\Add1~44_combout\ & (!\Add8~43\ & VCC))
-- \Add8~45\ = CARRY((\Add1~44_combout\ & !\Add8~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datad => VCC,
	cin => \Add8~43\,
	combout => \Add8~44_combout\,
	cout => \Add8~45\);

\Add8~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~46_combout\ = (\Add1~46_combout\ & (!\Add8~45\)) # (!\Add1~46_combout\ & ((\Add8~45\) # (GND)))
-- \Add8~47\ = CARRY((!\Add8~45\) # (!\Add1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datad => VCC,
	cin => \Add8~45\,
	combout => \Add8~46_combout\,
	cout => \Add8~47\);

\Add8~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~48_combout\ = (\Add1~48_combout\ & (\Add8~47\ $ (GND))) # (!\Add1~48_combout\ & (!\Add8~47\ & VCC))
-- \Add8~49\ = CARRY((\Add1~48_combout\ & !\Add8~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~48_combout\,
	datad => VCC,
	cin => \Add8~47\,
	combout => \Add8~48_combout\,
	cout => \Add8~49\);

\Add8~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~50_combout\ = (\Add1~50_combout\ & (!\Add8~49\)) # (!\Add1~50_combout\ & ((\Add8~49\) # (GND)))
-- \Add8~51\ = CARRY((!\Add8~49\) # (!\Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~50_combout\,
	datad => VCC,
	cin => \Add8~49\,
	combout => \Add8~50_combout\,
	cout => \Add8~51\);

\Add8~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~52_combout\ = (\Add1~52_combout\ & (\Add8~51\ $ (GND))) # (!\Add1~52_combout\ & (!\Add8~51\ & VCC))
-- \Add8~53\ = CARRY((\Add1~52_combout\ & !\Add8~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~52_combout\,
	datad => VCC,
	cin => \Add8~51\,
	combout => \Add8~52_combout\,
	cout => \Add8~53\);

\Add8~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~54_combout\ = (\Add1~54_combout\ & (!\Add8~53\)) # (!\Add1~54_combout\ & ((\Add8~53\) # (GND)))
-- \Add8~55\ = CARRY((!\Add8~53\) # (!\Add1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datad => VCC,
	cin => \Add8~53\,
	combout => \Add8~54_combout\,
	cout => \Add8~55\);

\Add8~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~56_combout\ = (\Add1~56_combout\ & (\Add8~55\ $ (GND))) # (!\Add1~56_combout\ & (!\Add8~55\ & VCC))
-- \Add8~57\ = CARRY((\Add1~56_combout\ & !\Add8~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datad => VCC,
	cin => \Add8~55\,
	combout => \Add8~56_combout\,
	cout => \Add8~57\);

\Add8~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~58_combout\ = (\Add1~58_combout\ & (!\Add8~57\)) # (!\Add1~58_combout\ & ((\Add8~57\) # (GND)))
-- \Add8~59\ = CARRY((!\Add8~57\) # (!\Add1~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datad => VCC,
	cin => \Add8~57\,
	combout => \Add8~58_combout\,
	cout => \Add8~59\);

\lo~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~73_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~58_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~58_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~73_combout\);

\lo[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~73_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(29));

\lo~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~74_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~56_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~56_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~74_combout\);

\lo[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~74_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(28));

\lo~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~75_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~54_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~54_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~75_combout\);

\lo[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~75_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(27));

\lo~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~76_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~52_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~52_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~76_combout\);

\lo[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~76_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(26));

\lo~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~77_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~50_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~50_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~77_combout\);

\lo[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~77_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(25));

\lo~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~78_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~48_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~48_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~78_combout\);

\lo[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~78_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(24));

\lo~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~79_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~46_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~46_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~79_combout\);

\lo[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~79_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(23));

\lo~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~80_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~44_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~44_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~80_combout\);

\lo[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~80_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(22));

\lo~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~81_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~42_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~42_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~81_combout\);

\lo[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~81_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(21));

\lo~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~82_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~40_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~40_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~82_combout\);

\lo[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~82_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(20));

\lo~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~83_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~38_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~38_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~83_combout\);

\lo[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~83_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(19));

\lo~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~84_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~36_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~36_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~84_combout\);

\lo[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~84_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(18));

\lo~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~85_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~34_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~34_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~85_combout\);

\lo[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~85_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(17));

\lo~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~86_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~32_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~32_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~86_combout\);

\lo[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~86_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(16));

\lo~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~87_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~30_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~30_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~87_combout\);

\lo[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~87_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(15));

\lo~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~88_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~28_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~28_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~88_combout\);

\lo[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~88_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(14));

\lo~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~89_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~26_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~26_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~89_combout\);

\lo[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~89_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(13));

\lo~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~90_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~24_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~24_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~90_combout\);

\lo[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~90_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(12));

\lo~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~91_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~22_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~22_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~91_combout\);

\lo[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~91_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(11));

\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (hi(11) & ((lo(11) & (\Add0~21\ & VCC)) # (!lo(11) & (!\Add0~21\)))) # (!hi(11) & ((lo(11) & (!\Add0~21\)) # (!lo(11) & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((hi(11) & (!lo(11) & !\Add0~21\)) # (!hi(11) & ((!\Add0~21\) # (!lo(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(11),
	datab => lo(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((hi(12) $ (lo(12) $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((hi(12) & ((lo(12)) # (!\Add0~23\))) # (!hi(12) & (lo(12) & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(12),
	datab => lo(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (hi(13) & ((lo(13) & (\Add0~25\ & VCC)) # (!lo(13) & (!\Add0~25\)))) # (!hi(13) & ((lo(13) & (!\Add0~25\)) # (!lo(13) & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((hi(13) & (!lo(13) & !\Add0~25\)) # (!hi(13) & ((!\Add0~25\) # (!lo(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(13),
	datab => lo(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((hi(14) $ (lo(14) $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((hi(14) & ((lo(14)) # (!\Add0~27\))) # (!hi(14) & (lo(14) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(14),
	datab => lo(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (hi(15) & ((lo(15) & (\Add0~29\ & VCC)) # (!lo(15) & (!\Add0~29\)))) # (!hi(15) & ((lo(15) & (!\Add0~29\)) # (!lo(15) & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((hi(15) & (!lo(15) & !\Add0~29\)) # (!hi(15) & ((!\Add0~29\) # (!lo(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(15),
	datab => lo(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = ((hi(16) $ (lo(16) $ (!\Add0~31\)))) # (GND)
-- \Add0~33\ = CARRY((hi(16) & ((lo(16)) # (!\Add0~31\))) # (!hi(16) & (lo(16) & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(16),
	datab => lo(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (hi(17) & ((lo(17) & (\Add0~33\ & VCC)) # (!lo(17) & (!\Add0~33\)))) # (!hi(17) & ((lo(17) & (!\Add0~33\)) # (!lo(17) & ((\Add0~33\) # (GND)))))
-- \Add0~35\ = CARRY((hi(17) & (!lo(17) & !\Add0~33\)) # (!hi(17) & ((!\Add0~33\) # (!lo(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(17),
	datab => lo(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((hi(18) $ (lo(18) $ (!\Add0~35\)))) # (GND)
-- \Add0~37\ = CARRY((hi(18) & ((lo(18)) # (!\Add0~35\))) # (!hi(18) & (lo(18) & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(18),
	datab => lo(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (hi(19) & ((lo(19) & (\Add0~37\ & VCC)) # (!lo(19) & (!\Add0~37\)))) # (!hi(19) & ((lo(19) & (!\Add0~37\)) # (!lo(19) & ((\Add0~37\) # (GND)))))
-- \Add0~39\ = CARRY((hi(19) & (!lo(19) & !\Add0~37\)) # (!hi(19) & ((!\Add0~37\) # (!lo(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(19),
	datab => lo(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = ((hi(20) $ (lo(20) $ (!\Add0~39\)))) # (GND)
-- \Add0~41\ = CARRY((hi(20) & ((lo(20)) # (!\Add0~39\))) # (!hi(20) & (lo(20) & !\Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(20),
	datab => lo(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (hi(21) & ((lo(21) & (\Add0~41\ & VCC)) # (!lo(21) & (!\Add0~41\)))) # (!hi(21) & ((lo(21) & (!\Add0~41\)) # (!lo(21) & ((\Add0~41\) # (GND)))))
-- \Add0~43\ = CARRY((hi(21) & (!lo(21) & !\Add0~41\)) # (!hi(21) & ((!\Add0~41\) # (!lo(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(21),
	datab => lo(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((hi(22) $ (lo(22) $ (!\Add0~43\)))) # (GND)
-- \Add0~45\ = CARRY((hi(22) & ((lo(22)) # (!\Add0~43\))) # (!hi(22) & (lo(22) & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(22),
	datab => lo(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (hi(23) & ((lo(23) & (\Add0~45\ & VCC)) # (!lo(23) & (!\Add0~45\)))) # (!hi(23) & ((lo(23) & (!\Add0~45\)) # (!lo(23) & ((\Add0~45\) # (GND)))))
-- \Add0~47\ = CARRY((hi(23) & (!lo(23) & !\Add0~45\)) # (!hi(23) & ((!\Add0~45\) # (!lo(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(23),
	datab => lo(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((hi(24) $ (lo(24) $ (!\Add0~47\)))) # (GND)
-- \Add0~49\ = CARRY((hi(24) & ((lo(24)) # (!\Add0~47\))) # (!hi(24) & (lo(24) & !\Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(24),
	datab => lo(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (hi(25) & ((lo(25) & (\Add0~49\ & VCC)) # (!lo(25) & (!\Add0~49\)))) # (!hi(25) & ((lo(25) & (!\Add0~49\)) # (!lo(25) & ((\Add0~49\) # (GND)))))
-- \Add0~51\ = CARRY((hi(25) & (!lo(25) & !\Add0~49\)) # (!hi(25) & ((!\Add0~49\) # (!lo(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(25),
	datab => lo(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = ((hi(26) $ (lo(26) $ (!\Add0~51\)))) # (GND)
-- \Add0~53\ = CARRY((hi(26) & ((lo(26)) # (!\Add0~51\))) # (!hi(26) & (lo(26) & !\Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(26),
	datab => lo(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (hi(27) & ((lo(27) & (\Add0~53\ & VCC)) # (!lo(27) & (!\Add0~53\)))) # (!hi(27) & ((lo(27) & (!\Add0~53\)) # (!lo(27) & ((\Add0~53\) # (GND)))))
-- \Add0~55\ = CARRY((hi(27) & (!lo(27) & !\Add0~53\)) # (!hi(27) & ((!\Add0~53\) # (!lo(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(27),
	datab => lo(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = ((hi(28) $ (lo(28) $ (!\Add0~55\)))) # (GND)
-- \Add0~57\ = CARRY((hi(28) & ((lo(28)) # (!\Add0~55\))) # (!hi(28) & (lo(28) & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(28),
	datab => lo(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (hi(29) & ((lo(29) & (\Add0~57\ & VCC)) # (!lo(29) & (!\Add0~57\)))) # (!hi(29) & ((lo(29) & (!\Add0~57\)) # (!lo(29) & ((\Add0~57\) # (GND)))))
-- \Add0~59\ = CARRY((hi(29) & (!lo(29) & !\Add0~57\)) # (!hi(29) & ((!\Add0~57\) # (!lo(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(29),
	datab => lo(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((hi(30) $ (lo(30) $ (!\Add0~59\)))) # (GND)
-- \Add0~61\ = CARRY((hi(30) & ((lo(30)) # (!\Add0~59\))) # (!hi(30) & (lo(30) & !\Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(30),
	datab => lo(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\Add0~22_combout\ & (\Add1~19\ $ (GND))) # (!\Add0~22_combout\ & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((\Add0~22_combout\ & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\Add0~24_combout\ & (!\Add1~21\)) # (!\Add0~24_combout\ & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!\Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\Add0~26_combout\ & (\Add1~23\ $ (GND))) # (!\Add0~26_combout\ & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((\Add0~26_combout\ & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\Add0~28_combout\ & (!\Add1~25\)) # (!\Add0~28_combout\ & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!\Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\Add0~30_combout\ & (\Add1~27\ $ (GND))) # (!\Add0~30_combout\ & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((\Add0~30_combout\ & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\Add0~32_combout\ & (!\Add1~29\)) # (!\Add0~32_combout\ & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!\Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\Add0~34_combout\ & (\Add1~31\ $ (GND))) # (!\Add0~34_combout\ & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((\Add0~34_combout\ & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\Add0~36_combout\ & (!\Add1~33\)) # (!\Add0~36_combout\ & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!\Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (\Add0~38_combout\ & (\Add1~35\ $ (GND))) # (!\Add0~38_combout\ & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((\Add0~38_combout\ & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\Add0~40_combout\ & (!\Add1~37\)) # (!\Add0~40_combout\ & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!\Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (\Add0~42_combout\ & (\Add1~39\ $ (GND))) # (!\Add0~42_combout\ & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((\Add0~42_combout\ & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\Add0~44_combout\ & (!\Add1~41\)) # (!\Add0~44_combout\ & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!\Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\Add0~46_combout\ & (\Add1~43\ $ (GND))) # (!\Add0~46_combout\ & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((\Add0~46_combout\ & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (\Add0~48_combout\ & (!\Add1~45\)) # (!\Add0~48_combout\ & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!\Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (\Add0~50_combout\ & (\Add1~47\ $ (GND))) # (!\Add0~50_combout\ & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((\Add0~50_combout\ & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\Add0~52_combout\ & (!\Add1~49\)) # (!\Add0~52_combout\ & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!\Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~52_combout\,
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (\Add0~54_combout\ & (\Add1~51\ $ (GND))) # (!\Add0~54_combout\ & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((\Add0~54_combout\ & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (\Add0~56_combout\ & (!\Add1~53\)) # (!\Add0~56_combout\ & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!\Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (\Add0~58_combout\ & (\Add1~55\ $ (GND))) # (!\Add0~58_combout\ & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((\Add0~58_combout\ & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~58_combout\,
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (\Add0~60_combout\ & (!\Add1~57\)) # (!\Add0~60_combout\ & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!\Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = \Add0~62_combout\ $ (!\Add1~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	cin => \Add1~59\,
	combout => \Add1~60_combout\);

\Add8~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~60_combout\ = \Add1~60_combout\ $ (!\Add8~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~60_combout\,
	cin => \Add8~59\,
	combout => \Add8~60_combout\);

\lo~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \lo~72_combout\ = (!\reset~input_o\ & (!\s_currentState.S6~q\ & (\Add8~60_combout\ & !\sw_rnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \Add8~60_combout\,
	datad => \sw_rnd~input_o\,
	combout => \lo~72_combout\);

\lo[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \lo~72_combout\,
	ena => \lo[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lo(30));

\Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (\Add1~20_combout\ & ((GND) # (!\Add6~19\))) # (!\Add1~20_combout\ & (\Add6~19\ $ (GND)))
-- \Add6~21\ = CARRY((\Add1~20_combout\) # (!\Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

\Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = (\Add1~22_combout\ & (\Add6~21\ & VCC)) # (!\Add1~22_combout\ & (!\Add6~21\))
-- \Add6~23\ = CARRY((!\Add1~22_combout\ & !\Add6~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datad => VCC,
	cin => \Add6~21\,
	combout => \Add6~22_combout\,
	cout => \Add6~23\);

\Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~24_combout\ = (\Add1~24_combout\ & ((GND) # (!\Add6~23\))) # (!\Add1~24_combout\ & (\Add6~23\ $ (GND)))
-- \Add6~25\ = CARRY((\Add1~24_combout\) # (!\Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datad => VCC,
	cin => \Add6~23\,
	combout => \Add6~24_combout\,
	cout => \Add6~25\);

\Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~26_combout\ = (\Add1~26_combout\ & (\Add6~25\ & VCC)) # (!\Add1~26_combout\ & (!\Add6~25\))
-- \Add6~27\ = CARRY((!\Add1~26_combout\ & !\Add6~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datad => VCC,
	cin => \Add6~25\,
	combout => \Add6~26_combout\,
	cout => \Add6~27\);

\Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~28_combout\ = (\Add1~28_combout\ & ((GND) # (!\Add6~27\))) # (!\Add1~28_combout\ & (\Add6~27\ $ (GND)))
-- \Add6~29\ = CARRY((\Add1~28_combout\) # (!\Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datad => VCC,
	cin => \Add6~27\,
	combout => \Add6~28_combout\,
	cout => \Add6~29\);

\Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~30_combout\ = (\Add1~30_combout\ & (\Add6~29\ & VCC)) # (!\Add1~30_combout\ & (!\Add6~29\))
-- \Add6~31\ = CARRY((!\Add1~30_combout\ & !\Add6~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datad => VCC,
	cin => \Add6~29\,
	combout => \Add6~30_combout\,
	cout => \Add6~31\);

\Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~32_combout\ = (\Add1~32_combout\ & ((GND) # (!\Add6~31\))) # (!\Add1~32_combout\ & (\Add6~31\ $ (GND)))
-- \Add6~33\ = CARRY((\Add1~32_combout\) # (!\Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datad => VCC,
	cin => \Add6~31\,
	combout => \Add6~32_combout\,
	cout => \Add6~33\);

\Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~34_combout\ = (\Add1~34_combout\ & (\Add6~33\ & VCC)) # (!\Add1~34_combout\ & (!\Add6~33\))
-- \Add6~35\ = CARRY((!\Add1~34_combout\ & !\Add6~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datad => VCC,
	cin => \Add6~33\,
	combout => \Add6~34_combout\,
	cout => \Add6~35\);

\Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = (\Add1~36_combout\ & ((GND) # (!\Add6~35\))) # (!\Add1~36_combout\ & (\Add6~35\ $ (GND)))
-- \Add6~37\ = CARRY((\Add1~36_combout\) # (!\Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datad => VCC,
	cin => \Add6~35\,
	combout => \Add6~36_combout\,
	cout => \Add6~37\);

\Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~38_combout\ = (\Add1~38_combout\ & (\Add6~37\ & VCC)) # (!\Add1~38_combout\ & (!\Add6~37\))
-- \Add6~39\ = CARRY((!\Add1~38_combout\ & !\Add6~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datad => VCC,
	cin => \Add6~37\,
	combout => \Add6~38_combout\,
	cout => \Add6~39\);

\Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~40_combout\ = (\Add1~40_combout\ & ((GND) # (!\Add6~39\))) # (!\Add1~40_combout\ & (\Add6~39\ $ (GND)))
-- \Add6~41\ = CARRY((\Add1~40_combout\) # (!\Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datad => VCC,
	cin => \Add6~39\,
	combout => \Add6~40_combout\,
	cout => \Add6~41\);

\Add6~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~42_combout\ = (\Add1~42_combout\ & (\Add6~41\ & VCC)) # (!\Add1~42_combout\ & (!\Add6~41\))
-- \Add6~43\ = CARRY((!\Add1~42_combout\ & !\Add6~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~42_combout\,
	datad => VCC,
	cin => \Add6~41\,
	combout => \Add6~42_combout\,
	cout => \Add6~43\);

\Add6~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~44_combout\ = (\Add1~44_combout\ & ((GND) # (!\Add6~43\))) # (!\Add1~44_combout\ & (\Add6~43\ $ (GND)))
-- \Add6~45\ = CARRY((\Add1~44_combout\) # (!\Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datad => VCC,
	cin => \Add6~43\,
	combout => \Add6~44_combout\,
	cout => \Add6~45\);

\Add6~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~46_combout\ = (\Add1~46_combout\ & (\Add6~45\ & VCC)) # (!\Add1~46_combout\ & (!\Add6~45\))
-- \Add6~47\ = CARRY((!\Add1~46_combout\ & !\Add6~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datad => VCC,
	cin => \Add6~45\,
	combout => \Add6~46_combout\,
	cout => \Add6~47\);

\Add6~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~48_combout\ = (\Add1~48_combout\ & ((GND) # (!\Add6~47\))) # (!\Add1~48_combout\ & (\Add6~47\ $ (GND)))
-- \Add6~49\ = CARRY((\Add1~48_combout\) # (!\Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~48_combout\,
	datad => VCC,
	cin => \Add6~47\,
	combout => \Add6~48_combout\,
	cout => \Add6~49\);

\Add6~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~50_combout\ = (\Add1~50_combout\ & (\Add6~49\ & VCC)) # (!\Add1~50_combout\ & (!\Add6~49\))
-- \Add6~51\ = CARRY((!\Add1~50_combout\ & !\Add6~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~50_combout\,
	datad => VCC,
	cin => \Add6~49\,
	combout => \Add6~50_combout\,
	cout => \Add6~51\);

\Add6~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~52_combout\ = (\Add1~52_combout\ & ((GND) # (!\Add6~51\))) # (!\Add1~52_combout\ & (\Add6~51\ $ (GND)))
-- \Add6~53\ = CARRY((\Add1~52_combout\) # (!\Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~52_combout\,
	datad => VCC,
	cin => \Add6~51\,
	combout => \Add6~52_combout\,
	cout => \Add6~53\);

\Add6~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = (\Add1~54_combout\ & (\Add6~53\ & VCC)) # (!\Add1~54_combout\ & (!\Add6~53\))
-- \Add6~55\ = CARRY((!\Add1~54_combout\ & !\Add6~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datad => VCC,
	cin => \Add6~53\,
	combout => \Add6~54_combout\,
	cout => \Add6~55\);

\Add6~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~56_combout\ = (\Add1~56_combout\ & ((GND) # (!\Add6~55\))) # (!\Add1~56_combout\ & (\Add6~55\ $ (GND)))
-- \Add6~57\ = CARRY((\Add1~56_combout\) # (!\Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datad => VCC,
	cin => \Add6~55\,
	combout => \Add6~56_combout\,
	cout => \Add6~57\);

\Add6~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~58_combout\ = (\Add1~58_combout\ & (\Add6~57\ & VCC)) # (!\Add1~58_combout\ & (!\Add6~57\))
-- \Add6~59\ = CARRY((!\Add1~58_combout\ & !\Add6~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datad => VCC,
	cin => \Add6~57\,
	combout => \Add6~58_combout\,
	cout => \Add6~59\);

\Add6~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~63_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~58_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~63_combout\);

\hi[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~63_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(29));

\Add6~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~64_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~56_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~64_combout\);

\hi[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~64_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(28));

\Add6~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~65_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~54_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~65_combout\);

\hi[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~65_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(27));

\Add6~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~66_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~52_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~66_combout\);

\hi[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~66_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(26));

\Add6~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~67_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~50_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~67_combout\);

\hi[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~67_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(25));

\Add6~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~68_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~48_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~68_combout\);

\hi[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~68_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(24));

\Add6~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~69_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~46_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~69_combout\);

\hi[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~69_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(23));

\Add6~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~70_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~44_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~70_combout\);

\hi[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~70_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(22));

\Add6~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~71_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~42_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~71_combout\);

\hi[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~71_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(21));

\Add6~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~72_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~40_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~72_combout\);

\hi[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~72_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(20));

\Add6~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~73_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~38_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~73_combout\);

\hi[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~73_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(19));

\Add6~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~74_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~36_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~74_combout\);

\hi[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~74_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(18));

\Add6~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~75_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~34_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~75_combout\);

\hi[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~75_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(17));

\Add6~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~76_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~32_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~76_combout\);

\hi[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~76_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(16));

\Add6~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~77_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~30_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~77_combout\);

\hi[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~77_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(15));

\Add6~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~78_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~28_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~78_combout\);

\hi[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~78_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(14));

\Add6~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~79_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~26_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~79_combout\);

\hi[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~79_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(13));

\Add6~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~80_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~24_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~80_combout\);

\hi[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~80_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(12));

\Add6~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~81_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~22_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~81_combout\);

\hi[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~81_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(11));

\Add6~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~82_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~20_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~82_combout\);

\hi[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~82_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(10));

\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!hi(10) & (!hi(9) & (!hi(8) & !hi(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hi(10),
	datab => hi(9),
	datac => hi(8),
	datad => hi(7),
	combout => \LessThan3~0_combout\);

\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!hi(14) & (!hi(13) & (!hi(12) & !hi(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hi(14),
	datab => hi(13),
	datac => hi(12),
	datad => hi(11),
	combout => \LessThan3~1_combout\);

\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (!hi(18) & (!hi(17) & (!hi(16) & !hi(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hi(18),
	datab => hi(17),
	datac => hi(16),
	datad => hi(15),
	combout => \LessThan3~2_combout\);

\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (!hi(22) & (!hi(21) & (!hi(20) & !hi(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hi(22),
	datab => hi(21),
	datac => hi(20),
	datad => hi(19),
	combout => \LessThan3~3_combout\);

\LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (\LessThan3~0_combout\ & (\LessThan3~1_combout\ & (\LessThan3~2_combout\ & \LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan3~1_combout\,
	datac => \LessThan3~2_combout\,
	datad => \LessThan3~3_combout\,
	combout => \LessThan3~4_combout\);

\LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = (!hi(26) & (!hi(25) & (!hi(24) & !hi(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hi(26),
	datab => hi(25),
	datac => hi(24),
	datad => hi(23),
	combout => \LessThan3~5_combout\);

\LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((hi(0) & \rnd_num[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(0),
	datab => \rnd_num[0]~input_o\,
	datad => VCC,
	cout => \LessThan3~7_cout\);

\LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((hi(1) & (!\rnd_num[1]~input_o\ & !\LessThan3~7_cout\)) # (!hi(1) & ((!\LessThan3~7_cout\) # (!\rnd_num[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(1),
	datab => \rnd_num[1]~input_o\,
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

\LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((hi(2) & (\rnd_num[2]~input_o\ & !\LessThan3~9_cout\)) # (!hi(2) & ((\rnd_num[2]~input_o\) # (!\LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(2),
	datab => \rnd_num[2]~input_o\,
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

\LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((hi(3) & ((!\LessThan3~11_cout\) # (!\rnd_num[3]~input_o\))) # (!hi(3) & (!\rnd_num[3]~input_o\ & !\LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(3),
	datab => \rnd_num[3]~input_o\,
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

\LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~15_cout\ = CARRY((hi(4) & (\rnd_num[4]~input_o\ & !\LessThan3~13_cout\)) # (!hi(4) & ((\rnd_num[4]~input_o\) # (!\LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(4),
	datab => \rnd_num[4]~input_o\,
	datad => VCC,
	cin => \LessThan3~13_cout\,
	cout => \LessThan3~15_cout\);

\LessThan3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~17_cout\ = CARRY((hi(5) & (!\rnd_num[5]~input_o\ & !\LessThan3~15_cout\)) # (!hi(5) & ((!\LessThan3~15_cout\) # (!\rnd_num[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(5),
	datab => \rnd_num[5]~input_o\,
	datad => VCC,
	cin => \LessThan3~15_cout\,
	cout => \LessThan3~17_cout\);

\LessThan3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~18_combout\ = (hi(6) & ((\rnd_num[6]~input_o\) # (!\LessThan3~17_cout\))) # (!hi(6) & (\rnd_num[6]~input_o\ & !\LessThan3~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(6),
	datab => \rnd_num[6]~input_o\,
	cin => \LessThan3~17_cout\,
	combout => \LessThan3~18_combout\);

\LessThan3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~20_combout\ = (!hi(30) & (!hi(29) & (!hi(28) & !hi(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hi(30),
	datab => hi(29),
	datac => hi(28),
	datad => hi(27),
	combout => \LessThan3~20_combout\);

\LessThan3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~21_combout\ = (\LessThan3~4_combout\ & (\LessThan3~5_combout\ & (\LessThan3~18_combout\ & \LessThan3~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~4_combout\,
	datab => \LessThan3~5_combout\,
	datac => \LessThan3~18_combout\,
	datad => \LessThan3~20_combout\,
	combout => \LessThan3~21_combout\);

\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (lo(11)) # ((lo(10)) # ((lo(9)) # (lo(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lo(11),
	datab => lo(10),
	datac => lo(9),
	datad => lo(8),
	combout => \process_0~0_combout\);

\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (lo(15)) # ((lo(14)) # ((lo(13)) # (lo(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lo(15),
	datab => lo(14),
	datac => lo(13),
	datad => lo(12),
	combout => \process_0~1_combout\);

\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (lo(19)) # ((lo(18)) # ((lo(17)) # (lo(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lo(19),
	datab => lo(18),
	datac => lo(17),
	datad => lo(16),
	combout => \process_0~2_combout\);

\process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (lo(23)) # ((lo(22)) # ((lo(21)) # (lo(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lo(23),
	datab => lo(22),
	datac => lo(21),
	datad => lo(20),
	combout => \process_0~3_combout\);

\process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\process_0~0_combout\) # ((\process_0~1_combout\) # ((\process_0~2_combout\) # (\process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \process_0~1_combout\,
	datac => \process_0~2_combout\,
	datad => \process_0~3_combout\,
	combout => \process_0~4_combout\);

\process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (lo(27)) # ((lo(26)) # ((lo(25)) # (lo(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lo(27),
	datab => lo(26),
	datac => lo(25),
	datad => lo(24),
	combout => \process_0~5_combout\);

\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((!\rnd_num[0]~input_o\ & lo(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_num[0]~input_o\,
	datab => lo(0),
	datad => VCC,
	cout => \LessThan2~1_cout\);

\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((\rnd_num[1]~input_o\ & ((!\LessThan2~1_cout\) # (!lo(1)))) # (!\rnd_num[1]~input_o\ & (!lo(1) & !\LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_num[1]~input_o\,
	datab => lo(1),
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((\rnd_num[2]~input_o\ & (lo(2) & !\LessThan2~3_cout\)) # (!\rnd_num[2]~input_o\ & ((lo(2)) # (!\LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_num[2]~input_o\,
	datab => lo(2),
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((\rnd_num[3]~input_o\ & ((!\LessThan2~5_cout\) # (!lo(3)))) # (!\rnd_num[3]~input_o\ & (!lo(3) & !\LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_num[3]~input_o\,
	datab => lo(3),
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

\LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\rnd_num[4]~input_o\ & (lo(4) & !\LessThan2~7_cout\)) # (!\rnd_num[4]~input_o\ & ((lo(4)) # (!\LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_num[4]~input_o\,
	datab => lo(4),
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

\LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((\rnd_num[5]~input_o\ & ((!\LessThan2~9_cout\) # (!lo(5)))) # (!\rnd_num[5]~input_o\ & (!lo(5) & !\LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_num[5]~input_o\,
	datab => lo(5),
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

\LessThan2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~12_combout\ = (\rnd_num[6]~input_o\ & (lo(6) & !\LessThan2~11_cout\)) # (!\rnd_num[6]~input_o\ & ((lo(6)) # (!\LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_num[6]~input_o\,
	datab => lo(6),
	cin => \LessThan2~11_cout\,
	combout => \LessThan2~12_combout\);

\process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (lo(30)) # ((lo(29)) # ((lo(28)) # (\LessThan2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lo(30),
	datab => lo(29),
	datac => lo(28),
	datad => \LessThan2~12_combout\,
	combout => \process_0~6_combout\);

\process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (lo(7)) # ((\process_0~4_combout\) # ((\process_0~5_combout\) # (\process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lo(7),
	datab => \process_0~4_combout\,
	datac => \process_0~5_combout\,
	datad => \process_0~6_combout\,
	combout => \process_0~7_combout\);

\process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (\LessThan3~21_combout\) # (\process_0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~21_combout\,
	datab => \process_0~7_combout\,
	combout => \process_0~8_combout\);

\at[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[0]~1_combout\ = (\s_currentState.S2~q\ & (\sw_rnd~input_o\ & (!\reset~input_o\ & !\process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S2~q\,
	datab => \sw_rnd~input_o\,
	datac => \reset~input_o\,
	datad => \process_0~8_combout\,
	combout => \at[0]~1_combout\);

\at[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \rnd_num[6]~input_o\,
	ena => \at[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => at(6));

\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = \Add5~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add5~15\,
	combout => \Add5~16_combout\);

\Add6~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~60_combout\ = \Add1~60_combout\ $ (\Add6~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~60_combout\,
	cin => \Add6~59\,
	combout => \Add6~60_combout\);

\Add6~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~62_combout\ = (!\lo[18]~54_combout\ & ((\sw_rnd~input_o\ & (\Add5~16_combout\)) # (!\sw_rnd~input_o\ & ((\Add6~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lo[18]~54_combout\,
	datab => \Add5~16_combout\,
	datac => \Add6~60_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Add6~62_combout\);

\hi[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Add6~62_combout\,
	ena => \hi[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hi(30));

\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY((hi(0) & lo(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(0),
	datab => lo(0),
	datad => VCC,
	cout => \LessThan4~1_cout\);

\LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((hi(1) & (!lo(1) & !\LessThan4~1_cout\)) # (!hi(1) & ((!\LessThan4~1_cout\) # (!lo(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(1),
	datab => lo(1),
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

\LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((hi(2) & (lo(2) & !\LessThan4~3_cout\)) # (!hi(2) & ((lo(2)) # (!\LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(2),
	datab => lo(2),
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

\LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((hi(3) & ((!\LessThan4~5_cout\) # (!lo(3)))) # (!hi(3) & (!lo(3) & !\LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(3),
	datab => lo(3),
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

\LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((hi(4) & (lo(4) & !\LessThan4~7_cout\)) # (!hi(4) & ((lo(4)) # (!\LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(4),
	datab => lo(4),
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

\LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((hi(5) & (!lo(5) & !\LessThan4~9_cout\)) # (!hi(5) & ((!\LessThan4~9_cout\) # (!lo(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(5),
	datab => lo(5),
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

\LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((hi(6) & ((lo(6)) # (!\LessThan4~11_cout\))) # (!hi(6) & (lo(6) & !\LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(6),
	datab => lo(6),
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

\LessThan4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~15_cout\ = CARRY((hi(7) & ((!\LessThan4~13_cout\) # (!lo(7)))) # (!hi(7) & (!lo(7) & !\LessThan4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(7),
	datab => lo(7),
	datad => VCC,
	cin => \LessThan4~13_cout\,
	cout => \LessThan4~15_cout\);

\LessThan4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~17_cout\ = CARRY((hi(8) & (lo(8) & !\LessThan4~15_cout\)) # (!hi(8) & ((lo(8)) # (!\LessThan4~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(8),
	datab => lo(8),
	datad => VCC,
	cin => \LessThan4~15_cout\,
	cout => \LessThan4~17_cout\);

\LessThan4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~19_cout\ = CARRY((hi(9) & ((!\LessThan4~17_cout\) # (!lo(9)))) # (!hi(9) & (!lo(9) & !\LessThan4~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(9),
	datab => lo(9),
	datad => VCC,
	cin => \LessThan4~17_cout\,
	cout => \LessThan4~19_cout\);

\LessThan4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~21_cout\ = CARRY((hi(10) & (lo(10) & !\LessThan4~19_cout\)) # (!hi(10) & ((lo(10)) # (!\LessThan4~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(10),
	datab => lo(10),
	datad => VCC,
	cin => \LessThan4~19_cout\,
	cout => \LessThan4~21_cout\);

\LessThan4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~23_cout\ = CARRY((hi(11) & ((!\LessThan4~21_cout\) # (!lo(11)))) # (!hi(11) & (!lo(11) & !\LessThan4~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(11),
	datab => lo(11),
	datad => VCC,
	cin => \LessThan4~21_cout\,
	cout => \LessThan4~23_cout\);

\LessThan4~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~25_cout\ = CARRY((hi(12) & (lo(12) & !\LessThan4~23_cout\)) # (!hi(12) & ((lo(12)) # (!\LessThan4~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(12),
	datab => lo(12),
	datad => VCC,
	cin => \LessThan4~23_cout\,
	cout => \LessThan4~25_cout\);

\LessThan4~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~27_cout\ = CARRY((hi(13) & ((!\LessThan4~25_cout\) # (!lo(13)))) # (!hi(13) & (!lo(13) & !\LessThan4~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(13),
	datab => lo(13),
	datad => VCC,
	cin => \LessThan4~25_cout\,
	cout => \LessThan4~27_cout\);

\LessThan4~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~29_cout\ = CARRY((hi(14) & (lo(14) & !\LessThan4~27_cout\)) # (!hi(14) & ((lo(14)) # (!\LessThan4~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(14),
	datab => lo(14),
	datad => VCC,
	cin => \LessThan4~27_cout\,
	cout => \LessThan4~29_cout\);

\LessThan4~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~31_cout\ = CARRY((hi(15) & ((!\LessThan4~29_cout\) # (!lo(15)))) # (!hi(15) & (!lo(15) & !\LessThan4~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(15),
	datab => lo(15),
	datad => VCC,
	cin => \LessThan4~29_cout\,
	cout => \LessThan4~31_cout\);

\LessThan4~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~33_cout\ = CARRY((hi(16) & (lo(16) & !\LessThan4~31_cout\)) # (!hi(16) & ((lo(16)) # (!\LessThan4~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(16),
	datab => lo(16),
	datad => VCC,
	cin => \LessThan4~31_cout\,
	cout => \LessThan4~33_cout\);

\LessThan4~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~35_cout\ = CARRY((hi(17) & ((!\LessThan4~33_cout\) # (!lo(17)))) # (!hi(17) & (!lo(17) & !\LessThan4~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(17),
	datab => lo(17),
	datad => VCC,
	cin => \LessThan4~33_cout\,
	cout => \LessThan4~35_cout\);

\LessThan4~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~37_cout\ = CARRY((hi(18) & (lo(18) & !\LessThan4~35_cout\)) # (!hi(18) & ((lo(18)) # (!\LessThan4~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(18),
	datab => lo(18),
	datad => VCC,
	cin => \LessThan4~35_cout\,
	cout => \LessThan4~37_cout\);

\LessThan4~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~39_cout\ = CARRY((hi(19) & ((!\LessThan4~37_cout\) # (!lo(19)))) # (!hi(19) & (!lo(19) & !\LessThan4~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(19),
	datab => lo(19),
	datad => VCC,
	cin => \LessThan4~37_cout\,
	cout => \LessThan4~39_cout\);

\LessThan4~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~41_cout\ = CARRY((hi(20) & (lo(20) & !\LessThan4~39_cout\)) # (!hi(20) & ((lo(20)) # (!\LessThan4~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(20),
	datab => lo(20),
	datad => VCC,
	cin => \LessThan4~39_cout\,
	cout => \LessThan4~41_cout\);

\LessThan4~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~43_cout\ = CARRY((hi(21) & ((!\LessThan4~41_cout\) # (!lo(21)))) # (!hi(21) & (!lo(21) & !\LessThan4~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(21),
	datab => lo(21),
	datad => VCC,
	cin => \LessThan4~41_cout\,
	cout => \LessThan4~43_cout\);

\LessThan4~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~45_cout\ = CARRY((hi(22) & (lo(22) & !\LessThan4~43_cout\)) # (!hi(22) & ((lo(22)) # (!\LessThan4~43_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(22),
	datab => lo(22),
	datad => VCC,
	cin => \LessThan4~43_cout\,
	cout => \LessThan4~45_cout\);

\LessThan4~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~47_cout\ = CARRY((hi(23) & ((!\LessThan4~45_cout\) # (!lo(23)))) # (!hi(23) & (!lo(23) & !\LessThan4~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(23),
	datab => lo(23),
	datad => VCC,
	cin => \LessThan4~45_cout\,
	cout => \LessThan4~47_cout\);

\LessThan4~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~49_cout\ = CARRY((hi(24) & (lo(24) & !\LessThan4~47_cout\)) # (!hi(24) & ((lo(24)) # (!\LessThan4~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(24),
	datab => lo(24),
	datad => VCC,
	cin => \LessThan4~47_cout\,
	cout => \LessThan4~49_cout\);

\LessThan4~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~51_cout\ = CARRY((hi(25) & ((!\LessThan4~49_cout\) # (!lo(25)))) # (!hi(25) & (!lo(25) & !\LessThan4~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(25),
	datab => lo(25),
	datad => VCC,
	cin => \LessThan4~49_cout\,
	cout => \LessThan4~51_cout\);

\LessThan4~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~53_cout\ = CARRY((hi(26) & (lo(26) & !\LessThan4~51_cout\)) # (!hi(26) & ((lo(26)) # (!\LessThan4~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(26),
	datab => lo(26),
	datad => VCC,
	cin => \LessThan4~51_cout\,
	cout => \LessThan4~53_cout\);

\LessThan4~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~55_cout\ = CARRY((hi(27) & ((!\LessThan4~53_cout\) # (!lo(27)))) # (!hi(27) & (!lo(27) & !\LessThan4~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(27),
	datab => lo(27),
	datad => VCC,
	cin => \LessThan4~53_cout\,
	cout => \LessThan4~55_cout\);

\LessThan4~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~57_cout\ = CARRY((hi(28) & (lo(28) & !\LessThan4~55_cout\)) # (!hi(28) & ((lo(28)) # (!\LessThan4~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(28),
	datab => lo(28),
	datad => VCC,
	cin => \LessThan4~55_cout\,
	cout => \LessThan4~57_cout\);

\LessThan4~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~59_cout\ = CARRY((hi(29) & ((!\LessThan4~57_cout\) # (!lo(29)))) # (!hi(29) & (!lo(29) & !\LessThan4~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(29),
	datab => lo(29),
	datad => VCC,
	cin => \LessThan4~57_cout\,
	cout => \LessThan4~59_cout\);

\LessThan4~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~60_combout\ = (hi(30) & (lo(30) & !\LessThan4~59_cout\)) # (!hi(30) & ((lo(30)) # (!\LessThan4~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hi(30),
	datab => lo(30),
	cin => \LessThan4~59_cout\,
	combout => \LessThan4~60_combout\);

\s_currentState~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~20_combout\ = (\Equal1~0_combout\ & (\s_currentState.escolha~q\ & (!\LessThan4~60_combout\ & \s_currentState~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \s_currentState.escolha~q\,
	datac => \LessThan4~60_combout\,
	datad => \s_currentState~19_combout\,
	combout => \s_currentState~20_combout\);

\s_currentState.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.S3~q\);

\s_count[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~31_combout\ = s_count(0) $ (VCC)
-- \s_count[0]~32\ = CARRY(s_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(0),
	datad => VCC,
	combout => \s_count[0]~31_combout\,
	cout => \s_count[0]~32\);

\s_count[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[11]~53_combout\ = (s_count(11) & (!\s_count[10]~52\)) # (!s_count(11) & ((\s_count[10]~52\) # (GND)))
-- \s_count[11]~54\ = CARRY((!\s_count[10]~52\) # (!s_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(11),
	datad => VCC,
	cin => \s_count[10]~52\,
	combout => \s_count[11]~53_combout\,
	cout => \s_count[11]~54\);

\s_count[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[12]~58_combout\ = (s_count(12) & (\s_count[11]~54\ $ (GND))) # (!s_count(12) & (!\s_count[11]~54\ & VCC))
-- \s_count[12]~59\ = CARRY((s_count(12) & !\s_count[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(12),
	datad => VCC,
	cin => \s_count[11]~54\,
	combout => \s_count[12]~58_combout\,
	cout => \s_count[12]~59\);

\s_count[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[26]~86_combout\ = (s_count(26) & (\s_count[25]~85\ $ (GND))) # (!s_count(26) & (!\s_count[25]~85\ & VCC))
-- \s_count[26]~87\ = CARRY((s_count(26) & !\s_count[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(26),
	datad => VCC,
	cin => \s_count[25]~85\,
	combout => \s_count[26]~86_combout\,
	cout => \s_count[26]~87\);

\s_count[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[27]~88_combout\ = (s_count(27) & (!\s_count[26]~87\)) # (!s_count(27) & ((\s_count[26]~87\) # (GND)))
-- \s_count[27]~89\ = CARRY((!\s_count[26]~87\) # (!s_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(27),
	datad => VCC,
	cin => \s_count[26]~87\,
	combout => \s_count[27]~88_combout\,
	cout => \s_count[27]~89\);

\s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[27]~88_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(27));

\s_count[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[28]~90_combout\ = (s_count(28) & (\s_count[27]~89\ $ (GND))) # (!s_count(28) & (!\s_count[27]~89\ & VCC))
-- \s_count[28]~91\ = CARRY((s_count(28) & !\s_count[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(28),
	datad => VCC,
	cin => \s_count[27]~89\,
	combout => \s_count[28]~90_combout\,
	cout => \s_count[28]~91\);

\s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[28]~90_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(28));

\s_count[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[29]~92_combout\ = (s_count(29) & (!\s_count[28]~91\)) # (!s_count(29) & ((\s_count[28]~91\) # (GND)))
-- \s_count[29]~93\ = CARRY((!\s_count[28]~91\) # (!s_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(29),
	datad => VCC,
	cin => \s_count[28]~91\,
	combout => \s_count[29]~92_combout\,
	cout => \s_count[29]~93\);

\s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[29]~92_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(29));

\s_count[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[30]~94_combout\ = s_count(30) $ (!\s_count[29]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(30),
	cin => \s_count[29]~93\,
	combout => \s_count[30]~94_combout\);

\s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[30]~94_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(30));

\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~6_combout\) # ((s_count(30)) # (!\texts1[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => s_count(30),
	datad => \texts1[0]~0_combout\,
	combout => \LessThan0~7_combout\);

\s_currentState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentState~18_combout\ = (!\reset~input_o\ & ((\s_currentState.S0~q\) # (\LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \s_currentState.S0~q\,
	datad => \LessThan0~7_combout\,
	combout => \s_currentState~18_combout\);

\s_currentState.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.S0~q\);

\s_count[6]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[6]~57_combout\ = (\reset~input_o\) # ((\s_currentState.S1~q\) # (!\s_currentState.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S1~q\,
	datad => \s_currentState.S0~q\,
	combout => \s_count[6]~57_combout\);

\s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[12]~58_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(12));

\s_count[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[13]~60_combout\ = (s_count(13) & (!\s_count[12]~59\)) # (!s_count(13) & ((\s_count[12]~59\) # (GND)))
-- \s_count[13]~61\ = CARRY((!\s_count[12]~59\) # (!s_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(13),
	datad => VCC,
	cin => \s_count[12]~59\,
	combout => \s_count[13]~60_combout\,
	cout => \s_count[13]~61\);

\s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[13]~60_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(13));

\s_count[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[14]~62_combout\ = (s_count(14) & (\s_count[13]~61\ $ (GND))) # (!s_count(14) & (!\s_count[13]~61\ & VCC))
-- \s_count[14]~63\ = CARRY((s_count(14) & !\s_count[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(14),
	datad => VCC,
	cin => \s_count[13]~61\,
	combout => \s_count[14]~62_combout\,
	cout => \s_count[14]~63\);

\s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[14]~62_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(14));

\s_count[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[15]~64_combout\ = (s_count(15) & (!\s_count[14]~63\)) # (!s_count(15) & ((\s_count[14]~63\) # (GND)))
-- \s_count[15]~65\ = CARRY((!\s_count[14]~63\) # (!s_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(15),
	datad => VCC,
	cin => \s_count[14]~63\,
	combout => \s_count[15]~64_combout\,
	cout => \s_count[15]~65\);

\s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[15]~64_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(15));

\s_count[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[16]~66_combout\ = (s_count(16) & (\s_count[15]~65\ $ (GND))) # (!s_count(16) & (!\s_count[15]~65\ & VCC))
-- \s_count[16]~67\ = CARRY((s_count(16) & !\s_count[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(16),
	datad => VCC,
	cin => \s_count[15]~65\,
	combout => \s_count[16]~66_combout\,
	cout => \s_count[16]~67\);

\s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[16]~66_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(16));

\s_count[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[17]~68_combout\ = (s_count(17) & (!\s_count[16]~67\)) # (!s_count(17) & ((\s_count[16]~67\) # (GND)))
-- \s_count[17]~69\ = CARRY((!\s_count[16]~67\) # (!s_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(17),
	datad => VCC,
	cin => \s_count[16]~67\,
	combout => \s_count[17]~68_combout\,
	cout => \s_count[17]~69\);

\s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[17]~68_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(17));

\s_count[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[18]~70_combout\ = (s_count(18) & (\s_count[17]~69\ $ (GND))) # (!s_count(18) & (!\s_count[17]~69\ & VCC))
-- \s_count[18]~71\ = CARRY((s_count(18) & !\s_count[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(18),
	datad => VCC,
	cin => \s_count[17]~69\,
	combout => \s_count[18]~70_combout\,
	cout => \s_count[18]~71\);

\s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[18]~70_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(18));

\s_count[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[19]~72_combout\ = (s_count(19) & (!\s_count[18]~71\)) # (!s_count(19) & ((\s_count[18]~71\) # (GND)))
-- \s_count[19]~73\ = CARRY((!\s_count[18]~71\) # (!s_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(19),
	datad => VCC,
	cin => \s_count[18]~71\,
	combout => \s_count[19]~72_combout\,
	cout => \s_count[19]~73\);

\s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[19]~72_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(19));

\s_count[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[20]~74_combout\ = (s_count(20) & (\s_count[19]~73\ $ (GND))) # (!s_count(20) & (!\s_count[19]~73\ & VCC))
-- \s_count[20]~75\ = CARRY((s_count(20) & !\s_count[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(20),
	datad => VCC,
	cin => \s_count[19]~73\,
	combout => \s_count[20]~74_combout\,
	cout => \s_count[20]~75\);

\s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[20]~74_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(20));

\s_count[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[21]~76_combout\ = (s_count(21) & (!\s_count[20]~75\)) # (!s_count(21) & ((\s_count[20]~75\) # (GND)))
-- \s_count[21]~77\ = CARRY((!\s_count[20]~75\) # (!s_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(21),
	datad => VCC,
	cin => \s_count[20]~75\,
	combout => \s_count[21]~76_combout\,
	cout => \s_count[21]~77\);

\s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[21]~76_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(21));

\s_count[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[22]~78_combout\ = (s_count(22) & (\s_count[21]~77\ $ (GND))) # (!s_count(22) & (!\s_count[21]~77\ & VCC))
-- \s_count[22]~79\ = CARRY((s_count(22) & !\s_count[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(22),
	datad => VCC,
	cin => \s_count[21]~77\,
	combout => \s_count[22]~78_combout\,
	cout => \s_count[22]~79\);

\s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[22]~78_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(22));

\s_count[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[23]~80_combout\ = (s_count(23) & (!\s_count[22]~79\)) # (!s_count(23) & ((\s_count[22]~79\) # (GND)))
-- \s_count[23]~81\ = CARRY((!\s_count[22]~79\) # (!s_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(23),
	datad => VCC,
	cin => \s_count[22]~79\,
	combout => \s_count[23]~80_combout\,
	cout => \s_count[23]~81\);

\s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[23]~80_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(23));

\s_count[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[24]~82_combout\ = (s_count(24) & (\s_count[23]~81\ $ (GND))) # (!s_count(24) & (!\s_count[23]~81\ & VCC))
-- \s_count[24]~83\ = CARRY((s_count(24) & !\s_count[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(24),
	datad => VCC,
	cin => \s_count[23]~81\,
	combout => \s_count[24]~82_combout\,
	cout => \s_count[24]~83\);

\s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[24]~82_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(24));

\s_count[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[25]~84_combout\ = (s_count(25) & (!\s_count[24]~83\)) # (!s_count(25) & ((\s_count[24]~83\) # (GND)))
-- \s_count[25]~85\ = CARRY((!\s_count[24]~83\) # (!s_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(25),
	datad => VCC,
	cin => \s_count[24]~83\,
	combout => \s_count[25]~84_combout\,
	cout => \s_count[25]~85\);

\s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[25]~84_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(25));

\s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[26]~86_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(26));

\texts1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \texts1[0]~0_combout\ = (!s_count(26) & (!s_count(27) & (!s_count(28) & !s_count(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(26),
	datab => s_count(27),
	datac => s_count(28),
	datad => s_count(29),
	combout => \texts1[0]~0_combout\);

\s_count[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[6]~55_combout\ = (\texts1[0]~0_combout\ & (!\reset~input_o\ & !s_count(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \texts1[0]~0_combout\,
	datac => \reset~input_o\,
	datad => s_count(30),
	combout => \s_count[6]~55_combout\);

\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((!s_count(22)) # (!s_count(21))) # (!s_count(20))) # (!s_count(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(19),
	datab => s_count(20),
	datac => s_count(21),
	datad => s_count(22),
	combout => \LessThan1~1_combout\);

\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((!s_count(15)) # (!s_count(14))) # (!s_count(13))) # (!s_count(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(12),
	datab => s_count(13),
	datac => s_count(14),
	datad => s_count(15),
	combout => \LessThan1~2_combout\);

\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!s_count(7) & (!s_count(8) & (!s_count(9) & !s_count(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(7),
	datab => s_count(8),
	datac => s_count(9),
	datad => s_count(10),
	combout => \LessThan1~0_combout\);

\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!s_count(16) & ((\LessThan1~2_combout\) # ((\LessThan1~0_combout\ & !s_count(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \LessThan1~0_combout\,
	datac => s_count(11),
	datad => s_count(16),
	combout => \LessThan1~3_combout\);

\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (s_count(23) & ((s_count(18)) # ((!\LessThan1~3_combout\ & s_count(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => s_count(17),
	datac => s_count(18),
	datad => s_count(23),
	combout => \LessThan1~4_combout\);

\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = ((!s_count(24) & ((\LessThan1~1_combout\) # (!\LessThan1~4_combout\)))) # (!s_count(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => s_count(24),
	datac => s_count(25),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

\s_count[6]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[6]~56_combout\ = ((\s_currentState.S1~q\ & (!\LessThan1~5_combout\)) # (!\s_currentState.S1~q\ & ((\LessThan0~6_combout\)))) # (!\s_count[6]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_count[6]~55_combout\,
	datab => \LessThan1~5_combout\,
	datac => \s_currentState.S1~q\,
	datad => \LessThan0~6_combout\,
	combout => \s_count[6]~56_combout\);

\s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[0]~31_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(0));

\s_count[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[1]~33_combout\ = (s_count(1) & (!\s_count[0]~32\)) # (!s_count(1) & ((\s_count[0]~32\) # (GND)))
-- \s_count[1]~34\ = CARRY((!\s_count[0]~32\) # (!s_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datad => VCC,
	cin => \s_count[0]~32\,
	combout => \s_count[1]~33_combout\,
	cout => \s_count[1]~34\);

\s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[1]~33_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(1));

\s_count[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[2]~35_combout\ = (s_count(2) & (\s_count[1]~34\ $ (GND))) # (!s_count(2) & (!\s_count[1]~34\ & VCC))
-- \s_count[2]~36\ = CARRY((s_count(2) & !\s_count[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(2),
	datad => VCC,
	cin => \s_count[1]~34\,
	combout => \s_count[2]~35_combout\,
	cout => \s_count[2]~36\);

\s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[2]~35_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(2));

\s_count[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[3]~37_combout\ = (s_count(3) & (!\s_count[2]~36\)) # (!s_count(3) & ((\s_count[2]~36\) # (GND)))
-- \s_count[3]~38\ = CARRY((!\s_count[2]~36\) # (!s_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(3),
	datad => VCC,
	cin => \s_count[2]~36\,
	combout => \s_count[3]~37_combout\,
	cout => \s_count[3]~38\);

\s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[3]~37_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(3));

\s_count[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[4]~39_combout\ = (s_count(4) & (\s_count[3]~38\ $ (GND))) # (!s_count(4) & (!\s_count[3]~38\ & VCC))
-- \s_count[4]~40\ = CARRY((s_count(4) & !\s_count[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(4),
	datad => VCC,
	cin => \s_count[3]~38\,
	combout => \s_count[4]~39_combout\,
	cout => \s_count[4]~40\);

\s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[4]~39_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(4));

\s_count[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[5]~41_combout\ = (s_count(5) & (!\s_count[4]~40\)) # (!s_count(5) & ((\s_count[4]~40\) # (GND)))
-- \s_count[5]~42\ = CARRY((!\s_count[4]~40\) # (!s_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	datad => VCC,
	cin => \s_count[4]~40\,
	combout => \s_count[5]~41_combout\,
	cout => \s_count[5]~42\);

\s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[5]~41_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(5));

\s_count[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[6]~43_combout\ = (s_count(6) & (\s_count[5]~42\ $ (GND))) # (!s_count(6) & (!\s_count[5]~42\ & VCC))
-- \s_count[6]~44\ = CARRY((s_count(6) & !\s_count[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(6),
	datad => VCC,
	cin => \s_count[5]~42\,
	combout => \s_count[6]~43_combout\,
	cout => \s_count[6]~44\);

\s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[6]~43_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(6));

\s_count[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[7]~45_combout\ = (s_count(7) & (!\s_count[6]~44\)) # (!s_count(7) & ((\s_count[6]~44\) # (GND)))
-- \s_count[7]~46\ = CARRY((!\s_count[6]~44\) # (!s_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(7),
	datad => VCC,
	cin => \s_count[6]~44\,
	combout => \s_count[7]~45_combout\,
	cout => \s_count[7]~46\);

\s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[7]~45_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(7));

\s_count[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[8]~47_combout\ = (s_count(8) & (\s_count[7]~46\ $ (GND))) # (!s_count(8) & (!\s_count[7]~46\ & VCC))
-- \s_count[8]~48\ = CARRY((s_count(8) & !\s_count[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(8),
	datad => VCC,
	cin => \s_count[7]~46\,
	combout => \s_count[8]~47_combout\,
	cout => \s_count[8]~48\);

\s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[8]~47_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(8));

\s_count[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[9]~49_combout\ = (s_count(9) & (!\s_count[8]~48\)) # (!s_count(9) & ((\s_count[8]~48\) # (GND)))
-- \s_count[9]~50\ = CARRY((!\s_count[8]~48\) # (!s_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(9),
	datad => VCC,
	cin => \s_count[8]~48\,
	combout => \s_count[9]~49_combout\,
	cout => \s_count[9]~50\);

\s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[9]~49_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(9));

\s_count[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[10]~51_combout\ = (s_count(10) & (\s_count[9]~50\ $ (GND))) # (!s_count(10) & (!\s_count[9]~50\ & VCC))
-- \s_count[10]~52\ = CARRY((s_count(10) & !\s_count[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(10),
	datad => VCC,
	cin => \s_count[9]~50\,
	combout => \s_count[10]~51_combout\,
	cout => \s_count[10]~52\);

\s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[10]~51_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(10));

\s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_count[11]~53_combout\,
	sclr => \s_count[6]~56_combout\,
	ena => \s_count[6]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(11));

\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (s_count(1)) # ((s_count(2)) # ((s_count(3)) # (s_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datab => s_count(2),
	datac => s_count(3),
	datad => s_count(4),
	combout => \LessThan0~0_combout\);

\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (s_count(5)) # ((s_count(6)) # ((s_count(12)) # (s_count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	datab => s_count(6),
	datac => s_count(12),
	datad => s_count(13),
	combout => \LessThan0~1_combout\);

\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (s_count(11)) # ((\LessThan0~0_combout\) # ((\LessThan0~1_combout\) # (!\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(11),
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan0~2_combout\);

\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (s_count(14)) # ((s_count(15)) # ((s_count(16)) # (s_count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(14),
	datab => s_count(15),
	datac => s_count(16),
	datad => s_count(17),
	combout => \LessThan0~3_combout\);

\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (s_count(18)) # ((s_count(19)) # ((s_count(20)) # (s_count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(18),
	datab => s_count(19),
	datac => s_count(20),
	datad => s_count(21),
	combout => \LessThan0~4_combout\);

\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (s_count(22)) # ((s_count(23)) # ((s_count(24)) # (s_count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(22),
	datab => s_count(23),
	datac => s_count(24),
	datad => s_count(25),
	combout => \LessThan0~5_combout\);

\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~2_combout\) # ((\LessThan0~3_combout\) # ((\LessThan0~4_combout\) # (\LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (!\s_currentState.S0~q\ & ((\LessThan0~6_combout\) # ((s_count(30)) # (!\texts1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => s_count(30),
	datac => \texts1[0]~0_combout\,
	datad => \s_currentState.S0~q\,
	combout => \Selector33~0_combout\);

\Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\key3~input_o\ & ((\s_currentState.S5~q\) # (\s_currentState.S6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3~input_o\,
	datab => \s_currentState.S5~q\,
	datac => \s_currentState.S6~q\,
	combout => \Selector33~1_combout\);

\key0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key0,
	o => \key0~input_o\);

\Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~2_combout\ = (\Selector33~0_combout\) # ((\Selector33~1_combout\) # ((\s_currentState.S1~q\ & !\key0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector33~0_combout\,
	datab => \Selector33~1_combout\,
	datac => \s_currentState.S1~q\,
	datad => \key0~input_o\,
	combout => \Selector33~2_combout\);

\s_currentState.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector33~2_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.S1~q\);

\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\s_currentState.S3~q\) # ((\s_currentState.S4~q\) # ((\s_currentState.S1~q\ & \key0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S3~q\,
	datab => \s_currentState.S4~q\,
	datac => \s_currentState.S1~q\,
	datad => \key0~input_o\,
	combout => \Selector34~0_combout\);

\Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\Selector34~0_combout\) # ((\s_currentState.S2~q\ & ((\process_0~8_combout\) # (!\sw_rnd~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => \s_currentState.S2~q\,
	datac => \process_0~8_combout\,
	datad => \sw_rnd~input_o\,
	combout => \Selector34~1_combout\);

\s_currentState.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector34~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.S2~q\);

\at[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \at[0]~0_combout\ = (\s_currentState.S2~q\ & (\sw_rnd~input_o\ & (!\LessThan3~21_combout\ & !\process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S2~q\,
	datab => \sw_rnd~input_o\,
	datac => \LessThan3~21_combout\,
	datad => \process_0~7_combout\,
	combout => \at[0]~0_combout\);

\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\at[0]~0_combout\) # ((\s_currentState.escolha~q\ & (!\LessThan4~60_combout\ & !\key2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \at[0]~0_combout\,
	datab => \s_currentState.escolha~q\,
	datac => \LessThan4~60_combout\,
	datad => \key2~input_o\,
	combout => \Selector35~0_combout\);

\s_currentState.escolha\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector35~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.escolha~q\);

\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\s_currentState.escolha~q\ & (!\Equal1~0_combout\ & (!\Equal2~0_combout\ & !\LessThan4~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.escolha~q\,
	datab => \Equal1~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \LessThan4~60_combout\,
	combout => \Selector38~0_combout\);

\Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\key2~input_o\ & ((\Selector38~0_combout\) # ((\s_currentState.S5~q\ & !\key3~input_o\)))) # (!\key2~input_o\ & (\s_currentState.S5~q\ & (!\key3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key2~input_o\,
	datab => \s_currentState.S5~q\,
	datac => \key3~input_o\,
	datad => \Selector38~0_combout\,
	combout => \Selector38~1_combout\);

\s_currentState.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector38~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentState.S5~q\);

\leds_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~6_combout\ = (\clk_1hz~input_o\ & !\s_currentState.S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1hz~input_o\,
	datad => \s_currentState.S5~q\,
	combout => \leds_out~6_combout\);

\led_adress[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_adress[0]~3_combout\ = led_adress(0) $ (((!\reset~input_o\ & \s_currentState.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_adress(0),
	datab => \reset~input_o\,
	datad => \s_currentState.S5~q\,
	combout => \led_adress[0]~3_combout\);

\led_adress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \led_adress[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_adress(0));

\led_adress[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_adress[1]~2_combout\ = led_adress(1) $ (((!\reset~input_o\ & (\s_currentState.S5~q\ & led_adress(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_adress(1),
	datab => \reset~input_o\,
	datac => \s_currentState.S5~q\,
	datad => led_adress(0),
	combout => \led_adress[1]~2_combout\);

\led_adress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \led_adress[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_adress(1));

\led_adress[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_adress[2]~0_combout\ = (led_adress(1) & led_adress(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_adress(1),
	datab => led_adress(0),
	combout => \led_adress[2]~0_combout\);

\led_adress[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_adress[2]~1_combout\ = led_adress(2) $ (((!\reset~input_o\ & (\s_currentState.S5~q\ & \led_adress[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_adress(2),
	datab => \reset~input_o\,
	datac => \s_currentState.S5~q\,
	datad => \led_adress[2]~0_combout\,
	combout => \led_adress[2]~1_combout\);

\led_adress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \led_adress[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_adress(2));

\leds_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~7_combout\ = (led_adress(2) & \s_currentState.S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_adress(2),
	datab => \s_currentState.S5~q\,
	combout => \leds_out~7_combout\);

\clk_8hz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_8hz,
	o => \clk_8hz~input_o\);

\leds_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out[0]~8_combout\ = (\reset~input_o\) # ((\s_currentState.S5~q\ & ((!\clk_8hz~input_o\))) # (!\s_currentState.S5~q\ & (\s_currentState.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S1~q\,
	datac => \s_currentState.S5~q\,
	datad => \clk_8hz~input_o\,
	combout => \leds_out[0]~8_combout\);

\leds_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~9_combout\ = (!\leds_out[0]~8_combout\ & ((\leds_out~6_combout\) # ((\leds_out~7_combout\ & \led_adress[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds_out~6_combout\,
	datab => \leds_out~7_combout\,
	datac => \led_adress[2]~0_combout\,
	datad => \leds_out[0]~8_combout\,
	combout => \leds_out~9_combout\);

\leds_out[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out[0]~10_combout\ = ((\s_currentState.S5~q\) # ((\reset~input_o\) # (\s_currentState.S1~q\))) # (!\s_currentState.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S0~q\,
	datab => \s_currentState.S5~q\,
	datac => \reset~input_o\,
	datad => \s_currentState.S1~q\,
	combout => \leds_out[0]~10_combout\);

\leds_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \leds_out~9_combout\,
	ena => \leds_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_out[0]~reg0_q\);

\leds_out~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~30_combout\ = (!\leds_out[0]~8_combout\ & ((\s_currentState.S5~q\ & ((!\led_adress[2]~0_combout\))) # (!\s_currentState.S5~q\ & (\clk_1hz~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1hz~input_o\,
	datab => \s_currentState.S5~q\,
	datac => \led_adress[2]~0_combout\,
	datad => \leds_out[0]~8_combout\,
	combout => \leds_out~30_combout\);

\leds_out[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \leds_out~30_combout\,
	ena => \leds_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_out[13]~reg0_q\);

\leds_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~11_combout\ = (\clk_1hz~input_o\ & (!\s_currentState.S5~q\ & (!\reset~input_o\ & !\s_currentState.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1hz~input_o\,
	datab => \s_currentState.S5~q\,
	datac => \reset~input_o\,
	datad => \s_currentState.S1~q\,
	combout => \leds_out~11_combout\);

\leds_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~12_combout\ = (led_adress(2)) # ((led_adress(1) & !led_adress(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_adress(2),
	datab => led_adress(1),
	datad => led_adress(0),
	combout => \leds_out~12_combout\);

\leds_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~13_combout\ = (\s_currentState.S5~q\ & (\clk_8hz~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S5~q\,
	datab => \clk_8hz~input_o\,
	datad => \reset~input_o\,
	combout => \leds_out~13_combout\);

\leds_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~14_combout\ = (\leds_out~11_combout\) # ((\leds_out~12_combout\ & \leds_out~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds_out~11_combout\,
	datab => \leds_out~12_combout\,
	datac => \leds_out~13_combout\,
	combout => \leds_out~14_combout\);

\leds_out[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \leds_out~14_combout\,
	ena => \leds_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_out[10]~reg0_q\);

\leds_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~15_combout\ = (!\leds_out[0]~8_combout\ & ((\leds_out~6_combout\) # ((\leds_out~7_combout\ & !led_adress(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds_out~6_combout\,
	datab => \leds_out~7_combout\,
	datac => led_adress(0),
	datad => \leds_out[0]~8_combout\,
	combout => \leds_out~15_combout\);

\leds_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \leds_out~15_combout\,
	ena => \leds_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_out[3]~reg0_q\);

\leds_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~16_combout\ = led_adress(2) $ (led_adress(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => led_adress(2),
	datad => led_adress(1),
	combout => \leds_out~16_combout\);

\leds_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~17_combout\ = (\leds_out~11_combout\) # ((\leds_out~13_combout\ & (led_adress(0) $ (\leds_out~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds_out~11_combout\,
	datab => \leds_out~13_combout\,
	datac => led_adress(0),
	datad => \leds_out~16_combout\,
	combout => \leds_out~17_combout\);

\leds_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \leds_out~17_combout\,
	ena => \leds_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_out[4]~reg0_q\);

\leds_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~18_combout\ = (\clk_8hz~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_8hz~input_o\,
	datad => \reset~input_o\,
	combout => \leds_out~18_combout\);

\leds_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~19_combout\ = (\leds_out~11_combout\) # ((\leds_out~7_combout\ & (\leds_out~18_combout\ & !\led_adress[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds_out~11_combout\,
	datab => \leds_out~7_combout\,
	datac => \leds_out~18_combout\,
	datad => \led_adress[2]~0_combout\,
	combout => \leds_out~19_combout\);

\leds_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \leds_out~19_combout\,
	ena => \leds_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_out[5]~reg0_q\);

\leds_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~20_combout\ = (\leds_out~11_combout\) # ((\leds_out~13_combout\ & (\leds_out~16_combout\ & !led_adress(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds_out~11_combout\,
	datab => \leds_out~13_combout\,
	datac => \leds_out~16_combout\,
	datad => led_adress(0),
	combout => \leds_out~20_combout\);

\leds_out[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \leds_out~20_combout\,
	ena => \leds_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_out[17]~reg0_q\);

\leds_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~21_combout\ = (\s_currentState.S5~q\ & ((led_adress(2)) # ((!led_adress(0)) # (!led_adress(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S5~q\,
	datab => led_adress(2),
	datac => led_adress(1),
	datad => led_adress(0),
	combout => \leds_out~21_combout\);

\leds_out~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~31_combout\ = (!\leds_out[0]~8_combout\ & ((\leds_out~21_combout\) # ((\clk_1hz~input_o\ & !\s_currentState.S5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1hz~input_o\,
	datab => \s_currentState.S5~q\,
	datac => \leds_out~21_combout\,
	datad => \leds_out[0]~8_combout\,
	combout => \leds_out~31_combout\);

\leds_out[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \leds_out~31_combout\,
	ena => \leds_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_out[16]~reg0_q\);

\leds_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~22_combout\ = (led_adress(2) & (\s_currentState.S5~q\ & (!led_adress(1) & !led_adress(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_adress(2),
	datab => \s_currentState.S5~q\,
	datac => led_adress(1),
	datad => led_adress(0),
	combout => \leds_out~22_combout\);

\leds_out~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~32_combout\ = (!\leds_out[0]~8_combout\ & ((\leds_out~22_combout\) # ((\clk_1hz~input_o\ & !\s_currentState.S5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1hz~input_o\,
	datab => \s_currentState.S5~q\,
	datac => \leds_out~22_combout\,
	datad => \leds_out[0]~8_combout\,
	combout => \leds_out~32_combout\);

\leds_out[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \leds_out~32_combout\,
	ena => \leds_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_out[9]~reg0_q\);

\leds_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~23_combout\ = (!led_adress(1) & (led_adress(2) $ (led_adress(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => led_adress(2),
	datac => led_adress(0),
	datad => led_adress(1),
	combout => \leds_out~23_combout\);

\leds_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~24_combout\ = (\leds_out~11_combout\) # ((\leds_out~13_combout\ & \leds_out~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds_out~11_combout\,
	datab => \leds_out~13_combout\,
	datac => \leds_out~23_combout\,
	combout => \leds_out~24_combout\);

\leds_out[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \leds_out~24_combout\,
	ena => \leds_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_out[11]~reg0_q\);

\leds_out~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~25_combout\ = (led_adress(2) & ((led_adress(1)) # (!led_adress(0)))) # (!led_adress(2) & (led_adress(1) $ (led_adress(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_adress(2),
	datab => led_adress(1),
	datad => led_adress(0),
	combout => \leds_out~25_combout\);

\leds_out~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~26_combout\ = (\leds_out~11_combout\) # ((\leds_out~13_combout\ & \leds_out~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds_out~11_combout\,
	datab => \leds_out~13_combout\,
	datac => \leds_out~25_combout\,
	combout => \leds_out~26_combout\);

\leds_out[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \leds_out~26_combout\,
	ena => \leds_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_out[12]~reg0_q\);

\leds_out~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~27_combout\ = (\clk_8hz~input_o\ & (\s_currentState.S5~q\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_8hz~input_o\,
	datab => \s_currentState.S5~q\,
	datad => \reset~input_o\,
	combout => \leds_out~27_combout\);

\leds_out~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~28_combout\ = (led_adress(2) & (\s_currentState.S5~q\ & (led_adress(1) $ (!led_adress(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_adress(2),
	datab => \s_currentState.S5~q\,
	datac => led_adress(1),
	datad => led_adress(0),
	combout => \leds_out~28_combout\);

\leds_out~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds_out~29_combout\ = (\leds_out~11_combout\) # ((\leds_out~27_combout\ & \leds_out~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \leds_out~11_combout\,
	datab => \leds_out~27_combout\,
	datac => \leds_out~28_combout\,
	combout => \leds_out~29_combout\);

\leds_out[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \leds_out~29_combout\,
	ena => \leds_out[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds_out[14]~reg0_q\);

\Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (texts1(0)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(0),
	datad => \s_currentState.S1~q\,
	combout => \Selector74~0_combout\);

\texts1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \texts1[0]~1_combout\ = ((\texts1[0]~0_combout\ & (\LessThan1~5_combout\ & !s_count(30)))) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \texts1[0]~0_combout\,
	datab => \LessThan1~5_combout\,
	datac => s_count(30),
	datad => \s_currentState.S1~q\,
	combout => \texts1[0]~1_combout\);

\texts1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \texts1[0]~2_combout\ = (!\reset~input_o\ & ((\Selector33~0_combout\) # (!\texts1[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \texts1[0]~1_combout\,
	datad => \Selector33~0_combout\,
	combout => \texts1[0]~2_combout\);

\texts1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector74~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(5));

\Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\s_currentState.S1~q\ & texts1(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(5),
	combout => \Selector69~0_combout\);

\texts1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector69~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(10));

\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\s_currentState.S1~q\ & texts1(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(10),
	combout => \Selector64~0_combout\);

\texts1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector64~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(15));

\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\s_currentState.S1~q\ & texts1(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(15),
	combout => \Selector59~0_combout\);

\texts1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector59~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(20));

\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\s_currentState.S1~q\ & texts1(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(20),
	combout => \Selector54~0_combout\);

\texts1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector54~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(25));

\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (texts1(25)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(25),
	datad => \s_currentState.S1~q\,
	combout => \Selector49~0_combout\);

\texts1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector49~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(30));

\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (texts1(30)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(30),
	datad => \s_currentState.S1~q\,
	combout => \Selector44~0_combout\);

\texts1[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector44~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(35));

\Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\s_currentState.S1~q\ & texts1(35))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(35),
	combout => \Selector79~0_combout\);

\texts1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector79~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(0));

\Selector137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector137~0_combout\ = (\s_currentState.S1~q\ & (texts1(0))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(0),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector137~0_combout\);

\clk_4hz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_4hz,
	o => \clk_4hz~input_o\);

\clk_4hz~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_4hz~_wirecell_combout\ = !\clk_4hz~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_4hz~input_o\,
	combout => \clk_4hz~_wirecell_combout\);

\textOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \textOut[0]~0_combout\ = (!\reset~input_o\ & ((\s_currentState.S1~q\) # ((\s_currentState.S6~q\) # (!\s_currentState.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => \s_currentState.S6~q\,
	datac => \s_currentState.S0~q\,
	datad => \reset~input_o\,
	combout => \textOut[0]~0_combout\);

\textOut[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector137~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[0]~reg0_q\);

\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (texts1(1)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(1),
	datad => \s_currentState.S1~q\,
	combout => \Selector53~0_combout\);

\texts1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector53~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(26));

\Selector131~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector131~0_combout\ = (texts1(26)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(26),
	datad => \s_currentState.S1~q\,
	combout => \Selector131~0_combout\);

\texts1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector131~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(11));

\Selector126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector126~0_combout\ = (texts1(11)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(11),
	datad => \s_currentState.S1~q\,
	combout => \Selector126~0_combout\);

\texts1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector126~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(16));

\Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\s_currentState.S1~q\ & texts1(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(16),
	combout => \Selector78~0_combout\);

\texts1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector78~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(1));

\Selector136~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector136~0_combout\ = (\s_currentState.S1~q\ & (texts1(1))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(1),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector136~0_combout\);

\textOut[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector136~0_combout\,
	asdata => VCC,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[1]~reg0_q\);

\Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\s_currentState.S1~q\ & texts1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(2),
	combout => \Selector72~0_combout\);

\texts1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector72~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(7));

\Selector130~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector130~0_combout\ = (texts1(7)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(7),
	datad => \s_currentState.S1~q\,
	combout => \Selector130~0_combout\);

\texts1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector130~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(12));

\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\s_currentState.S1~q\ & texts1(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(12),
	combout => \Selector62~0_combout\);

\texts1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector62~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(17));

\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\s_currentState.S1~q\ & texts1(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(17),
	combout => \Selector57~0_combout\);

\texts1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector57~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(22));

\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (texts1(22)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(22),
	datad => \s_currentState.S1~q\,
	combout => \Selector52~0_combout\);

\texts1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector52~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(27));

\Selector110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector110~0_combout\ = (texts1(27)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(27),
	datad => \s_currentState.S1~q\,
	combout => \Selector110~0_combout\);

\texts1[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector110~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(32));

\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (texts1(32)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(32),
	datad => \s_currentState.S1~q\,
	combout => \Selector42~0_combout\);

\texts1[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector42~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(37));

\Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\s_currentState.S1~q\ & texts1(37))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(37),
	combout => \Selector77~0_combout\);

\texts1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector77~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(2));

\Selector135~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector135~0_combout\ = (\s_currentState.S1~q\ & (texts1(2))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(2),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector135~0_combout\);

\textOut[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector135~0_combout\,
	asdata => VCC,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[2]~reg0_q\);

\Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\s_currentState.S1~q\ & texts1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(3),
	combout => \Selector71~0_combout\);

\texts1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector71~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(8));

\Selector129~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector129~0_combout\ = (texts1(8)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(8),
	datad => \s_currentState.S1~q\,
	combout => \Selector129~0_combout\);

\texts1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector129~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(13));

\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\s_currentState.S1~q\ & texts1(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(13),
	combout => \Selector61~0_combout\);

\texts1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector61~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(18));

\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\s_currentState.S1~q\ & texts1(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(18),
	combout => \Selector56~0_combout\);

\texts1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector56~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(23));

\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\s_currentState.S1~q\ & texts1(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(23),
	combout => \Selector51~0_combout\);

\texts1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector51~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(28));

\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (texts1(28)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(28),
	datad => \s_currentState.S1~q\,
	combout => \Selector46~0_combout\);

\texts1[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector46~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(33));

\Selector104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector104~0_combout\ = (texts1(33)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(33),
	datad => \s_currentState.S1~q\,
	combout => \Selector104~0_combout\);

\texts1[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector104~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(38));

\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\s_currentState.S1~q\ & texts1(38))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(38),
	combout => \Selector76~0_combout\);

\texts1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector76~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(3));

\Selector134~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector134~0_combout\ = (\s_currentState.S1~q\ & (texts1(3))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(3),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector134~0_combout\);

\textOut[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector134~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[3]~reg0_q\);

\texts1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector133~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(9));

\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\s_currentState.S1~q\ & texts1(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(9),
	combout => \Selector65~0_combout\);

\texts1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector65~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(14));

\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (texts1(14)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(14),
	datad => \s_currentState.S1~q\,
	combout => \Selector60~0_combout\);

\texts1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector60~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(19));

\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\s_currentState.S1~q\ & texts1(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => texts1(19),
	combout => \Selector55~0_combout\);

\texts1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector55~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(24));

\Selector113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector113~0_combout\ = (texts1(24)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(24),
	datad => \s_currentState.S1~q\,
	combout => \Selector113~0_combout\);

\texts1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector113~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(29));

\Selector108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector108~0_combout\ = (texts1(29)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(29),
	datad => \s_currentState.S1~q\,
	combout => \Selector108~0_combout\);

\texts1[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector108~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(34));

\Selector103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (texts1(34)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(34),
	datad => \s_currentState.S1~q\,
	combout => \Selector103~0_combout\);

\texts1[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector103~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(39));

\Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (texts1(39)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(39),
	datad => \s_currentState.S1~q\,
	combout => \Selector75~0_combout\);

\texts1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector75~0_combout\,
	ena => \texts1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => texts1(4));

\Selector133~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector133~0_combout\ = (texts1(4)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(4),
	datad => \s_currentState.S1~q\,
	combout => \Selector133~0_combout\);

\textOut[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector133~0_combout\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[4]~reg0_q\);

\Selector132~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector132~0_combout\ = (\s_currentState.S1~q\ & (texts1(5))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(5),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector132~0_combout\);

\textOut[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector132~0_combout\,
	asdata => VCC,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[5]~reg0_q\);

\textOut[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector131~0_combout\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[6]~reg0_q\);

\textOut[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector130~0_combout\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[7]~reg0_q\);

\textOut[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector129~0_combout\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[8]~reg0_q\);

\Selector128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector128~0_combout\ = (\s_currentState.S1~q\ & (texts1(9))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(9),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector128~0_combout\);

\textOut[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector128~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[9]~reg0_q\);

\Selector127~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector127~0_combout\ = (texts1(10)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(10),
	datad => \s_currentState.S1~q\,
	combout => \Selector127~0_combout\);

\textOut[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector127~0_combout\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[10]~reg0_q\);

\textOut[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector126~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[11]~reg0_q\);

\Selector125~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector125~0_combout\ = (\s_currentState.S1~q\ & (texts1(12))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(12),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector125~0_combout\);

\textOut[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector125~0_combout\,
	asdata => VCC,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[12]~reg0_q\);

\Selector124~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector124~0_combout\ = (texts1(13)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(13),
	datad => \s_currentState.S1~q\,
	combout => \Selector124~0_combout\);

\textOut[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector124~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[13]~reg0_q\);

\Selector123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector123~0_combout\ = (\s_currentState.S1~q\ & (texts1(14))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(14),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector123~0_combout\);

\textOut[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector123~0_combout\,
	asdata => VCC,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[14]~reg0_q\);

\Selector122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector122~0_combout\ = (texts1(15)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(15),
	datad => \s_currentState.S1~q\,
	combout => \Selector122~0_combout\);

\textOut[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector122~0_combout\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[15]~reg0_q\);

\Selector121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector121~0_combout\ = (\s_currentState.S1~q\ & (texts1(16))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(16),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector121~0_combout\);

\textOut[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector121~0_combout\,
	asdata => VCC,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[16]~reg0_q\);

\Selector120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector120~0_combout\ = (\s_currentState.S1~q\ & (texts1(17))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(17),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector120~0_combout\);

\textOut[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector120~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[17]~reg0_q\);

\Selector119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector119~0_combout\ = (texts1(18)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(18),
	datad => \s_currentState.S1~q\,
	combout => \Selector119~0_combout\);

\textOut[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector119~0_combout\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[18]~reg0_q\);

\Selector118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector118~0_combout\ = (texts1(19)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(19),
	datad => \s_currentState.S1~q\,
	combout => \Selector118~0_combout\);

\textOut[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector118~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[19]~reg0_q\);

\Selector117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector117~0_combout\ = (texts1(20)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(20),
	datad => \s_currentState.S1~q\,
	combout => \Selector117~0_combout\);

\textOut[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector117~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[20]~reg0_q\);

\Selector115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector115~0_combout\ = (\s_currentState.S1~q\ & (texts1(22))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(22),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector115~0_combout\);

\textOut[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector115~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[22]~reg0_q\);

\Selector114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector114~0_combout\ = (texts1(23)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(23),
	datad => \s_currentState.S1~q\,
	combout => \Selector114~0_combout\);

\textOut[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector114~0_combout\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[23]~reg0_q\);

\textOut[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector113~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[24]~reg0_q\);

\Selector112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector112~0_combout\ = (\s_currentState.S1~q\ & (texts1(25))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(25),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector112~0_combout\);

\textOut[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector112~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[25]~reg0_q\);

\textOut[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector131~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[26]~reg0_q\);

\textOut[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector110~0_combout\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[27]~reg0_q\);

\Selector109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector109~0_combout\ = (\s_currentState.S1~q\ & (texts1(28))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(28),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector109~0_combout\);

\textOut[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector109~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[28]~reg0_q\);

\textOut[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector108~0_combout\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[29]~reg0_q\);

\Selector107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector107~0_combout\ = (\s_currentState.S1~q\ & (texts1(30))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(30),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector107~0_combout\);

\textOut[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector107~0_combout\,
	asdata => VCC,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[30]~reg0_q\);

\Selector106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector106~0_combout\ = (\s_currentState.S1~q\ & (texts1(11))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(11),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector106~0_combout\);

\textOut[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector106~0_combout\,
	asdata => VCC,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[31]~reg0_q\);

\Selector105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (\s_currentState.S1~q\ & (texts1(32))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(32),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector105~0_combout\);

\textOut[32]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector105~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[32]~reg0_q\);

\textOut[33]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector104~0_combout\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[33]~reg0_q\);

\textOut[34]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector103~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[34]~reg0_q\);

\Selector102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (texts1(35)) # (!\s_currentState.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(35),
	datad => \s_currentState.S1~q\,
	combout => \Selector102~0_combout\);

\textOut[35]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector102~0_combout\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[35]~reg0_q\);

\Selector100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\s_currentState.S1~q\ & (texts1(37))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(37),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector100~0_combout\);

\textOut[37]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector100~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[37]~reg0_q\);

\Selector99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\s_currentState.S1~q\ & (texts1(38))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(38),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector99~0_combout\);

\textOut[38]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector99~0_combout\,
	asdata => \clk_4hz~_wirecell_combout\,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[38]~reg0_q\);

\Selector98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\s_currentState.S1~q\ & (texts1(39))) # (!\s_currentState.S1~q\ & ((!\clk_1hz~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => texts1(39),
	datab => \s_currentState.S1~q\,
	datad => \clk_1hz~input_o\,
	combout => \Selector98~0_combout\);

\textOut[39]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector98~0_combout\,
	asdata => VCC,
	sload => \s_currentState.S6~q\,
	ena => \textOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut[39]~reg0_q\);

\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\s_currentState.S5~q\) # ((\s_currentState.S2~q\) # ((\s_currentState.S3~q\) # (\s_currentState.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S5~q\,
	datab => \s_currentState.S2~q\,
	datac => \s_currentState.S3~q\,
	datad => \s_currentState.S4~q\,
	combout => \Selector31~0_combout\);

\Selector31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\Selector31~0_combout\) # ((\s_currentState.escolha~q\ & !\LessThan4~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~0_combout\,
	datab => \s_currentState.escolha~q\,
	datad => \LessThan4~60_combout\,
	combout => \Selector31~1_combout\);

\selector~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector31~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \selector~reg0_q\);

\Selector164~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector164~0_combout\ = (\s_currentState.escolha~q\) # ((\s_currentState.S2~q\) # ((\s_currentState.S3~q\) # (\s_currentState.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.escolha~q\,
	datab => \s_currentState.S2~q\,
	datac => \s_currentState.S3~q\,
	datad => \s_currentState.S4~q\,
	combout => \Selector164~0_combout\);

\done1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_done1,
	o => \done1~input_o\);

\done2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_done2,
	o => \done2~input_o\);

\Selector164~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector164~1_combout\ = (\s_currentState.S5~q\) # ((\Selector164~0_combout\ & ((!\done2~input_o\) # (!\done1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S5~q\,
	datab => \Selector164~0_combout\,
	datac => \done1~input_o\,
	datad => \done2~input_o\,
	combout => \Selector164~1_combout\);

\activate~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector164~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \activate~reg0_q\);

\clk_2hz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_2hz,
	o => \clk_2hz~input_o\);

\enable2hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \enable2hz~0_combout\ = (\clk_2hz~input_o\) # (!\s_currentState.S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_2hz~input_o\,
	datad => \s_currentState.S5~q\,
	combout => \enable2hz~0_combout\);

\enable2hz~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \enable2hz~0_combout\,
	asdata => VCC,
	sload => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable2hz~reg0_q\);

\attempt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \attempt[1]~0_combout\ = (\s_currentState.S2~q\ & ((\sw_rnd~input_o\) # ((\s_currentState.S5~q\ & !\key3~input_o\)))) # (!\s_currentState.S2~q\ & (((\s_currentState.S5~q\ & !\key3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S2~q\,
	datab => \sw_rnd~input_o\,
	datac => \s_currentState.S5~q\,
	datad => \key3~input_o\,
	combout => \attempt[1]~0_combout\);

\attempt[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \attempt[1]~1_combout\ = (\reset~input_o\) # ((\s_currentState.S6~q\) # ((\s_currentState.S5~q\ & \key3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_currentState.S6~q\,
	datac => \s_currentState.S5~q\,
	datad => \key3~input_o\,
	combout => \attempt[1]~1_combout\);

\attempt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \attempt~2_combout\ = (!\attempt[1]~1_combout\ & ((\attempt[1]~0_combout\ & (\rnd_num[0]~input_o\)) # (!\attempt[1]~0_combout\ & ((\Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_num[0]~input_o\,
	datab => \Add1~0_combout\,
	datac => \attempt[1]~0_combout\,
	datad => \attempt[1]~1_combout\,
	combout => \attempt~2_combout\);

\attempt[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \attempt[1]~3_combout\ = (!\sw_rnd~input_o\ & ((\s_currentState.S3~q\) # (\s_currentState.S4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_rnd~input_o\,
	datab => \s_currentState.S3~q\,
	datac => \s_currentState.S4~q\,
	combout => \attempt[1]~3_combout\);

\attempt[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \attempt[1]~4_combout\ = (\key3~input_o\ & ((\s_currentState.S6~q\) # ((\s_currentState.S5~q\)))) # (!\key3~input_o\ & (((\s_currentState.S5~q\ & \clk_2hz~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S6~q\,
	datab => \key3~input_o\,
	datac => \s_currentState.S5~q\,
	datad => \clk_2hz~input_o\,
	combout => \attempt[1]~4_combout\);

\attempt[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \attempt[1]~5_combout\ = (!\reset~input_o\ & (!\attempt[1]~3_combout\ & !\attempt[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \attempt[1]~3_combout\,
	datac => \attempt[1]~4_combout\,
	combout => \attempt[1]~5_combout\);

\attempt[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \attempt[1]~6_combout\ = (\s_currentState.S5~q\ & (((!\clk_2hz~input_o\)))) # (!\s_currentState.S5~q\ & ((\LessThan3~21_combout\) # ((\process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~21_combout\,
	datab => \process_0~7_combout\,
	datac => \s_currentState.S5~q\,
	datad => \clk_2hz~input_o\,
	combout => \attempt[1]~6_combout\);

\attempt[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \attempt[1]~7_combout\ = ((\s_currentState.S2~q\ & ((!\attempt[1]~6_combout\) # (!\sw_rnd~input_o\)))) # (!\attempt[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \attempt[1]~5_combout\,
	datab => \sw_rnd~input_o\,
	datac => \attempt[1]~6_combout\,
	datad => \s_currentState.S2~q\,
	combout => \attempt[1]~7_combout\);

\attempt[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \attempt~2_combout\,
	ena => \attempt[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \attempt[0]~reg0_q\);

\attempt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \attempt~8_combout\ = (!\attempt[1]~1_combout\ & ((\attempt[1]~0_combout\ & (\rnd_num[1]~input_o\)) # (!\attempt[1]~0_combout\ & ((\Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_num[1]~input_o\,
	datab => \Add1~2_combout\,
	datac => \attempt[1]~0_combout\,
	datad => \attempt[1]~1_combout\,
	combout => \attempt~8_combout\);

\attempt[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \attempt~8_combout\,
	ena => \attempt[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \attempt[1]~reg0_q\);

\attempt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \attempt~9_combout\ = (!\attempt[1]~1_combout\ & ((\attempt[1]~0_combout\ & (\rnd_num[2]~input_o\)) # (!\attempt[1]~0_combout\ & ((\Add1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_num[2]~input_o\,
	datab => \Add1~4_combout\,
	datac => \attempt[1]~0_combout\,
	datad => \attempt[1]~1_combout\,
	combout => \attempt~9_combout\);

\attempt[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \attempt~9_combout\,
	ena => \attempt[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \attempt[2]~reg0_q\);

\attempt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \attempt~10_combout\ = (!\attempt[1]~1_combout\ & ((\attempt[1]~0_combout\ & (\rnd_num[3]~input_o\)) # (!\attempt[1]~0_combout\ & ((\Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_num[3]~input_o\,
	datab => \Add1~6_combout\,
	datac => \attempt[1]~0_combout\,
	datad => \attempt[1]~1_combout\,
	combout => \attempt~10_combout\);

\attempt[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \attempt~10_combout\,
	ena => \attempt[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \attempt[3]~reg0_q\);

\attempt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \attempt~11_combout\ = (!\attempt[1]~1_combout\ & ((\attempt[1]~0_combout\ & (\rnd_num[4]~input_o\)) # (!\attempt[1]~0_combout\ & ((\Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_num[4]~input_o\,
	datab => \Add1~8_combout\,
	datac => \attempt[1]~0_combout\,
	datad => \attempt[1]~1_combout\,
	combout => \attempt~11_combout\);

\attempt[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \attempt~11_combout\,
	ena => \attempt[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \attempt[4]~reg0_q\);

\attempt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \attempt~12_combout\ = (!\attempt[1]~1_combout\ & ((\attempt[1]~0_combout\ & (\rnd_num[5]~input_o\)) # (!\attempt[1]~0_combout\ & ((\Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_num[5]~input_o\,
	datab => \Add1~10_combout\,
	datac => \attempt[1]~0_combout\,
	datad => \attempt[1]~1_combout\,
	combout => \attempt~12_combout\);

\attempt[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \attempt~12_combout\,
	ena => \attempt[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \attempt[5]~reg0_q\);

\attempt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \attempt~13_combout\ = (!\attempt[1]~1_combout\ & ((\attempt[1]~0_combout\ & (\rnd_num[6]~input_o\)) # (!\attempt[1]~0_combout\ & ((\Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rnd_num[6]~input_o\,
	datab => \Add1~12_combout\,
	datac => \attempt[1]~0_combout\,
	datad => \attempt[1]~1_combout\,
	combout => \attempt~13_combout\);

\attempt[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \attempt~13_combout\,
	ena => \attempt[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \attempt[6]~reg0_q\);

\count_attempts[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_attempts[0]~7_combout\ = count_attempts(0) $ (VCC)
-- \count_attempts[0]~8\ = CARRY(count_attempts(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_attempts(0),
	datad => VCC,
	combout => \count_attempts[0]~7_combout\,
	cout => \count_attempts[0]~8\);

\count_attempts[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_attempts[9]~9_combout\ = (\reset~input_o\) # ((\s_currentState.escolha~q\ & \key2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_currentState.escolha~q\,
	datac => \key2~input_o\,
	datad => \reset~input_o\,
	combout => \count_attempts[9]~9_combout\);

\count_attempts[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count_attempts[0]~7_combout\,
	sclr => \reset~input_o\,
	ena => \count_attempts[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_attempts(0));

\n_attempts~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n_attempts~0_combout\ = (\Selector164~0_combout\ & (count_attempts(0) & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector164~0_combout\,
	datab => count_attempts(0),
	datad => \reset~input_o\,
	combout => \n_attempts~0_combout\);

\n_attempts[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n_attempts[6]~1_combout\ = (!\key3~input_o\ & ((\s_currentState.S5~q\) # (\s_currentState.S6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S5~q\,
	datab => \s_currentState.S6~q\,
	datad => \key3~input_o\,
	combout => \n_attempts[6]~1_combout\);

\n_attempts[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n_attempts[6]~2_combout\ = (\reset~input_o\) # ((!\s_currentState.S1~q\ & (!\n_attempts[6]~1_combout\ & \s_currentState.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => \n_attempts[6]~1_combout\,
	datac => \s_currentState.S0~q\,
	datad => \reset~input_o\,
	combout => \n_attempts[6]~2_combout\);

\n_attempts[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \n_attempts~0_combout\,
	ena => \n_attempts[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_attempts[0]~reg0_q\);

\count_attempts[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_attempts[1]~10_combout\ = (count_attempts(1) & (!\count_attempts[0]~8\)) # (!count_attempts(1) & ((\count_attempts[0]~8\) # (GND)))
-- \count_attempts[1]~11\ = CARRY((!\count_attempts[0]~8\) # (!count_attempts(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_attempts(1),
	datad => VCC,
	cin => \count_attempts[0]~8\,
	combout => \count_attempts[1]~10_combout\,
	cout => \count_attempts[1]~11\);

\count_attempts[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count_attempts[1]~10_combout\,
	sclr => \reset~input_o\,
	ena => \count_attempts[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_attempts(1));

\n_attempts~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n_attempts~3_combout\ = (\Selector164~0_combout\ & (count_attempts(1) & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector164~0_combout\,
	datab => count_attempts(1),
	datad => \reset~input_o\,
	combout => \n_attempts~3_combout\);

\n_attempts[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \n_attempts~3_combout\,
	ena => \n_attempts[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_attempts[1]~reg0_q\);

\count_attempts[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_attempts[2]~12_combout\ = (count_attempts(2) & (\count_attempts[1]~11\ $ (GND))) # (!count_attempts(2) & (!\count_attempts[1]~11\ & VCC))
-- \count_attempts[2]~13\ = CARRY((count_attempts(2) & !\count_attempts[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_attempts(2),
	datad => VCC,
	cin => \count_attempts[1]~11\,
	combout => \count_attempts[2]~12_combout\,
	cout => \count_attempts[2]~13\);

\count_attempts[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count_attempts[2]~12_combout\,
	sclr => \reset~input_o\,
	ena => \count_attempts[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_attempts(2));

\n_attempts~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \n_attempts~4_combout\ = (\Selector164~0_combout\ & (count_attempts(2) & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector164~0_combout\,
	datab => count_attempts(2),
	datad => \reset~input_o\,
	combout => \n_attempts~4_combout\);

\n_attempts[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \n_attempts~4_combout\,
	ena => \n_attempts[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_attempts[2]~reg0_q\);

\count_attempts[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_attempts[3]~14_combout\ = (count_attempts(3) & (!\count_attempts[2]~13\)) # (!count_attempts(3) & ((\count_attempts[2]~13\) # (GND)))
-- \count_attempts[3]~15\ = CARRY((!\count_attempts[2]~13\) # (!count_attempts(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_attempts(3),
	datad => VCC,
	cin => \count_attempts[2]~13\,
	combout => \count_attempts[3]~14_combout\,
	cout => \count_attempts[3]~15\);

\count_attempts[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count_attempts[3]~14_combout\,
	sclr => \reset~input_o\,
	ena => \count_attempts[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_attempts(3));

\n_attempts~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \n_attempts~5_combout\ = (\Selector164~0_combout\ & (count_attempts(3) & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector164~0_combout\,
	datab => count_attempts(3),
	datad => \reset~input_o\,
	combout => \n_attempts~5_combout\);

\n_attempts[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \n_attempts~5_combout\,
	ena => \n_attempts[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_attempts[3]~reg0_q\);

\count_attempts[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_attempts[4]~16_combout\ = (count_attempts(4) & (\count_attempts[3]~15\ $ (GND))) # (!count_attempts(4) & (!\count_attempts[3]~15\ & VCC))
-- \count_attempts[4]~17\ = CARRY((count_attempts(4) & !\count_attempts[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_attempts(4),
	datad => VCC,
	cin => \count_attempts[3]~15\,
	combout => \count_attempts[4]~16_combout\,
	cout => \count_attempts[4]~17\);

\count_attempts[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count_attempts[4]~16_combout\,
	sclr => \reset~input_o\,
	ena => \count_attempts[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_attempts(4));

\n_attempts~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \n_attempts~6_combout\ = (\Selector164~0_combout\ & (count_attempts(4) & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector164~0_combout\,
	datab => count_attempts(4),
	datad => \reset~input_o\,
	combout => \n_attempts~6_combout\);

\n_attempts[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \n_attempts~6_combout\,
	ena => \n_attempts[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_attempts[4]~reg0_q\);

\count_attempts[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_attempts[5]~18_combout\ = (count_attempts(5) & (!\count_attempts[4]~17\)) # (!count_attempts(5) & ((\count_attempts[4]~17\) # (GND)))
-- \count_attempts[5]~19\ = CARRY((!\count_attempts[4]~17\) # (!count_attempts(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_attempts(5),
	datad => VCC,
	cin => \count_attempts[4]~17\,
	combout => \count_attempts[5]~18_combout\,
	cout => \count_attempts[5]~19\);

\count_attempts[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count_attempts[5]~18_combout\,
	sclr => \reset~input_o\,
	ena => \count_attempts[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_attempts(5));

\n_attempts~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \n_attempts~7_combout\ = (\Selector164~0_combout\ & (count_attempts(5) & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector164~0_combout\,
	datab => count_attempts(5),
	datad => \reset~input_o\,
	combout => \n_attempts~7_combout\);

\n_attempts[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \n_attempts~7_combout\,
	ena => \n_attempts[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_attempts[5]~reg0_q\);

\count_attempts[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_attempts[6]~20_combout\ = count_attempts(6) $ (!\count_attempts[5]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_attempts(6),
	cin => \count_attempts[5]~19\,
	combout => \count_attempts[6]~20_combout\);

\count_attempts[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count_attempts[6]~20_combout\,
	sclr => \reset~input_o\,
	ena => \count_attempts[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_attempts(6));

\n_attempts~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \n_attempts~8_combout\ = (\Selector164~0_combout\ & (count_attempts(6) & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector164~0_combout\,
	datab => count_attempts(6),
	datad => \reset~input_o\,
	combout => \n_attempts~8_combout\);

\n_attempts[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \n_attempts~8_combout\,
	ena => \n_attempts[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n_attempts[6]~reg0_q\);

\WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (\s_currentState.S1~q\) # ((\s_currentState.S6~q\) # (!\s_currentState.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentState.S1~q\,
	datab => \s_currentState.S6~q\,
	datad => \s_currentState.S0~q\,
	combout => \WideOr10~0_combout\);

\Selector149~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector149~2_combout\ = (\clk_2hz~input_o\ & (((\textOut_s2[0]~reg0_q\ & \WideOr10~0_combout\)))) # (!\clk_2hz~input_o\ & ((\s_currentState.S5~q\) # ((\textOut_s2[0]~reg0_q\ & \WideOr10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_2hz~input_o\,
	datab => \s_currentState.S5~q\,
	datac => \textOut_s2[0]~reg0_q\,
	datad => \WideOr10~0_combout\,
	combout => \Selector149~2_combout\);

\textOut_s2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector149~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut_s2[0]~reg0_q\);

\Selector144~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector144~0_combout\ = (\textOut_s2[10]~reg0_q\ & ((adress(1)) # ((!\Selector164~0_combout\)))) # (!\textOut_s2[10]~reg0_q\ & (!\WideOr10~0_combout\ & ((adress(1)) # (!\Selector164~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \textOut_s2[10]~reg0_q\,
	datab => adress(1),
	datac => \Selector164~0_combout\,
	datad => \WideOr10~0_combout\,
	combout => \Selector144~0_combout\);

\textOut_s2[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector144~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut_s2[10]~reg0_q\);

\Selector142~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector142~0_combout\ = (\textOut_s2[12]~reg0_q\ & (((!adress(0)) # (!\Selector164~0_combout\)))) # (!\textOut_s2[12]~reg0_q\ & (!\WideOr10~0_combout\ & ((!adress(0)) # (!\Selector164~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \textOut_s2[12]~reg0_q\,
	datab => \WideOr10~0_combout\,
	datac => \Selector164~0_combout\,
	datad => adress(0),
	combout => \Selector142~0_combout\);

\textOut_s2[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector142~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut_s2[12]~reg0_q\);

\Selector141~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector141~0_combout\ = (\Selector164~0_combout\ & (!adress(1) & !adress(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector164~0_combout\,
	datac => adress(1),
	datad => adress(0),
	combout => \Selector141~0_combout\);

\Selector141~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector141~1_combout\ = (\Selector141~0_combout\) # (((\textOut_s2[13]~reg0_q\ & \WideOr10~0_combout\)) # (!\enable2hz~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector141~0_combout\,
	datab => \textOut_s2[13]~reg0_q\,
	datac => \WideOr10~0_combout\,
	datad => \enable2hz~0_combout\,
	combout => \Selector141~1_combout\);

\textOut_s2[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector141~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \textOut_s2[13]~reg0_q\);

ww_leds_out(0) <= \leds_out[0]~output_o\;

ww_leds_out(1) <= \leds_out[1]~output_o\;

ww_leds_out(2) <= \leds_out[2]~output_o\;

ww_leds_out(3) <= \leds_out[3]~output_o\;

ww_leds_out(4) <= \leds_out[4]~output_o\;

ww_leds_out(5) <= \leds_out[5]~output_o\;

ww_leds_out(6) <= \leds_out[6]~output_o\;

ww_leds_out(7) <= \leds_out[7]~output_o\;

ww_leds_out(8) <= \leds_out[8]~output_o\;

ww_leds_out(9) <= \leds_out[9]~output_o\;

ww_leds_out(10) <= \leds_out[10]~output_o\;

ww_leds_out(11) <= \leds_out[11]~output_o\;

ww_leds_out(12) <= \leds_out[12]~output_o\;

ww_leds_out(13) <= \leds_out[13]~output_o\;

ww_leds_out(14) <= \leds_out[14]~output_o\;

ww_leds_out(15) <= \leds_out[15]~output_o\;

ww_leds_out(16) <= \leds_out[16]~output_o\;

ww_leds_out(17) <= \leds_out[17]~output_o\;

ww_textOut(0) <= \textOut[0]~output_o\;

ww_textOut(1) <= \textOut[1]~output_o\;

ww_textOut(2) <= \textOut[2]~output_o\;

ww_textOut(3) <= \textOut[3]~output_o\;

ww_textOut(4) <= \textOut[4]~output_o\;

ww_textOut(5) <= \textOut[5]~output_o\;

ww_textOut(6) <= \textOut[6]~output_o\;

ww_textOut(7) <= \textOut[7]~output_o\;

ww_textOut(8) <= \textOut[8]~output_o\;

ww_textOut(9) <= \textOut[9]~output_o\;

ww_textOut(10) <= \textOut[10]~output_o\;

ww_textOut(11) <= \textOut[11]~output_o\;

ww_textOut(12) <= \textOut[12]~output_o\;

ww_textOut(13) <= \textOut[13]~output_o\;

ww_textOut(14) <= \textOut[14]~output_o\;

ww_textOut(15) <= \textOut[15]~output_o\;

ww_textOut(16) <= \textOut[16]~output_o\;

ww_textOut(17) <= \textOut[17]~output_o\;

ww_textOut(18) <= \textOut[18]~output_o\;

ww_textOut(19) <= \textOut[19]~output_o\;

ww_textOut(20) <= \textOut[20]~output_o\;

ww_textOut(21) <= \textOut[21]~output_o\;

ww_textOut(22) <= \textOut[22]~output_o\;

ww_textOut(23) <= \textOut[23]~output_o\;

ww_textOut(24) <= \textOut[24]~output_o\;

ww_textOut(25) <= \textOut[25]~output_o\;

ww_textOut(26) <= \textOut[26]~output_o\;

ww_textOut(27) <= \textOut[27]~output_o\;

ww_textOut(28) <= \textOut[28]~output_o\;

ww_textOut(29) <= \textOut[29]~output_o\;

ww_textOut(30) <= \textOut[30]~output_o\;

ww_textOut(31) <= \textOut[31]~output_o\;

ww_textOut(32) <= \textOut[32]~output_o\;

ww_textOut(33) <= \textOut[33]~output_o\;

ww_textOut(34) <= \textOut[34]~output_o\;

ww_textOut(35) <= \textOut[35]~output_o\;

ww_textOut(36) <= \textOut[36]~output_o\;

ww_textOut(37) <= \textOut[37]~output_o\;

ww_textOut(38) <= \textOut[38]~output_o\;

ww_textOut(39) <= \textOut[39]~output_o\;

ww_selector <= \selector~output_o\;

ww_activate <= \activate~output_o\;

ww_enable2hz <= \enable2hz~output_o\;

ww_attempt(0) <= \attempt[0]~output_o\;

ww_attempt(1) <= \attempt[1]~output_o\;

ww_attempt(2) <= \attempt[2]~output_o\;

ww_attempt(3) <= \attempt[3]~output_o\;

ww_attempt(4) <= \attempt[4]~output_o\;

ww_attempt(5) <= \attempt[5]~output_o\;

ww_attempt(6) <= \attempt[6]~output_o\;

ww_n_attempts(0) <= \n_attempts[0]~output_o\;

ww_n_attempts(1) <= \n_attempts[1]~output_o\;

ww_n_attempts(2) <= \n_attempts[2]~output_o\;

ww_n_attempts(3) <= \n_attempts[3]~output_o\;

ww_n_attempts(4) <= \n_attempts[4]~output_o\;

ww_n_attempts(5) <= \n_attempts[5]~output_o\;

ww_n_attempts(6) <= \n_attempts[6]~output_o\;

ww_textOut_s2(0) <= \textOut_s2[0]~output_o\;

ww_textOut_s2(1) <= \textOut_s2[1]~output_o\;

ww_textOut_s2(2) <= \textOut_s2[2]~output_o\;

ww_textOut_s2(3) <= \textOut_s2[3]~output_o\;

ww_textOut_s2(4) <= \textOut_s2[4]~output_o\;

ww_textOut_s2(5) <= \textOut_s2[5]~output_o\;

ww_textOut_s2(6) <= \textOut_s2[6]~output_o\;

ww_textOut_s2(7) <= \textOut_s2[7]~output_o\;

ww_textOut_s2(8) <= \textOut_s2[8]~output_o\;

ww_textOut_s2(9) <= \textOut_s2[9]~output_o\;

ww_textOut_s2(10) <= \textOut_s2[10]~output_o\;

ww_textOut_s2(11) <= \textOut_s2[11]~output_o\;

ww_textOut_s2(12) <= \textOut_s2[12]~output_o\;

ww_textOut_s2(13) <= \textOut_s2[13]~output_o\;

ww_textOut_s2(14) <= \textOut_s2[14]~output_o\;

ww_textOut_s2(15) <= \textOut_s2[15]~output_o\;

ww_textOut_s2(16) <= \textOut_s2[16]~output_o\;

ww_textOut_s2(17) <= \textOut_s2[17]~output_o\;

ww_textOut_s2(18) <= \textOut_s2[18]~output_o\;

ww_textOut_s2(19) <= \textOut_s2[19]~output_o\;
END structure;


