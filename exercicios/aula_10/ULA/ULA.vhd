library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- subtrator, preguiça de mudar o nome
entity ULA is
	port(a,b: in std_logic_vector(3 downto 0);
--		  op: in std_logic_vector(2 downto 0);
		  s: out std_logic_vector(3 downto 0));
end entity;

architecture arq of ULA is	
	component subtrador_8_bits is
		Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : in  STD_LOGIC_VECTOR (3 downto 0);
           bin : in  STD_LOGIC;
           bout : out  STD_LOGIC;
			  saida : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
	end component;
	
	signal w: std_logic;
	signal a_menos_b: std_logic_vector(3 downto 0);
	
	begin
		u1: subtrador_8_bits port map (a, b, '0', w, a_menos_b);
		s <= a_menos_b;
end architecture;