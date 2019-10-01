library ieee;
use ieee.std_logic_1164.all;

entity flip_flop is
	port(
		j,k, reset, clock_enable, clk: in std_logic;
		output: out std_logic);
end entity;

architecture arq of flip_flop is
	signal tmp: std_logic;
	begin
		process(clk)
			begin
				if rising_edge(clk) then
					if reset='1' then
						tmp <= '0';
					elsif clock_enable = '1' then
						if(j = '0' and k = '0') then
							tmp <= tmp;
						elsif(j = '0' and k = '1') then
							tmp <= '0';
						elsif(j = '1' and k = '0') then
							tmp <= '1';
						end if;
					end if;
				end if;
		end process;
	output <= tmp;
end architecture;