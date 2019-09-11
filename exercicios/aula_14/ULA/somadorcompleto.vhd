library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- somador 1 bit
entity somadorcompleto is 
	port(cin : in std_logic;
		  x: in std_logic;
		  y: in std_logic;
		  cout: out std_logic;
		  saida: out std_logic);
end entity;

architecture arq of somadorcompleto is
	signal k1, k2, k3, k4, kfinal : std_logic;
	begin
		k1 <= x and y;
		k2 <= x and cin;
		k3 <= y and cin;
		k4 <= k1 or k2;
		cout <= k3 or k4; 
		kfinal <= x XOR y;
		saida <= kfinal xor cin;
--		s <= x xor y xor cin;
--		cout <= (x and y) or (cin and x) or (cin and y);
end architecture;