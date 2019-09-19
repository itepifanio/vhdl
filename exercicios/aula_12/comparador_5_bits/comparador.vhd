library ieee;
use ieee.std_logic_1164.all;

entity comparador is
	port(a,b: in std_logic;
		  i0,i1,i2: in std_logic; -- i0 A = B, i1 A > B, i2 A < B
		  x,y,z: out std_logic);
end entity;

architecture arq of comparador is
	begin
		x <= (a xnor b) xnor i0;
		y <= ((a and (not b))) and (not i1);
		z <= (not((not a) and b)) and i2;
end architecture;