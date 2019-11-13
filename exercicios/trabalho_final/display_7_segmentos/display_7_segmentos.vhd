library ieee;
use ieee.std_logic_1164.all;

entity display_7_segmentos is
	port(data: in std_logic_vector(3 downto 0); -- ver com o professor se existe tipo hexadecimal mesmo
		  s0, s1, s2, s3, s4, s5, s6: out std_logic);
end entity; 

architecture arq of display_7_segmentos is
	signal s: std_logic_vector(6 downto 0);
	begin
		with data select s <=
			"1000000" when "0000", -- '0'
			"1111001" when "0001", -- '1'
			"0100100" when "0010", -- '2'
			"0110000" when "0011", -- '3'
			"0011001" when "0100", -- '4'
			"0010010" when "0101", -- '5'
			"0000010" when "0110", -- '6'
			"1111000" when "0111", -- '7'
			"0000000" when "1000", -- '8'
			"0010000" when "1001", -- '9'
			"0001000" when "1010", -- 'A'
			"0000011" when "1011", -- 'B'
			"1000110" when "1100", -- 'C'
			"0100001" when "1101", -- 'D'
			"0000110" when "1110", -- 'E'
			"0001110" when "1111", -- 'F'
			"1000000" when others;
		s0 <= s(0);
		s1 <= s(1);
		s2 <= s(2);
		s3 <= s(3);
		s4 <= s(4);
		s5 <= s(5);
		s6 <= s(6);
		
end architecture;