library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity testedivisor is

	port(	KEY		:	in std_logic_vector(3 downto 0);
			SW			:	in std_logic_vector(2 downto 0);
			CLOCK_50	:	in std_logic;
			LEDR     :  out std_logic_vector(17 downto 0);
			HEX7		:	out std_logic_vector(6 downto 0);
			HEX6		:	out std_logic_vector(6 downto 0);
			HEX5		:	out std_logic_vector(6 downto 0);
			HEX4		:	out std_logic_vector(6 downto 0);
			HEX3		:	out std_logic_vector(6 downto 0);
			HEX2		:	out std_logic_vector(6 downto 0);
			HEX1		:	out std_logic_vector(6 downto 0);
			HEX0		:	out std_logic_vector(6 downto 0));

end testedivisor;


architecture Structural of testedivisor is

	signal sclk_1hz, sclk_2hz, s_sel   : std_logic;
	signal s_ledsOut : std_logic_vector(7 downto 0);
	signal s_textOut   : std_logic_vector(39 downto 0);
	signal s_enable  : std_logic_vector(2 downto 0);
	signal s_d0, s_d1, s_d2, s_d3, s_d4, s_d5, s_d6, s_d7  : std_logic_vector(4 downto 0);
	
	
begin

	freq_div1hz : entity work.testeclk(RTL)
					generic map(divFactor => 50e6)
					port map(clkIn =>CLOCK_50,
								clkOut => sclk_1hz,
								leds => ledr(0));
					
	freq_div2hz : entity work.testeclk(RTL)
					generic map(divFactor => 25e6)
					port map(clkIn =>CLOCK_50,
								clkOut=> sclk_2hz,
								leds => ledr(1));
								

end Structural;