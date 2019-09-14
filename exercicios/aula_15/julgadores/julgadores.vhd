library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity julgadores is 
	port(j0,j1,j2,j3: IN std_logic;
		  vd, vm: OUT std_logic);
end entity;

architecture arq of julgadores is
	signal a: std_logic; -- aprovado
	signal e: std_logic; -- empate
	signal r: std_logic; -- reprovado
	
	begin
		a <= ((j0 and j2 and j3) or (j0 and j1 and j3) or (j1 and j2 and j3));
		e <= (j0 and j1 and (not j2) and (not j3)) or
			  ((not j0) and j1 and (not j2) and j3) or
			  (j0 and (not j1) and (not j2) and j3) or
			  ((not j0) and (not j1) and j2 and j3) or
			  ((not j0) and j1 and j2 and (not j3)) or
			  (j0 and (not j1) and j2 and (not j3));
		r <= ((not j0) and (not j1) and (not j2) and j3) or
			  ((not j0) and (not j1) and j2 and (not j3)) or
			  ((not j0) and j1 and (not j2) and (not j3)) or
			  (j0 and (not j1) and (not j2) and (not j3));
		vd <= a or e;
		vm <= e or r;
end architecture;