-- contador assincrono decrescente
library ieee;
use ieee.std_logic_1164.all;

entity contador_assincrono_decrescente is
	port(clk: in std_logic;
		  q0, q1: out std_logic);
end entity;

architecture atq of contador_assincrono_decrescente is
	signal sq0,sq1: std_logic;
	begin
		process(clk, sq0, sq1)
			begin
				if(clk'event and clk = '1') then
					sq0 <= not sq0;
				end if;
				if(sq0'event and sq0 = '1') then
					sq1 <= not sq1;
				end if;
				q0 <= sq0;
				q1 <= sq1;
		end process;
end architecture;