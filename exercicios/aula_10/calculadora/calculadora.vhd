library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity calculadora is 
	port(a,b: in std_logic_vector(7 downto 0);
		  op: in std_logic; -- 1 soma, 0 subtrai
--		  cout: out std_logic;
		  luz1, luz2: out std_logic;
		  s: out std_logic_vector(7 downto 0));
end entity;

architecture arq of calculadora is
	component somador_8_bits is
		port(a,b: in std_logic_vector(7 downto 0);
			  cout: out std_logic;
			  s: out std_logic_vector(7 downto 0));
	end component;
	
	component inversor is
		Port (a: in  STD_LOGIC_VECTOR(7 downto 0);
            s: out  STD_LOGIC_VECTOR(7 downto 0));
	end component;
	
	signal invertido, result, complemento: std_logic_vector(7 downto 0);
	signal aux_cout: std_logic_vector(2 downto 0);
	signal a_mais_b, a_menos_b: std_logic_vector(7 downto 0);

	begin
		a0: inversor port map(b, invertido);
		a1: somador_8_bits port map(invertido, "00000001", aux_cout(0), complemento);
		a2: somador_8_bits port map(a, complemento, aux_cout(1), a_menos_b);
		a3: somador_8_bits port map(a,b,aux_cout(2),a_mais_b);
		process(a,b,op) is
			begin
				case (op) is
					when '0' =>
						s <= a_menos_b;
						luz1 <= '0';
						luz2 <= '1';
					when '1' =>
						s <= a_mais_b;
						luz1 <= '1';
						luz2 <= '0';
				end case;
		end process;
end architecture;