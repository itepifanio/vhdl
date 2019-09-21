library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity subtrador is 
	port(a,b: in std_logic_vector(3 downto 0);
		  cout: out std_logic;
		  s: out std_logic_vector(3 downto 0));
end entity;

architecture arq of subtrador is
	component somador_4_bits is
		port(a,b: in std_logic_vector(3 downto 0);
		  cout: out std_logic;
		  s: out std_logic_vector(3 downto 0));
	end component;
	
	component inversor is
		Port (a: in  STD_LOGIC_VECTOR(3 downto 0);
          s: out  STD_LOGIC_VECTOR(3 downto 0));
	end component;
	
	signal invertido, result, complemento: std_logic_vector(3 downto 0);
	signal aux_cout: std_logic;
	
	begin
		a0: inversor port map(b, invertido);
		a1: somador_4_bits port map(invertido, "0001", aux_cout, complemento);
		a5: somador_4_bits port map(a,complemento, cout, s);
end architecture;