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

-- DATE "09/22/2019 11:19:07"

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

ENTITY 	subtrador IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	cout : OUT std_logic;
	s : OUT std_logic_vector(3 DOWNTO 0)
	);
END subtrador;

-- Design Ports Information
-- cout	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF subtrador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a5|i2|cout~combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a1|i3|s~combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a5|i3|cout~combout\ : std_logic;
SIGNAL \a5|i0|s~combout\ : std_logic;
SIGNAL \a5|i1|s~combout\ : std_logic;
SIGNAL \a5|i2|s~combout\ : std_logic;
SIGNAL \a5|i3|s~combout\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \a1|i3|ALT_INV_s~combout\ : std_logic;
SIGNAL \a5|i2|ALT_INV_cout~combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
cout <= ww_cout;
s <= ww_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\a1|i3|ALT_INV_s~combout\ <= NOT \a1|i3|s~combout\;
\a5|i2|ALT_INV_cout~combout\ <= NOT \a5|i2|cout~combout\;

-- Location: IOOBUF_X89_Y35_N96
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a5|i3|cout~combout\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOOBUF_X89_Y38_N22
\s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a5|i0|s~combout\,
	devoe => ww_devoe,
	o => ww_s(0));

-- Location: IOOBUF_X89_Y38_N56
\s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a5|i1|s~combout\,
	devoe => ww_devoe,
	o => ww_s(1));

-- Location: IOOBUF_X89_Y37_N56
\s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a5|i2|s~combout\,
	devoe => ww_devoe,
	o => ww_s(2));

-- Location: IOOBUF_X89_Y35_N79
\s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a5|i3|s~combout\,
	devoe => ww_devoe,
	o => ww_s(3));

-- Location: IOIBUF_X89_Y37_N4
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LABCELL_X88_Y36_N0
\a5|i2|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \a5|i2|cout~combout\ = ( \a[0]~input_o\ & ( \b[1]~input_o\ & ( (!\b[2]~input_o\ & ((\a[2]~input_o\) # (\a[1]~input_o\))) # (\b[2]~input_o\ & (\a[1]~input_o\ & \a[2]~input_o\)) ) ) ) # ( !\a[0]~input_o\ & ( \b[1]~input_o\ & ( (!\b[2]~input_o\ & 
-- (((\a[1]~input_o\ & !\b[0]~input_o\)) # (\a[2]~input_o\))) # (\b[2]~input_o\ & (\a[1]~input_o\ & (!\b[0]~input_o\ & \a[2]~input_o\))) ) ) ) # ( \a[0]~input_o\ & ( !\b[1]~input_o\ & ( (!\b[2]~input_o\ & (\b[0]~input_o\)) # (\b[2]~input_o\ & 
-- ((\a[2]~input_o\))) ) ) ) # ( !\a[0]~input_o\ & ( !\b[1]~input_o\ & ( (!\b[2]~input_o\ & (\b[0]~input_o\ & ((\a[2]~input_o\) # (\a[1]~input_o\)))) # (\b[2]~input_o\ & (\a[2]~input_o\ & ((!\b[0]~input_o\) # (\a[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001011011000010100101111100100000101110100010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \a5|i2|cout~combout\);

-- Location: IOIBUF_X89_Y36_N21
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LABCELL_X88_Y36_N39
\a1|i3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \a1|i3|s~combout\ = ( \b[1]~input_o\ & ( !\b[3]~input_o\ ) ) # ( !\b[1]~input_o\ & ( !\b[3]~input_o\ $ (((!\b[2]~input_o\ & !\b[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_b[3]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \a1|i3|s~combout\);

-- Location: IOIBUF_X89_Y36_N55
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LABCELL_X88_Y36_N15
\a5|i3|cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \a5|i3|cout~combout\ = ( \a[3]~input_o\ & ( (\a1|i3|s~combout\) # (\a5|i2|cout~combout\) ) ) # ( !\a[3]~input_o\ & ( (\a5|i2|cout~combout\ & \a1|i3|s~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001011101110111011100010001000100010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a5|i2|ALT_INV_cout~combout\,
	datab => \a1|i3|ALT_INV_s~combout\,
	datae => \ALT_INV_a[3]~input_o\,
	combout => \a5|i3|cout~combout\);

-- Location: LABCELL_X88_Y36_N48
\a5|i0|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \a5|i0|s~combout\ = ( !\a[0]~input_o\ & ( \b[0]~input_o\ ) ) # ( \a[0]~input_o\ & ( !\b[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \a5|i0|s~combout\);

-- Location: LABCELL_X88_Y36_N54
\a5|i1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \a5|i1|s~combout\ = ( \a[0]~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ ) ) ) # ( !\a[0]~input_o\ & ( \b[1]~input_o\ & ( !\a[1]~input_o\ $ (\b[0]~input_o\) ) ) ) # ( \a[0]~input_o\ & ( !\b[1]~input_o\ & ( \a[1]~input_o\ ) ) ) # ( !\a[0]~input_o\ & ( 
-- !\b[1]~input_o\ & ( !\a[1]~input_o\ $ (!\b[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001100110011001111000011110000111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \a5|i1|s~combout\);

-- Location: LABCELL_X88_Y36_N30
\a5|i2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \a5|i2|s~combout\ = ( \a[0]~input_o\ & ( \b[1]~input_o\ & ( !\b[2]~input_o\ $ (!\a[1]~input_o\ $ (!\a[2]~input_o\)) ) ) ) # ( !\a[0]~input_o\ & ( \b[1]~input_o\ & ( !\b[2]~input_o\ $ (!\a[2]~input_o\ $ (((!\a[1]~input_o\) # (\b[0]~input_o\)))) ) ) ) # ( 
-- \a[0]~input_o\ & ( !\b[1]~input_o\ & ( !\b[2]~input_o\ $ (!\a[2]~input_o\) ) ) ) # ( !\a[0]~input_o\ & ( !\b[1]~input_o\ & ( !\b[2]~input_o\ $ (!\a[2]~input_o\ $ (((!\a[1]~input_o\ & \b[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100110100110010101011010101010011010011001011001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_a[1]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datad => \ALT_INV_a[2]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[1]~input_o\,
	combout => \a5|i2|s~combout\);

-- Location: LABCELL_X88_Y36_N36
\a5|i3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \a5|i3|s~combout\ = ( \a1|i3|s~combout\ & ( !\a[3]~input_o\ $ (\a5|i2|cout~combout\) ) ) # ( !\a1|i3|s~combout\ & ( !\a[3]~input_o\ $ (!\a5|i2|cout~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a[3]~input_o\,
	datad => \a5|i2|ALT_INV_cout~combout\,
	dataf => \a1|i3|ALT_INV_s~combout\,
	combout => \a5|i3|s~combout\);

-- Location: LABCELL_X48_Y8_N3
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


