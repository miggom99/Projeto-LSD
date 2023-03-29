-- Projecto Guess number 
-- Miguel Gomes e Rodrigo Pires
-- testbanch disp_select

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity disp_select_tb is
end disp_select_tb;

architecture Stimulus of disp_select_tb is

signal s_d7, s_d6, s_d5, s_d4, s_d3, s_d2, s_d1, s_d0, s_d7In, s_d6In, s_d5In, s_d4In: std_logic_vector(4 downto 0);
signal s_sel, s_enable : std_logic;
signal s_textin_s2: std_logic_vector(19 downto 0);
signal s_textin: std_logic_vector(39 downto 0);

begin

uut: entity work.disp_select(Behavioral)
port map(d7 => s_d7,
			d6 => s_d6,
			d5 => s_d5,
			d4 => s_d4,
			d3 => s_d3,
			d2 => s_d2,
			d1 => s_d1,
			d0 => s_d0,
			d7In => s_d7In,
			d6In => s_d6In,
			d5In => s_d5In,
			d4In => s_d4In,
			enable => s_enable,
			sel => s_sel,
         textin => s_textin,
			textin_s2 => s_textin_s2);
		
stim_proc: process
begin
	wait for 100 ns;	
	
	s_textin<= "0000111000101101100111001010110111010000";
	wait for 100 ns;
	
	s_sel <= '0';
	wait for 100 ns;
	
	s_d7In <= "00000";
	s_d6In <= "00001";
	s_d5In <= "00101";
	s_d4In <= "00000";
	s_textin_s2<= "10110000001000110110";
	wait for 100 ns;
	
	s_enable <= '1';
	wait for 100 ns;
	
	s_sel<= '1';
	wait for 100 ns;

	end process;
end Stimulus;