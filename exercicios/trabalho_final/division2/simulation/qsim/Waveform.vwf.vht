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
-- Generated on "11/18/2019 22:26:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          division2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY division2_vhd_vec_tst IS
END division2_vhd_vec_tst;
ARCHITECTURE division2_arch OF division2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aa : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL c_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL done_tick : STD_LOGIC;
SIGNAL ready : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL resto_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL start : STD_LOGIC;
SIGNAL zero_div : STD_LOGIC;
COMPONENT division2
	PORT (
	aa : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	c_out : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk : IN STD_LOGIC;
	done_tick : BUFFER STD_LOGIC;
	ready : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	resto_out : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	start : IN STD_LOGIC;
	zero_div : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : division2
	PORT MAP (
-- list connections between master ports and signals
	aa => aa,
	b => b,
	c_out => c_out,
	clk => clk,
	done_tick => done_tick,
	ready => ready,
	reset => reset,
	resto_out => resto_out,
	start => start,
	zero_div => zero_div
	);
-- aa[15]
t_prcs_aa_15: PROCESS
BEGIN
	aa(15) <= '0';
WAIT;
END PROCESS t_prcs_aa_15;
-- aa[14]
t_prcs_aa_14: PROCESS
BEGIN
	aa(14) <= '0';
WAIT;
END PROCESS t_prcs_aa_14;
-- aa[13]
t_prcs_aa_13: PROCESS
BEGIN
	aa(13) <= '0';
WAIT;
END PROCESS t_prcs_aa_13;
-- aa[12]
t_prcs_aa_12: PROCESS
BEGIN
	aa(12) <= '0';
WAIT;
END PROCESS t_prcs_aa_12;
-- aa[11]
t_prcs_aa_11: PROCESS
BEGIN
	aa(11) <= '0';
WAIT;
END PROCESS t_prcs_aa_11;
-- aa[10]
t_prcs_aa_10: PROCESS
BEGIN
	aa(10) <= '0';
WAIT;
END PROCESS t_prcs_aa_10;
-- aa[9]
t_prcs_aa_9: PROCESS
BEGIN
	aa(9) <= '0';
WAIT;
END PROCESS t_prcs_aa_9;
-- aa[8]
t_prcs_aa_8: PROCESS
BEGIN
	aa(8) <= '0';
WAIT;
END PROCESS t_prcs_aa_8;
-- aa[7]
t_prcs_aa_7: PROCESS
BEGIN
	aa(7) <= '0';
WAIT;
END PROCESS t_prcs_aa_7;
-- aa[6]
t_prcs_aa_6: PROCESS
BEGIN
	aa(6) <= '0';
WAIT;
END PROCESS t_prcs_aa_6;
-- aa[5]
t_prcs_aa_5: PROCESS
BEGIN
	aa(5) <= '0';
WAIT;
END PROCESS t_prcs_aa_5;
-- aa[4]
t_prcs_aa_4: PROCESS
BEGIN
	aa(4) <= '0';
WAIT;
END PROCESS t_prcs_aa_4;
-- aa[3]
t_prcs_aa_3: PROCESS
BEGIN
	aa(3) <= '0';
	WAIT FOR 40000 ps;
	aa(3) <= '1';
WAIT;
END PROCESS t_prcs_aa_3;
-- aa[2]
t_prcs_aa_2: PROCESS
BEGIN
	aa(2) <= '0';
	WAIT FOR 40000 ps;
	aa(2) <= '1';
WAIT;
END PROCESS t_prcs_aa_2;
-- aa[1]
t_prcs_aa_1: PROCESS
BEGIN
	aa(1) <= '0';
WAIT;
END PROCESS t_prcs_aa_1;
-- aa[0]
t_prcs_aa_0: PROCESS
BEGIN
	aa(0) <= '0';
WAIT;
END PROCESS t_prcs_aa_0;
-- b[15]
t_prcs_b_15: PROCESS
BEGIN
	b(15) <= '0';
WAIT;
END PROCESS t_prcs_b_15;
-- b[14]
t_prcs_b_14: PROCESS
BEGIN
	b(14) <= '0';
WAIT;
END PROCESS t_prcs_b_14;
-- b[13]
t_prcs_b_13: PROCESS
BEGIN
	b(13) <= '0';
WAIT;
END PROCESS t_prcs_b_13;
-- b[12]
t_prcs_b_12: PROCESS
BEGIN
	b(12) <= '0';
WAIT;
END PROCESS t_prcs_b_12;
-- b[11]
t_prcs_b_11: PROCESS
BEGIN
	b(11) <= '0';
WAIT;
END PROCESS t_prcs_b_11;
-- b[10]
t_prcs_b_10: PROCESS
BEGIN
	b(10) <= '0';
WAIT;
END PROCESS t_prcs_b_10;
-- b[9]
t_prcs_b_9: PROCESS
BEGIN
	b(9) <= '0';
WAIT;
END PROCESS t_prcs_b_9;
-- b[8]
t_prcs_b_8: PROCESS
BEGIN
	b(8) <= '0';
WAIT;
END PROCESS t_prcs_b_8;
-- b[7]
t_prcs_b_7: PROCESS
BEGIN
	b(7) <= '0';
WAIT;
END PROCESS t_prcs_b_7;
-- b[6]
t_prcs_b_6: PROCESS
BEGIN
	b(6) <= '0';
WAIT;
END PROCESS t_prcs_b_6;
-- b[5]
t_prcs_b_5: PROCESS
BEGIN
	b(5) <= '0';
WAIT;
END PROCESS t_prcs_b_5;
-- b[4]
t_prcs_b_4: PROCESS
BEGIN
	b(4) <= '0';
WAIT;
END PROCESS t_prcs_b_4;
-- b[3]
t_prcs_b_3: PROCESS
BEGIN
	b(3) <= '0';
WAIT;
END PROCESS t_prcs_b_3;
-- b[2]
t_prcs_b_2: PROCESS
BEGIN
	b(2) <= '0';
WAIT;
END PROCESS t_prcs_b_2;
-- b[1]
t_prcs_b_1: PROCESS
BEGIN
	b(1) <= '0';
	WAIT FOR 40000 ps;
	b(1) <= '1';
WAIT;
END PROCESS t_prcs_b_1;
-- b[0]
t_prcs_b_0: PROCESS
BEGIN
	b(0) <= '0';
	WAIT FOR 40000 ps;
	b(0) <= '1';
WAIT;
END PROCESS t_prcs_b_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 40000 ps;
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 80000 ps;
	start <= '1';
	WAIT FOR 40000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;
END division2_arch;
