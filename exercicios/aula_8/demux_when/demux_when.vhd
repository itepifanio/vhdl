library ieee;
use ieee.std_logic_1164.all;

entity demux_when is
	port (s: IN std_logic_vector(1 downto 0);
			i: IN std_logic_vector(1 downto 0);
			s1,s2,s3,s4: OUT std_logic_vector(1 downto 0));
end entity;

architecture arq of demux_when is
	begin 
		s1 <= i when s="00" else "00";
		s2 <= i when s="01" else "00";
		s3 <= i when s="10" else "00";
		s4 <= i when s="11" else "00";
end architecture;