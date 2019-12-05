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
-- Generated on "11/30/2019 19:13:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          banco_registradores
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY banco_registradores_vhd_vec_tst IS
END banco_registradores_vhd_vec_tst;
ARCHITECTURE banco_registradores_arch OF banco_registradores_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL entrada : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ler_escrever : STD_LOGIC;
SIGNAL resetar : STD_LOGIC;
SIGNAL saida : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL seletor : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT banco_registradores
	PORT (
	entrada : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	ler_escrever : IN STD_LOGIC;
	resetar : IN STD_LOGIC;
	saida : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	seletor : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : banco_registradores
	PORT MAP (
-- list connections between master ports and signals
	entrada => entrada,
	ler_escrever => ler_escrever,
	resetar => resetar,
	saida => saida,
	seletor => seletor
	);
-- entrada[15]
t_prcs_entrada_15: PROCESS
BEGIN
	entrada(15) <= '0';
	WAIT FOR 350000 ps;
	entrada(15) <= '1';
WAIT;
END PROCESS t_prcs_entrada_15;
-- entrada[14]
t_prcs_entrada_14: PROCESS
BEGIN
	entrada(14) <= '0';
	WAIT FOR 350000 ps;
	entrada(14) <= '1';
	WAIT FOR 490000 ps;
	entrada(14) <= '0';
WAIT;
END PROCESS t_prcs_entrada_14;
-- entrada[13]
t_prcs_entrada_13: PROCESS
BEGIN
	entrada(13) <= '0';
	WAIT FOR 350000 ps;
	entrada(13) <= '1';
	WAIT FOR 490000 ps;
	entrada(13) <= '0';
WAIT;
END PROCESS t_prcs_entrada_13;
-- entrada[12]
t_prcs_entrada_12: PROCESS
BEGIN
	entrada(12) <= '0';
	WAIT FOR 350000 ps;
	entrada(12) <= '1';
	WAIT FOR 490000 ps;
	entrada(12) <= '0';
WAIT;
END PROCESS t_prcs_entrada_12;
-- entrada[11]
t_prcs_entrada_11: PROCESS
BEGIN
	entrada(11) <= '0';
WAIT;
END PROCESS t_prcs_entrada_11;
-- entrada[10]
t_prcs_entrada_10: PROCESS
BEGIN
	entrada(10) <= '0';
WAIT;
END PROCESS t_prcs_entrada_10;
-- entrada[9]
t_prcs_entrada_9: PROCESS
BEGIN
	entrada(9) <= '0';
WAIT;
END PROCESS t_prcs_entrada_9;
-- entrada[8]
t_prcs_entrada_8: PROCESS
BEGIN
	entrada(8) <= '0';
WAIT;
END PROCESS t_prcs_entrada_8;
-- entrada[7]
t_prcs_entrada_7: PROCESS
BEGIN
	entrada(7) <= '0';
WAIT;
END PROCESS t_prcs_entrada_7;
-- entrada[6]
t_prcs_entrada_6: PROCESS
BEGIN
	entrada(6) <= '0';
WAIT;
END PROCESS t_prcs_entrada_6;
-- entrada[5]
t_prcs_entrada_5: PROCESS
BEGIN
	entrada(5) <= '0';
WAIT;
END PROCESS t_prcs_entrada_5;
-- entrada[4]
t_prcs_entrada_4: PROCESS
BEGIN
	entrada(4) <= '0';
WAIT;
END PROCESS t_prcs_entrada_4;
-- entrada[3]
t_prcs_entrada_3: PROCESS
BEGIN
	entrada(3) <= '0';
WAIT;
END PROCESS t_prcs_entrada_3;
-- entrada[2]
t_prcs_entrada_2: PROCESS
BEGIN
	entrada(2) <= '0';
WAIT;
END PROCESS t_prcs_entrada_2;
-- entrada[1]
t_prcs_entrada_1: PROCESS
BEGIN
	entrada(1) <= '0';
WAIT;
END PROCESS t_prcs_entrada_1;
-- entrada[0]
t_prcs_entrada_0: PROCESS
BEGIN
	entrada(0) <= '1';
	WAIT FOR 210000 ps;
	entrada(0) <= '0';
WAIT;
END PROCESS t_prcs_entrada_0;

-- ler_escrever
t_prcs_ler_escrever: PROCESS
BEGIN
	ler_escrever <= '0';
	WAIT FOR 10000 ps;
	ler_escrever <= '1';
	WAIT FOR 30000 ps;
	ler_escrever <= '0';
	WAIT FOR 320000 ps;
	ler_escrever <= '1';
	WAIT FOR 40000 ps;
	ler_escrever <= '0';
WAIT;
END PROCESS t_prcs_ler_escrever;

-- resetar
t_prcs_resetar: PROCESS
BEGIN
	resetar <= '0';
	WAIT FOR 850000 ps;
	resetar <= '1';
	WAIT FOR 30000 ps;
	resetar <= '0';
WAIT;
END PROCESS t_prcs_resetar;
-- seletor[2]
t_prcs_seletor_2: PROCESS
BEGIN
	seletor(2) <= '0';
WAIT;
END PROCESS t_prcs_seletor_2;
-- seletor[1]
t_prcs_seletor_1: PROCESS
BEGIN
	seletor(1) <= '0';
	WAIT FOR 350000 ps;
	seletor(1) <= '1';
	WAIT FOR 490000 ps;
	seletor(1) <= '0';
WAIT;
END PROCESS t_prcs_seletor_1;
-- seletor[0]
t_prcs_seletor_0: PROCESS
BEGIN
	seletor(0) <= '0';
	WAIT FOR 210000 ps;
	seletor(0) <= '1';
	WAIT FOR 70000 ps;
	seletor(0) <= '0';
WAIT;
END PROCESS t_prcs_seletor_0;
END banco_registradores_arch;
