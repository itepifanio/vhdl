library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- somador 1 bit
entity meio_somador is 
	port(a,b: in std_logic;
		  s, cout: out std_logic);
end entity;

architecture arq of meio_somador is
		s <= a xor b;
		cout <= a and b;
end architecture;