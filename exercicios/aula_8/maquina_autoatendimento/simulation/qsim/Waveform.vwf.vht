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
-- Generated on "08/28/2019 12:10:45"
                                                             
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
SIGNAL b1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL b2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL b3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL b4 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL b5 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL b6 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL b7 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL b8 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT maquina_autoatendimento
	PORT (
	b1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	b2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	b3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	b4 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	b5 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	b6 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	b7 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	b8 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	s : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : maquina_autoatendimento
	PORT MAP (
-- list connections between master ports and signals
	b1 => b1,
	b2 => b2,
	b3 => b3,
	b4 => b4,
	b5 => b5,
	b6 => b6,
	b7 => b7,
	b8 => b8,
	s => s
	);
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
	s(1) <= '1';
	WAIT FOR 180000 ps;
	s(1) <= '0';
	WAIT FOR 120000 ps;
	s(1) <= '1';
	WAIT FOR 220000 ps;
	s(1) <= '0';
WAIT;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
	s(0) <= '0';
	WAIT FOR 180000 ps;
	s(0) <= '1';
	WAIT FOR 340000 ps;
	s(0) <= '0';
WAIT;
END PROCESS t_prcs_s_0;
END maquina_autoatendimento_arch;
