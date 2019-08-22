library ieee;
use ieee.std_logic_1164.all;

entity exercicio_2 is 
	port(
    	a, b: IN bit_vector(3 downto 0); 
        c: OUT bit_vector(7 downto 0));
end entity;

architecture a of exercicio_2 is
	begin
		c(0) <= b(0);
		c(1) <= b(1);
		c(2) <= b(2);
		c(3) <= b(3);
		c(4) <= a(0);
		c(5) <= a(1);
		c(6) <= a(2);
		c(7) <= a(3);
end a;
