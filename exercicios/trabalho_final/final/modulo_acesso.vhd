library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modulo_acesso is
	PORT (
			clk, escrever_valor, exec_op: IN STD_LOGIC;
			instrucao: IN STD_LOGIC_VECTOR (17 DOWNTO 0);
			seletor: OUT STD_LOGIC_VECTOR (2 DOWNTO 0); -- registrador que vai para o banco
			valor_banco_regs: IN STD_LOGIC_VECTOR (15 DOWNTO 0); -- valor vindo do banco de registradores
			valor_ula: IN STD_LOGIC_VECTOR (15 DOWNTO 0); -- valor vindo da ula
			ler_escrever: OUT STD_LOGIC; -- diz se escrita ou leitura para o banco de reg
			valor_out: OUT STD_LOGIC_VECTOR (15 DOWNTO 0); -- valor que vai para o banco de registradores
			exec_op_out: OUT STD_LOGIC; -- diz pra ULA que pode operar
			a, b: OUT STD_LOGIC_VECTOR (15 DOWNTO 0); -- saidas da ULA
        );
end entity;

architecture arq of modulo_acesso is
	-- esses signals e constants sao pra fazer a PC aqui no modulo de acesso
	signal aux_in: STD_LOGIC_VECTOR (15 DOWNTO 0); -- sinal auxiliar para armazenar o valor vindo do banco
	constant init: STD_LOGIC_VECTOR (1 DOWNTO 0) := "00"; -- note que o ideal sera armazenar o valor na RAM
	constant ler_a: STD_LOGIC_VECTOR (1 DOWNTO 0) := "01";
	constant ler_b: STD_LOGIC_VECTOR (1 DOWNTO 0) := "10";
	constant escrever_em_c: STD_LOGIC_VECTOR (1 DOWNTO 0) := "11";
	signal pc: STD_LOGIC_VECTOR (1 DOWNTO 0) := init; -- sinal auxiliar para a PC
	begin
		process(clk, ler_valor, exec_op)
			begin
				if (clk'event and clk = '1') then
					if(escrever_valor = '1') then
						ler_escrever <= '1'; -- manda o banco escrever
						seletor <= '0' & instrucao(1 DOWNTO 0);
						valor_out <= instrucao(17 DOWNTO 2);
						-- | 16 bits (valor) | 2 bits (reg destino) |
					end if;
			
					-- preciso que leia A do banco e depois leia B do banco, envie pra ULA 
					-- e depois receba o valor da ULA pra gravar no registrador
					-- | 4 bits (op) | 3 bits (regA) | 3 bits (regB) | 3 bits (regC) | 3 bits 000 |
					if(pc = init and exec_op = '1') then
						-- manda pro banco ler o valor de regB
						-- lembre que regA salva a operacao em regB e regC
						ler_escrever <= '0';
						seletor <= instrucao(10 downto 8); -- regB
						pc <= ler_a;
						exec_op_out <= '0'; -- atribuindo zero just in case
					elsif(pc = ler_a) then
						a <= valor;
						ler_escrever <= '0';
						seletor <= instrucao(7 downto 5); -- regC
						pc <= ler_b;
					elsif(pc = ler_b) then
						b <= valor;
						ler_escrever <= '1'; -- manda o banco escrever
						seletor <= instrucao(13 downto 11); -- regA
						valor_out <= valor_ula; -- talvez tenha que mandar um sinal pra ULA pra poder dizer "opere"
						pc <= init;
						exec_op_out <= '1';
					end if;
				end if;
		end process;
end architecture;