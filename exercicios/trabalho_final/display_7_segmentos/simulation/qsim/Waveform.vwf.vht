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
-- Generated on "11/10/2019 12:41:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          display_7_segmentos
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY display_7_segmentos_vhd_vec_tst IS
END display_7_segmentos_vhd_vec_tst;
ARCHITECTURE display_7_segmentos_arch OF display_7_segmentos_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s0 : STD_LOGIC;
SIGNAL s1 : STD_LOGIC;
SIGNAL s2 : STD_LOGIC;
SIGNAL s3 : STD_LOGIC;
SIGNAL s4 : STD_LOGIC;
SIGNAL s5 : STD_LOGIC;
SIGNAL s6 : STD_LOGIC;
COMPONENT display_7_segmentos
	PORT (
	data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	s0 : OUT STD_LOGIC;
	s1 : OUT STD_LOGIC;
	s2 : OUT STD_LOGIC;
	s3 : OUT STD_LOGIC;
	s4 : OUT STD_LOGIC;
	s5 : OUT STD_LOGIC;
	s6 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : display_7_segmentos
	PORT MAP (
-- list connections between master ports and signals
	data => data,
	s0 => s0,
	s1 => s1,
	s2 => s2,
	s3 => s3,
	s4 => s4,
	s5 => s5,
	s6 => s6
	);
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '0';
	WAIT FOR 700000 ps;
	data(3) <= '1';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	data(2) <= '0';
	WAIT FOR 280000 ps;
	data(2) <= '1';
	WAIT FOR 420000 ps;
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	data(1) <= '0';
	WAIT FOR 80000 ps;
	data(1) <= '1';
	WAIT FOR 200000 ps;
	data(1) <= '0';
	WAIT FOR 200000 ps;
	data(1) <= '1';
	WAIT FOR 220000 ps;
	data(1) <= '0';
	WAIT FOR 200000 ps;
	data(1) <= '1';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	data(0) <= '1';
	WAIT FOR 80000 ps;
	data(0) <= '0';
	WAIT FOR 100000 ps;
	data(0) <= '1';
	WAIT FOR 100000 ps;
	data(0) <= '0';
	WAIT FOR 100000 ps;
	data(0) <= '1';
	WAIT FOR 100000 ps;
	data(0) <= '0';
	WAIT FOR 120000 ps;
	data(0) <= '1';
	WAIT FOR 100000 ps;
	data(0) <= '0';
	WAIT FOR 100000 ps;
	data(0) <= '1';
	WAIT FOR 100000 ps;
	data(0) <= '0';
WAIT;
END PROCESS t_prcs_data_0;
END display_7_segmentos_arch;
