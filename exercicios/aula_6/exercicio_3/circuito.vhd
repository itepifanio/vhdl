-- exercicio 3 da aula 6

library ieee;
use ieee.std_logic_1164.all;

entity circuito is 
	port(a,b,c,d: in std_logic;
		  x: out std_logic);
end entity;

-- estrutural
--architecture arq of circuito is
--	begin
--		x <= ((a and b) or (not(b and c))) or ((not(((not b) and (not c)) or c)) and (not d));
--end architecture;
architecture arq of circuito is
--	component circ_and
--		port(a,b,c: in std_logic;
--			  s: out std_logic);
--	end component;
--
--	component circ_or
--		port(a,b,c,d: in std_logic;
--           s: out std_logic);
--	end component;

	component circ_not
		port(a: in std_logic;
           s: out std_logic);
	end component;
	
	component andd
		port(a,b: in std_logic;
		  s: out std_logic);
	end component;
	
	component orr
		port(a,b: in std_logic;
           s: out std_logic);
	end component;
	
	signal aux: std_logic_vector(15 downto 0);
--	signal aux2: std_logic_vector(3 downto 0);
	begin
		s0: circ_not port map (b, aux(0)); -- aux(0) = not b
		s6: circ_not port map (c, aux(5)); -- aux(5) = not c
		s7: circ_not port map (d, aux(6)); -- aux(6) = not d
		s1: andd port map(a, b, aux(1)); -- aux(1) = a and b
		s2: andd port map(b, c, aux(2)); -- aux(2) = b and c
		s3: circ_not port map(aux(2), aux(3)); -- aux(3) =  not(b and c)
		s4: orr port map(aux(3), aux(1), aux(4)); -- aux(4) = (a and b) or (not(b and c))
		s5: andd port map(aux(0), aux(5), aux(7)); -- aux(7) = (not b) and (not c)
		s8: orr port map(aux(7), c, aux(8)); -- aux(8) = ((not b) and (not c)) or c)
		s9: circ_not port map(aux(8), aux(9)); -- aux(9) = not ((not b) and (not c)) or c)
		s10: andd port map(aux(6), aux(9), aux(10)); -- aux(10) = (not d) and not ((not b) and (not c)) or c)
		s11: orr port map(aux(4), aux(10), x); -- aux(11) = ((a and b) or (not(b and c))) or ((not d) and not ((not b) and (not c)) or c))
end architecture;