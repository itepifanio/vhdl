LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY exercicio2 IS
	PORT (clk, c : IN STD_LOGIC;
			s, a : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			d, troco : OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE arq OF exercicio2 IS
	COMPONENT pc
		PORT (clk, c, tot_lt_s : IN STD_LOGIC;
			d, tot_ld, tot_clr: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT po
		PORT (clk, tot_ld, tot_clr : IN STD_LOGIC;
				s, a: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
				tot_lt_s, troco: OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL tot_ld, tot_clr, tot_lt_s: STD_LOGIC;
	BEGIN
		i1: po PORT MAP (clk, tot_ld, tot_clr, s, a, tot_lt_s, troco);
		i2: pc PORT MAP (clk, c, tot_lt_s, d, tot_ld, tot_clr);
END arq;