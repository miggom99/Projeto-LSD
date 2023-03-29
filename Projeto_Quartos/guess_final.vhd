-- Projecto Guess number 
-- Miguel Gomes e Rodrigo Pires
-- top level onde todos os blocos são ligados entre eles e ligados a FPGA

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity guess_final is

	port(	KEY		:	in std_logic_vector(3 downto 0);
			SW			:	in std_logic_vector(2 downto 0);
			CLOCK_50	:	in std_logic;
			LEDR     :  out std_logic_vector(17 downto 0);
			LEDG     :  out std_logic_vector(7 downto 0);
			HEX7		:	out std_logic_vector(6 downto 0);
			HEX6		:	out std_logic_vector(6 downto 0);
			HEX5		:	out std_logic_vector(6 downto 0);
			HEX4		:	out std_logic_vector(6 downto 0);
			HEX3		:	out std_logic_vector(6 downto 0);
			HEX2		:	out std_logic_vector(6 downto 0);
			HEX1		:	out std_logic_vector(6 downto 0);
			HEX0		:	out std_logic_vector(6 downto 0));

end guess_final;


architecture Structural of guess_final is

	signal sclk_1hz, sclk_2hz, sclk_4hz, sclk_8hz, s_sel, s_key0, s_key1, s_key2, s_key3, s_activate, s_done1, s_done2, s_enable, done_random : std_logic;
	signal s_ledsOut : std_logic_vector(7 downto 0);
	signal s_textOut   : std_logic_vector(39 downto 0);
	signal s_attempt, s_n_attempts, s_rnd, s_rnd_fil, s_hi, s_lo : std_logic_vector(6 downto 0);
	signal s_d0, s_d1, s_d2, s_d3, s_d4, s_d5, s_d6, s_d7, s_bin7, s_bin6, s_bin5, s_bin4  : std_logic_vector(4 downto 0);
	signal s_textOut_s2 : std_logic_vector(19 downto 0);
	signal s_rnd_led : std_logic_vector(17 downto 0);
	
	
begin

	freq_div1hz : entity work.freqdivider(RTL)
					generic map(divFactor => 50e6)
					port map(clkIn =>CLOCK_50,
								clkOut=> sclk_1hz);
					
	freq_div2hz : entity work.freqdivider(RTL)
					generic map(divFactor => 25e6)
					port map(clkIn =>CLOCK_50,
								clkOut=> sclk_2hz);
								
	freq_div4hz : entity work.freqdivider(RTL)
					generic map(divFactor => 125e5)
					port map(clkIn =>CLOCK_50,
								clkOut=> sclk_4hz);
	
	freq_div8hz : entity work.freqdivider(RTL)
					generic map(divFactor => 625e4)
					port map(clkIn =>CLOCK_50,
								clkOut=> sclk_8hz);
								
	Debouncer0: entity work.Debouncer(Behavioral)
					port map(refClk => CLOCK_50,
								dirtyIn => KEY(0),
								pulsedOut => s_key0);
								
	Debouncer1: entity work.Debouncer(Behavioral)
					port map(refClk => CLOCK_50,
								dirtyIn => KEY(1),
								pulsedOut => s_key1);
								
	Debouncer2: entity work.Debouncer(Behavioral)
					port map(refClk => CLOCK_50,
								dirtyIn => KEY(2),
								pulsedOut => s_key2);
								
	Debouncer3: entity work.Debouncer(Behavioral)
					port map(refClk => CLOCK_50,
								dirtyIn => KEY(3),
								pulsedOut => s_key3);
								
	rnd_08_gen : entity work.pseudo_random_generator(heavy)
					generic map(N_BITS => 7,
									SEED   => X"2021_0005_0024")
					port map(clock  => CLOCK_50,
								enable => '1',
								rnd    => s_rnd );
								
								
	rnd_led_gen : entity work.pseudo_random_generator(heavy)
					generic map(N_BITS => 18,
									SEED   => X"2021_0005_0024")
					port map(clock  => CLOCK_50,
								enable => '1',
								rnd    => s_rnd_led );
								
								
	guess_number : entity work.guesss_number(Behavioral)
					port map(clk => CLOCK_50,
								clk_1hz => sclk_1hz,
								clk_2hz => sclk_2hz,
								clk_8hz => sclk_8hz,
								clk_4hz => sclk_4hz,
								leds_out => LEDR,
								done1 => s_done1,
								done2 => s_done2,
								reset => SW(0),
								sw_rnd => SW(1),
								rnd_num => s_rnd,
								key0 => s_key0,
								key1 => s_key1,
								key2 => s_key2,
								key3 => s_key3,
								rnd_led => s_rnd_led,
								textOut => s_textOut,
								selector => s_sel,
								enable2hz => s_enable,
								activate => s_activate,
								attempt => s_attempt,
								n_attempts => s_n_attempts,
								textOut_s2 => s_textOut_s2);
					
	bin_to_bcd0 : entity work.bin_to_bcd_fsm(Behav)
					port map(clk => CLOCK_50,
								reset => SW(0),
								bin_input => s_attempt,
								activate  => s_activate,
								digit1    => s_bin5,
								digit0    => s_bin4,
								done      => s_done2);
								
	bin_to_bcd1 : entity work.bin_to_bcd_fsm(Behav)
					port map(clk => CLOCK_50,
								reset => SW(0),
								bin_input => s_n_attempts,
								activate  => s_activate,
								digit1    => s_bin7,
								digit0    => s_bin6,
								done      => s_done1);
								
	disp_select : entity work.disp_select(Behavioral)
					port map(sel => s_sel,
								--enable => s_enable,
								textin_s2 => s_textOut_s2,
								textin => s_textOut,
								d7In => s_bin7,
								d6In => s_bin6,
								d5In => s_bin5,
								d4In => s_bin4,
								enable => s_enable,
								d7 => s_d7,
								d6 => s_d6,
								d5 => s_d5,
								d4 => s_d4,
								d3 => s_d3,
								d2 => s_d2,
								d1 => s_d1,
								d0 => s_d0);
								
	bin7seg7  : entity work.Bin7segDecoder(Behavioral)
				port map(enable => '1',
							binInput	=> s_d7,
							decOut_n	=> HEX7);
							
	bin7seg6  : entity work.Bin7segDecoder(Behavioral)
				port map(enable => '1',
							binInput	=> s_d6,
							decOut_n	=> HEX6);
	
	bin7seg5  : entity work.Bin7segDecoder(Behavioral)
				port map(enable => '1',
							binInput	=> s_d5,
							decOut_n	=> HEX5);
				
	bin7seg4  : entity work.Bin7segDecoder(Behavioral)
				port map(enable => '1',
							binInput	=> s_d4,
							decOut_n	=> HEX4);
							
	bin7seg3  : entity work.Bin7segDecoder(Behavioral)
				port map(enable => '1',
							binInput	=> s_d3,
							decOut_n	=> HEX3);
							
	bin7seg2  : entity work.Bin7segDecoder(Behavioral)
				port map(enable => '1',
							binInput	=> s_d2,
							decOut_n	=> HEX2);
							
							
	bin7seg1  : entity work.Bin7segDecoder(Behavioral)
				port map(enable => '1',
							binInput	=> s_d1,
							decOut_n	=> HEX1);
							
	bin7seg0  : entity work.Bin7segDecoder(Behavioral)
				port map(enable => '1',
							binInput	=> s_d0,
							decOut_n	=> HEX0);
							
								
end Structural;
								
								