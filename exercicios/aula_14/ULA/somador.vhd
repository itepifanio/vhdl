library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- somador 8 bits
entity somador is
	port(a,b: in std_logic_vector(7 downto 0);
		  s: out std_logic_vector(7 downto 0);
		  carry: out std_logic);
end entity;

architecture arq of somador is
	signal c: std_logic_vector(7 downto 0);
	component somadorcompleto
		port(cin,x,y: in std_logic;
			  saida,cout: out std_logic);
	end component;
	begin
		s0: somadorcompleto port map (cin, a(0),b(0),s(0),c(0));
		s1: somadorcompleto port map (cin, a(1),b(1),s(1),c(1));
		s2: somadorcompleto port map (cin, a(2),b(2),s(2),c(2));
		s3: somadorcompleto port map (cin, a(3),b(3),s(3),c(3));
		s4: somadorcompleto port map (cin, a(4),b(4),s(4),c(4));
		s5: somadorcompleto port map (cin, a(5),b(5),s(5),c(5));
		s6: somadorcompleto port map (cin, a(6),b(6),s(6),c(6));
		s7: somadorcompleto port map (cin, a(7),b(7),s(7),c(7));
end architecture;