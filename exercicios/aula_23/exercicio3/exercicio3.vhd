library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity exercicio3 is
	port(clk, cnt, clr, up_dwn: in std_logic;
		  fc: out std_logic;
		  s: out std_logic_vector(3 downto 0));
end entity;

architecture arq of exercicio3 is 	
	signal valor: std_logic_vector(3 downto 0);
	begin
		process (clk, cnt, valor)
			begin
				if(clk'event and clk = '1') then
					if(up_dwn = '0') then --decrescente
						if(cnt = '1') then
							valor = valor - "0001";
						else
							valor = valor;
						end if;
					else
						if(cnt = '1') then
							valor = valor + "0001";
						else
							valor = valor;
						end if;
					end if;
				end if;
				s <= valor;
				if(up_dwn = '0') then --decrescente
					if((valor(3) nor valor(2) nor valor(1) nor valor(0)) = '1') then
						fc <= '1';
					else
						fc <= '0';
					end if;
				else
					if((valor(3) and valor(2) and valor(1) and valor(0)) = '1') then
						fc <= '1';
					else
						fc <= '0';
					end if;
				end if;
		end process;
end architecture;