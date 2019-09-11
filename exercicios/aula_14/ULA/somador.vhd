library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- somador 8 bits
entity somador is
	port(x: in std_logic_vector(7 downto 0);
		  y: in std_logic_vector(7 downto 0);
		  cin:in std_logic;
		  cout: out std_logic;
		  saida: out std_logic_vector(7 downto 0));
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
		a3: somadorcompleto port map (prop(2), x(3),y(3),prop(3),saida(3));
		a4: somadorcompleto port map (prop(3), x(4),y(4),prop(4),saida(4));
		a5: somadorcompleto port map (prop(4), x(5),y(5),prop(5),saida(5));
		a6: somadorcompleto port map (prop(5), x(6),y(6),prop(6),saida(6));
		a7: somadorcompleto port map (prop(6), x(7),y(7),cout,saida(7));
end architecture;