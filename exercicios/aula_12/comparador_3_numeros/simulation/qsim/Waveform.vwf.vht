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
-- Generated on "09/21/2019 15:53:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          comparador_3_numeros
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY comparador_3_numeros_vhd_vec_tst IS
END comparador_3_numeros_vhd_vec_tst;
ARCHITECTURE comparador_3_numeros_arch OF comparador_3_numeros_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL n1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL n2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL n3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT comparador_3_numeros
	PORT (
	n1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	n2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	n3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : comparador_3_numeros
	PORT MAP (
-- list connections between master ports and signals
	n1 => n1,
	n2 => n2,
	n3 => n3,
	s => s
	);
-- n1[7]
t_prcs_n1_7: PROCESS
BEGIN
	n1(7) <= '0';
WAIT;
END PROCESS t_prcs_n1_7;
-- n1[6]
t_prcs_n1_6: PROCESS
BEGIN
	n1(6) <= '0';
WAIT;
END PROCESS t_prcs_n1_6;
-- n1[5]
t_prcs_n1_5: PROCESS
BEGIN
	n1(5) <= '0';
	WAIT FOR 340000 ps;
	n1(5) <= '1';
	WAIT FOR 220000 ps;
	n1(5) <= '0';
WAIT;
END PROCESS t_prcs_n1_5;
-- n1[4]
t_prcs_n1_4: PROCESS
BEGIN
	n1(4) <= '1';
	WAIT FOR 340000 ps;
	n1(4) <= '0';
WAIT;
END PROCESS t_prcs_n1_4;
-- n1[3]
t_prcs_n1_3: PROCESS
BEGIN
	n1(3) <= '0';
	WAIT FOR 180000 ps;
	n1(3) <= '1';
	WAIT FOR 160000 ps;
	n1(3) <= '0';
WAIT;
END PROCESS t_prcs_n1_3;
-- n1[2]
t_prcs_n1_2: PROCESS
BEGIN
	n1(2) <= '0';
	WAIT FOR 180000 ps;
	n1(2) <= '1';
	WAIT FOR 160000 ps;
	n1(2) <= '0';
WAIT;
END PROCESS t_prcs_n1_2;
-- n1[1]
t_prcs_n1_1: PROCESS
BEGIN
	n1(1) <= '1';
	WAIT FOR 340000 ps;
	n1(1) <= '0';
WAIT;
END PROCESS t_prcs_n1_1;
-- n1[0]
t_prcs_n1_0: PROCESS
BEGIN
	n1(0) <= '0';
WAIT;
END PROCESS t_prcs_n1_0;
-- n2[7]
t_prcs_n2_7: PROCESS
BEGIN
	n2(7) <= '0';
WAIT;
END PROCESS t_prcs_n2_7;
-- n2[6]
t_prcs_n2_6: PROCESS
BEGIN
	n2(6) <= '0';
WAIT;
END PROCESS t_prcs_n2_6;
-- n2[5]
t_prcs_n2_5: PROCESS
BEGIN
	n2(5) <= '0';
	WAIT FOR 340000 ps;
	n2(5) <= '1';
	WAIT FOR 220000 ps;
	n2(5) <= '0';
WAIT;
END PROCESS t_prcs_n2_5;
-- n2[4]
t_prcs_n2_4: PROCESS
BEGIN
	n2(4) <= '1';
	WAIT FOR 340000 ps;
	n2(4) <= '0';
WAIT;
END PROCESS t_prcs_n2_4;
-- n2[3]
t_prcs_n2_3: PROCESS
BEGIN
	n2(3) <= '0';
	WAIT FOR 180000 ps;
	n2(3) <= '1';
	WAIT FOR 160000 ps;
	n2(3) <= '0';
WAIT;
END PROCESS t_prcs_n2_3;
-- n2[2]
t_prcs_n2_2: PROCESS
BEGIN
	n2(2) <= '0';
	WAIT FOR 180000 ps;
	n2(2) <= '1';
	WAIT FOR 160000 ps;
	n2(2) <= '0';
WAIT;
END PROCESS t_prcs_n2_2;
-- n2[1]
t_prcs_n2_1: PROCESS
BEGIN
	n2(1) <= '0';
	WAIT FOR 180000 ps;
	n2(1) <= '1';
	WAIT FOR 160000 ps;
	n2(1) <= '0';
WAIT;
END PROCESS t_prcs_n2_1;
-- n2[0]
t_prcs_n2_0: PROCESS
BEGIN
	n2(0) <= '1';
	WAIT FOR 180000 ps;
	n2(0) <= '0';
WAIT;
END PROCESS t_prcs_n2_0;
-- n3[7]
t_prcs_n3_7: PROCESS
BEGIN
	n3(7) <= '0';
WAIT;
END PROCESS t_prcs_n3_7;
-- n3[6]
t_prcs_n3_6: PROCESS
BEGIN
	n3(6) <= '0';
WAIT;
END PROCESS t_prcs_n3_6;
-- n3[5]
t_prcs_n3_5: PROCESS
BEGIN
	n3(5) <= '0';
	WAIT FOR 340000 ps;
	n3(5) <= '1';
	WAIT FOR 220000 ps;
	n3(5) <= '0';
WAIT;
END PROCESS t_prcs_n3_5;
-- n3[4]
t_prcs_n3_4: PROCESS
BEGIN
	n3(4) <= '1';
	WAIT FOR 180000 ps;
	n3(4) <= '0';
WAIT;
END PROCESS t_prcs_n3_4;
-- n3[3]
t_prcs_n3_3: PROCESS
BEGIN
	n3(3) <= '0';
	WAIT FOR 180000 ps;
	n3(3) <= '1';
	WAIT FOR 160000 ps;
	n3(3) <= '0';
WAIT;
END PROCESS t_prcs_n3_3;
-- n3[2]
t_prcs_n3_2: PROCESS
BEGIN
	n3(2) <= '0';
	WAIT FOR 180000 ps;
	n3(2) <= '1';
	WAIT FOR 160000 ps;
	n3(2) <= '0';
WAIT;
END PROCESS t_prcs_n3_2;
-- n3[1]
t_prcs_n3_1: PROCESS
BEGIN
	n3(1) <= '0';
	WAIT FOR 180000 ps;
	n3(1) <= '1';
	WAIT FOR 160000 ps;
	n3(1) <= '0';
WAIT;
END PROCESS t_prcs_n3_1;
-- n3[0]
t_prcs_n3_0: PROCESS
BEGIN
	n3(0) <= '0';
	WAIT FOR 180000 ps;
	n3(0) <= '1';
	WAIT FOR 160000 ps;
	n3(0) <= '0';
WAIT;
END PROCESS t_prcs_n3_0;
END comparador_3_numeros_arch;
