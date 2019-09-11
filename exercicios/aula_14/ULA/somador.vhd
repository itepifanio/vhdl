library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- somador 8 bits
entity somador is
	port(a,b: in std_logic_vector(7 downto 0);
		  cin:in std_logic;
		  carry: out std_logic;
		  c: out std_logic_vector(7 downto 0));
end entity;

architecture arq of somador is
	component somadorcompleto
		port(cin,x,y: in std_logic;
			  cout,saida: out std_logic);
	end component;
	signal s: std_logic_vector(6 downto 0);
	begin
		s0: somadorcompleto port map (cin, a(0),b(0),s(0),c(0));
		s1: somadorcompleto port map (s(0), a(1),b(1),s(1),c(1));
		s2: somadorcompleto port map (s(1), a(2),b(2),s(2),c(2));
		s3: somadorcompleto port map (s(2), a(3),b(3),s(3),c(3));
		s4: somadorcompleto port map (s(3), a(4),b(4),s(4),c(4));
		s5: somadorcompleto port map (s(4), a(5),b(5),s(5),c(5));
		s6: somadorcompleto port map (s(5), a(6),b(6),s(6),c(6));
		s7: somadorcompleto port map (s(6), a(7),b(7),s(7),c(7));
end architecture;