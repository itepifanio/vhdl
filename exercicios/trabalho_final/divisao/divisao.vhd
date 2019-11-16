LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY divisao IS
	PORT (clk: IN STD_LOGIC;
			a,b: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			quociente, resto: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY;

ARCHITECTURE arq OF divisao IS
	COMPONENT pc
		PORT (clk: IN STD_LOGIC;
				d: IN STD_LOGIC_VECTOR(1 downto 0);
				o_div: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT po
		PORT (clk, o_div: IN STD_LOGIC;
				a, b: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				quociente, resto: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
				d: OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
	END COMPONENT;
	
--	SIGNAL aux: STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL aux1 : STD_LOGIC := '1'; -- aux do o_div
	SIGNAL aux2 : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
	SIGNAL q, r: STD_LOGIC_VECTOR(15 DOWNTO 0);
	BEGIN
		i1: po PORT MAP (clk, aux1, a, b, q, r, aux2);
		i2: pc PORT MAP (clk, aux2, aux1);
		quociente <= q;
		resto <= r;
END arq;