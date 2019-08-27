LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity demux_with is
		port (s: IN std_logic_vector(1 downto 0);
				i: IN std_logic_vector(1 downto 0);
				s1,s2,s3,s4: OUT std_logic_vector(1 downto 0));
end entity;

architecture arq of demux_with is 
	begin 
		with s select
			 s1 <= i when "00", "00" when others;
		with s select
			 s2 <= i when "01", "00" when others;
		with s select
			 s3 <= i when "10", "00" when others;
		with s select
			 s4 <= i when "11", "00" when others;
end architecture;