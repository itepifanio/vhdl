library ieee;
use ieee.std_logic_1164.all;

entity exercicio_3 is 
	port(
    	a, b: IN std_logic; 
        c: OUT std_logic);
end entity;

architecture arq of exercicio_3 is
	begin
		c <= a NAND b;
end arq;
