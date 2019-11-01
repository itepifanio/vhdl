library ieee;
use ieee.std_logic_1164.all;

entity exercicio2 is
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
					end case;
				end if;	
		end process;
end architecture;