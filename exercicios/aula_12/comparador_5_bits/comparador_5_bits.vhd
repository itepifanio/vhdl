library ieee;
use ieee.std_logic_1164.all;

entity comparador_5_bits is
	port(a,b: in std_logic_vector(4 downto 0);
		  ina,inb,inc: in std_logic;
		  x,y,z: out std_logic);
end entity;

architecture arq of comparador_5_bits is
	component comparador is
		port(a,b, a_equals_b,a_bigger_b,a_smaller_b: in std_logic;
			  x,y,z: out std_logic);
	end component;
	
	signal sig: std_logic_vector(15 downto 0);
	
	begin
		s0: comparador port map(a(0), b(0), ina, inb, inc, sig(0), sig(1), sig(2));
		s1: comparador port map(a(1), b(1), sig(0), sig(1), sig(2), sig(3), sig(4), sig(5));
		s2: comparador port map(a(2), b(2), sig(3), sig(4), sig(5), sig(6), sig(7), sig(8));
		s3: comparador port map(a(3), b(3), sig(6), sig(7), sig(8), sig(9), sig(10), sig(11));
		s4: comparador port map(a(4), b(4), sig(9), sig(10), sig(11), sig(12), sig(13), sig(14));
		x <= sig(0) and sig(3) and sig(6) and sig(9) and sig(12);
		y <= sig(1) or sig(4) or sig(7) or sig(10) or sig(13);
		z <= sig(2) or sig(5) or sig(8) or sig(11) or sig(14);
end architecture;