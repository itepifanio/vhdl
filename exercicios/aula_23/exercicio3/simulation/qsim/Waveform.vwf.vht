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
-- Generated on "11/09/2019 10:25:56"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL cnt : STD_LOGIC;
SIGNAL fc : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL up_dwn : STD_LOGIC;
COMPONENT exercicio3
	PORT (
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	cnt : IN STD_LOGIC;
	fc : OUT STD_LOGIC;
	s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	up_dwn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : exercicio3
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr => clr,
	cnt => cnt,
	fc => fc,
	s => s,
	up_dwn => up_dwn
	);

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

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '0';
	WAIT FOR 340000 ps;
	clr <= '1';
	WAIT FOR 120000 ps;
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;

-- cnt
t_prcs_cnt: PROCESS
BEGIN
	cnt <= '1';
	WAIT FOR 600000 ps;
	cnt <= '0';
WAIT;
END PROCESS t_prcs_cnt;

-- up_dwn
t_prcs_up_dwn: PROCESS
BEGIN
	up_dwn <= '1';
	WAIT FOR 240000 ps;
	up_dwn <= '0';
	WAIT FOR 100000 ps;
	up_dwn <= '1';
	WAIT FOR 260000 ps;
	up_dwn <= '0';
WAIT;
END PROCESS t_prcs_up_dwn;
END exercicio3_arch;
