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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/14/2019 17:43:05"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	julgadores IS
    PORT (
	j0 : IN std_logic;
	j1 : IN std_logic;
	j2 : IN std_logic;
	j3 : IN std_logic;
	vd : OUT std_logic;
	vm : OUT std_logic
	);
END julgadores;

-- Design Ports Information
-- vd	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vm	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j0	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j2	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j3	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j1	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF julgadores IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_j0 : std_logic;
SIGNAL ww_j1 : std_logic;
SIGNAL ww_j2 : std_logic;
SIGNAL ww_j3 : std_logic;
SIGNAL ww_vd : std_logic;
SIGNAL ww_vm : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \j3~input_o\ : std_logic;
SIGNAL \j2~input_o\ : std_logic;
SIGNAL \j1~input_o\ : std_logic;
SIGNAL \j0~input_o\ : std_logic;
SIGNAL \vd~0_combout\ : std_logic;
SIGNAL \vm~0_combout\ : std_logic;
SIGNAL \ALT_INV_j1~input_o\ : std_logic;
SIGNAL \ALT_INV_j3~input_o\ : std_logic;
SIGNAL \ALT_INV_j2~input_o\ : std_logic;
SIGNAL \ALT_INV_j0~input_o\ : std_logic;

BEGIN

ww_j0 <= j0;
ww_j1 <= j1;
ww_j2 <= j2;
ww_j3 <= j3;
vd <= ww_vd;
vm <= ww_vm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_j1~input_o\ <= NOT \j1~input_o\;
\ALT_INV_j3~input_o\ <= NOT \j3~input_o\;
\ALT_INV_j2~input_o\ <= NOT \j2~input_o\;
\ALT_INV_j0~input_o\ <= NOT \j0~input_o\;

-- Location: IOOBUF_X89_Y38_N5
\vd~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vd~0_combout\,
	devoe => ww_devoe,
	o => ww_vd);

-- Location: IOOBUF_X89_Y38_N22
\vm~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \vm~0_combout\,
	devoe => ww_devoe,
	o => ww_vm);

-- Location: IOIBUF_X89_Y38_N55
\j3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j3,
	o => \j3~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\j2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j2,
	o => \j2~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\j1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j1,
	o => \j1~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\j0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j0,
	o => \j0~input_o\);

-- Location: LABCELL_X88_Y38_N0
\vd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vd~0_combout\ = ( \j0~input_o\ & ( (!\j2~input_o\ $ (!\j1~input_o\)) # (\j3~input_o\) ) ) # ( !\j0~input_o\ & ( (!\j3~input_o\ & (\j2~input_o\ & \j1~input_o\)) # (\j3~input_o\ & ((\j1~input_o\) # (\j2~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111011111010111110100010111000101110111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_j3~input_o\,
	datab => \ALT_INV_j2~input_o\,
	datac => \ALT_INV_j1~input_o\,
	datae => \ALT_INV_j0~input_o\,
	combout => \vd~0_combout\);

-- Location: LABCELL_X88_Y38_N9
\vm~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \vm~0_combout\ = ( \j0~input_o\ & ( (!\j1~input_o\ & ((!\j2~input_o\) # (!\j3~input_o\))) # (\j1~input_o\ & (!\j2~input_o\ & !\j3~input_o\)) ) ) # ( !\j0~input_o\ & ( (!\j1~input_o\ & ((\j3~input_o\) # (\j2~input_o\))) # (\j1~input_o\ & ((!\j2~input_o\) # 
-- (!\j3~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111010111110101010000001011111111110101111101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_j1~input_o\,
	datac => \ALT_INV_j2~input_o\,
	datad => \ALT_INV_j3~input_o\,
	datae => \ALT_INV_j0~input_o\,
	combout => \vm~0_combout\);

-- Location: MLABCELL_X52_Y24_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


