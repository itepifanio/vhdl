library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;

entity ULA is 
	port(a,b: inout std_logic_vector(15 downto 0);
		  instrucao: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		  op: in std_logic_vector(3 downto 0);
		  can_op: in std_logic; -- verifica se posso operar
		  s: inout std_logic_vector(15 downto 0)
   );
end entity;

architecture arq of ULA is
	component somador_8_bits is
		port(a,b: in std_logic_vector(15 downto 0);
			  cout: out std_logic;
			  s: out std_logic_vector(15 downto 0)
			  );
	end component;
	
	component inversor is
		port (a: in  STD_LOGIC_VECTOR(15 downto 0);
            s: out  STD_LOGIC_VECTOR(15 downto 0));
	end component;
	
	signal invertido1, invertido2, result, complemento1, complemento2: std_logic_vector(15 downto 0);
	signal aux_cout: std_logic_vector(5 downto 0);
	signal dis1, dis2, dis3, dis4 : std_logic_vector(6 downto 0);
	signal soma_const, sub_const, a_mais_b, a_menos_b, a_mais_1, a_menos_1: std_logic_vector(15 downto 0);
	begin
		a0: inversor port map(b, invertido1);
		a1: somador_8_bits port map(invertido1, "0000000000000001", aux_cout(0), complemento1); -- complemento de 2 de b
		a2: somador_8_bits port map(a, complemento1, aux_cout(1), a_menos_b); -- a - b
		a3: somador_8_bits port map(a,b,aux_cout(2),a_mais_b); -- a + b
		a4: somador_8_bits port map(a,"0000000000000001",aux_cout(3),a_mais_1); -- a + 1
--		a5: somador_8_bits port map(a, "0000000000" & instrucao(5 downto 0), aux_cout(4), soma_const);
		process(a,b,op) is
			begin
				if(can_op = '1') then
					if(op = "0000") then
						s <= "0000000000000001"; -- RA = RB + RC
					elsif(op = "0001") then
						s <= a + instrucao; -- RA = RB + const
					elsif(op = "0010") then
						s <= a_menos_b; -- RA = RB - RC
					elsif(op = "0011") then
						s <= a - instrucao; -- RA = RB - const
					elsif(op = "0100") then
						s <= std_logic_vector(shift_left(unsigned(a), 1)); -- RA = RB << 1
					elsif(op = "0101") then 
						s <= std_logic_vector(shift_left(unsigned(a), to_integer(unsigned(b(5 downto 0))))); -- RA = RB << const
					elsif(op = "0110") then 
						s <= std_logic_vector(shift_right(unsigned(a), 1)); -- RA = RB >> 1
					elsif(op = "0111") then
						s <= std_logic_vector(shift_right(unsigned(a), to_integer(unsigned(b(5 downto 0))))); -- RA = RB << const
					elsif(op = "1000") then
						s <= a and b;
					elsif(op = "1001") then
						s <= a nand b;
					elsif(op = "1010") then
						s <= a or b;
					elsif(op = "1011") then
						s <= a xor b;
					elsif(op = "1100") then
						-- RA = mem[RB + const]
					elsif(op = "1010") then
						-- mem[RA + const] = RB
					end if;
				end if;
		end process;
end architecture;