LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY divisor IS
	PORT(clk, bt: IN STD_LOGIC;
		  num: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		  quoc, rest: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY;

ARCHITECTURE arq OF divisor IS
	COMPONENT pc IS
		PORT(clk, bt, can_end: IN STD_LOGIC;
			  can_load_a, can_load_b, can_div: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT po IS
		PORT(clk, can_load_a, can_load_b, can_div: IN STD_LOGIC;
		  num: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		  quoc, rest: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		  can_end: OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL can_load_a, can_load_b, can_div, can_end: STD_LOGIC;
	
	BEGIN
		i0: po PORT MAP(clk, can_load_a, can_load_b, can_div, num, quoc, rest, can_end);
		i1: pc PORT MAP(clk, bt, can_end, can_load_a, can_load_b, can_div);
END ARCHITECTURE;