-- Projecto Guess number 
-- Miguel Gomes e Rodrigo Pires
-- Maquina de estados principal

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity guesss_number is
	port(clk			: in std_logic;
		  clk_1hz   : in std_logic;
		  clk_2hz   : in std_logic;
		  clk_4hz   : in std_logic;
		  clk_8hz   : in std_logic;
		  reset     : in std_logic;
		  key0      : in std_logic;
		  key1      : in std_logic;
		  key2      : in std_logic;
		  key3      : in std_logic;
		  done1     : in std_logic;
		  done2     : in std_logic;
		  rnd_num   : in std_logic_vector(6 downto 0); 
		  sw_rnd    : in  std_logic; -- switch para ativar o modo random
		  rnd_led   : in  std_logic_vector(17 downto 0);
		  leds_out	: out std_logic_vector(17 downto 0);
		  textOut   : out std_logic_vector(39 downto 0); 
		  selector  : out std_logic;
		  activate  : out std_logic;
		  enable2hz : out std_logic;
		  attempt   : out std_logic_vector(6 downto 0);--tentativa
		  n_attempts: out std_logic_vector(6 downto 0);-- nº de tentativas
		  textOut_s2: out std_logic_vector(19 downto 0)); 
end guesss_number;

 
 architecture Behavioral of guesss_number is
	type Tstate is (start, rotate, check, escolha, hi_state, lo_state, equals, cheater);
	signal s_n_attempts, s_attempt: unsigned(6 downto 0);
	signal s_currentState: Tstate := start;
	signal s_count : natural := 0 ;
	signal texts1 : unsigned(39 downto 0);
	signal hi : natural := 99;
	signal lo : natural := 0;
	signal middle : natural :=50;
	signal rnd_attempt : integer := 0;
	signal count_attempts: natural:= 0;
	
	subtype TDataWord is std_logic_vector(19 downto 0); -- RAM com as escolhas possiveis
	type TROM is array (0 to 2) of TDataWord;
	constant c_memory: TROM := ("10110011001010110110", "10110000001000110110", "10110101111011110110"); --hi, lo, ==
	signal adress: natural :=0;
	
	
begin
	middle <= (lo + hi + 1)/2;
	process(clk)
	begin
	
	if(rising_edge(clk)) then
		enable2hz <= '1';
		activate <= '0';
		if(reset = '1') then --reset global 
			s_currentState <= start;
			s_count <= 0;
			n_attempts <= "0000000";
			attempt <= "0000000";
			hi <= 99;
			lo <= 0;
			leds_out <= "000000000000000000";
			count_attempts <= 0;
			s_attempt <= "0000000";
		else 
			case s_currentState is
			when start =>
					s_count <= s_count + 1; 
					selector <= '0';
		
					if(s_count >= 10*50e6) then --espera 10 segundos
						s_currentState <= rotate;
						s_count <= 0;
						texts1 <= b"00011_00000_10110_00000_10010_01110_10011_10000"; --grupo_03
						leds_out <= "000000000000000000";
					else 
						s_currentState <= start;
					end if;
					
					if(clk_1hz = '1') then --leds a piscar 
						leds_out <= (others =>'1');
						textOut <=b"00001_11000_10110_11001_11001_01011_01110_10000"; --guess_n1 texto
					else 
						leds_out <= (others =>'0');
						textOut <=b"11111_11111_11111_11111_11111_11111_11111_11111";
					end if; 
				
						
			when rotate => 
					--texto a rodar 
					leds_out <= (others =>'0');
					selector <= '0';
					s_count <= s_count + 1;
					if(s_count >= 50e6) then 
						texts1 <= rotate_left(texts1, 5);
						s_count <= 0;
					end if;
					textOut <= std_logic_vector(texts1);
					if (key0 = '1') then 
						s_currentState <= check;
					else 
						s_currentState <= rotate;
					end if ;
					
					
					
			when check => -- estado onde se verifica se o jogo joga com o algoritmo ou joga com o random generator e mostra o nº
			--de tentativas e a tentativa. Também verifica se o lo é menor que o hi e caso seja envia para o estado cheater
				
				selector <= '1';
				textOut_s2<= c_memory(adress);
				n_attempts <= std_logic_vector(to_unsigned(count_attempts, 7));
				
				if(sw_rnd = '1') then 
					if(to_integer(unsigned(rnd_num)) >= lo and to_integer(unsigned(rnd_num)) <= hi) then 
						attempt <= rnd_num;
						rnd_attempt <= to_integer(unsigned(rnd_num));
						s_currentState <= escolha;
					end if;
				else
					attempt <= std_logic_vector(to_unsigned(middle, 7));
					s_currentState <= escolha;
				end if;
				
				if(done1='1' and done2='1') then 
					activate <= '0';
			   else 
					activate <= '1';
				end if;
							
											if(lo > hi and hi < lo) then 
					s_currentState <= cheater;
					selector<= '0';
				end if;
			
				
			when escolha => -- estado onde escolhemos a opção que queremos (lo, hi, ==) e tambem envia para o estado cheater
				
				selector <= '1';
				textOut_s2<= c_memory(adress);
				n_attempts <= std_logic_vector(to_unsigned(count_attempts, 7));
				
				if(key1='1') then -- mudar a opção lo, hi , ==
					if(adress = 2) then 
						adress <= 0;
					else 
						adress <= adress+1;
					end if;
				else 
					adress<= adress;
				end if;
				
				if(done1='1' and done2='1') then 
					activate <= '0';
			   else 
					activate <= '1';
				end if;
				
				if(key2 = '1') then		-- escolher a opção lo, hi , ==
					count_attempts <= count_attempts +1;
					if(adress = 0) then 
						s_currentState<= hi_state;
					elsif(adress = 1) then 
						s_currentState<= lo_state;
					else 
						s_currentState<= equals;
						if(sw_rnd = '1') then
							s_attempt <= to_unsigned(rnd_attempt, 7);-- caso o SW1 esteja ativo guarda no signal s_attempt o valor gerado pelo bloco random
						else
							s_attempt <= to_unsigned(middle, 7);-- caso o SW1 esteja desativo guarda o valor gerado pelo algoritmo no signal s_attempt
						end if;
					end if;
				else 
					s_currentState <= escolha;
				end if;
				
				if(lo > hi and hi < lo) then -- caso o lo seja maior que o hi  vai para o estado cheater
					s_currentState <= cheater;
					selector<= '0';
				end if;
	
			when hi_state => --caso o hi seja selecionado ele vem para este estado que faz 2 coisas 
				
				selector <= '1';
				n_attempts <= std_logic_vector(to_unsigned(count_attempts, 7));
				textOut_s2<= c_memory(adress);
				
				if(sw_rnd = '1') then 
					hi <= rnd_attempt - 1;
				else
					hi <= middle -1;
					attempt <= std_logic_vector(to_unsigned(middle, 7));
				end if;
				
				if(done1='1' and done2='1') then 
					activate <= '0';
			   else 
					activate <= '1';
				end if;
				
				s_currentState <= check;
				
			when lo_state=> --estado do lo
				
				selector <= '1';
				n_attempts <= std_logic_vector(to_unsigned(count_attempts, 7));
				textOut_s2<= c_memory(adress);
				
				if(sw_rnd = '1') then 
					lo <= rnd_attempt + 1;
				else
					lo <= middle +1;
					attempt <= std_logic_vector(to_unsigned(middle, 7));
				end if;
				
				
				if(done1='1' and done2='1') then 
					activate <= '0';
			   else 
					activate <= '1';
				end if;
				
				s_currentState <= check;
				
			when equals => -- estado do ==
			
				selector <= '1';
				activate <= '1';
				
				if(clk_8hz = '1') then --leds a picar aleatoriamente a freq 8hz
					leds_out <= rnd_led;
				else 
					leds_out <= (others => '0');
				end if;
				
				if(clk_2hz = '1') then --texto a piscar
					textOut_s2 <= c_memory(2);
					enable2hz <= '1';
					attempt <= std_logic_vector(s_attempt);
				else 
					enable2hz <= '0';
					textOut_s2 <=b"11111_11111_11111_11111" ;
				end if;
				
				if(key3 = '1') then
					s_currentState <= rotate;
					lo <= 0;
					hi <= 99;
					n_attempts <= "0000000";   
					attempt <= "0000000";
					count_attempts <= 0;
					s_attempt <= "0000000";
				else 
					s_currentState <= equals;
				end if;
				
				
				
				
			when cheater => -- estado do cheater 
		
				selector <= '0';
				textOut <= b"10011_01011_10100_01010_01011_10101_01111_10110"; -- _cheater
				
				if(clk_4hz = '1') then --meter os displays a piscar e a dizer cheater
						textOut <=b"10011_01011_10100_01010_01011_10101_01111_10110"; 
					else 
						textOut <=b"11111_11111_11111_11111_11111_11111_11111_11111";
				end if; 
				
				if(key3 = '1') then -- sair do estado clicando no key3
					s_currentState <= rotate;
					lo <= 0;
					hi <= 99;
					n_attempts <= "0000000";
					attempt <= "0000000";
					count_attempts <= 0;
				else 
					s_currentState <= cheater;
				end if;
				
	
			when others => --caso aconteça algo inesperado a fpga apaga os displays todos 
				
				textOut   <= b"11111_11111_11111_11111_11111_11111_11111_11111";
				selector  <= '0';
				
				
				end case;
			end if;
		end if;
	end process;
end Behavioral;
					
			
			
			
		
		
