library ieee;
use ieee.std_logic_1164.all;

entity registrador is
	port(i: in std_logic_vector(3 downto 0);
		  clk, clr: in std_logic;
		  q: out std_logic_vector(3 downto 0));
end entity;

architecture arq of registrador is
	begin
		process(i, clk)
			begin
				if(clk'event and clk = '1') then
					q <= i;
				end if;
				if(clr = '1') then
					q <= '0';
				end if;
		end process;
end architecture;