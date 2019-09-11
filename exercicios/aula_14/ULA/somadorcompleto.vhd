library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- somador 1 bit
entity somadorcompleto is 
	port(cin,x,y: in std_logic;
		  cout, saida: out std_logic);
end entity;

architecture arq of somadorcompleto is
	begin
		s <= x xor y xor cin;
		cout <= (x and y) or (cin and x) or (cin and y);
end architecture;