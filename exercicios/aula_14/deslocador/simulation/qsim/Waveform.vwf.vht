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
-- Generated on "09/10/2019 19:45:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          deslocador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY deslocador_vhd_vec_tst IS
END deslocador_vhd_vec_tst;
ARCHITECTURE deslocador_arch OF deslocador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL desloca : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL direita : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL entra : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL esquerda : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT deslocador
	PORT (
	desloca : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	direita : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	entra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	esquerda : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : deslocador
	PORT MAP (
-- list connections between master ports and signals
	desloca => desloca,
	direita => direita,
	entra => entra,
	esquerda => esquerda
	);
-- entra[7]
t_prcs_entra_7: PROCESS
BEGIN
	entra(7) <= '1';
	WAIT FOR 280000 ps;
	entra(7) <= '0';
	WAIT FOR 240000 ps;
	entra(7) <= '1';
	WAIT FOR 100000 ps;
	entra(7) <= '0';
WAIT;
END PROCESS t_prcs_entra_7;
-- entra[6]
t_prcs_entra_6: PROCESS
BEGIN
	entra(6) <= '0';
	WAIT FOR 50000 ps;
	entra(6) <= '1';
	WAIT FOR 70000 ps;
	entra(6) <= '0';
	WAIT FOR 90000 ps;
	entra(6) <= '1';
	WAIT FOR 70000 ps;
	entra(6) <= '0';
	WAIT FOR 560000 ps;
	entra(6) <= '1';
WAIT;
END PROCESS t_prcs_entra_6;
-- entra[5]
t_prcs_entra_5: PROCESS
BEGIN
	entra(5) <= '1';
	WAIT FOR 50000 ps;
	entra(5) <= '0';
	WAIT FOR 70000 ps;
	entra(5) <= '1';
	WAIT FOR 90000 ps;
	entra(5) <= '0';
	WAIT FOR 170000 ps;
	entra(5) <= '1';
	WAIT FOR 240000 ps;
	entra(5) <= '0';
	WAIT FOR 90000 ps;
	entra(5) <= '1';
WAIT;
END PROCESS t_prcs_entra_5;
-- entra[4]
t_prcs_entra_4: PROCESS
BEGIN
	entra(4) <= '0';
	WAIT FOR 50000 ps;
	entra(4) <= '1';
	WAIT FOR 70000 ps;
	entra(4) <= '0';
	WAIT FOR 260000 ps;
	entra(4) <= '1';
	WAIT FOR 140000 ps;
	entra(4) <= '0';
	WAIT FOR 190000 ps;
	entra(4) <= '1';
	WAIT FOR 130000 ps;
	entra(4) <= '0';
WAIT;
END PROCESS t_prcs_entra_4;
-- entra[3]
t_prcs_entra_3: PROCESS
BEGIN
	entra(3) <= '1';
	WAIT FOR 210000 ps;
	entra(3) <= '0';
	WAIT FOR 310000 ps;
	entra(3) <= '1';
	WAIT FOR 100000 ps;
	entra(3) <= '0';
WAIT;
END PROCESS t_prcs_entra_3;
-- entra[2]
t_prcs_entra_2: PROCESS
BEGIN
	entra(2) <= '0';
	WAIT FOR 50000 ps;
	entra(2) <= '1';
	WAIT FOR 70000 ps;
	entra(2) <= '0';
	WAIT FOR 500000 ps;
	entra(2) <= '1';
	WAIT FOR 90000 ps;
	entra(2) <= '0';
	WAIT FOR 130000 ps;
	entra(2) <= '1';
WAIT;
END PROCESS t_prcs_entra_2;
-- entra[1]
t_prcs_entra_1: PROCESS
BEGIN
	entra(1) <= '1';
	WAIT FOR 50000 ps;
	entra(1) <= '0';
	WAIT FOR 70000 ps;
	entra(1) <= '1';
	WAIT FOR 90000 ps;
	entra(1) <= '0';
	WAIT FOR 70000 ps;
	entra(1) <= '1';
	WAIT FOR 100000 ps;
	entra(1) <= '0';
	WAIT FOR 140000 ps;
	entra(1) <= '1';
	WAIT FOR 190000 ps;
	entra(1) <= '0';
	WAIT FOR 130000 ps;
	entra(1) <= '1';
WAIT;
END PROCESS t_prcs_entra_1;
-- entra[0]
t_prcs_entra_0: PROCESS
BEGIN
	entra(0) <= '0';
	WAIT FOR 50000 ps;
	entra(0) <= '1';
	WAIT FOR 70000 ps;
	entra(0) <= '0';
	WAIT FOR 160000 ps;
	entra(0) <= '1';
	WAIT FOR 100000 ps;
	entra(0) <= '0';
	WAIT FOR 240000 ps;
	entra(0) <= '1';
	WAIT FOR 90000 ps;
	entra(0) <= '0';
WAIT;
END PROCESS t_prcs_entra_0;
-- desloca[1]
t_prcs_desloca_1: PROCESS
BEGIN
	desloca(1) <= '1';
	WAIT FOR 120000 ps;
	desloca(1) <= '0';
	WAIT FOR 320000 ps;
	desloca(1) <= '1';
	WAIT FOR 270000 ps;
	desloca(1) <= '0';
WAIT;
END PROCESS t_prcs_desloca_1;
-- desloca[0]
t_prcs_desloca_0: PROCESS
BEGIN
	desloca(0) <= '1';
	WAIT FOR 440000 ps;
	desloca(0) <= '0';
WAIT;
END PROCESS t_prcs_desloca_0;
END deslocador_arch;
