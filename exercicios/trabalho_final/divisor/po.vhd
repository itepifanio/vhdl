LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY po IS
	PORT(clk, can_load_a, can_load_b, can_div: IN STD_LOGIC;
		  num: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		  quoc, rest: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		  can_end: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE arq OF po IS
	SIGNAL a, b, q, r: STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	BEGIN
		PROCESS(clk, can_load_a, can_load_b, can_div, a)
			BEGIN
				IF(clk'event and clk = '1') THEN
					IF(can_load_a = '1') THEN
						a <= num;
					ELSIF(can_load_b = '1') THEN
						b <= num;
					ELSIF(can_div = '1' AND a >= b) THEN
						q <= q + "0000000000000001";
						a <= a - b;
						r <= a;
					END IF;
				END IF;
				
				IF (a < b) THEN
					can_end <= '1';
					r <= a;
				ELSE
					can_end <= '0';
				END IF;
				
				quoc <= q;
				rest <= r;
		END PROCESS;
END ARCHITECTURE;
