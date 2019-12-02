LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY banco_registradores IS
PORT 	(  
            clk, ler_escrever, resetar: IN STD_LOGIC; -- 0 -> lê do registrador; 1 -> escreve no registrador.
            entrada: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            seletor: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
            saida: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
END ENTITY;

ARCHITECTURE arq OF banco_registradores IS
	COMPONENT registrador IS
	PORT 	(
					clk: IN STD_LOGIC;
					i: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					load, clear: IN STD_LOGIC;
					q: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
			);
	END COMPONENT;

	SIGNAL reg1: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL reg2: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL reg3: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL reg4: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL reg5: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL reg6: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL reg7: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL reg8: STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL registrador_escolhido: STD_LOGIC_VECTOR (7 DOWNTO 0) := "00000000";
	SIGNAL registrador_clear: STD_LOGIC_VECTOR (7 DOWNTO 0) := "00000000";

	BEGIN
		r1: registrador PORT MAP (clk, entrada, registrador_escolhido(0), registrador_clear(0), reg1);
		r2: registrador PORT MAP (clk, entrada, registrador_escolhido(1), registrador_clear(1), reg2);
		r3: registrador PORT MAP (clk, entrada, registrador_escolhido(2), registrador_clear(2), reg3);
		r4: registrador PORT MAP (clk, entrada, registrador_escolhido(3), registrador_clear(3), reg4);
		r5: registrador PORT MAP (clk, entrada, registrador_escolhido(4), registrador_clear(4), reg5);
		r6: registrador PORT MAP (clk, entrada, registrador_escolhido(5), registrador_clear(5), reg6);
		r7: registrador PORT MAP (clk, entrada, registrador_escolhido(6), registrador_clear(6), reg7);
		r8: registrador PORT MAP (clk, entrada, registrador_escolhido(7), registrador_clear(7), reg8);

		PROCESS(ler_escrever, resetar, entrada)
			BEGIN
				
						IF (resetar='1') THEN
							registrador_clear <= "11111111";
						ELSE
							registrador_clear <= "00000000";
						END IF;
						
						IF (seletor="000") THEN
							IF (ler_escrever='1') THEN
								registrador_escolhido <= "00000001";
							ELSE
								saida <= entrada;
							END IF;    
						ELSIF (seletor="001") THEN
							IF (ler_escrever='1') THEN
								registrador_escolhido <= "00000010";
							ELSE
								saida <= entrada;
							END IF;
						ELSIF (seletor="010") THEN
							IF (ler_escrever='1') THEN
								registrador_escolhido <= "00000100";
							ELSE
								saida <= entrada;
							END IF;
						ELSIF (seletor="011") THEN
							IF (ler_escrever='1') THEN
								registrador_escolhido <= "00001000";
							ELSE
								saida <= entrada;
							END IF;
						ELSIF (seletor="100") THEN
							IF (ler_escrever='1') THEN
								registrador_escolhido <= "00010000";
							ELSE
								saida <= entrada;
							END IF;
						ELSIF (seletor="101") THEN
							IF (ler_escrever='1') THEN
								registrador_escolhido <= "00100000";
							ELSE
								saida <= entrada;
							END IF;
						ELSIF (seletor="110") THEN
							IF (ler_escrever='1') THEN
								registrador_escolhido <= "01000000";
							ELSE
								saida <= entrada;
							END IF;
						ELSIF (seletor="111") THEN
							IF (ler_escrever='1') THEN
								registrador_escolhido <= "10000000";
							ELSE
								saida <= entrada;
							END IF;
						END IF;
				
		END PROCESS;
END ARCHITECTURE;