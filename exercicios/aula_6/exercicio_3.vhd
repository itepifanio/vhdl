-- Por estar utilizando o EDA playground não consegui rodar as simulações, isso será feito posteriormente

library ieee;
use ieee.std_logic_1164.all;

entity exercicio_3 is
    port(a, b, c, d: IN std_logic;
         s: OUT std_logic);
end entity;

architecture dataflow of exercicio_3 is
begin
  s <= (a OR (NOT b) OR (NOT c)) OR (b AND (NOT c) and (NOT d));  
end architecture;

-- Utilizando descrição estrutural temos o seguinte código:

architecture arq of exercicio_3 is
  component circ_and
  port(a,b,c: in std_logic;
          s: out std_logic);
  end component

  component circ_or
    port(a,b,c,d: in std_logic;
            s: out std_logic);
  end component

  component circ_not
    port(a: in std_logic;
            s: out std_logic);
  end component


signal aux: std_logic_vector(3 downto 0);

begin

  s1: circ_not port map (b, aux(0));
  s2: circ_not port map (c, aux(1));
  s3: circ_not port map (d, aux(2));
  s4: circ_and port map (b, aux(1), aux(2), aux(3));
  sf: circ_or port map (a, aux(0), aux(1), aux(3), x);
end arq
