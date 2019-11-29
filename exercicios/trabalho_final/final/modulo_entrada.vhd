library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- responsavel pelas entradas, esse modulo recebe os 3 botoes de reset, escrever_valor e exec_op
-- quando o valor ler_valor = 1 entao espera-se da instrucao um numero 16 bits e 2bits indicando registrador
-- quando ler_valor = 0 espera-se uma operacao de 4 bits, 3 registradores de 3 bits e os bits restantes dont care
entity modulo_entrada is
	PORT (
			clk, bt1, bt2, bt3: IN STD_LOGIC;
			instrucao: IN STD_LOGIC_VECTOR (17 DOWNTO 0);
			reset, escrever_valor, exec_op: OUT STD_LOGIC;
			op: OUT STD_LOGIC_VECTOR (3 DOWNTO 0); -- pedaco da instrucao
			intrucao_out: OUT STD_LOGIC_VECTOR (17 DOWNTO 0) --pedaco da instrucao
        );
end entity;

architecture arq of modulo_entrada is
	signal op_atual: STD_LOGIC_VECTOR (3 DOWNTO 0);
	begin
		process(clk, bt1, bt2, bt3)
			begin
				if (clk'event and clk = '1') then
					if(bt1 = '1') then -- botao 1 zera operacoes
						reset <= '1';
						escrever_valor <= '0';
						exec_op <= '0';
					end if;
					if(bt2 = '1') then -- se puder ler o valor
						reset <= '0';
						escrever_valor <= '1';
						exec_op <= '0';
					else -- se nao puder a operacao sao os 4 primeiros bits do vector de instrucoes
						op_atual <= instrucao(17 downto 14);
					end if;
					if(bt3 = '1') then
						reset <= '0';
						escrever_valor <= '0';
						exec_op <= '1';
						if(op_atual = "0000" OR op_atual = "1000" OR op_atual = "0010" OR op_atual = "1010" OR op_atual = "1011") then
							-- esse if leva todas as operacoes com endereco_a, endereco_b e endereco_c
							op <= op_atual;
							intrucao_out <= instrucao;
--							endereco_a <= instrucao(13 downto 11); -- RA
--							endereco_b <= instrucao(10 downto 8); -- RB
--							endereco_c <= instrucao(7 downto 5); -- RC
--							endereco_d <= "000"; -- 0
						end if;
						if(op_atual = "0001" OR op_atual = "0011" OR op_atual = "0100" OR op_atual = "0101" OR op_atual = "0110" OR op_atual = "0111" OR op_atual = "1001" OR op_atual = "1100" OR op_atual = "1110") then
							op <= op_atual;
--							endereco_a <= instrucao(13 downto 11); -- RA
--							endereco_b <= instrucao(10 downto 8); -- RB
--							endereco_c <= instrucao(7 downto 5); -- constante
--							endereco_d <= instrucao(4 downto 2); -- constante
							intrucao_out <= instrucao;
						end if;
					end if;
				end if;						
		end process;
end architecture;