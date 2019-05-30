library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity leds_life is
PORT
	(
		horl		 :  IN STD_LOGIC;
		nb_leds	 :	 IN INTEGER range 0 to 3;
		leds_ctrl : OUT STD_LOGIC_VECTOR(2 downto 0)
		);
end leds_life;


ARCHITECTURE a of leds_life is
begin 



process(horl)
	begin
	
		if (horl'event and horl='1') then
		
			case nb_leds is
				when 0      =>  leds_ctrl <= "000";
				when 1      =>  leds_ctrl <= "001";
				when 2      =>  leds_ctrl <= "011";
				when 3      =>  leds_ctrl <= "111";

			end case;
			
		end if;
		
	end process;
end a ;
