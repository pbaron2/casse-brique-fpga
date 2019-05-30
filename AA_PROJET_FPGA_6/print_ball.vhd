library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- Déclaration de l'entité

entity print_ball is	
	port(horl : in STD_LOGIC;
		  x : in NATURAL range 0 to 1919;
		  y : in NATURAL range 0 to 1079;
		  x_ball : in NATURAL range 0 to 1919;
		  y_ball : in NATURAL range 0 to 2047;
		  adr : out NATURAL range 0 to 399;
		  to_print : out STD_LOGIC);

end print_ball;	






---------------------------------------------------------------------------------------------------
-- Description de l'architecture

architecture A of print_ball is


begin	

process(horl)
begin

	if(horl'event and horl='1') then
	
		to_print <= '0';
		
		if(y >= y_ball and y < y_ball + 20) then
		
			if(x >= x_ball and x < x_ball + 20) then
				
				to_print <= '1';
				
				adr <= (y - y_ball) * 20 + (x - x_ball) + 1;
				
			end if;

		end if;
		
			 
    end if;

end process;

end A;	