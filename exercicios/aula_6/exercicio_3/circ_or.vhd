library ieee;
use ieee.std_logic_1164.all;

entity circ_or is 
	port(a,b,c,d: in std_logic;
        s: out std_logic);
end entity;

architecture arq of circ_or is
	begin
		s <= a or b or c or d;
end architecture;
