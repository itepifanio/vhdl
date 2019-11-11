library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity somador_completo is 
	port(a,b,cin: in std_logic;
		  s, cout: out std_logic);
end entity;

architecture arq of somador_completo is
	begin
		s <= a xor b xor cin;
		cout <= (((a xor b) and cin) or (a and b));
end architecture;