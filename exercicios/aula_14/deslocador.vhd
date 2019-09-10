LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY deslocador IS
PORT (entra: IN STD_LOGIC_VECTOR (7 downto 0);
		-- 00 ou 11 nenhum deslocamento. 01 se esquerda, 10 se direta
		desloca: IN STD_LOGIC_VECTOR(1 downto 0);
		direita, esquerda: OUT STD_LOGIC_VECTOR (7 downto 0));
END ENTITY;

ARCHITECTURE arq OF deslocador IS
	BEGIN
		PROCESS (desloca, entra) IS
			BEGIN
				IF (desloca = "10") THEN
					direita <= '0' & entra(7 downto 1);
					esquerda <= "00000000";
				ELSIF (desloca = "01") then
					esquerda <= entra(6 downto 0) & '0';
					direita <= "00000000";
				ELSE
					direita <= "00000000";
					esquerda <= "00000000";
				END IF;
		END PROCESS;
END ARCHITECTURE;