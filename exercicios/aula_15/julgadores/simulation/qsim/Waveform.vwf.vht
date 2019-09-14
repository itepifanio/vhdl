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
-- Generated on "09/14/2019 17:43:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          julgadores
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY julgadores_vhd_vec_tst IS
END julgadores_vhd_vec_tst;
ARCHITECTURE julgadores_arch OF julgadores_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL j0 : STD_LOGIC;
SIGNAL j1 : STD_LOGIC;
SIGNAL j2 : STD_LOGIC;
SIGNAL j3 : STD_LOGIC;
SIGNAL vd : STD_LOGIC;
SIGNAL vm : STD_LOGIC;
COMPONENT julgadores
	PORT (
	j0 : IN STD_LOGIC;
	j1 : IN STD_LOGIC;
	j2 : IN STD_LOGIC;
	j3 : IN STD_LOGIC;
	vd : OUT STD_LOGIC;
	vm : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : julgadores
	PORT MAP (
-- list connections between master ports and signals
	j0 => j0,
	j1 => j1,
	j2 => j2,
	j3 => j3,
	vd => vd,
	vm => vm
	);

-- j0
t_prcs_j0: PROCESS
BEGIN
	j0 <= '1';
	WAIT FOR 30000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 15000 ps;
	j0 <= '0';
	WAIT FOR 25000 ps;
	j0 <= '1';
	WAIT FOR 10000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 15000 ps;
	j0 <= '0';
	WAIT FOR 10000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 10000 ps;
	j0 <= '1';
	WAIT FOR 15000 ps;
	j0 <= '0';
	WAIT FOR 30000 ps;
	j0 <= '1';
	WAIT FOR 25000 ps;
	j0 <= '0';
	WAIT FOR 15000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 10000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 10000 ps;
	j0 <= '1';
	WAIT FOR 20000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 15000 ps;
	j0 <= '1';
	WAIT FOR 20000 ps;
	j0 <= '0';
	WAIT FOR 10000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 10000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 15000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 10000 ps;
	j0 <= '1';
	WAIT FOR 10000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 10000 ps;
	j0 <= '0';
	WAIT FOR 15000 ps;
	j0 <= '1';
	WAIT FOR 35000 ps;
	j0 <= '0';
	WAIT FOR 20000 ps;
	j0 <= '1';
	WAIT FOR 20000 ps;
	j0 <= '0';
	WAIT FOR 10000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 10000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 15000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 10000 ps;
	j0 <= '0';
	WAIT FOR 10000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 25000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 10000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 10000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 25000 ps;
	j0 <= '0';
	WAIT FOR 15000 ps;
	j0 <= '1';
	WAIT FOR 15000 ps;
	j0 <= '0';
	WAIT FOR 10000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 15000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 10000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 10000 ps;
	j0 <= '0';
	WAIT FOR 10000 ps;
	j0 <= '1';
	WAIT FOR 15000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 15000 ps;
	j0 <= '0';
	WAIT FOR 20000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 25000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 50000 ps;
	j0 <= '1';
	WAIT FOR 10000 ps;
	j0 <= '0';
	WAIT FOR 5000 ps;
	j0 <= '1';
	WAIT FOR 5000 ps;
	j0 <= '0';
	WAIT FOR 15000 ps;
	j0 <= '1';
WAIT;
END PROCESS t_prcs_j0;

-- j1
t_prcs_j1: PROCESS
BEGIN
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 20000 ps;
	j1 <= '0';
	WAIT FOR 35000 ps;
	j1 <= '1';
	WAIT FOR 10000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 20000 ps;
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 30000 ps;
	j1 <= '0';
	WAIT FOR 25000 ps;
	j1 <= '1';
	WAIT FOR 15000 ps;
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 30000 ps;
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 15000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 10000 ps;
	j1 <= '0';
	WAIT FOR 20000 ps;
	j1 <= '1';
	WAIT FOR 15000 ps;
	j1 <= '0';
	WAIT FOR 15000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 20000 ps;
	j1 <= '1';
	WAIT FOR 25000 ps;
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 15000 ps;
	j1 <= '0';
	WAIT FOR 20000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 20000 ps;
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 25000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 10000 ps;
	j1 <= '0';
	WAIT FOR 15000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 10000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 10000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 15000 ps;
	j1 <= '0';
	WAIT FOR 15000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 25000 ps;
	j1 <= '1';
	WAIT FOR 10000 ps;
	j1 <= '0';
	WAIT FOR 20000 ps;
	j1 <= '1';
	WAIT FOR 10000 ps;
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 10000 ps;
	j1 <= '0';
	WAIT FOR 20000 ps;
	j1 <= '1';
	WAIT FOR 10000 ps;
	j1 <= '0';
	WAIT FOR 30000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
	WAIT FOR 5000 ps;
	j1 <= '0';
	WAIT FOR 10000 ps;
	j1 <= '1';
	WAIT FOR 15000 ps;
	j1 <= '0';
	WAIT FOR 5000 ps;
	j1 <= '1';
WAIT;
END PROCESS t_prcs_j1;

-- j2
t_prcs_j2: PROCESS
BEGIN
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 10000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 10000 ps;
	j2 <= '1';
	WAIT FOR 20000 ps;
	j2 <= '0';
	WAIT FOR 35000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 20000 ps;
	j2 <= '1';
	WAIT FOR 20000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 10000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 20000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 15000 ps;
	j2 <= '0';
	WAIT FOR 20000 ps;
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 10000 ps;
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 30000 ps;
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 25000 ps;
	j2 <= '1';
	WAIT FOR 30000 ps;
	j2 <= '0';
	WAIT FOR 10000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 30000 ps;
	j2 <= '1';
	WAIT FOR 15000 ps;
	j2 <= '0';
	WAIT FOR 10000 ps;
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 25000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 10000 ps;
	j2 <= '1';
	WAIT FOR 15000 ps;
	j2 <= '0';
	WAIT FOR 25000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 10000 ps;
	j2 <= '1';
	WAIT FOR 15000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 15000 ps;
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 25000 ps;
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 15000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 10000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 15000 ps;
	j2 <= '0';
	WAIT FOR 10000 ps;
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 25000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 5000 ps;
	j2 <= '0';
	WAIT FOR 15000 ps;
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
	WAIT FOR 10000 ps;
	j2 <= '0';
	WAIT FOR 25000 ps;
	j2 <= '1';
	WAIT FOR 15000 ps;
	j2 <= '0';
	WAIT FOR 5000 ps;
	j2 <= '1';
WAIT;
END PROCESS t_prcs_j2;

-- j3
t_prcs_j3: PROCESS
BEGIN
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 30000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 15000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 15000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 15000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 25000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 20000 ps;
	j3 <= '0';
	WAIT FOR 10000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 10000 ps;
	j3 <= '1';
	WAIT FOR 15000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 20000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 15000 ps;
	j3 <= '0';
	WAIT FOR 10000 ps;
	j3 <= '1';
	WAIT FOR 15000 ps;
	j3 <= '0';
	WAIT FOR 10000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 35000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 30000 ps;
	j3 <= '0';
	WAIT FOR 10000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 10000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 10000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 10000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 15000 ps;
	j3 <= '0';
	WAIT FOR 15000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 20000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 10000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 20000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 10000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 15000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
	WAIT FOR 15000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 5000 ps;
	j3 <= '1';
	WAIT FOR 5000 ps;
	j3 <= '0';
	WAIT FOR 20000 ps;
	j3 <= '1';
	WAIT FOR 10000 ps;
	j3 <= '0';
WAIT;
END PROCESS t_prcs_j3;
END julgadores_arch;
