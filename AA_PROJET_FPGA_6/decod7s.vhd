library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
entity decod7s is
port(horl : in std_logic;
BusIn : in integer range 0 to 15;
BusOut : out integer range 0 to 127);
end decod7s;
architecture A of decod7s is
begin
process(horl)
begin
if (horl'event and horl ='1') then
case BusIn is
when 0 =>
BusOut <= 1;
when 1 =>
BusOut <= 79;
when 2 =>
BusOut <= 18;
when 3 =>
BusOut <= 6;
when 4 =>
BusOut <= 76;
when 5 =>
BusOut <= 36;
when 6 =>
BusOut <= 32;
when 7 =>
BusOut <= 15;
when 8 =>
BusOut <= 0;
when 9 =>
BusOut <= 4;
when others =>
null;
end case;
end if;
end process;
end A;