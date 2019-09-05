LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity comparador is
	port(
		a,b: in bit_vector(4 downto 0);
		-- i1 A = B, i2 A > B, i3 A < B
		i1,i2,i3: in bit;
		x,y,z: out bit);
end entity;

architecture arq of comparador is
	signal s: bit_vector(4 downto 0);
	
	component xnorr is 
		port(a,b: in bit; s: out bit); 
	end component;
	
	begin
		s0: xnorr port map (a(0),b(0),s(0));
		s1: xnorr port map (a(1),b(1),s(1));
		s2: xnorr port map (a(2),b(2),s(2));
		s3: xnorr port map (a(3),b(3),s(3));
		s4: xnorr port map (a(4),b(4),s(4));
		
--		x <= '1' when (a = b) else '0';
--		y <= '1' when (a > b) else '0';
--		z <= '1' when (a < b) else '0';
end architecture;