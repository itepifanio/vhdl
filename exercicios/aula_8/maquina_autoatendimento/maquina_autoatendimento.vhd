LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity maquina_autoatendimento is
		port (s: IN std_logic_vector(2 downto 0);
				o: OUT character);
end entity;

architecture arq of maquina_autoatendimento is
	begin
		process(s) is
			begin
				case (s) is
					when "001" =>
						o <= 'A';
					when "010" =>
						o <= 'B';
					when "011" =>
						o <= 'C';
					when "100" =>
						o <= 'D';
					when "101" =>
						o <= 'E';
					when "110" =>
						o <= 'F';
					when "111" =>
						o <= 'G';
					when "000" =>
						o <= 'H';
				end case;
		end process;
end architecture;