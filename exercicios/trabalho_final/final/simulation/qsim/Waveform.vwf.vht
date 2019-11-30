-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/30/2019 17:52:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          final
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY final_vhd_vec_tst IS
END final_vhd_vec_tst;
ARCHITECTURE final_arch OF final_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bt1 : STD_LOGIC;
SIGNAL bt2 : STD_LOGIC;
SIGNAL bt3 : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL instrucao : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL sd1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sd2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sd3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sd4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT final
	PORT (
	bt1 : IN STD_LOGIC;
	bt2 : IN STD_LOGIC;
	bt3 : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	instrucao : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
	sd1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	sd2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	sd3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	sd4 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : final
	PORT MAP (
-- list connections between master ports and signals
	bt1 => bt1,
	bt2 => bt2,
	bt3 => bt3,
	clk => clk,
	instrucao => instrucao,
	sd1 => sd1,
	sd2 => sd2,
	sd3 => sd3,
	sd4 => sd4
	);

-- bt1
t_prcs_bt1: PROCESS
BEGIN
	bt1 <= '0';
	WAIT FOR 450000 ps;
	bt1 <= '1';
	WAIT FOR 10000 ps;
	bt1 <= '0';
	WAIT FOR 20000 ps;
	bt1 <= '1';
	WAIT FOR 20000 ps;
	bt1 <= '0';
WAIT;
END PROCESS t_prcs_bt1;

-- bt2
t_prcs_bt2: PROCESS
BEGIN
	bt2 <= '0';
	WAIT FOR 550000 ps;
	bt2 <= '1';
	WAIT FOR 10000 ps;
	bt2 <= '0';
WAIT;
END PROCESS t_prcs_bt2;

-- bt3
t_prcs_bt3: PROCESS
BEGIN
	bt3 <= '0';
WAIT;
END PROCESS t_prcs_bt3;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- instrucao[17]
t_prcs_instrucao_17: PROCESS
BEGIN
	instrucao(17) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_17;
-- instrucao[16]
t_prcs_instrucao_16: PROCESS
BEGIN
	instrucao(16) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_16;
-- instrucao[15]
t_prcs_instrucao_15: PROCESS
BEGIN
	instrucao(15) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_15;
-- instrucao[14]
t_prcs_instrucao_14: PROCESS
BEGIN
	instrucao(14) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_14;
-- instrucao[13]
t_prcs_instrucao_13: PROCESS
BEGIN
	instrucao(13) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_13;
-- instrucao[12]
t_prcs_instrucao_12: PROCESS
BEGIN
	instrucao(12) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_12;
-- instrucao[11]
t_prcs_instrucao_11: PROCESS
BEGIN
	instrucao(11) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_11;
-- instrucao[10]
t_prcs_instrucao_10: PROCESS
BEGIN
	instrucao(10) <= '0';
	WAIT FOR 520000 ps;
	instrucao(10) <= '1';
	WAIT FOR 50000 ps;
	instrucao(10) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_10;
-- instrucao[9]
t_prcs_instrucao_9: PROCESS
BEGIN
	instrucao(9) <= '0';
	WAIT FOR 520000 ps;
	instrucao(9) <= '1';
	WAIT FOR 50000 ps;
	instrucao(9) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_9;
-- instrucao[8]
t_prcs_instrucao_8: PROCESS
BEGIN
	instrucao(8) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_8;
-- instrucao[7]
t_prcs_instrucao_7: PROCESS
BEGIN
	instrucao(7) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_7;
-- instrucao[6]
t_prcs_instrucao_6: PROCESS
BEGIN
	instrucao(6) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_6;
-- instrucao[5]
t_prcs_instrucao_5: PROCESS
BEGIN
	instrucao(5) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_5;
-- instrucao[4]
t_prcs_instrucao_4: PROCESS
BEGIN
	instrucao(4) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_4;
-- instrucao[3]
t_prcs_instrucao_3: PROCESS
BEGIN
	instrucao(3) <= '0';
	WAIT FOR 520000 ps;
	instrucao(3) <= '1';
	WAIT FOR 50000 ps;
	instrucao(3) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_3;
-- instrucao[2]
t_prcs_instrucao_2: PROCESS
BEGIN
	instrucao(2) <= '1';
	WAIT FOR 520000 ps;
	instrucao(2) <= '0';
	WAIT FOR 50000 ps;
	instrucao(2) <= '1';
WAIT;
END PROCESS t_prcs_instrucao_2;
-- instrucao[1]
t_prcs_instrucao_1: PROCESS
BEGIN
	instrucao(1) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_1;
-- instrucao[0]
t_prcs_instrucao_0: PROCESS
BEGIN
	instrucao(0) <= '0';
	WAIT FOR 480000 ps;
	instrucao(0) <= '1';
	WAIT FOR 40000 ps;
	instrucao(0) <= '0';
WAIT;
END PROCESS t_prcs_instrucao_0;
END final_arch;
