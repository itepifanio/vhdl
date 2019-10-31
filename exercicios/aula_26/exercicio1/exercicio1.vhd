library ieee;
use ieee.std_logic_1164.all;

entity exercicio1 is
	port(clk,bt: in std_logic;
		  x,l1,l2,l3: out std_logic);
end entity;

architecture arq of exercicio1 is
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
					end case;
				end if;	
		end process;
end architecture;