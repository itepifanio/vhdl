library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity final is 
	PORT (clk, bt1, bt2, bt3: IN STD_LOGIC;
			instrucao: IN STD_LOGIC_VECTOR (17 DOWNTO 0);
			sd1, sd2, sd3, sd4: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			l1, l2, l3, l4: OUT STD_LOGIC;
			d_ula, d_a, d_b, d_op_ula, valor_ula_out: OUT STD_LOGIC_VECTOR (15 DOWNTO 0); -- (teste)
			db_instrucao : out std_logic_vector(17 downto 0);
			valor_banco_regs_out: OUT STD_LOGIC_VECTOR (15 DOWNTO 0); -- (teste));
			debug_reg: OUT STD_LOGIC_VECTOR (15 DOWNTO 0) -- (teste));
			);
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
				a, b: OUT STD_LOGIC_VECTOR (15 DOWNTO 0); -- saidas da ULA
				l1, l2, l3, l4: OUT STD_LOGIC;
				valor_ula_out: OUT STD_LOGIC_VECTOR (15 DOWNTO 0); -- (teste)
				valor_banco_regs_out: OUT STD_LOGIC_VECTOR (15 DOWNTO 0) -- (teste)
			  );
	end component;
	
	component banco_registradores IS
		PORT 	(  
            clk, ler_escrever, resetar: IN STD_LOGIC; -- 0 -> lê do registrador; 1 -> escreve no registrador.
            entrada: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            seletor: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
            saida: OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
	END component;
	
	component ULA IS
		port(a,b: inout std_logic_vector(15 downto 0);
			  instrucao: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		     op: in std_logic_vector(3 downto 0);
		     can_op: in std_logic; -- verifica se posso operar
		     s: inout std_logic_vector(15 downto 0)
--		     sd1, sd2, sd3, sd4 : out std_logic_vector(6 downto 0)
		);
	end component;
	
	component modulo_saida is
	PORT (  
            clock  	: in std_logic;
            op_fim: in std_logic;
            instrucao: in std_logic_vector(17 downto 0);
            entrada_ULA: in std_logic_vector(15 downto 0);
            leds_saida: out std_logic_vector(16 downto 0);
            display_a, display_b, display_c, display_d : out std_logic_vector(6 downto 0)
        );
	end component;
	
	signal aux_seletor: STD_LOGIC_VECTOR (2 DOWNTO 0);
	signal aux_valor_ula, aux_valor_banco_regs, aux_valor_out, aux_a, aux_b: STD_LOGIC_VECTOR (15 DOWNTO 0);
	signal aux_instrucao_out: STD_LOGIC_VECTOR (17 DOWNTO 0);
	signal aux_ler_escrever, aux_reset, aux_escrever_valor, aux_exec_op, aux_escrever_valor_out, aux_exec_op_out: STD_LOGIC;
	signal aux_op: STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal aux_leds: STD_LOGIC_VECTOR(16 DOWNTO 0);
	signal aux_sd1, aux_sd2, aux_sd3, aux_sd4: std_logic_vector(6 downto 0);
	signal aux_op_end: STD_LOGIC := '1';
	begin
		i1: modulo_entrada port map(clk, bt1, bt2, bt3, instrucao, aux_reset, aux_escrever_valor, aux_exec_op, aux_op, aux_instrucao_out);
		i2: modulo_acesso port map (clk, bt1, bt2, instrucao, aux_valor_banco_regs, aux_valor_ula,  aux_seletor, aux_ler_escrever, aux_valor_out, aux_exec_op_out, aux_escrever_valor_out, aux_a, aux_b, l1, l2, l3, l4, valor_banco_regs_out, valor_ula_out);
		i3: banco_registradores port map(clk, aux_ler_escrever, bt3, aux_valor_out, aux_seletor, aux_valor_banco_regs);
		i4: ULA port map (aux_a, aux_b, ("0000000000" & instrucao(5 downto 0)), aux_op, aux_exec_op_out, aux_valor_ula);  
		i5: modulo_saida port map(clk, aux_op_end, instrucao, aux_valor_ula, aux_leds, sd1, sd2, sd3, sd4);
		db_instrucao <= instrucao;
		debug_reg <= aux_valor_banco_regs;
		d_op_ula <= aux_valor_ula;
		d_a <= aux_a;
		d_b <= aux_b;
		d_ula <= aux_valor_ula;
end architecture;


