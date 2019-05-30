library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity leds_time is
PORT
	(
		horl		 :  IN STD_LOGIC;
		nb_leds	 :	 IN INTEGER range 0 to 7;
		leds_ctrl : OUT STD_LOGIC_VECTOR(7 downto 0)
		);
end leds_time;


ARCHITECTURE a of leds_time is
begin 



process(horl)
	begin
	
		if (horl'event and horl='1') then
		
			case nb_leds is
				when 0      =>  leds_ctrl <= "00000001";
				when 1      =>  leds_ctrl <= "00000011";
				when 2      =>  leds_ctrl <= "00000111";
				when 3      =>  leds_ctrl <= "00001111";
				when 4      =>  leds_ctrl <= "00011111";
				when 5      =>  leds_ctrl <= "00111111";
				when 6      =>  leds_ctrl <= "01111111";
				when 7      =>  leds_ctrl <= "11111111";
				when others =>  leds_ctrl <= "00000000";
			end case;
			
		end if;
		
	end process;
end a ;
