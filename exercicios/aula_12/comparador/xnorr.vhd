LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity xnorr is
	port(
		a,b: in bit;
		s: out bit);
end entity;


architecture arq of xnorr is
	begin
		s <= a xnor b;
end architecture;
