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
-- Generated on "09/18/2019 11:34:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          circuito
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY circuito_vhd_vec_tst IS
END circuito_vhd_vec_tst;
ARCHITECTURE circuito_arch OF circuito_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL x : STD_LOGIC;
COMPONENT circuito
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	c : IN STD_LOGIC;
	d : IN STD_LOGIC;
	x : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : circuito
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	x => x
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '0';
	WAIT FOR 15000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 15000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 15000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 15000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 30000 ps;
	a <= '0';
	WAIT FOR 30000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 25000 ps;
	a <= '1';
	WAIT FOR 25000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 15000 ps;
	a <= '1';
	WAIT FOR 15000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 15000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 25000 ps;
	a <= '0';
	WAIT FOR 30000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 15000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 25000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 15000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 20000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 30000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 15000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 15000 ps;
	a <= '1';
	WAIT FOR 15000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 10000 ps;
	a <= '1';
	WAIT FOR 10000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
	WAIT FOR 5000 ps;
	a <= '0';
	WAIT FOR 5000 ps;
	a <= '1';
WAIT;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 10000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 10000 ps;
	b <= '0';
	WAIT FOR 15000 ps;
	b <= '1';
	WAIT FOR 10000 ps;
	b <= '0';
	WAIT FOR 15000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 10000 ps;
	b <= '0';
	WAIT FOR 10000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 10000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 10000 ps;
	b <= '1';
	WAIT FOR 15000 ps;
	b <= '0';
	WAIT FOR 15000 ps;
	b <= '1';
	WAIT FOR 10000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 10000 ps;
	b <= '0';
	WAIT FOR 10000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 15000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 10000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 15000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 25000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 10000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 20000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 15000 ps;
	b <= '1';
	WAIT FOR 35000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 10000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 10000 ps;
	b <= '1';
	WAIT FOR 15000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 10000 ps;
	b <= '0';
	WAIT FOR 10000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 20000 ps;
	b <= '1';
	WAIT FOR 15000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 10000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 10000 ps;
	b <= '1';
	WAIT FOR 25000 ps;
	b <= '0';
	WAIT FOR 15000 ps;
	b <= '1';
	WAIT FOR 10000 ps;
	b <= '0';
	WAIT FOR 10000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 10000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 20000 ps;
	b <= '0';
	WAIT FOR 5000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
	WAIT FOR 10000 ps;
	b <= '1';
	WAIT FOR 10000 ps;
	b <= '0';
	WAIT FOR 20000 ps;
	b <= '1';
	WAIT FOR 5000 ps;
	b <= '0';
WAIT;
END PROCESS t_prcs_b;

-- c
t_prcs_c: PROCESS
BEGIN
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 15000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 15000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 25000 ps;
	c <= '0';
	WAIT FOR 15000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 15000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 15000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 30000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 15000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 15000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 45000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 20000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 15000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 15000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 15000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 20000 ps;
	c <= '0';
	WAIT FOR 20000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 15000 ps;
	c <= '0';
	WAIT FOR 15000 ps;
	c <= '1';
	WAIT FOR 15000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 5000 ps;
	c <= '1';
	WAIT FOR 10000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
	WAIT FOR 5000 ps;
	c <= '0';
	WAIT FOR 10000 ps;
	c <= '1';
WAIT;
END PROCESS t_prcs_c;

-- d
t_prcs_d: PROCESS
BEGIN
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 15000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 15000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 25000 ps;
	d <= '0';
	WAIT FOR 15000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 15000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 15000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 30000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 15000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 15000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 45000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 20000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 15000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 15000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 15000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 20000 ps;
	d <= '0';
	WAIT FOR 20000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 15000 ps;
	d <= '0';
	WAIT FOR 15000 ps;
	d <= '1';
	WAIT FOR 15000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
WAIT;
END PROCESS t_prcs_d;
END circuito_arch;
