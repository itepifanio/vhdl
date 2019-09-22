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
-- Generated on "09/22/2019 11:51:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          calculadora
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY calculadora_vhd_vec_tst IS
END calculadora_vhd_vec_tst;
ARCHITECTURE calculadora_arch OF calculadora_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL luz1 : STD_LOGIC;
SIGNAL luz2 : STD_LOGIC;
SIGNAL op : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT calculadora
	PORT (
	a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	luz1 : OUT STD_LOGIC;
	luz2 : OUT STD_LOGIC;
	op : IN STD_LOGIC;
	s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : calculadora
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	luz1 => luz1,
	luz2 => luz2,
	op => op,
	s => s
	);
-- a[7]
t_prcs_a_7: PROCESS
BEGIN
	a(7) <= '0';
	WAIT FOR 930000 ps;
	a(7) <= '1';
WAIT;
END PROCESS t_prcs_a_7;
-- a[6]
t_prcs_a_6: PROCESS
BEGIN
	a(6) <= '0';
	WAIT FOR 930000 ps;
	a(6) <= '1';
WAIT;
END PROCESS t_prcs_a_6;
-- a[5]
t_prcs_a_5: PROCESS
BEGIN
	a(5) <= '0';
	WAIT FOR 750000 ps;
	a(5) <= '1';
	WAIT FOR 90000 ps;
	a(5) <= '0';
	WAIT FOR 90000 ps;
	a(5) <= '1';
WAIT;
END PROCESS t_prcs_a_5;
-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= '1';
	WAIT FOR 80000 ps;
	a(4) <= '0';
	WAIT FOR 180000 ps;
	a(4) <= '1';
	WAIT FOR 90000 ps;
	a(4) <= '0';
	WAIT FOR 130000 ps;
	a(4) <= '1';
	WAIT FOR 90000 ps;
	a(4) <= '0';
	WAIT FOR 180000 ps;
	a(4) <= '1';
	WAIT FOR 90000 ps;
	a(4) <= '0';
	WAIT FOR 90000 ps;
	a(4) <= '1';
WAIT;
END PROCESS t_prcs_a_4;
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= '0';
	WAIT FOR 80000 ps;
	a(3) <= '1';
	WAIT FOR 90000 ps;
	a(3) <= '0';
	WAIT FOR 90000 ps;
	a(3) <= '1';
	WAIT FOR 90000 ps;
	a(3) <= '0';
	WAIT FOR 130000 ps;
	a(3) <= '1';
	WAIT FOR 90000 ps;
	a(3) <= '0';
	WAIT FOR 90000 ps;
	a(3) <= '1';
	WAIT FOR 90000 ps;
	a(3) <= '0';
	WAIT FOR 90000 ps;
	a(3) <= '1';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= '0';
	WAIT FOR 260000 ps;
	a(2) <= '1';
	WAIT FOR 90000 ps;
	a(2) <= '0';
	WAIT FOR 130000 ps;
	a(2) <= '1';
	WAIT FOR 90000 ps;
	a(2) <= '0';
	WAIT FOR 90000 ps;
	a(2) <= '1';
	WAIT FOR 90000 ps;
	a(2) <= '0';
	WAIT FOR 90000 ps;
	a(2) <= '1';
	WAIT FOR 90000 ps;
	a(2) <= '0';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= '0';
	WAIT FOR 80000 ps;
	a(1) <= '1';
	WAIT FOR 270000 ps;
	a(1) <= '0';
	WAIT FOR 90000 ps;
	a(1) <= '1';
	WAIT FOR 130000 ps;
	a(1) <= '0';
	WAIT FOR 270000 ps;
	a(1) <= '1';
	WAIT FOR 90000 ps;
	a(1) <= '0';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	a(0) <= '0';
	WAIT FOR 80000 ps;
	a(0) <= '1';
	WAIT FOR 90000 ps;
	a(0) <= '0';
	WAIT FOR 270000 ps;
	a(0) <= '1';
	WAIT FOR 40000 ps;
	a(0) <= '0';
	WAIT FOR 90000 ps;
	a(0) <= '1';
	WAIT FOR 180000 ps;
	a(0) <= '0';
	WAIT FOR 90000 ps;
	a(0) <= '1';
	WAIT FOR 90000 ps;
	a(0) <= '0';
WAIT;
END PROCESS t_prcs_a_0;
-- b[7]
t_prcs_b_7: PROCESS
BEGIN
	b(7) <= '0';
	WAIT FOR 170000 ps;
	b(7) <= '1';
	WAIT FOR 90000 ps;
	b(7) <= '0';
	WAIT FOR 180000 ps;
	b(7) <= '1';
	WAIT FOR 40000 ps;
	b(7) <= '0';
WAIT;
END PROCESS t_prcs_b_7;
-- b[6]
t_prcs_b_6: PROCESS
BEGIN
	b(6) <= '0';
	WAIT FOR 170000 ps;
	b(6) <= '1';
	WAIT FOR 90000 ps;
	b(6) <= '0';
	WAIT FOR 180000 ps;
	b(6) <= '1';
	WAIT FOR 40000 ps;
	b(6) <= '0';
WAIT;
END PROCESS t_prcs_b_6;
-- b[5]
t_prcs_b_5: PROCESS
BEGIN
	b(5) <= '0';
	WAIT FOR 170000 ps;
	b(5) <= '1';
	WAIT FOR 90000 ps;
	b(5) <= '0';
	WAIT FOR 180000 ps;
	b(5) <= '1';
	WAIT FOR 40000 ps;
	b(5) <= '0';
WAIT;
END PROCESS t_prcs_b_5;
-- b[4]
t_prcs_b_4: PROCESS
BEGIN
	b(4) <= '1';
	WAIT FOR 80000 ps;
	b(4) <= '0';
	WAIT FOR 360000 ps;
	b(4) <= '1';
	WAIT FOR 40000 ps;
	b(4) <= '0';
	WAIT FOR 180000 ps;
	b(4) <= '1';
	WAIT FOR 90000 ps;
	b(4) <= '0';
WAIT;
END PROCESS t_prcs_b_4;
-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= '0';
	WAIT FOR 440000 ps;
	b(3) <= '1';
	WAIT FOR 130000 ps;
	b(3) <= '0';
	WAIT FOR 360000 ps;
	b(3) <= '1';
WAIT;
END PROCESS t_prcs_b_3;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '0';
	WAIT FOR 440000 ps;
	b(2) <= '1';
	WAIT FOR 130000 ps;
	b(2) <= '0';
	WAIT FOR 180000 ps;
	b(2) <= '1';
	WAIT FOR 90000 ps;
	b(2) <= '0';
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	b(1) <= '0';
	WAIT FOR 480000 ps;
	b(1) <= '1';
	WAIT FOR 90000 ps;
	b(1) <= '0';
	WAIT FOR 180000 ps;
	b(1) <= '1';
	WAIT FOR 90000 ps;
	b(1) <= '0';
WAIT;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
	b(0) <= '0';
	WAIT FOR 80000 ps;
	b(0) <= '1';
	WAIT FOR 90000 ps;
	b(0) <= '0';
	WAIT FOR 270000 ps;
	b(0) <= '1';
	WAIT FOR 220000 ps;
	b(0) <= '0';
WAIT;
END PROCESS t_prcs_b_0;

-- op
t_prcs_op: PROCESS
BEGIN
	op <= '1';
	WAIT FOR 490000 ps;
	op <= '0';
WAIT;
END PROCESS t_prcs_op;
END calculadora_arch;
