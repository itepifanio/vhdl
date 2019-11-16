LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY po IS
	PORT (clk, o_div: IN STD_LOGIC;
			a, b: INOUT STD_LOGIC_VECTOR (15 DOWNTO 0);
			quociente, resto: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
			d: OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END ENTITY;

ARCHITECTURE arq OF po IS
	BEGIN
		PROCESS (clk, a, b, o_div)
		VARIABLE cont: STD_LOGIC_VECTOR (15 DOWNTO 0) := "0000000000000000";
		BEGIN
			IF (clk'event AND clk = '1') THEN
				-- comparador
				IF (o_div = '1') THEN
					-- contador
					cont := cont + 1;
					IF (a > b) THEN
						-- subtrador
						a <= a - b;
						d <= "01";
					-- se for negativo foi pq o ultimo numero era positivo
					-- somando os valores eu obtenho o resultado anterior sem precisar de "flip flop"
					ELSIF (a < b) THEN
						d <= "10";
						quociente <= cont;
						resto <= a + b;
						quociente <= cont + 1;
					ELSIF (a = b) THEN
						d <= "11";
					ELSIF (a = "0000000000000000") THEN
						d <= "00";
						resto <= "0000000000000000";
					ELSE
						d <= "00";
						resto <= "0000000000000000";
						quociente <= "0000000000000000";
					END IF;
					quociente <= cont;
				END IF;
			END IF;
		END PROCESS;
END arq;