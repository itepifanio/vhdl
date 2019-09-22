library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity somador_8_bits is 
	port(a,b: in std_logic_vector(7 downto 0);
		  cout: out std_logic;
		  s: out std_logic_vector(7 downto 0));
end entity;

architecture arq of somador_8_bits is
	component meio_somador is
		port(a,b: in std_logic;
		  s, cout: out std_logic);
	end component;
	
	component somador_completo is
		port(a,b,cin: in std_logic;
		  s, cout: out std_logic);
	end component;
	signal c: std_logic_vector(7 downto 0);
	
	begin
		i0: meio_somador port map (a(0), b(0), s(0), c(0));
		i1: somador_completo port map (a(1),b(1),c(0),s(1),c(1));
		i2: somador_completo port map (a(2),b(2),c(1),s(2),c(2));
		i3: somador_completo port map (a(3),b(3),c(2),s(3),c(3));
		i4: somador_completo port map (a(4),b(4),c(3),s(4),c(4));
		i5: somador_completo port map (a(5),b(5),c(4),s(5),c(5));
		i6: somador_completo port map (a(6),b(6),c(5),s(6),c(6));
		i7: somador_completo port map (a(7),b(7),c(6),s(7),cout);
end architecture;