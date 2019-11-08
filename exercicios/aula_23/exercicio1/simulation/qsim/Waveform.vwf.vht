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
-- Generated on "11/08/2019 17:08:39"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dmx : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL mux : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT exercicio1
	PORT (
	clk : IN STD_LOGIC;
	data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	dmx : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	mux : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : exercicio1
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	data => data,
	dmx => dmx,
	mux => mux,
	q => q
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 13
	LOOP
		clk <= '0';
		WAIT FOR 37500 ps;
		clk <= '1';
		WAIT FOR 37500 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- data[15]
t_prcs_data_15: PROCESS
BEGIN
	data(15) <= '0';
WAIT;
END PROCESS t_prcs_data_15;
-- data[14]
t_prcs_data_14: PROCESS
BEGIN
	data(14) <= '0';
WAIT;
END PROCESS t_prcs_data_14;
-- data[13]
t_prcs_data_13: PROCESS
BEGIN
	data(13) <= '0';
WAIT;
END PROCESS t_prcs_data_13;
-- data[12]
t_prcs_data_12: PROCESS
BEGIN
	data(12) <= '0';
WAIT;
END PROCESS t_prcs_data_12;
-- data[11]
t_prcs_data_11: PROCESS
BEGIN
	data(11) <= '0';
WAIT;
END PROCESS t_prcs_data_11;
-- data[10]
t_prcs_data_10: PROCESS
BEGIN
	data(10) <= '0';
WAIT;
END PROCESS t_prcs_data_10;
-- data[9]
t_prcs_data_9: PROCESS
BEGIN
	data(9) <= '0';
WAIT;
END PROCESS t_prcs_data_9;
-- data[8]
t_prcs_data_8: PROCESS
BEGIN
	data(8) <= '0';
WAIT;
END PROCESS t_prcs_data_8;
-- data[7]
t_prcs_data_7: PROCESS
BEGIN
	data(7) <= '0';
WAIT;
END PROCESS t_prcs_data_7;
-- data[6]
t_prcs_data_6: PROCESS
BEGIN
	data(6) <= '0';
WAIT;
END PROCESS t_prcs_data_6;
-- data[5]
t_prcs_data_5: PROCESS
BEGIN
	data(5) <= '0';
	WAIT FOR 620000 ps;
	data(5) <= '1';
	WAIT FOR 180000 ps;
	data(5) <= '0';
WAIT;
END PROCESS t_prcs_data_5;
-- data[4]
t_prcs_data_4: PROCESS
BEGIN
	data(4) <= '0';
	WAIT FOR 240000 ps;
	data(4) <= '1';
	WAIT FOR 100000 ps;
	data(4) <= '0';
WAIT;
END PROCESS t_prcs_data_4;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '0';
	WAIT FOR 80000 ps;
	data(3) <= '1';
	WAIT FOR 100000 ps;
	data(3) <= '0';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	data(1) <= '0';
	WAIT FOR 80000 ps;
	data(1) <= '1';
	WAIT FOR 100000 ps;
	data(1) <= '0';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	data(0) <= '0';
WAIT;
END PROCESS t_prcs_data_0;
-- dmx[2]
t_prcs_dmx_2: PROCESS
BEGIN
	dmx(2) <= '0';
WAIT;
END PROCESS t_prcs_dmx_2;
-- dmx[1]
t_prcs_dmx_1: PROCESS
BEGIN
	dmx(1) <= '0';
WAIT;
END PROCESS t_prcs_dmx_1;
-- dmx[0]
t_prcs_dmx_0: PROCESS
BEGIN
	dmx(0) <= '0';
WAIT;
END PROCESS t_prcs_dmx_0;
-- mux[2]
t_prcs_mux_2: PROCESS
BEGIN
	mux(2) <= '0';
WAIT;
END PROCESS t_prcs_mux_2;
-- mux[1]
t_prcs_mux_1: PROCESS
BEGIN
	mux(1) <= '0';
WAIT;
END PROCESS t_prcs_mux_1;
-- mux[0]
t_prcs_mux_0: PROCESS
BEGIN
	mux(0) <= '0';
WAIT;
END PROCESS t_prcs_mux_0;
END exercicio1_arch;
