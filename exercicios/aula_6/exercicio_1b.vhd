library ieee;
use ieee.std_logic_1164.all;

entity exercicio_1b is
	port(a: IN std_logic;
    	 b: IN std_logic;
         s: OUT std_logic);
end entity;

architecture a of exercicio_1b is
begin
  s <= a nand b;  
end architecture;
