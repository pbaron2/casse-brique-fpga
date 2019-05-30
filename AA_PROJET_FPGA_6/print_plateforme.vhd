library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- Déclaration de l'entité

entity print_plateforme is	
	port(horl : in STD_LOGIC;
		  x : in NATURAL range 0 to 1919;
		  y : in NATURAL range 0 to 1079;
		  position : in NATURAL range 0 to 1919;
		  adr : out NATURAL range 0 to 2399;
		  to_print : out STD_LOGIC);

end print_plateforme;	






---------------------------------------------------------------------------------------------------
-- Description de l'architecture

architecture A of print_plateforme is


begin	

process(horl)
begin

	if(horl'event and horl='1') then
	
		to_print <= '0';
		
		if(y >= 460 and y < 480) then
		
			if(x >= position and x < position + 120) then
				
				to_print <= '1';
				
				adr <= (y - 460) * 120 + (x - position) + 1;
				
			end if;

		end if;
		
			 
    end if;

end process;

end A;	