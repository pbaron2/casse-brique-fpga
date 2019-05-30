library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- Déclaration de l'entité

entity controleur is	
	port(score : in INTEGER range 0 to 1023;
	     unites: out INTEGER range 0 to 15;
		  dizaines: out INTEGER range 0 to 15;
		  centaines: out INTEGER range 0 to 15;
		  milliers: out INTEGER range 0 to 15;
		  horl: in std_logic);


end controleur;	






---------------------------------------------------------------------------------------------------
-- Description de l'architecture

architecture A of controleur is

begin

process(horl)
	variable m : integer range 0 to 15;
	variable c : integer range 0 to 15;
	variable d : integer range 0 to 15;

begin	

	if (horl'event and horl='1') then

		m := score/1000;
		milliers <= m;
		c := (score-m*1000)/100;
		centaines <= c;
		d := (score-m*1000-c*100)/10;
		dizaines <= d;
		unites <= (score-m*1000-c*100-d*10);

	end if;
end process;
end A;	