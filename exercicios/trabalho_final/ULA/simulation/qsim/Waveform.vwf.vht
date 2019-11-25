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
-- Generated on "11/25/2019 12:28:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ULA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ULA_vhd_vec_tst IS
END ULA_vhd_vec_tst;
ARCHITECTURE ULA_arch OF ULA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL op : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sd1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sd2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sd3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sd4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT ULA
	PORT (
	a : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	b : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	op : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	s : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sd1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	sd2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	sd3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	sd4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ULA
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	op => op,
	s => s,
	sd1 => sd1,
	sd2 => sd2,
	sd3 => sd3,
	sd4 => sd4
	);
-- a[15]
t_prcs_a_15: PROCESS
BEGIN
	a(15) <= 'X';
WAIT;
END PROCESS t_prcs_a_15;
-- a[14]
t_prcs_a_14: PROCESS
BEGIN
	a(14) <= 'X';
WAIT;
END PROCESS t_prcs_a_14;
-- a[13]
t_prcs_a_13: PROCESS
BEGIN
	a(13) <= 'X';
WAIT;
END PROCESS t_prcs_a_13;
-- a[12]
t_prcs_a_12: PROCESS
BEGIN
	a(12) <= 'X';
WAIT;
END PROCESS t_prcs_a_12;
-- a[11]
t_prcs_a_11: PROCESS
BEGIN
	a(11) <= 'X';
WAIT;
END PROCESS t_prcs_a_11;
-- a[10]
t_prcs_a_10: PROCESS
BEGIN
	a(10) <= 'X';
WAIT;
END PROCESS t_prcs_a_10;
-- a[9]
t_prcs_a_9: PROCESS
BEGIN
	a(9) <= 'X';
WAIT;
END PROCESS t_prcs_a_9;
-- a[8]
t_prcs_a_8: PROCESS
BEGIN
	a(8) <= 'X';
WAIT;
END PROCESS t_prcs_a_8;
-- a[7]
t_prcs_a_7: PROCESS
BEGIN
	a(7) <= 'X';
WAIT;
END PROCESS t_prcs_a_7;
-- a[6]
t_prcs_a_6: PROCESS
BEGIN
	a(6) <= 'X';
WAIT;
END PROCESS t_prcs_a_6;
-- a[5]
t_prcs_a_5: PROCESS
BEGIN
	a(5) <= 'X';
WAIT;
END PROCESS t_prcs_a_5;
-- a[4]
t_prcs_a_4: PROCESS
BEGIN
	a(4) <= 'X';
WAIT;
END PROCESS t_prcs_a_4;
-- a[3]
t_prcs_a_3: PROCESS
BEGIN
	a(3) <= 'X';
WAIT;
END PROCESS t_prcs_a_3;
-- a[2]
t_prcs_a_2: PROCESS
BEGIN
	a(2) <= 'X';
WAIT;
END PROCESS t_prcs_a_2;
-- a[1]
t_prcs_a_1: PROCESS
BEGIN
	a(1) <= 'X';
WAIT;
END PROCESS t_prcs_a_1;
-- a[0]
t_prcs_a_0: PROCESS
BEGIN
	a(0) <= 'X';
WAIT;
END PROCESS t_prcs_a_0;
-- b[15]
t_prcs_b_15: PROCESS
BEGIN
	b(15) <= 'X';
WAIT;
END PROCESS t_prcs_b_15;
-- b[14]
t_prcs_b_14: PROCESS
BEGIN
	b(14) <= 'X';
WAIT;
END PROCESS t_prcs_b_14;
-- b[13]
t_prcs_b_13: PROCESS
BEGIN
	b(13) <= 'X';
WAIT;
END PROCESS t_prcs_b_13;
-- b[12]
t_prcs_b_12: PROCESS
BEGIN
	b(12) <= 'X';
WAIT;
END PROCESS t_prcs_b_12;
-- b[11]
t_prcs_b_11: PROCESS
BEGIN
	b(11) <= 'X';
WAIT;
END PROCESS t_prcs_b_11;
-- b[10]
t_prcs_b_10: PROCESS
BEGIN
	b(10) <= 'X';
WAIT;
END PROCESS t_prcs_b_10;
-- b[9]
t_prcs_b_9: PROCESS
BEGIN
	b(9) <= 'X';
WAIT;
END PROCESS t_prcs_b_9;
-- b[8]
t_prcs_b_8: PROCESS
BEGIN
	b(8) <= 'X';
WAIT;
END PROCESS t_prcs_b_8;
-- b[7]
t_prcs_b_7: PROCESS
BEGIN
	b(7) <= 'X';
WAIT;
END PROCESS t_prcs_b_7;
-- b[6]
t_prcs_b_6: PROCESS
BEGIN
	b(6) <= 'X';
WAIT;
END PROCESS t_prcs_b_6;
-- b[5]
t_prcs_b_5: PROCESS
BEGIN
	b(5) <= 'X';
WAIT;
END PROCESS t_prcs_b_5;
-- b[4]
t_prcs_b_4: PROCESS
BEGIN
	b(4) <= 'X';
WAIT;
END PROCESS t_prcs_b_4;
-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= 'X';
WAIT;
END PROCESS t_prcs_b_3;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= 'X';
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	b(1) <= 'X';
WAIT;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
	b(0) <= 'X';
WAIT;
END PROCESS t_prcs_b_0;
-- op[2]
t_prcs_op_2: PROCESS
BEGIN
	op(2) <= '0';
WAIT;
END PROCESS t_prcs_op_2;
-- op[1]
t_prcs_op_1: PROCESS
BEGIN
	op(1) <= '0';
WAIT;
END PROCESS t_prcs_op_1;
-- op[0]
t_prcs_op_0: PROCESS
BEGIN
	op(0) <= '0';
WAIT;
END PROCESS t_prcs_op_0;
-- s[15]
t_prcs_s_15: PROCESS
BEGIN
	s(15) <= 'Z';
WAIT;
END PROCESS t_prcs_s_15;
-- s[14]
t_prcs_s_14: PROCESS
BEGIN
	s(14) <= 'Z';
WAIT;
END PROCESS t_prcs_s_14;
-- s[13]
t_prcs_s_13: PROCESS
BEGIN
	s(13) <= 'Z';
WAIT;
END PROCESS t_prcs_s_13;
-- s[12]
t_prcs_s_12: PROCESS
BEGIN
	s(12) <= 'Z';
WAIT;
END PROCESS t_prcs_s_12;
-- s[11]
t_prcs_s_11: PROCESS
BEGIN
	s(11) <= 'Z';
WAIT;
END PROCESS t_prcs_s_11;
-- s[10]
t_prcs_s_10: PROCESS
BEGIN
	s(10) <= 'Z';
WAIT;
END PROCESS t_prcs_s_10;
-- s[9]
t_prcs_s_9: PROCESS
BEGIN
	s(9) <= 'Z';
WAIT;
END PROCESS t_prcs_s_9;
-- s[8]
t_prcs_s_8: PROCESS
BEGIN
	s(8) <= 'Z';
WAIT;
END PROCESS t_prcs_s_8;
-- s[7]
t_prcs_s_7: PROCESS
BEGIN
	s(7) <= 'Z';
WAIT;
END PROCESS t_prcs_s_7;
-- s[6]
t_prcs_s_6: PROCESS
BEGIN
	s(6) <= 'Z';
WAIT;
END PROCESS t_prcs_s_6;
-- s[5]
t_prcs_s_5: PROCESS
BEGIN
	s(5) <= 'Z';
WAIT;
END PROCESS t_prcs_s_5;
-- s[4]
t_prcs_s_4: PROCESS
BEGIN
	s(4) <= 'Z';
WAIT;
END PROCESS t_prcs_s_4;
-- s[3]
t_prcs_s_3: PROCESS
BEGIN
	s(3) <= 'Z';
WAIT;
END PROCESS t_prcs_s_3;
-- s[2]
t_prcs_s_2: PROCESS
BEGIN
	s(2) <= 'Z';
WAIT;
END PROCESS t_prcs_s_2;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
	s(1) <= 'Z';
WAIT;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
	s(0) <= 'Z';
WAIT;
END PROCESS t_prcs_s_0;
END ULA_arch;
