library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modulo_acesso is
	PORT (
			clk, escrever_valor, exec_op: IN STD_LOGIC;
			instrucao: IN STD_LOGIC_VECTOR (17 DOWNTO 0);
			seletor: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
			valor: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
			ler_escrever: OUT STD_LOGIC; -- diz se escrita ou leitura para o banco de regs
			a, b: OUT STD_LOGIC_VECTOR (15 DOWNTO 0); -- saidas da ULA
        );
end entity;

architecture arq of modulo_acesso is
	-- esses signals e constants sao pra fazer a PC aqui no modulo de acesso
	--	signal aux_in: STD_LOGIC_VECTOR (15 DOWNTO 0); -- sinal auxiliar para armazenar o valor vindo do banco
	--	constant init: STD_LOGIC_VECTOR (1 DOWNTO 0) := "00";
	--	constant read_a: STD_LOGIC_VECTOR (1 DOWNTO 0) := "01";
	--	constant read_b: STD_LOGIC_VECTOR (1 DOWNTO 0) := "10";
	begin
		process(clk, ler_valor, exec_op)
			begin
				if (clk'event and clk = '1') then
					if(escrever_valor = '1') then
						ler_escrever <= '1';
						seletor <= '0' & instrucao(1 DOWNTO 0);
						valor_out <= instrucao(17 DOWNTO 2);
						-- | 16 bits (valor) | 2 bits (reg destino) |
					end if;
					if(exec_op = '1') then
						-- preciso que leia A do banco e depois leia B do banco, envie pra ULA 
						-- e depois receba o valor da ULA pra gravar no registrador
						-- | 4 bits (op) | 3 bits (regA) | 3 bits (regB) | 3 bits (regC) | 3 bits 000 |
					end if;
				end if;
		end process;
end architecture;