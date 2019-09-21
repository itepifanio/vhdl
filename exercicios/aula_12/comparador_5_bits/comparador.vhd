library ieee;
use ieee.std_logic_1164.all;

entity comparador is
	port(a,b: in std_logic;
		  a_equals_b,a_bigger_b,a_smaller_b: in std_logic; -- i0 A = B, i1 A > B, i2 A < B
		  x,y,z: out std_logic);
end entity;

architecture arq of comparador is
	begin
		x <= (a xnor b) and a_equals_b;
		y <= ((a and (not b))) and a_bigger_b;
		z <= ((not a) and b) and a_smaller_b;
end architecture;