library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity subtrador_8_bits is 
	Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : in  STD_LOGIC_VECTOR (3 downto 0);
           bin : in  STD_LOGIC;
           bout : out  STD_LOGIC;
			  saida : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end entity;

architecture arq of subtrador_8_bits is
	component somador is
		port(cin:in std_logic;
			  x,y: in std_logic_vector(3 downto 0);
			  cout: out std_logic;
			  saida: out std_logic_vector(3 downto 0));
	end component;
	
	component complemento is
		port(x: in std_logic_vector(3 downto 0);
			  saida: out std_logic_vector(3 downto 0));
	end component;
	
	signal invertido: std_logic_vector(3 downto 0);
	signal result: std_logic_vector(3 downto 0);
	
	begin
		a0: complemento port map(y, invertido);
		a1: somador port map (bin, x, invertido, bout, result);	
		saida <= result;
end architecture;
		