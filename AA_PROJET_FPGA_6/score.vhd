library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity score is
PORT
	(
		briquecasse		:	 IN STD_LOGIC;
		reset		:	 IN STD_LOGIC;
		nbBricks : IN integer range 0 to 64;
		en_nios : IN STD_LOGIC;
		clock : IN STD_LOGIC;
		score_actuel : OUT STD_LOGIC_VECTOR(9 downto 0) ;
		gagne : OUT STD_LOGIC
		);
end score;


ARCHITECTURE a of score is
signal  cnt : integer range 0 to 64:= 0;
begin 



process(clock, reset)
	begin
		if reset = '1' then
			cnt <= 0;
			gagne <= '0';
		
		elsif (clock'event and clock='1') then
		
			if en_nios = '1' then
			
				if briquecasse = '1' then
				
					cnt <= cnt + 1 ;
					
				end if;
				
			end if;
			
			if cnt = nbBricks then
				gagne <= '1';
			else
				gagne <= '0';
			end if;
			
			score_actuel <= std_logic_vector(to_unsigned(5*cnt,10));
			
		end if;
	end process;
end a ;
