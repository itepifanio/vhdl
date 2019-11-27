library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity modulo_entrada is
	PORT (
            clk, bt1, bt2, bt3: IN STD_LOGIC;
            instrucao: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            reset, ler_valor, exec_op: OUT STD_LOGIC;
            op: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
            endereco_a, endereco_b, endereco_c: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
            const: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
        );
end entity;

architecture arq of modulo_entrada is
	signal op_atual: STD_LOGIC_VECTOR (3 DOWNTO 0);
	begin
		process(clk, bt1, bt2, bt3)
			op_atual <= instrucao(15) & instrucao(14) & instrucao(13) & instrucao(12);
			variable reg_atual: STD_LOGIC_VECTOR( 1 DOWNTO 0 ) := "00";
			begin
				if (clk'event and clk = '1') then
					if(bt1 = '1') then -- botao 1 zera operacoes
						reset <= '1';
						ler_valor <= '0';
						exec_op <= '0';
					end if;
					if(bt2 = '1') then
						reset <= '0';
						ler_valor <= '1';
						exec_op <= '0';
					end if;
					if(bt3 = '1') ten
						reset <= 0';
						ler_valor <= '0';
						exec_op <= '1';
					end if;
					if(exec_op <= '1') then -- talvez colocar esse if dentro do bt3 = '1'
						if(op_atual = "0000" OR op_atual = "1000" OR op_atual = "0010" OR op_atual = "1010" OR op_atual = "1011") then
							-- esse if leva todas as operacoes com endereco_a, endereco_b e endereco_c
							op <= op_atual;
							endereco_a <= instrucao(11) & instrucao(10) & instrucao(9);
							endereco_b <= instrucao(8) & instrucao(7) & instrucao(6);
							endereco_c <= instrucao(5) & instrucao(4) & instrucao(3);
						end if;
						if(op_atual = "0001" OR op_atual = "0011" OR op_atual = "0100" OR op_atual = "0101" OR op_atual = "0110" OR op_atual = "0111" OR op_atual = "1001" OR op_atual = "1100" OR op_atual = "1110") then
							op <= op_atual;
							endereco_a <= instrucao(11) & instrucao(10) & instrucao(9);
							endereco_b <= instrucao(8) & instrucao(7) & instrucao(6);
							const <= "0000000000" & op_atual(5 DOWNTO 0);
						end if;
					end if;
				end if;						
		end process;
end architecture;