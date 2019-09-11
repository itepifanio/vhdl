library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ULA is
	port(a,b: in std_logic_vector(7 downto 0);
		  op: in std_logic_vector(1 downto 0);
		  s: out std_logic_vector(7 downto 0));
end entity;

architecture arq of ULA is
	component somador is
		port(x,y: in std_logic_vector(7 downto 0);
			  s: out std_logic_vector(7 downto 0);
			  carry: out std_logic)
end architecture;