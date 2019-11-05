library ieee;
use ieee.std_logic_1164.all;

entity exercicio2 is
<<<<<<< HEAD
	port(clk,bt: in std_logic;
		  x,l1,l2,l3: out std_logic);
end entity;

architecture arq of exercicio2 is
	constant f1: std_logic_vector(3 downto 0) := "0000";
	constant f2: std_logic_vector(3 downto 0) := "0100";
	constant f3: std_logic_vector(3 downto 0) := "0010";
	constant abre: std_logic_vector(3 downto 0) := "1001";	
	signal y: std_logic_vector(3 downto 0) := f1;
	begin 
		process(bt, y)
			begin
				if(clk'event and clk='1') then
					case y is
						when f1 =>
							if(bt = '0') then
								y <= f1;
								x <= '0';
								l1 <= '0';
								l2 <= '0';
								l3 <= '0';
							else
								y <= f2;
								x <= '0';
								l1 <= '1';
								l2 <= '0';
								l3 <= '0';
							end if;
						when f2 =>
							if(bt = '0') then
								y <= f2;
								x <= '0';
								l1 <= '1';
								l2 <= '0';
								l3 <= '0';
							else
								y <= f3;
								x <= '0';
								l1 <= '0';
								l2 <= '1';
								l3 <= '0';
							end if;
						when f3 =>
							if(bt = '0') then
								y <= f3;
								x <= '0';
								l1 <= '0';
								l2 <= '1';
								l3 <= '0';
							else
								y <= abre;
								x <= '1';
								l1 <= '0';
								l2 <= '0';
								l3 <= '1';
							end if;
						when others =>
								y <= f1;
								x <= '0';
								l1 <= '0';
								l2 <= '0';
								l3 <= '0';
=======
	port(clk, a: in std_logic;
		  x,y: out std_logic);
end entity;

architecture arq of exercicio2 is
	constant e1: std_logic_vector(1 downto 0) := "00";
	constant e2: std_logic_vector(1 downto 0) := "01";
	constant e3: std_logic_vector(1 downto 0) := "10";
	constant e4: std_logic_vector(1 downto 0) := "11";	
	signal s: std_logic_vector(1 downto 0) := e1;
	begin 
		process(a, s)
			begin
				if(clk'event and clk='1') then
					case s is
						when e1 =>
							s <= e2;
							x <= '0';
							y <= '0';
						when e2 =>
							s <= e3;
							x <= '0';
							y <= '1';
						when e3 =>
							if(a = '1') then
								s <= e2;
								x <= '1';
								y <= '0';
							else -- se barrado(A)
								s <= e4;
								x <= '1';
								y <= '1';
							end if;
						when others =>
							if(a = '1') then
								s <= e4;
								x <= '1';
								y <= '1';
							else
								s <= e1;
								x <= '0';
								y <= '0';
							end if;
>>>>>>> 302b424816d17a7fdd40428104f3cc741c55d439
					end case;
				end if;	
		end process;
end architecture;