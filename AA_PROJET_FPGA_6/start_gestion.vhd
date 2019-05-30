library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- Déclaration de l'entité

entity start_gestion is	
	port(horl : in STD_LOGIC;
		  button : in STD_LOGIC;
		  endGame : in STD_LOGIC;
		  reset : in STD_LOGIC;
		  enable : out STD_LOGIC);

end start_gestion;	






---------------------------------------------------------------------------------------------------
-- Description de l'architecture

architecture A of start_gestion is

signal inGame : STD_LOGIC := '0';

begin	

-- Bouge la plateforme
process(horl, reset)
begin
	if (reset = '1') then
		inGame <= '0';

	elsif(horl'event and horl='1') then
	
		if(endGame = '1') then
			inGame <= '0';
		
		elsif(button = '1') then
		
			inGame <= not inGame;
			
		end if;
		
		
		enable <= inGame;
			 
    end if;

end process;


end A;	