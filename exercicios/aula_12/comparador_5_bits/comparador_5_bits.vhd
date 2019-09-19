library ieee;
use ieee.std_logic_1164.all;

entity comparador_5_bits is
	port(a,b: in std_logic_vector(4 downto 0);
		  i0,i1,i2: in std_logic;
		  x,y,z: out std_logic);
end entity;

architecture arq of comparador_5_bits is
	component comparador is
		port(a,b, i0, i1, i2: in std_logic;
			  x,y,z: out std_logic);
	end component;
	
	signal aux: std_logic_vector(11 downto 0);
	
	begin
		s0: comparador port map(a(0), b(0), i0, i1, i2, aux(0), aux(1), aux(2));
		s1: comparador port map(a(1), b(1), aux(0), aux(1), aux(2), aux(3), aux(4), aux(5));
		s2: comparador port map(a(2), b(2), aux(3), aux(4), aux(5), aux(6), aux(7), aux(8));
		s3: comparador port map(a(3), b(3), aux(6), aux(7), aux(8), aux(9), aux(10), aux(11));
		s4: comparador port map(a(4), b(4), aux(9), aux(10), aux(11), x, y, z);
end architecture;