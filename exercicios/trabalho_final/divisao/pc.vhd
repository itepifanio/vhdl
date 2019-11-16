LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY pc IS
	PORT (clk: IN STD_LOGIC;
		   d: IN STD_LOGIC_VECTOR(1 downto 0);
			o_div: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE arq OF pc IS
	CONSTANT init: STD_LOGIC_VECTOR (1 DOWNTO 0) := "00";
	CONSTANT div: STD_LOGIC_VECTOR (1 DOWNTO 0) := "01";
	CONSTANT led: STD_LOGIC_VECTOR (1 DOWNTO 0) := "10";
	SIGNAL y: STD_LOGIC_VECTOR (1 DOWNTO 0) := init;
	BEGIN 
		PROCESS(clk, d)
			BEGIN
				IF (clk'event AND clk = '1') THEN
					CASE y IS
						WHEN init =>
							IF (d = "00") THEN
								y <= init;
							ELSIF (d = "10") THEN
								y <= led;
							ELSIF (d = "11") THEN
								y <= led;
							ELSE
								y <= div;
							END IF;
--						WHEN div =>
--							y <= init;
						WHEN OTHERS =>
							y <= init;
					END CASE;
				END IF;
				IF (y = init) THEN
					o_div <= '0';
				ELSIF (y = led) THEN
					o_div <= '0';
				ELSIF (y = div) THEN
					o_div <= '1';
				END IF;
		END PROCESS;
END arq;