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

-- DATE "10/02/2019 14:13:57"

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

ENTITY 	latchrs IS
    PORT (
	r : IN std_logic;
	s : IN std_logic;
	q : INOUT std_logic;
	qbar : INOUT std_logic
	);
END latchrs;

-- Design Ports Information
-- q	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qbar	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF latchrs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL \q~input_o\ : std_logic;
SIGNAL \qbar~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \r~input_o\ : std_logic;
SIGNAL \q~3_combout\ : std_logic;
SIGNAL \qbar~2_combout\ : std_logic;
SIGNAL \ALT_INV_r~input_o\ : std_logic;
SIGNAL \ALT_INV_s~input_o\ : std_logic;
SIGNAL \ALT_INV_q~3_combout\ : std_logic;

BEGIN

ww_r <= r;
ww_s <= s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_r~input_o\ <= NOT \r~input_o\;
\ALT_INV_s~input_o\ <= NOT \s~input_o\;
\ALT_INV_q~3_combout\ <= NOT \q~3_combout\;

-- Location: IOOBUF_X36_Y0_N19
\q~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => q);

-- Location: IOOBUF_X36_Y0_N36
\qbar~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \qbar~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => qbar);

-- Location: IOIBUF_X34_Y0_N92
\s~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\r~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r,
	o => \r~input_o\);

-- Location: LABCELL_X35_Y1_N6
\q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~3_combout\ = ( \q~3_combout\ & ( !\r~input_o\ ) ) # ( !\q~3_combout\ & ( (\s~input_o\ & !\r~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~input_o\,
	datac => \ALT_INV_r~input_o\,
	dataf => \ALT_INV_q~3_combout\,
	combout => \q~3_combout\);

-- Location: LABCELL_X35_Y1_N3
\qbar~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \qbar~2_combout\ = ( !\q~3_combout\ & ( !\s~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s~input_o\,
	dataf => \ALT_INV_q~3_combout\,
	combout => \qbar~2_combout\);

-- Location: IOIBUF_X36_Y0_N18
\q~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => q,
	o => \q~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\qbar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => qbar,
	o => \qbar~input_o\);

-- Location: LABCELL_X45_Y30_N3
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


