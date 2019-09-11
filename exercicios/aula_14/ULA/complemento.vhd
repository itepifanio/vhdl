library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity complemento is 
	port(x: in std_logic_vector(7 downto 0);
		  saida: out std_logic_vector(7 downto 0));
end entity;

architecture arq of complemento is
	component somador is
		port(x,y: in std_logic_vector(7 downto 0);
			  cin:in std_logic;
			  cout: out std_logic;
			  saida: out std_logic_vector(7 downto 0));
	end component;
	
	signal inverso: std_logic_vector(7 downto 0);
	signal result: std_logic_vector(7 downto 0);
	signal um: std_logic_vector(7 downto 0);
	signal complement: std_logic_vector(7 downto 0);
	signal cout: std_logic;
	
	begin
		inverso <= not(x);
		
		um(0) <= '1';
		um(1) <= '0';
		um(2) <= '0';
		um(3) <= '0';
		um(4) <= '0';
		um(5) <= '0';
		um(6) <= '0';
		um(7) <= '0';
		label2: somador port map (inverso, um, '0', cout, complement);
		saida <= complement;
end architecture;