library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- somador 1 bit
entity somadorcompleto is 
	port(a,b: in std_logic;
		  s, cout: out std_logic);
end entity;

architecture arq of somadorcompleto is
		s <= a xor b;
		cout <= a and b;
end architecture;