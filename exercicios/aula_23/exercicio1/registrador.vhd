library ieee;
use ieee.std_logic_1164.all;

entity registrador is
	port(clk, reset, w, in_i: in std_logic; -- clock, reset, write, value input, value output
		  o: out std_logic);
end entity;

architecture arq of registrador is
	signal d: std_logic;
	signal q: std_logic;
	begin
		o <= q;
		with w select d <=
			in_i when '1',
			q when others;
		
		process(clk, reset)
			begin
				if(clk = '1') then
					q <= '0';
				elsif(rising_edge(clk)) then
					q <= d;
				end if;
		end process;
end architecture;