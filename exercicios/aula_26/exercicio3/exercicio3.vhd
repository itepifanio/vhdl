library ieee;
use ieee.std_logic_1164.all;

entity exercicio3 is
	port(clk, bt: in std_logic;
		  km_par, km_res, cons: out std_logic := '0';
		  km_tot: out std_logic := '1');
end entity;

architecture arq of exercicio3 is
	constant e0: std_logic_vector(1 downto 0) := "01";
	constant e1: std_logic_vector(1 downto 0) := "10";
	constant e2: std_logic_vector(1 downto 0) := "11";
	constant e3: std_logic_vector(1 downto 0) := "00";
	signal s: std_logic_vector(1 downto 0) := e0;
	begin
		process (clk, bt, s)
			variable prev_bt: std_logic;
		begin
			if(clk'event and clk = '1') then
				if(bt = '1' and bt /= prev_bt) then
					case s is
						when e0 =>
							s <= e1;
							km_par <= '0';
							km_tot <= '0';
							km_res <= '0';
							cons <= '1';
						when e1 =>
							s <= e2;
							km_par <= '0';
							km_tot <= '0';
							km_res <= '1';
							cons <= '0';
						when e2 =>
							s <= e3;
							km_par <= '1';
							km_tot <= '0';
							km_res <= '0';
							cons <= '0';
						when others =>
							s <= e0;
							km_par <= '0';
							km_tot <= '1';
							km_res <= '0';
							cons <= '0';
					end case;
				end if;
				prev_bt := bt;
			end if;
		end process;
end architecture;