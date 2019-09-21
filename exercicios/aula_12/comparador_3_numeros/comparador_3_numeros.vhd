
library ieee;
use ieee.std_logic_1164.all;

entity comparador_3_numeros is
	port(n1, n2, n3 : in std_logic_vector(7 downto 0);
		  s : out std_logic_vector(7 downto 0));
end entity;

architecture comparar of comparador_3_numeros is 
	begin 
		process(n1,n2,n3) 
			begin 
				if(n1 > n2 and n1 > n3) then 
					s <= n1;
				elsif(n2 > n1 and n2 > n3) then
					s <= n2;
				elsif(n1 = n2) then
					if(n1 > n3) then
						s <= n1;
					else
						s <= n3;
					end if;
				elsif(n2 = n3) then
					if(n2 > n1) then
						s <= n2;
					else
						s <= n1;
					end if;
				elsif(n3 = n1) then
					if(n1 > n2) then
						s <= n1;
					else
						s <= n2;
					end if;
				else
					s <= n3;
				end if;
		end process;
end architecture;