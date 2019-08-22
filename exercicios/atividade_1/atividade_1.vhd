-- Crie um tipo de dado Byte com 4 bits usando std_logic_vector
-- Crie um tipo de dado Barramento com 8 bits usando std_logic_vector

library ieee;

entity exercicio_1 is end entity;

use ieee.std_logic_1164.all;

architecture a of exercicio_1 is
    -- Utilizando subtype apenas para utilizar na conversão do begin da arquitetura
    subtype BARRAMENTO_T is std_logic_vector(7 downto 0);
    signal BARRAMENTO : BARRAMENTO_T;
    subtype BYTE_T is std_logic_vector(3 downto 0);
    signal BYTE : BYTE_T;
begin
  BYTE <= BARRAMENTO(3 downto 0);
end architecture;
