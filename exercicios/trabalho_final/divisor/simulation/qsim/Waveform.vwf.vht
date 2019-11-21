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
-- Generated on "11/21/2019 14:48:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          divisor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY divisor_vhd_vec_tst IS
END divisor_vhd_vec_tst;
ARCHITECTURE divisor_arch OF divisor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bt : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL num : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL quoc : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rest : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT divisor
	PORT (
	bt : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	num : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	quoc : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rest : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : divisor
	PORT MAP (
-- list connections between master ports and signals
	bt => bt,
	clk => clk,
	num => num,
	quoc => quoc,
	rest => rest
	);

-- bt
t_prcs_bt: PROCESS
BEGIN
	bt <= '0';
	WAIT FOR 10000 ps;
	bt <= '1';
	WAIT FOR 20000 ps;
	bt <= '0';
	WAIT FOR 100000 ps;
	bt <= '1';
	WAIT FOR 20000 ps;
	bt <= '0';
WAIT;
END PROCESS t_prcs_bt;

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
-- num[15]
t_prcs_num_15: PROCESS
BEGIN
	num(15) <= '0';
WAIT;
END PROCESS t_prcs_num_15;
-- num[14]
t_prcs_num_14: PROCESS
BEGIN
	num(14) <= '0';
WAIT;
END PROCESS t_prcs_num_14;
-- num[13]
t_prcs_num_13: PROCESS
BEGIN
	num(13) <= '0';
WAIT;
END PROCESS t_prcs_num_13;
-- num[12]
t_prcs_num_12: PROCESS
BEGIN
	num(12) <= '0';
WAIT;
END PROCESS t_prcs_num_12;
-- num[11]
t_prcs_num_11: PROCESS
BEGIN
	num(11) <= '0';
WAIT;
END PROCESS t_prcs_num_11;
-- num[10]
t_prcs_num_10: PROCESS
BEGIN
	num(10) <= '0';
WAIT;
END PROCESS t_prcs_num_10;
-- num[9]
t_prcs_num_9: PROCESS
BEGIN
	num(9) <= '0';
WAIT;
END PROCESS t_prcs_num_9;
-- num[8]
t_prcs_num_8: PROCESS
BEGIN
	num(8) <= '0';
WAIT;
END PROCESS t_prcs_num_8;
-- num[7]
t_prcs_num_7: PROCESS
BEGIN
	num(7) <= '0';
WAIT;
END PROCESS t_prcs_num_7;
-- num[6]
t_prcs_num_6: PROCESS
BEGIN
	num(6) <= '1';
	WAIT FOR 160000 ps;
	num(6) <= '0';
WAIT;
END PROCESS t_prcs_num_6;
-- num[5]
t_prcs_num_5: PROCESS
BEGIN
	num(5) <= '0';
WAIT;
END PROCESS t_prcs_num_5;
-- num[4]
t_prcs_num_4: PROCESS
BEGIN
	num(4) <= '1';
	WAIT FOR 160000 ps;
	num(4) <= '0';
WAIT;
END PROCESS t_prcs_num_4;
-- num[3]
t_prcs_num_3: PROCESS
BEGIN
	num(3) <= '0';
	WAIT FOR 160000 ps;
	num(3) <= '1';
WAIT;
END PROCESS t_prcs_num_3;
-- num[2]
t_prcs_num_2: PROCESS
BEGIN
	num(2) <= '0';
WAIT;
END PROCESS t_prcs_num_2;
-- num[1]
t_prcs_num_1: PROCESS
BEGIN
	num(1) <= '0';
WAIT;
END PROCESS t_prcs_num_1;
-- num[0]
t_prcs_num_0: PROCESS
BEGIN
	num(0) <= '1';
WAIT;
END PROCESS t_prcs_num_0;
END divisor_arch;
