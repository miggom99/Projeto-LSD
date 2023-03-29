-- Projecto Guess number 
-- Miguel Gomes e Rodrigo Pires
-- bloco que mostra no display de 7 segmentos o que pretendemos

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity disp_select is
	port( sel : in std_logic;
			textin_s2 : in std_logic_vector(19 downto 0);
			textin    : in std_logic_vector(39 downto 0);
			d7In      : in std_logic_vector(4 downto 0);
			d6In      : in std_logic_vector(4 downto 0);
			d5In      : in std_logic_vector(4 downto 0);
			d4In      : in std_logic_vector(4 downto 0);
			enable    : in std_logic := '1';
			d7        : out std_logic_vector(4 downto 0);
			d6        : out std_logic_vector(4 downto 0);
			d5        : out std_logic_vector(4 downto 0);
			d4 		 : out std_logic_vector(4 downto 0);
			d3 		 : out std_logic_vector(4 downto 0);
			d2 		 : out std_logic_vector(4 downto 0);
			d1 		 : out std_logic_vector(4 downto 0);
			d0 		 : out std_logic_vector(4 downto 0));

end disp_select;

architecture Behavioral of disp_select is
begin
	process(sel)
	begin
	case sel is		when '0' => 
			d7 <= textin(4 downto 0);
			d6 <= textin(9 downto 5);
			d5 <= textin(14 downto 10);
			d4 <= textin(19 downto 15);
			d3 <= textin(24 downto 20);
			d2 <= textin(29 downto 25);
			d1 <= textin(34 downto 30);
			d0 <= textin(39 downto 35);
		when others => 
			if(enable ='1') then
				d7 <= d7In;
				d6 <= d6In;
				d5 <= d5In;
				d4 <= D4In;
				d3 <= textin_s2(4 downto 0);
				d2 <= textin_s2(9 downto 5);
				d1 <= textin_s2(14 downto 10);
				d0 <= textin_s2(19 downto 15);
			else
				d7 <= "11111";
				d6 <= "11111";
				d5 <= "11111";
				d4 <= "11111";
				d3 <= "11111";
				d2 <= "11111";
				d1 <= "11111";
				d0 <= "11111";
			end if;
		end case;
	end process;
end Behavioral;

	
			
				
				
	
		





