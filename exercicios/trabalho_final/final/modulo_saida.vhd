library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- responsavel pela saída, esse modulo recebe o indicador de fim de operação, recebe a saída da ula e a instrução inicial.
-- com a instrução inicial, consegue o endereço do registrador_a e armazena o resultado da ULA
-- com a saída da ula, orquestra o display do resultado
-- após cada execução da ula, quando a operação finaliza, acende o led 17, se não, acende o led 1.
entity modulo_saida is
	PORT (  
            clock  	: in std_logic;
            op_fim: in std_logic;  -- Instrução Fim da Operação 
            instrucao: in std_logic_vector(17 downto 0);    -- Instrução recebida do módulo de entrada
            entrada_ULA: in std_logic_vector(15 downto 0);    -- Saída recebida da ULA
            leds_saida: out std_logic_vector(16 downto 0); -- bit para o led que indica que a operação terminou e outros
            display_a, display_b, display_c, display_d : out std_logic_vector(6 downto 0)   -- Displays para cada número
        );
end entity;

architecture arq of modulo_saida is
    component display_7_segmentos is
		port(data: in std_logic_vector(3 downto 0); 
		  saida: out std_logic_vector(6 downto 0)
		);
    end component;

    signal registrador_a std_logic_vector(2 downto 0);  -- Endereço do registrador para salvar o valor recebido da ula
    
    begin      
        process(clock, entrada_ULA, op_fim)
        begin
            if(clock'event and clock = '1') then
                if(op_fim = '1') then leds_saida(16) <= '1'; -- Significa que a operação acabou
                else leds_saida(0) <= '1';     -- Significa que a operação será realizada novamente
                end if;
            end if;
        end process;

        -- ARMAZENANDO O VALOR OBTIDO DA ULA
        -- for i in 4 to 6 loop      -- Percorremos a instrução para recuperar o endereço do registrador A
        --     registrador_a <= registrador_a&instrucao(i);
        -- end loop;

        -- ra: modulo_acesso port map(
        --     clock, '1', '0',    -- [clk, escrever_valor, exec_op]
        --     instrucao,          -- [instrucao]
        --     "0000000000000000", -- [valor_banco_regs] Não importa o valor que mando aqui
        --     entrada_ULA,        -- [valor_ula]
        --     registrador_a       -- [seletor]
        -- );
        
        -- UTILIZANDO DISPLAY PARA MOSTRAR O RESULTADO
        da: display_7_segmentos port map(entrada_ULA(3 downto 0), display_a);
        db: display_7_segmentos port map(entrada_ULA(7 downto 4), display_b);
        dc: display_7_segmentos port map(entrada_ULA(11 downto 8), display_c);
        dd: display_7_segmentos port map(entrada_ULA(15 downto 12), display_d);
end architecture;