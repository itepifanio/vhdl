LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY pc IS
	PORT(clk, bt, can_end: IN STD_LOGIC;
		  can_load_a, can_load_b, can_div: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE arq OF pc IS
	CONSTANT init: STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
	CONSTANT loada: STD_LOGIC_VECTOR(1 DOWNTO 0) := "01";
	CONSTANT loadb: STD_LOGIC_VECTOR(1 DOWNTO 0) := "10";
	CONSTANT div: STD_LOGIC_VECTOR(1 DOWNTO 0) := "11";
	SIGNAL s: STD_LOGIC_VECTOR(1 DOWNTO 0) := init;
	
	BEGIN
		PROCESS(clk, bt)
			BEGIN
				IF(clk'event AND clk = '1') THEN
					IF(s = init AND bt = '1') THEN
						s <= loada;
					ELSIF(s = loada AND bt = '1') THEN
						s <= loadb;
					ELSIF(s = loadb) THEN
						s <= div;
					ELSIF(s = div AND can_end = '1') THEN
						s <= init;
					END IF;
				END IF;
				
				IF(s = init) THEN
					can_load_a <= '0';
					can_load_b <= '0';
					can_div <= '0';
				ELSIF(s = loada) THEN
					can_load_a <= '1';
					can_load_b <= '0';
					can_div <= '0';
				ELSIF(s = loadb) THEN
					can_load_a <= '0';
					can_load_b <= '1';
					can_div <= '0';
				ELSIF(s = div) THEN
					can_load_a <= '0';
					can_load_b <= '0';
					can_div <= '1';
				END IF;
		END PROCESS;
END ARCHITECTURE;