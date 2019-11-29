library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity final is 
	PORT (clk, bt1, bt2, bt3: IN STD_LOGIC;
			instrucao: IN STD_LOGIC_VECTOR (17 DOWNTO 0));
end entity;

architecture arq of final is	
	component modulo_entrada is
		port(clk, bt1, bt2, bt3: IN STD_LOGIC;
			  instrucao: IN STD_LOGIC_VECTOR (17 DOWNTO 0);
			  reset, escrever_valor, exec_op: OUT STD_LOGIC;
			  op: OUT STD_LOGIC_VECTOR (3 DOWNTO 0); -- pedaco da instrucao
			  instrucao_out: OUT STD_LOGIC_VECTOR (17 DOWNTO 0)); --pedaco da instrucao
	end component;
	
	component modulo_acesso is
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
				a, b: OUT STD_LOGIC_VECTOR (15 DOWNTO 0) -- saidas da ULA
			  );
	end component;
	
	component banco_registradores IS
		PORT 	(  
            clk, ler_escrever, resetar: IN STD_LOGIC; -- 0 -> lê do registrador; 1 -> escreve no registrador.
            entrada: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            seletor: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
            saida: OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
	END component;
	
	component ULA 
		port(a,b: inout std_logic_vector(15 downto 0);
		     op: in std_logic_vector(3 downto 0);
		     can_op: in std_logic; -- verifica se posso operar
		     s: inout std_logic_vector(15 downto 0);
		     sd1, sd2, sd3, sd4 : out std_logic_vector(6 downto 0));
	end component;
	
	signal aux_seletor: STD_LOGIC_VECTOR (2 DOWNTO 0);
	signal aux_valor_ula, aux_valor_banco_regs, aux_valor_out, aux_a, aux_b: STD_LOGIC_VECTOR (15 DOWNTO 0);
	signal aux_instrucao_out: STD_LOGIC_VECTOR (17 DOWNTO 0);
	signal aux_ler_escrever, aux_reset, aux_escrever_valor, aux_exec_op, aux_escrever_valor_out, aux_exec_op_out: STD_LOGIC;
	signal aux_op: STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal aux_sd1, aux_sd2, aux_sd3, aux_sd4: std_logic_vector(6 downto 0);
	
	begin
		i1: modulo_acesso port map (clk, bt1, bt2, aux_instrucao_out, aux_valor_banco_regs, aux_valor_ula,  aux_seletor, aux_ler_escrever, aux_valor_out, aux_exec_op_out, aux_escrever_valor_out, aux_a, aux_b);
		i2: modulo_entrada port map(clk, bt1, bt2, bt3, instrucao, aux_reset, aux_escrever_valor, aux_exec_op, aux_op, aux_instrucao_out);
		i3: banco_registradores port map(clk, bt1, bt3, aux_valor_out, aux_seletor, aux_valor_banco_regs);
		i4: ULA port map (aux_a, aux_b, aux_op, aux_exec_op_out, aux_valor_ula, aux_sd1, aux_sd2, aux_sd3, aux_sd4); -- exec_op_out 
end architecture;


