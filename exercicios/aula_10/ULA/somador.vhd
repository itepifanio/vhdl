library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- somador 8 bits
entity somador is
	port(x: in std_logic_vector(3 downto 0);
		  y: in std_logic_vector(3 downto 0);
		  cin:in std_logic;
		  cout: out std_logic;
		  saida: out std_logic_vector(3 downto 0));
end entity;

architecture arq of somador is
	component somadorcompleto
		port(cin: in std_logic;
			  x: in std_logic;
			  y: in std_logic;
			  cout: out std_logic;
			  saida: out std_logic);
	end component;
	
	signal prop: std_logic_vector(6 downto 0);
	
	begin
		a0: somadorcompleto port map (cin, x(0),y(0),prop(0),saida(0));
		a1: somadorcompleto port map (prop(0), x(1),y(1),prop(1),saida(1));
		a2: somadorcompleto port map (prop(1), x(2),y(2),prop(2),saida(2));
		a3: somadorcompleto port map (prop(2), x(3),y(3),cout,saida(3));
end architecture;