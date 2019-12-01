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
	-- PC para escrever os valores de A e B dos bancos de registradores
	constant init_ler: STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
	constant manda_brasa: STD_LOGIC_VECTOR(1 DOWNTO 0) := "01";
	constant bt1_ler_b: STD_LOGIC_VECTOR(1 DOWNTO 0) := "10";
	signal pc_banco: STD_LOGIC_VECTOR (1 DOWNTO 0) := init_ler;

	constant init: STD_LOGIC_VECTOR (2 DOWNTO 0) := "000"; -- note que o ideal sera armazenar o valor na RAM
	constant ler_a: STD_LOGIC_VECTOR (2 DOWNTO 0) := "001";
	constant ler_b: STD_LOGIC_VECTOR (2 DOWNTO 0) := "010";
	constant escrever_em_c: STD_LOGIC_VECTOR (2 DOWNTO 0) := "011";
	constant wait_a: STD_LOGIC_VECTOR (2 DOWNTO 0) := "100"; -- atrasa um clock
	constant wait_b: STD_LOGIC_VECTOR (2 DOWNTO 0) := "101"; -- atrasa um clock
	constant wait_escrever: STD_LOGIC_VECTOR (2 DOWNTO 0) := "110"; -- atrasa um clock
	constant wait_init: STD_LOGIC_VECTOR (2 DOWNTO 0) := "111"; -- atrasa um clock
	signal pc: STD_LOGIC_VECTOR (2 DOWNTO 0) := init; -- sinal auxiliar para a PC
	begin
		process(clk, escrever_valor, exec_op, instrucao, valor_banco_regs, valor_ula)
			begin
				if (clk'event and clk = '1') then
					-- PC escrever no banco
					if(escrever_valor = '1') then
						-- ao iniciar a PC ja pede pros regs armazenarem os valores de A
						if(pc_banco <= init_ler) then
							seletor <= '0' & instrucao(1 DOWNTO 0);
							valor_out <= instrucao(17 DOWNTO 2);
							a <= instrucao(17 DOWNTO 2);
							pc_banco <= bt1_ler_b;
							exec_op_out <= '0';
						elsif(pc_banco = bt1_ler_b) then
							seletor <= '0' & instrucao(1 DOWNTO 0);
							valor_out <= instrucao(17 DOWNTO 2);
							b <= instrucao(17 DOWNTO 2);
							pc_banco <= manda_brasa;
							exec_op_out <= '0';
						end if;
					end if;
					
					if(exec_op = '1') then
						exec_op_out <= '1';
						pc_banco <= init_ler;
					end if;
					-- end PC escrever no banco
			
					
					-- preciso que leia A do banco e depois leia B do banco, envie pra ULA 
					-- e depois receba o valor da ULA pra gravar no registrador
					-- | 4 bits (op) | 3 bits (regA) | 3 bits (regB) | 3 bits (regC) | 3 bits 000 |
--					if(pc = init and exec_op = '1') then
----						-- manda pro banco ler o valor de regB
----						-- lembre que regA salva a operacao em regB e regC
--						valor_ula_out <= valor_ula; -- (teste)
--						ler_escrever <= '0'; -- leia
--						seletor <= instrucao(10 downto 8); -- do regB
--						exec_op_out <= '0'; -- atribuindo zero just in case
--						pc <= wait_a;
--						l1 <= '1';
--					else
--						l1 <= '0'; 
--					end if;
--					
--					if(pc = wait_a) then
--						exec_op_out <= '0';
--						pc <= ler_a;
--					end if;
--					
--					if(pc = wait_b) then
--						exec_op_out <= '0';
----						b <= valor_banco_regs;
--						pc <= ler_b;
--					end if;
--					
--					if(pc = wait_escrever) then
--						exec_op_out <= '1'; -- diz pra ULA operar
--						valor_banco_regs_out <= valor_banco_regs; -- (teste)
--						pc <= init;
--					end if;
--					
--					if(pc = ler_a) then
--						valor_banco_regs_out <= valor_banco_regs; -- (teste)
--						ler_escrever <= '0';
--						seletor <= instrucao(7 downto 5); -- regC
--						l2 <= '1';
--						exec_op_out <= '0';
--						pc <= wait_b;
--					else
--						l2 <= '0';
--					end if;
----					
--					if(pc = ler_b) then
--						exec_op_out <= '0';
--						ler_escrever <= '1'; -- manda o banco escrever
--						seletor <= instrucao(13 downto 11); -- regA
--						valor_out <= valor_ula; -- talvez tenha que mandar um sinal pra ULA pra poder dizer "opere"
--						pc <= wait_escrever;
--						l3 <= '1';
--					else
--						l3 <= '0';
--					end if;
				end if;
		end process;
end architecture;