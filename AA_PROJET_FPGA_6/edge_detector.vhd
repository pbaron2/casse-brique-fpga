library IEEE;
use IEEE.STD_LOGIC_1164.all;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- Déclaration de l'entité

entity edge_detector is	
	port(horl : in STD_LOGIC;
		  input : in STD_LOGIC;
		  output : out STD_LOGIC);

end edge_detector;	






---------------------------------------------------------------------------------------------------
-- Description de l'architecture

architecture A of edge_detector is

signal reg1 : std_logic;
signal reg2 : std_logic;

begin	



-- Actualise la sortie (synchrone)
process(horl)
begin

	if(horl'event and horl='1') then
		
		reg2 <= reg1;
		reg1 <= input;
		output <= (not reg2) and reg1;
			 
    end if;

end process;


end A;	