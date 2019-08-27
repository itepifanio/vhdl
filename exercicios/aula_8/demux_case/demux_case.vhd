LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity demux_case is
		port (s: IN std_logic_vector(1 downto 0);
				i: IN std_logic_vector(1 downto 0);
				s1,s2,s3,s4: OUT std_logic_vector(1 downto 0));
end entity;

architecture arq of demux_case is
	begin
		process (s,i) is
			begin
				case (s) is
					when "00" =>
						s1 <= i;
						s2 <= "00";
						s3 <= "00";
						s4 <= "00";
					when "01" =>
						s1 <= "00";
						s2 <= i;
						s3 <= "00";
						s4 <= "00";
					when "10" =>
						s3 <= i;
						s1 <= "00";
						s2 <= "00";
						s4 <= "00";
					when "11" =>
						s4 <= i;
						s1 <= "00";
						s2 <= "00";
						s3 <= "00";
				end case;
		end process;
end architecture;