library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ULA is
	port(a,b: in std_logic_vector(7 downto 0);
		  -- 000 A+B
		  -- 001 A-B
		  -- 010 A + 1
		  -- 011 A
		  -- 100 A and B
		  -- 101 A or B
		  -- 110 A xor B
		  -- 111 not B
		  op: in std_logic_vector(2 downto 0);
		  s: out std_logic_vector(7 downto 0));
end entity;

architecture arq of ULA is
	component somador is
		port(x,y: in std_logic_vector(7 downto 0);
			  cin:in std_logic;
			  cout: out std_logic;
			  saida: out std_logic_vector(7 downto 0));
	end component;
	
	signal batata: std_logic;
	signal a_mais_b: std_logic_vector(7 downto 0);
	
	begin
		u0: somador port map (a, b, '0', batata, a_mais_b);
		process(a,b,op, a_mais_b) is
			begin
				case(op) is
					when "000" =>
						s <= a_mais_b;
					when "001" =>
--						s <= a subtrador b;
						s <= a;
					when "010" =>
--						s <= a somador "11111111";
						s <= a;
					when "011" =>
						s <= a;
					when "100" =>
						s <= a and b;
					when "101" =>
						s <= a or b;
					when "110" =>
						s <= a xor b;
					when "111" =>
						s <= not b;
				end case;
		end process;
end architecture;