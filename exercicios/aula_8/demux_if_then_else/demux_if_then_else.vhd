LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity demux_if_then_else is
		port (s: IN std_logic_vector(1 downto 0);
				i: IN std_logic_vector(1 downto 0);
				s1,s2,s3,s4: OUT std_logic_vector(1 downto 0));
end entity;

architecture arq of demux_if_then_else is
	begin
		process (s,i) is
			begin
				if (s="00") then
					s1 <= i;
					s2 <= "00";
					s3 <= "00";
					s4 <= "00";
				elsif (s="01") then
					s2 <= i;
					s1 <= "00";
					s3 <= "00";
					s4 <= "00";
				elsif (s="10") then
					s3 <= i;
					s1 <= "00";
					s2 <= "00";
					s4 <= "00";
				else
					s4 <= i;
					s1 <= "00";
					s2 <= "00";
					s3 <= "00";
				end if;
		end process;
end architecture;
