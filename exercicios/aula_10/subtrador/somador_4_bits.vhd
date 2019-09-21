library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity somador_4_bits is 
	port(a,b: in std_logic_vector(3 downto 0);
		  cout: out std_logic;
		  s: out std_logic_vector(3 downto 0));
end entity;

architecture arq of somador_4_bits is
	component meio_somador is
		port(a,b: in std_logic;
		  s, cout: out std_logic);
	end component;
	
	component somador_completo is
		port(a,b,cin: in std_logic;
		  s, cout: out std_logic);
	end component;
	signal c1,c2,c3: std_logic;
	
	begin
		i0: meio_somador port map (a(0), b(0), s(0), c1);
		i1: somador_completo port map (a(1),b(1),c1,s(1),c2);
		i2: somador_completo port map (a(2),b(2),c2,s(2),c3);
		i3: somador_completo port map (a(3),b(3),c3,s(3),cout);
end architecture;