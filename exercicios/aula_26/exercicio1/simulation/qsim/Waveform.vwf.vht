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
-- Generated on "10/30/2019 17:21:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          exercicio1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY exercicio1_vhd_vec_tst IS
END exercicio1_vhd_vec_tst;
ARCHITECTURE exercicio1_arch OF exercicio1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bt : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL l1 : STD_LOGIC;
SIGNAL l2 : STD_LOGIC;
SIGNAL l3 : STD_LOGIC;
SIGNAL x : STD_LOGIC;
COMPONENT exercicio1
	PORT (
	bt : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	l1 : OUT STD_LOGIC;
	l2 : OUT STD_LOGIC;
	l3 : OUT STD_LOGIC;
	x : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : exercicio1
	PORT MAP (
-- list connections between master ports and signals
	bt => bt,
	clk => clk,
	l1 => l1,
	l2 => l2,
	l3 => l3,
	x => x
	);

-- bt
t_prcs_bt: PROCESS
BEGIN
	bt <= '0';
	WAIT FOR 20000 ps;
	bt <= '1';
	WAIT FOR 40000 ps;
	bt <= '0';
	WAIT FOR 60000 ps;
	bt <= '1';
	WAIT FOR 40000 ps;
	bt <= '0';
	WAIT FOR 60000 ps;
	bt <= '1';
	WAIT FOR 40000 ps;
	bt <= '0';
	WAIT FOR 60000 ps;
	bt <= '1';
	WAIT FOR 40000 ps;
	bt <= '0';
	WAIT FOR 60000 ps;
	bt <= '1';
	WAIT FOR 40000 ps;
	bt <= '0';
WAIT;
END PROCESS t_prcs_bt;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END exercicio1_arch;
