library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- Déclaration de l'entité

entity print_bricks is	
	port(horl : in STD_LOGIC;
		  x : in NATURAL range 0 to 1919;
		  y : in NATURAL range 0 to 1079;
		  adr_brick : out NATURAL range 0 to 63;
		  adr_mem : out NATURAL range 0 to 2399;
		  type_brick_mem : out NATURAL range 0 to 7;
		  type_brick_in : in NATURAL range 0 to 7);

end print_bricks;	






---------------------------------------------------------------------------------------------------
-- Description de l'architecture

architecture A of print_bricks is


begin	

process(horl)

	variable x_brick : NATURAL;
	variable y_brick : NATURAL;

begin

	if(horl'event and horl='1') then
	
		type_brick_mem <= 0;
		
		if(y < 320) then
		
			x_brick := x / 80;
			y_brick := y / 40;
			
			adr_brick <= x_brick + y_brick * 8;
		
			type_brick_mem <= type_brick_in;
			
			adr_mem <= (x - x_brick * 80) + (y - y_brick * 40) * 80;

		end if;
		
			 
    end if;

end process;

end A;	