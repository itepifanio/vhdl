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

-- DATE "09/21/2019 15:19:22"

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

ENTITY 	comparador_5_bits IS
    PORT (
	a : IN std_logic_vector(4 DOWNTO 0);
	b : IN std_logic_vector(4 DOWNTO 0);
	ina : IN std_logic;
	inb : IN std_logic;
	inc : IN std_logic;
	x : OUT std_logic;
	y : OUT std_logic;
	z : OUT std_logic
	);
END comparador_5_bits;

-- Design Ports Information
-- x	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ina	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inb	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inc	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF comparador_5_bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ina : std_logic;
SIGNAL ww_inb : std_logic;
SIGNAL ww_inc : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \x~1_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \ina~input_o\ : std_logic;
SIGNAL \x~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \x~2_combout\ : std_logic;
SIGNAL \inb~input_o\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \inc~input_o\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;
SIGNAL \ALT_INV_inc~input_o\ : std_logic;
SIGNAL \ALT_INV_inb~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ina~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_x~1_combout\ : std_logic;
SIGNAL \ALT_INV_x~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_ina <= ina;
ww_inb <= inb;
ww_inc <= inc;
x <= ww_x;
y <= ww_y;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inc~input_o\ <= NOT \inc~input_o\;
\ALT_INV_inb~input_o\ <= NOT \inb~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[4]~input_o\ <= NOT \b[4]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_ina~input_o\ <= NOT \ina~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_x~1_combout\ <= NOT \x~1_combout\;
\ALT_INV_x~0_combout\ <= NOT \x~0_combout\;

-- Location: IOOBUF_X89_Y38_N22
\x~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \x~2_combout\,
	devoe => ww_devoe,
	o => ww_x);

-- Location: IOOBUF_X89_Y38_N56
\y~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y~0_combout\,
	devoe => ww_devoe,
	o => ww_y);

-- Location: IOOBUF_X89_Y38_N5
\z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~0_combout\,
	devoe => ww_devoe,
	o => ww_z);

-- Location: IOIBUF_X89_Y37_N55
\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LABCELL_X88_Y37_N30
\x~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \x~1_combout\ = ( \a[0]~input_o\ & ( (\b[0]~input_o\ & (!\b[2]~input_o\ $ (\a[2]~input_o\))) ) ) # ( !\a[0]~input_o\ & ( (!\b[0]~input_o\ & (!\b[2]~input_o\ $ (\a[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000000010010000100110010000100100000000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[2]~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	datac => \ALT_INV_b[0]~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	combout => \x~1_combout\);

-- Location: IOIBUF_X89_Y35_N95
\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\ina~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ina,
	o => \ina~input_o\);

-- Location: LABCELL_X88_Y36_N30
\x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x~0_combout\ = ( \a[4]~input_o\ & ( \ina~input_o\ & ( (\b[4]~input_o\ & (!\b[3]~input_o\ $ (\a[3]~input_o\))) ) ) ) # ( !\a[4]~input_o\ & ( \ina~input_o\ & ( (!\b[4]~input_o\ & (!\b[3]~input_o\ $ (\a[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000100100000000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b[3]~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	datac => \ALT_INV_b[4]~input_o\,
	datae => \ALT_INV_a[4]~input_o\,
	dataf => \ALT_INV_ina~input_o\,
	combout => \x~0_combout\);

-- Location: IOIBUF_X89_Y38_N38
\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LABCELL_X88_Y38_N33
\x~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \x~2_combout\ = ( \x~0_combout\ & ( \a[1]~input_o\ & ( (\x~1_combout\ & \b[1]~input_o\) ) ) ) # ( \x~0_combout\ & ( !\a[1]~input_o\ & ( (\x~1_combout\ & !\b[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~1_combout\,
	datac => \ALT_INV_b[1]~input_o\,
	datae => \ALT_INV_x~0_combout\,
	dataf => \ALT_INV_a[1]~input_o\,
	combout => \x~2_combout\);

-- Location: IOIBUF_X89_Y35_N44
\inb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inb,
	o => \inb~input_o\);

-- Location: LABCELL_X88_Y37_N39
\y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~0_combout\ = ( \a[0]~input_o\ & ( !\b[0]~input_o\ & ( \inb~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inb~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \y~0_combout\);

-- Location: IOIBUF_X89_Y37_N4
\inc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inc,
	o => \inc~input_o\);

-- Location: LABCELL_X88_Y37_N12
\z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~0_combout\ = ( !\a[0]~input_o\ & ( \b[0]~input_o\ & ( \inc~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inc~input_o\,
	datae => \ALT_INV_a[0]~input_o\,
	dataf => \ALT_INV_b[0]~input_o\,
	combout => \z~0_combout\);

-- Location: MLABCELL_X34_Y43_N0
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


