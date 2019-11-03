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
-- Generated on "11/03/2019 20:35:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          exercicio3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY exercicio3_vhd_vec_tst IS
END exercicio3_vhd_vec_tst;
ARCHITECTURE exercicio3_arch OF exercicio3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bt : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL cons : STD_LOGIC;
SIGNAL km_par : STD_LOGIC;
SIGNAL km_res : STD_LOGIC;
SIGNAL km_tot : STD_LOGIC;
COMPONENT exercicio3
	PORT (
	bt : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	cons : OUT STD_LOGIC;
	km_par : OUT STD_LOGIC;
	km_res : OUT STD_LOGIC;
	km_tot : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : exercicio3
	PORT MAP (
-- list connections between master ports and signals
	bt => bt,
	clk => clk,
	cons => cons,
	km_par => km_par,
	km_res => km_res,
	km_tot => km_tot
	);

-- bt
t_prcs_bt: PROCESS
BEGIN
	bt <= '0';
	WAIT FOR 120000 ps;
	bt <= '1';
	WAIT FOR 100000 ps;
	bt <= '0';
	WAIT FOR 120000 ps;
	bt <= '1';
	WAIT FOR 80000 ps;
	bt <= '0';
	WAIT FOR 120000 ps;
	bt <= '1';
	WAIT FOR 80000 ps;
	bt <= '0';
	WAIT FOR 100000 ps;
	bt <= '1';
	WAIT FOR 100000 ps;
	bt <= '0';
WAIT;
END PROCESS t_prcs_bt;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END exercicio3_arch;
