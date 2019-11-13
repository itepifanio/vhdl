library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ULA is 
	port(a,b: in std_logic_vector(15 downto 0);
		  -- 000 A+B
		  -- 001 A-B
		  -- 010 A << 1
		  -- 011 A >> 1
		  -- 100 A and B
		  -- 101 A or B
		  -- 110 A xor B
		  -- 111 not B
		  op: in std_logic_vector(2 downto 0);
		  s: out std_logic_vector(15 downto 0));
end entity;

architecture arq of ULA is
	component somador_8_bits is
		port(a,b: in std_logic_vector(15 downto 0);
			  cout: out std_logic;
			  s: out std_logic_vector(15 downto 0));
	end component;
	
	component inversor is
		Port (a: in  STD_LOGIC_VECTOR(15 downto 0);
            s: out  STD_LOGIC_VECTOR(15 downto 0));
	end component;
	
	signal invertido1, invertido2, result, complemento1, complemento2: std_logic_vector(15 downto 0);
	signal aux_cout: std_logic_vector(4 downto 0);
	signal a_mais_b, a_menos_b, a_mais_1, a_menos_1: std_logic_vector(15 downto 0);

	begin
		a0: inversor port map(b, invertido1);
		a1: somador_8_bits port map(invertido1, "0000000000000001", aux_cout(0), complemento1); -- complemento de 2 de b
		a2: somador_8_bits port map(a, complemento1, aux_cout(1), a_menos_b); -- a - b
		a3: somador_8_bits port map(a,b,aux_cout(2),a_mais_b); -- a + b
		a4: somador_8_bits port map(a,"0000000000000001",aux_cout(3),a_mais_1); -- a + 1
		process(a,b,op) is
			begin
				case(op) is
					when "000" =>
						s <= a_mais_b;
					when "001" =>
						s <= a_menos_b;
					when "010" => -- desloca esquerda
						s <= a(14 downto 0) & '0'; 
					when "011" => -- desloca direita
						s <= '0' & a(15 downto 1);
					when "100" =>
						s <= a and b;
					when "101" =>
						s <= a or b;
					when "110" =>
						s <= a xor b;
					when "111" =>
						s <= not a;
				end case;
		end process;
end architecture;