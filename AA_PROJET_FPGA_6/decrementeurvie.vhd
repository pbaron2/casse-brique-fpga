library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decrementeurvie is
PORT
	(
		vie_initiale		:	 IN STD_LOGIC_VECTOR(2 downto 0);
		vie_finale		:	 OUT STD_LOGIC_VECTOR(2 downto 0);
		enable: IN STD_LOGIC;
		clock: IN STD_LOGIC);
end decrementeurvie;


ARCHITECTURE a of decrementeurvie is

begin 
process(clock)
begin
	if (clock'event and clock='1') then
		if enable='1' then
		vie_finale <= std_logic_vector(to_unsigned(to_integer(unsigned(vie_initiale))-1,3));
		end if;
	end if;
end process;
end a ;
