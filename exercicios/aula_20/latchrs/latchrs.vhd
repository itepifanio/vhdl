library ieee;
use ieee.std_logic_1164.all;

entity latchrs is
	port(r,s: in std_logic;
		  q, qbar: inout std_logic);
end entity;

architecture arq of latchrs is
	
	begin
		q <= r nor qbar;
		qbar <= s nor q;
end architecture;
