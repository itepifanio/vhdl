library ieee;
use ieee.std_logic_1164.all;

entity exercicio_1 is end entity;

architecture a of exercicio_1 is    
	-- Utilizando subtype apenas para conseguir fazer uma pequena conversão na arquitetura do componente
    subtype BARRAMENTO_T is std_logic_vector(7 downto 0);
    signal BARRAMENTO : BARRAMENTO_T;
    subtype BYTE_T is std_logic_vector(3 downto 0);
    signal BYTE : BYTE_T;
begin
  BYTE <= BARRAMENTO(3 downto 0);
end architecture;
