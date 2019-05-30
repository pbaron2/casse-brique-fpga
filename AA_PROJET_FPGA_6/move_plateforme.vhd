library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- Déclaration de l'entité

entity move_plateforme is	
	port(horl : in STD_LOGIC;
		  left, right : in STD_LOGIC;
		  enable : in STD_LOGIC;
		  reset : in STD_LOGIC;
		  pos_out : out NATURAL range 0 to 1919);

end move_plateforme;	






---------------------------------------------------------------------------------------------------
-- Description de l'architecture

architecture A of move_plateforme is

signal position : NATURAL range 0 to 1919 := 260;

begin	

-- Bouge la plateforme
process(horl, reset)
begin

	if(reset = '1') then
		position <= 260;

	elsif(horl'event and horl='1') then
		
		if(enable = '1') then
		
			if(left = '0' and right = '1') then
			
				if(position > 0) then
					position <= position - 4;
				end if;

			end if;
			
			if(right = '0' and left = '1') then
			
				if(position <= 640 - 1 - 120) then -- Largeur plateforme = 120
					position <= position + 4;
				end if;

			end if;
			
		end if;
		
		pos_out <= position;
			 
    end if;

end process;


end A;	