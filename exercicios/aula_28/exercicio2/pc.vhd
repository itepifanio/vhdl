LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY pc IS
	PORT (clk, c, tot_lt_s : IN STD_LOGIC;
			d, tot_ld, tot_clr: OUT STD_LOGIC);
END pc;

ARCHITECTURE arq OF pc IS
	CONSTANT init: STD_LOGIC_VECTOR (1 DOWNTO 0) := "00";
	CONSTANT w: STD_LOGIC_VECTOR (1 DOWNTO 0) := "01";
	CONSTANT add: STD_LOGIC_VECTOR (1 DOWNTO 0) := "10";
	CONSTANT disp: STD_LOGIC_VECTOR (1 DOWNTO 0) := "11";
	SIGNAL y: STD_LOGIC_VECTOR (1 DOWNTO 0) := init;
	BEGIN 
		PROCESS(clk, c, tot_lt_s)
			BEGIN
				IF (clk'event AND clk = '1') THEN
					CASE y IS
						WHEN init =>
							y <= w;
						WHEN w =>
							IF (c = '1') THEN
								y <= add;
							ELSIF (c = '0' AND tot_lt_s = '1') THEN
								y <= w;
							ELSIF (c = '0' AND tot_lt_s = '0') THEN
								y <= disp;
							END IF;
						WHEN add =>
							y <= w;
						WHEN OTHERS =>
							y <= init;
						END CASE;
				END IF;
				IF (y = init) THEN
					d <= '0';
					tot_clr <= '1';
					tot_ld <= '0';
				ELSIF (y = w) THEN
					d <= '0';
					tot_clr <= '0';
					tot_ld <= '0';
				ELSIF (y = add) THEN
					d <= '0';
					tot_clr <= '0';
					tot_ld <= '1';
				ELSIF (y = disp) THEN
					d <= '1';
					tot_clr <= '0';
					tot_ld <= '0';
				END IF;
		END PROCESS;
END arq;