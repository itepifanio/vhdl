library ieee;
use ieee.std_logic_1164.all;

entity comparador_5_bits is
	port(
		A, B: IN std_logic_vector(4 downto 0);
		X, Y, Z: OUT std_logic);
end entity;

architecture arq of comparador_5_bits is
	begin
		process (A, B)
			begin
				if A = B then
					X <= '1';
				elsif A > B then
					Y <= '1';
				else 
					Z <= '1';
				end if;
		end process;
end architecture;