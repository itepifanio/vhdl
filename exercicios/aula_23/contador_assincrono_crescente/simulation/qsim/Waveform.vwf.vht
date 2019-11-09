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
-- Generated on "11/08/2019 20:24:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          contador_assincrono_crescente
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contador_assincrono_crescente_vhd_vec_tst IS
END contador_assincrono_crescente_vhd_vec_tst;
ARCHITECTURE contador_assincrono_crescente_arch OF contador_assincrono_crescente_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL q0 : STD_LOGIC;
SIGNAL q1 : STD_LOGIC;
COMPONENT contador_assincrono_crescente
	PORT (
	clk : IN STD_LOGIC;
	q0 : OUT STD_LOGIC;
	q1 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : contador_assincrono_crescente
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	q0 => q0,
	q1 => q1
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
END contador_assincrono_crescente_arch;
