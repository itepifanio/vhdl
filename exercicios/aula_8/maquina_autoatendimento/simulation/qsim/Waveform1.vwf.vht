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
-- Generated on "08/28/2019 12:28:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          maquina_autoatendimento
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY maquina_autoatendimento_vhd_vec_tst IS
END maquina_autoatendimento_vhd_vec_tst;
ARCHITECTURE maquina_autoatendimento_arch OF maquina_autoatendimento_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL o : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT maquina_autoatendimento
	PORT (
	o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	s : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : maquina_autoatendimento
	PORT MAP (
-- list connections between master ports and signals
	o => o,
	s => s
	);
-- s[2]
t_prcs_s_2: PROCESS
BEGIN
	s(2) <= '1';
	WAIT FOR 100000 ps;
	s(2) <= '0';
	WAIT FOR 60000 ps;
	s(2) <= '1';
	WAIT FOR 120000 ps;
	s(2) <= '0';
	WAIT FOR 130000 ps;
	s(2) <= '1';
	WAIT FOR 130000 ps;
	s(2) <= '0';
WAIT;
END PROCESS t_prcs_s_2;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
	s(1) <= '1';
	WAIT FOR 210000 ps;
	s(1) <= '0';
	WAIT FOR 130000 ps;
	s(1) <= '1';
	WAIT FOR 70000 ps;
	s(1) <= '0';
WAIT;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
	s(0) <= '1';
	WAIT FOR 160000 ps;
	s(0) <= '0';
	WAIT FOR 50000 ps;
	s(0) <= '1';
	WAIT FOR 70000 ps;
	s(0) <= '0';
	WAIT FOR 260000 ps;
	s(0) <= '1';
	WAIT FOR 140000 ps;
	s(0) <= '0';
WAIT;
END PROCESS t_prcs_s_0;
END maquina_autoatendimento_arch;
