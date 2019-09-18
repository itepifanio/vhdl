library ieee;
use ieee.std_logic_1164.all;

entity circ_and is 
	port(a,b,c: in std_logic;
		  s: out std_logic);
end entity;

architecture arq of circ_and is
	begin
		s <= a and b and c;
end architecture;
