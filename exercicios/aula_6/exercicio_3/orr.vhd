library ieee;
use ieee.std_logic_1164.all;

entity orr is 
	port(a,b: in std_logic;
		  s: out std_logic);
end entity;

architecture arq of orr is
	begin
		s <= a and b;
end architecture;
