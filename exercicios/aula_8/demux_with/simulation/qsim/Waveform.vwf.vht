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
-- Generated on "08/26/2019 20:09:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          demux_with
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY demux_with_vhd_vec_tst IS
END demux_with_vhd_vec_tst;
ARCHITECTURE demux_with_arch OF demux_with_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL i : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT demux_with
	PORT (
	i : IN STD_LOGIC;
	s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : demux_with
	PORT MAP (
-- list connections between master ports and signals
	i => i,
	s => s,
	y => y
	);

-- i
t_prcs_i: PROCESS
BEGIN
	i <= '0';
WAIT;
END PROCESS t_prcs_i;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
	s(1) <= '1';
	WAIT FOR 380000 ps;
	s(1) <= '0';
WAIT;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
	s(0) <= '1';
	WAIT FOR 180000 ps;
	s(0) <= '0';
	WAIT FOR 200000 ps;
	s(0) <= '1';
	WAIT FOR 180000 ps;
	s(0) <= '0';
WAIT;
END PROCESS t_prcs_s_0;
END demux_with_arch;
