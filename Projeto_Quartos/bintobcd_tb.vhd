-- Projecto Guess number 
-- Miguel Gomes e Rodrigo Pires
-- testbanch bin_to_bcd

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity bintobcd_tb is
end bintobcd_tb;

architecture Stimulus of bintobcd_tb is

signal s_clk, s_reset, s_activate, s_done : std_logic;
signal s_bin_input : std_logic_vector(6 downto 0);
signal s_dig0, s_dig1 : std_logic_vector(4 downto 0);

begin

uut : entity work.bin_to_bcd_fsm(Behav)
port map( clk => s_clk,
			reset => s_reset,
			activate => s_activate,
			done => s_done,
			bin_input => s_bin_input,
			digit0 => s_dig0,
			digit1 => s_dig1);
			
	clock_proc : process
	begin
		s_clk	<= '0'; wait for 100 ns;
		s_clk <= '1'; wait for 100 ns;
	end process;
	
	stim_proc : process
	begin
		wait for 100 ns;
		
		s_activate <= '1';
		wait for 100 ns;
		
		s_bin_input <= "1100000";
		wait for 100 ns;
		
	end process;
end Stimulus;
		
		
		
		
			