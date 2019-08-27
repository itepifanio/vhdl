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

-- DATE "08/26/2019 21:20:54"

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

ENTITY 	demux_when IS
    PORT (
	s : IN std_logic_vector(1 DOWNTO 0);
	i : IN std_logic_vector(1 DOWNTO 0);
	s1 : OUT std_logic_vector(1 DOWNTO 0);
	s2 : OUT std_logic_vector(1 DOWNTO 0);
	s3 : OUT std_logic_vector(1 DOWNTO 0);
	s4 : OUT std_logic_vector(1 DOWNTO 0)
	);
END demux_when;

-- Design Ports Information
-- s1[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF demux_when IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_i : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_s1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_s2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_s3 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_s4 : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \i[0]~input_o\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \s1~0_combout\ : std_logic;
SIGNAL \i[1]~input_o\ : std_logic;
SIGNAL \s1~1_combout\ : std_logic;
SIGNAL \s2~0_combout\ : std_logic;
SIGNAL \s2~1_combout\ : std_logic;
SIGNAL \s3~0_combout\ : std_logic;
SIGNAL \s3~1_combout\ : std_logic;
SIGNAL \s4~0_combout\ : std_logic;
SIGNAL \s4~1_combout\ : std_logic;
SIGNAL \ALT_INV_i[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_s[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_s[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_i[0]~input_o\ : std_logic;

BEGIN

ww_s <= s;
ww_i <= i;
s1 <= ww_s1;
s2 <= ww_s2;
s3 <= ww_s3;
s4 <= ww_s4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_i[1]~input_o\ <= NOT \i[1]~input_o\;
\ALT_INV_s[1]~input_o\ <= NOT \s[1]~input_o\;
\ALT_INV_s[0]~input_o\ <= NOT \s[0]~input_o\;
\ALT_INV_i[0]~input_o\ <= NOT \i[0]~input_o\;

-- Location: IOOBUF_X89_Y38_N39
\s1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1~0_combout\,
	devoe => ww_devoe,
	o => ww_s1(0));

-- Location: IOOBUF_X89_Y38_N5
\s1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1~1_combout\,
	devoe => ww_devoe,
	o => ww_s1(1));

-- Location: IOOBUF_X89_Y36_N39
\s2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s2~0_combout\,
	devoe => ww_devoe,
	o => ww_s2(0));

-- Location: IOOBUF_X89_Y37_N56
\s2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s2~1_combout\,
	devoe => ww_devoe,
	o => ww_s2(1));

-- Location: IOOBUF_X89_Y35_N45
\s3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s3~0_combout\,
	devoe => ww_devoe,
	o => ww_s3(0));

-- Location: IOOBUF_X89_Y37_N39
\s3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s3~1_combout\,
	devoe => ww_devoe,
	o => ww_s3(1));

-- Location: IOOBUF_X89_Y35_N62
\s4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s4~0_combout\,
	devoe => ww_devoe,
	o => ww_s4(0));

-- Location: IOOBUF_X89_Y38_N22
\s4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s4~1_combout\,
	devoe => ww_devoe,
	o => ww_s4(1));

-- Location: IOIBUF_X89_Y36_N21
\i[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(0),
	o => \i[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\s[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(0),
	o => \s[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\s[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(1),
	o => \s[1]~input_o\);

-- Location: LABCELL_X88_Y36_N30
\s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1~0_combout\ = ( !\s[1]~input_o\ & ( (\i[0]~input_o\ & !\s[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i[0]~input_o\,
	datac => \ALT_INV_s[0]~input_o\,
	dataf => \ALT_INV_s[1]~input_o\,
	combout => \s1~0_combout\);

-- Location: IOIBUF_X89_Y36_N55
\i[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i(1),
	o => \i[1]~input_o\);

-- Location: LABCELL_X88_Y36_N6
\s1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1~1_combout\ = ( \i[1]~input_o\ & ( !\s[1]~input_o\ & ( !\s[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s[0]~input_o\,
	datae => \ALT_INV_i[1]~input_o\,
	dataf => \ALT_INV_s[1]~input_o\,
	combout => \s1~1_combout\);

-- Location: LABCELL_X88_Y36_N45
\s2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s2~0_combout\ = ( !\s[1]~input_o\ & ( (\s[0]~input_o\ & \i[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[0]~input_o\,
	datad => \ALT_INV_i[0]~input_o\,
	dataf => \ALT_INV_s[1]~input_o\,
	combout => \s2~0_combout\);

-- Location: LABCELL_X88_Y36_N51
\s2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s2~1_combout\ = ( \i[1]~input_o\ & ( !\s[1]~input_o\ & ( \s[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[0]~input_o\,
	datae => \ALT_INV_i[1]~input_o\,
	dataf => \ALT_INV_s[1]~input_o\,
	combout => \s2~1_combout\);

-- Location: LABCELL_X88_Y36_N24
\s3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s3~0_combout\ = ( \s[1]~input_o\ & ( (\i[0]~input_o\ & !\s[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i[0]~input_o\,
	datac => \ALT_INV_s[0]~input_o\,
	dataf => \ALT_INV_s[1]~input_o\,
	combout => \s3~0_combout\);

-- Location: LABCELL_X88_Y36_N0
\s3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s3~1_combout\ = ( \i[1]~input_o\ & ( \s[1]~input_o\ & ( !\s[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s[0]~input_o\,
	datae => \ALT_INV_i[1]~input_o\,
	dataf => \ALT_INV_s[1]~input_o\,
	combout => \s3~1_combout\);

-- Location: LABCELL_X88_Y36_N39
\s4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s4~0_combout\ = ( \s[1]~input_o\ & ( (\s[0]~input_o\ & \i[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[0]~input_o\,
	datad => \ALT_INV_i[0]~input_o\,
	dataf => \ALT_INV_s[1]~input_o\,
	combout => \s4~0_combout\);

-- Location: LABCELL_X88_Y36_N15
\s4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s4~1_combout\ = ( \i[1]~input_o\ & ( \s[1]~input_o\ & ( \s[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s[0]~input_o\,
	datae => \ALT_INV_i[1]~input_o\,
	dataf => \ALT_INV_s[1]~input_o\,
	combout => \s4~1_combout\);

-- Location: MLABCELL_X47_Y36_N3
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


