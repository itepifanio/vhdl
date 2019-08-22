library ieee;
use ieee.std_logic_1164.all;

entity exercicio_1a is
	port(a: IN bit_vector(0 to 3);
    	 b: IN bit_vector(0 to 3);
         s: OUT bit_vector(0 to 3));
end entity;

architecture a of exercicio_1a is
begin
  s(0) <= (NOT a(0)) AND (NOT b(0));
  s(1) <= (NOT a(1)) AND b(1);
  s(2) <= a(2) AND (NOT b(2));
  s(3) <= NOT (a(3) AND b(3));  
end architecture;
