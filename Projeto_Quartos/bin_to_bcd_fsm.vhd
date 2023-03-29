-- Projecto Guess number 
-- Miguel Gomes e Rodrigo Pires
-- Maquina de estados para fazer a mudança de binário para BCD

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

 entity bin_to_bcd_fsm is
 port ( 
	clk : in std_logic ;
	reset : in std_logic;
	bin_input : in std_logic_vector(6 downto 0);
	activate  : in std_logic;
	digit1    : out std_logic_vector(4 downto 0);
	digit0    : out std_logic_vector(4 downto 0);
	done      : out std_logic);
 end bin_to_bcd_fsm;
 
 architecture Behav of bin_to_bcd_fsm is
	type Tstate is (IDLE, subtrai50, subtrai20, subtrai10, finish);
	
	signal s_State	: Tstate := IDLE;
	
	signal s_dnum : unsigned(6 downto 0) ;
	constant s_50 : unsigned(6 downto 0) := "0110010";
	constant s_20 : unsigned(6 downto 0) := "0010100";
	constant s_10 : unsigned(6 downto 0) := "0001010";
	signal s_digit1 : natural := 0;
	signal s_digit0 : unsigned(4 downto 0) := "00000";
	

begin
	
	
		
	state_proc : process(clk)
	begin
		if (rising_edge(clk)) then 
			done <= '0';
			if(reset = '1') then 
				s_State <= IDLE;
				s_digit0 <= "00000";
				s_digit1 <= 0;
				
			else 
				case(s_State) is
				when IDLE => 
					done <= '0';
					if (activate = '0') then 
						s_State <= IDLE;
					else
						s_State <= subtrai50;
						s_dnum <= unsigned(bin_input);
						s_digit1 <= 0;
					end if;

				
				when subtrai50 =>
		
					if(s_dnum >= s_50) then
						s_digit1 <= s_digit1 + 5;
						s_dnum <= s_dnum - s_50;
						s_State <= subtrai50;
					else 
						s_dnum <= s_dnum;
						s_State <= subtrai20;
					end if;
						
				when subtrai20 =>

					if(s_dnum >= s_20) then
						s_digit1 <=  s_digit1 + 2;
						s_dnum <=  s_dnum - s_20;
						s_State <= subtrai20;
					else 
						s_dnum <= s_dnum;
						s_State <= subtrai10;
					end if;
				
				when subtrai10 =>
					
					
					if(s_dnum >= s_10) then 
						s_digit1 <=  s_digit1 + 1;
						s_dnum <=  s_dnum - s_10;
						s_State <= subtrai10;
					else 
						s_State <= finish;
						s_digit0 <= s_dnum(4 downto 0);
						
					end if;
				
				when finish =>
					
					digit0<= std_logic_vector(s_digit0);
					digit1 <= std_logic_vector(to_unsigned(s_digit1, 5));
					
					done <= '1';
					s_State <= IDLE;
					
				when others =>
					s_state <= IDLE;
					
				end case;
			end if;
		end if;
	end process;
end Behav;
			
			
		
			
	