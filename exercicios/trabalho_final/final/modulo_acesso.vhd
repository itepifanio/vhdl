library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modulo_acesso is
	PORT (
				clk, escrever_valor, exec_op: IN STD_LOGIC;
				instrucao: IN STD_LOGIC_VECTOR (17 DOWNTO 0);
				valor_banco_regs: IN STD_LOGIC_VECTOR (15 DOWNTO 0); -- valor vindo do banco de registradores
				valor_ula: IN STD_LOGIC_VECTOR (15 DOWNTO 0); -- valor vindo da ula
				seletor: OUT STD_LOGIC_VECTOR (2 DOWNTO 0); -- registrador que vai para o banco
				ler_escrever: OUT STD_LOGIC; -- diz se escrita ou leitura para o banco de reg
				valor_out: OUT STD_LOGIC_VECTOR (15 DOWNTO 0); -- valor que vai para o banco de registradores
				exec_op_out: OUT STD_LOGIC; -- diz pra ULA que pode operar
				escrever_valor_out: OUT STD_LOGIC; -- diz pro banco se pode escrever ou ler o valor
				a, b: OUT STD_LOGIC_VECTOR (15 DOWNTO 0); -- saidas da ULA
				l1, l2, l3, l4: OUT STD_LOGIC; -- LEDS para testar o PO
				valor_ula_out: OUT STD_LOGIC_VECTOR (15 DOWNTO 0); -- (teste)
				valor_banco_regs_out: OUT STD_LOGIC_VECTOR (15 DOWNTO 0) -- (teste)
			  );
end entity;

architecture arq of modulo_acesso is
	-- esses signals e constants sao pra fazer a PC aqui no modulo de acesso
	signal aux_in: STD_LOGIC_VECTOR (15 DOWNTO 0); -- sinal auxiliar para armazenar o valor vindo do banco
	constant init: STD_LOGIC_VECTOR (2 DOWNTO 0) := "000"; -- note que o ideal sera armazenar o valor na RAM
	constant ler_a: STD_LOGIC_VECTOR (2 DOWNTO 0) := "001";
	constant ler_b: STD_LOGIC_VECTOR (2 DOWNTO 0) := "010";
	constant escrever_em_c: STD_LOGIC_VECTOR (2 DOWNTO 0) := "011";
	constant wait_ler_a: STD_LOGIC_VECTOR (2 DOWNTO 0) := "100"; -- espera um clock
	constant wait_ler_b: STD_LOGIC_VECTOR (2 DOWNTO 0) := "101"; -- espera um clock
	constant wait_escrever_em_c: STD_LOGIC_VECTOR (2 DOWNTO 0) := "110"; -- espera um clock
	constant wait_init: STD_LOGIC_VECTOR (2 DOWNTO 0) := "111"; -- espera um clock
	signal pc: STD_LOGIC_VECTOR (2 DOWNTO 0) := init; -- sinal auxiliar para a PC
	
	constant pc2_init: STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
	constant pc2_ler_a: STD_LOGIC_VECTOR(1 DOWNTO 0) := "01";
	constant pc2_ler_b: STD_LOGIC_VECTOR(1 DOWNTO 0) := "10";
	signal pc2: STD_LOGIC_VECTOR(1 DOWNTO 0):= pc2_init;
	begin
		process(clk, escrever_valor, exec_op, instrucao, valor_banco_regs, valor_ula)
			begin
				if (clk'event and clk = '1') then
					if(escrever_valor = '1') then
						if(pc2 = pc2_init) then
							ler_escrever <= '1'; -- manda o banco escrever
							seletor <= '0' & instrucao(1 DOWNTO 0);
							valor_out <= instrucao(17 DOWNTO 2);
--							a <= instrucao(17 DOWNTO 2);
							pc2 <= pc2_ler_b;
						elsif(pc2 = pc2_ler_b) then
							ler_escrever <= '1'; -- manda o banco escrever
							seletor <= '0' & instrucao(1 DOWNTO 0);
							valor_out <= instrucao(17 DOWNTO 2);
--							b <= instrucao(17 DOWNTO 2);
							pc2 <= pc2_init;
						end if;
						-- | 16 bits (valor) | 2 bits (reg destino) |
					end if;
			
					-- preciso que leia A do banco e depois leia B do banco, envie pra ULA 
					-- e depois receba o valor da ULA pra gravar no registrador
					-- | 4 bits (op) | 3 bits (regA) | 3 bits (regB) | 3 bits (regC) | 3 bits 000 |
					if(pc = init and exec_op = '1') then
						-- manda pro banco ler o valor de regB
						-- lembre que regA salva a operacao em regB e regC
						valor_ula_out <= valor_ula; -- (teste)
						ler_escrever <= '0';
						seletor <= instrucao(10 downto 8); -- regB
						pc <= wait_ler_a;
						exec_op_out <= '0'; -- atribuindo zero just in case
						l1 <= '1';
					else
						l1 <= '0';
--						valor_ula_out <= "0000000000000000"; -- (teste)
					end if;
					
					if(pc = wait_ler_a) then
						pc <= ler_a;
						a <= valor_banco_regs;
					end if;
					
					if(pc = ler_a) then
						valor_banco_regs_out <= valor_banco_regs; -- (teste)
						ler_escrever <= '0';
						seletor <= instrucao(7 downto 5); -- regC
						pc <= wait_ler_b;
						l2 <= '1';
					else
--						valor_banco_regs_out  <= "0000000000000000"; -- (teste)
						l2 <= '0';
					end if;
					
					if(pc = wait_ler_b) then
						pc <= ler_b;
					end if;
					
					if(pc = ler_b) then
						b <= valor_banco_regs;
						ler_escrever <= '1'; -- manda o banco escrever
						seletor <= instrucao(13 downto 11); -- regA
						valor_out <= valor_ula; -- talvez tenha que mandar um sinal pra ULA pra poder dizer "opere"
						pc <= wait_init;
						exec_op_out <= '1';
						l3 <= '1';
						valor_banco_regs_out <= valor_banco_regs; -- (teste)
					else
--						valor_banco_regs_out  <= "0000000000000000"; -- (teste)
						l3 <= '0';
					end if;
					
					if(pc = wait_init) then
						pc <= init;
					end if;
				end if;
		end process;
end architecture;