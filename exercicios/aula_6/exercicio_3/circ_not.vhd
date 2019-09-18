library ieee;
use ieee.std_logic_1164.all;

entity circ_not is 
	port(a: in std_logic;
		  s: out std_logic);
end entity;

architecture arq of circ_not is
	begin
		s <= (not a);
end architecture;
